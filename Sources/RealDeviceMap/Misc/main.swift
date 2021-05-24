//
//  main.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 18.09.18.
//
//  swiftlint:disable force_try

import Foundation
import PerfectLib
import PerfectThread
import PerfectHTTPServer
import TurnstileCrypto
import POGOProtos
import Backtrace
import Rainbow

Backtrace.install()

let logDebug = (ProcessInfo.processInfo.environment["LOG_LEVEL"]?.lowercased() ?? "debug") == "debug"
extension Log {
    public static func debug(message: @autoclosure () -> String) {
        if logDebug {
            Log.logger.debug(message: message(), even)
        }
    }
}
Log.even = true

#if DEBUG
let projectroot = ProcessInfo.processInfo.environment["PROJECT_DIR"] ?? Dir.workingDir.path
#else
let projectroot = Dir.workingDir.path
#endif

Log.info(message: "[MAIN] Getting Version".green)
_ = VersionManager.global

// Starting Startup Webserver
Log.info(message: "[MAIN] Starting Startup Webserver".green)
var startupServer: HTTPServer.Server? = WebServer.startupServer
var startupServerContext: HTTPServer.LaunchContext? = try! HTTPServer.launch(wait: false, startupServer!)[0]

// Check if /backups exists
let backups = Dir("\(projectroot)/backups")
#if DEBUG
try? backups.create()
#endif
if !backups.exists {
    let message = "[MAIN] Backups directory doesn't exist! Make sure to persist the backups folder before continuing."
    Log.critical(message: message.red)
    fatalError(message)
}

// Init DBController
Log.info(message: "[MAIN] Starting Database Controller".green)
_ = DBController.global

// Init MemoryCache
if ProcessInfo.processInfo.environment["NO_MEMORY_CACHE"] == nil {
    let memoryCacheClearInterval = ProcessInfo.processInfo.environment["MEMORY_CACHE_CLEAR_INTERVAL"]?.toDouble() ?? 900
    let memoryCacheKeepTime = ProcessInfo.processInfo.environment["MEMORY_CACHE_KEEP_TIME"]?.toDouble() ?? 3600
    Log.info(message:
        "[MAIN] Starting Memory Cache with interval \(memoryCacheClearInterval) " +
        "and keep time \(memoryCacheKeepTime)".green
    )
    Pokestop.cache = MemoryCache(interval: memoryCacheClearInterval, keepTime: memoryCacheKeepTime)
    Pokemon.cache = MemoryCache(interval: memoryCacheClearInterval, keepTime: memoryCacheKeepTime)
    Gym.cache = MemoryCache(interval: memoryCacheClearInterval, keepTime: memoryCacheKeepTime)
    SpawnPoint.cache = MemoryCache(interval: memoryCacheClearInterval, keepTime: memoryCacheKeepTime)
    Weather.cache = MemoryCache(interval: memoryCacheClearInterval, keepTime: memoryCacheKeepTime)
    // 900 3600
    Pokemon.mapPokemonDisplayIdCache = MemoryCache(interval: memoryCacheClearInterval, keepTime: 300)
    Pokemon.diskEncounterCache = MemoryCache(interval: memoryCacheClearInterval, keepTime: 300)
} else {
    Log.info(message: "[MAIN] Memory Cache deactivated".red)
}

// Load Groups
Log.info(message: "[MAIN] Loading Groups")
do {
    try Group.setup()
} catch {
    let message = "[MAIN] Failed to load groups (\(error.localizedDescription))"
    Log.critical(message: message.red)
    fatalError(message)
}

// Load timezone
Log.info(message: "[MAIN] Loading Timezone".green)
if let result = Shell("date", "+%z").run()?.replacingOccurrences(of: "\n", with: "") {
    let sign = result.substring(toIndex: 1)
    if let hours = Int(result.substring(toIndex: 3).substring(fromIndex: 1)),
        let mins = Int(result.substring(toIndex: 5).substring(fromIndex: 3)) {
        let offset: Int
        if sign == "-" {
            offset = -hours * 3600 + mins * 60
        } else {
            offset = hours * 3600 + mins * 60
        }
        if let timeZone = TimeZone(secondsFromGMT: offset) {
            Localizer.global.timeZone = timeZone
        }
    }
}

// Load Settings
Log.info(message: "[MAIN] Loading Settings".green)
WebRequestHandler.startLat = try! DBController.global.getValueForKey(key: "MAP_START_LAT")!.toDouble()!
WebRequestHandler.startLon = try! DBController.global.getValueForKey(key: "MAP_START_LON")!.toDouble()!
WebRequestHandler.startZoom = try! DBController.global.getValueForKey(key: "MAP_START_ZOOM")!.toInt()!
WebRequestHandler.minZoom = try! DBController.global.getValueForKey(key: "MAP_MIN_ZOOM")?.toInt() ?? 10
WebRequestHandler.maxZoom = try! DBController.global.getValueForKey(key: "MAP_MAX_ZOOM")?.toInt() ?? 18
WebRequestHandler.maxPokemonId = try! DBController.global.getValueForKey(key: "MAP_MAX_POKEMON_ID")!.toInt()!
WebRequestHandler.title = try! DBController.global.getValueForKey(key: "TITLE") ?? "RealDeviceMap"
WebRequestHandler.enableRegister = try! DBController.global.getValueForKey(key: "ENABLE_REGISTER")?.toBool() ?? true
WebRequestHandler.cities = try! DBController.global.getValueForKey(key: "CITIES")?
    .jsonDecodeForceTry() as? [String: [String: Any]] ?? [String: [String: Any]]()
WebRequestHandler.googleAnalyticsId = try! DBController.global.getValueForKey(key: "GOOGLE_ANALYTICS_ID") ?? ""
WebRequestHandler.googleAdSenseId = try! DBController.global.getValueForKey(key: "GOOGLE_ADSENSE_ID") ?? ""
WebRequestHandler.oauthDiscordRedirectURL = try! DBController.global.getValueForKey(key: "DISCORD_REDIRECT_URL")?
    .emptyToNil()
WebRequestHandler.oauthDiscordClientID = try! DBController.global.getValueForKey(key: "DISCORD_CLIENT_ID")?.emptyToNil()
WebRequestHandler.oauthDiscordClientSecret = try! DBController.global.getValueForKey(key: "DISCORD_CLIENT_SECRET")?
    .emptyToNil()
WebRequestHandler.logoUrl = try! DBController.global.getValueForKey(key: "LOGO_URL") ?? ""
WebRequestHandler.statsUrl = try! DBController.global.getValueForKey(key: "STATS_URL") ?? ""
WebHookRequestHandler.hostWhitelist = try! DBController.global.getValueForKey(key: "DEVICEAPI_HOST_WHITELIST")?
    .emptyToNil()?.components(separatedBy: ";")
WebHookRequestHandler.hostWhitelistUsesProxy = try! DBController.global.getValueForKey(
    key: "DEVICEAPI_HOST_WHITELIST_USES_PROXY"
)?.toBool() ?? false
WebHookRequestHandler.loginSecret = try! DBController.global.getValueForKey(key: "DEVICEAPI_SECRET")?.emptyToNil()
WebHookRequestHandler.dittoDisguises = try! DBController.global.getValueForKey(key: "DITTO_DISGUISES")?
    .components(separatedBy: ",").map({ (string) -> UInt16 in
    return string.toUInt16() ?? 0
}) ?? [13, 46, 48, 163, 165, 167, 187, 223, 273, 293, 300, 316, 322, 399] // Default ditto disguises
WebRequestHandler.buttonsLeft = try! DBController.global.getValueForKey(key: "BUTTONS_LEFT")?
    .jsonDecode() as? [[String: String]] ?? []
WebRequestHandler.buttonsRight = try! DBController.global.getValueForKey(key: "BUTTONS_RIGHT")?
    .jsonDecode() as? [[String: String]] ?? []

if let tileserversOld = try! DBController.global.getValueForKey(key: "TILESERVERS")?
    .jsonDecodeForceTry() as? [String: String] {
    var tileservers = [String: [String: String]]()
    for tileserver in tileserversOld {
        tileservers[tileserver.key] = [
            "url": tileserver.value,
            "attribution": "Map data &copy; <a href=\"https://www.openstreetmap.org/\">OpenStreetMap</a> contributors"
        ]
    }
    WebRequestHandler.tileservers = tileservers
} else {
    WebRequestHandler.tileservers = try! DBController.global.getValueForKey(key: "TILESERVERS")?
        .jsonDecodeForceTry() as? [String: [String: String]] ?? [
            "Default": [
                "url": "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                "attribution": "Map data &copy; <a href=\"https://www.openstreetmap.org/\">" +
                               "OpenStreetMap</a> contributors"
            ]
        ]
}

Localizer.locale = try! DBController.global.getValueForKey(key: "LOCALE")?.lowercased() ?? "en"

Pokemon.defaultTimeUnseen = try! DBController.global.getValueForKey(key: "POKEMON_TIME_UNSEEN")?.toUInt32() ?? 1200
Pokemon.defaultTimeReseen = try! DBController.global.getValueForKey(key: "POKEMON_TIME_RESEEN")?.toUInt32() ?? 600

Pokestop.lureTime = try! DBController.global.getValueForKey(key: "POKESTOP_LURE_TIME")?.toUInt32() ?? 1800

Gym.exRaidBossId = try! DBController.global.getValueForKey(key: "GYM_EX_BOSS_ID")?.toUInt16()
Gym.exRaidBossForm = try! DBController.global.getValueForKey(key: "GYM_EX_BOSS_FORM")?.toUInt16()

WebHookRequestHandler.enableClearing = try! DBController.global.getValueForKey(key: "ENABLE_CLEARING")?
    .toBool() ?? false

DiscordController.global.guilds = try! DBController.global.getValueForKey(key: "DISCORD_GUILD_IDS")?
    .components(separatedBy: ";").map({ (string) -> UInt64 in
    return string.toUInt64() ?? 0
}) ?? [UInt64]()
DiscordController.global.token = try! DBController.global.getValueForKey(key: "DISCORD_TOKEN") ?? ""

MailController.clientURL = try! DBController.global.getValueForKey(key: "MAILER_URL")
MailController.clientUsername = try! DBController.global.getValueForKey(key: "MAILER_USERNAME")
MailController.clientPassword = try! DBController.global.getValueForKey(key: "MAILER_PASSWORD")
MailController.fromAddress = try! DBController.global.getValueForKey(key: "MAILER_EMAIL")
MailController.fromName = try! DBController.global.getValueForKey(key: "MAILER_NAME")
MailController.footerHtml = try! DBController.global.getValueForKey(key: "MAILER_FOOTER_HTML") ?? ""
MailController.baseURI = try! DBController.global.getValueForKey(key: "MAILER_BASE_URI") ?? ""

let webhookDelayString = try! DBController.global.getValueForKey(key: "WEBHOOK_DELAY") ?? "5.0"
let webhookUrlStrings = try! DBController.global.getValueForKey(key: "WEBHOOK_URLS") ?? ""
if let webhookDelay = Double(webhookDelayString) {
    WebHookController.global.webhookSendDelay = webhookDelay
}

// Init Instance Contoller
do {
    Log.info(message: "[MAIN] Starting Instance Controller".green)
    try InstanceController.setup()
} catch {
    let message = "[MAIN] Failed to setup InstanceController"
    Log.critical(message: message.red)
    fatalError(message)
}

// Start WebHookController
Log.info(message: "[MAIN] Starting Webhook Controller".green)
WebHookController.global.start()

// Load Forms
//Log.info(message: "[MAIN] Loading Avilable Forms")
//var avilableForms = [String]()
//do {
//    try Dir("\(projectroot)/resources/webroot/static/img/pokemon").forEachEntry { (file) in
//        let split = file.replacingOccurrences(of: ".png", with: "").components(separatedBy: "-")
//        if split.count == 2, let pokemonID = Int(split[0]), let formID = Int(split[1]) {
//            avilableForms.append("\(pokemonID)-\(formID)")
//        } else if split.count == 3, let pokemonID = Int(split[0]),
//                 let formID = Int(split[1]), let evoId = Int(split[2]) {
//            avilableForms.append("\(pokemonID)-\(formID)-\(evoId)")
//        }
//    }
//    WebReqeustHandler.avilableFormsJson = try avilableForms.jsonEncodedString()
//} catch {
//    Log.error(
//        message:
//            "Failed to load forms. Frontend will only display default forms. Error: \(error.localizedDescription)"
//    )
//}

// Load Forms
Log.info(message: "[MAIN] Loading Available Forms".green)
var avilableForms = [String]()
do {
    for formString in PokemonDisplayProto.Form.allFormsInString {
        let file = File("\(projectroot)/resources/webroot/static/img/pokemon/\(formString).png")
        if file.exists {
            avilableForms.append(formString)
        }
    }
    WebRequestHandler.availableFormsJson = try availableForms.jsonEncodedString()
} catch {
    Log.error(
        message: "Failed to load forms. Frontend will only display default forms. Error: \(error.localizedDescription)"
    )
}

// Load Costumes
Log.debug(message: "[MAIN] Loading Available Costumes".green)
var avilableCostumes = [String]()
do {
    for costumeString in PokemonDisplayProto.Costume.allCostumesInString {
        let file = File("\(projectroot)/resources/webroot/static/img/pokemon/\(costumeString).png")
        if file.exists {
            avilableCostumes.append(costumeString)
        }
    }
    WebReqeustHandler.avilableCostumesJson = try avilableCostumes.jsonEncodedString()
} catch {
    Log.error(message: "Failed to load costumes. Error: \(error.localizedDescription)".red)
}

// Load Pokemon Evolutions
Log.debug(message: "[MAIN] Loading Available Pokemon Evolutions".green)
var avilablePokemonEvolutions = [String]()
do {
    for temporaryevolutionString in HoloTemporaryEvolutionId.allTemporaryEvolutionIdsInString {
        let file = File("\(projectroot)/resources/webroot/static/img/pokemon/\(temporaryevolutionString).png")
        if file.exists {
            avilablePokemonEvolutions.append(temporaryevolutionString)
        }
    }
    WebReqeustHandler.avilablePokemonEvolutionsJson = try avilablePokemonEvolutions.jsonEncodedString()
} catch {
    Log.error(message: "Failed to load pokemon evolutions. Error: \(error.localizedDescription)".red)
}

Log.info(message: "[MAIN] Loading Available Items".green)
var aviableItems = [-6, -5, -4, -3, -2, -1]
for itemId in Item.allAvilable {
    availableItems.append(itemId.rawValue)
}
WebRequestHandler.availableItemJson = try! availableItems.jsonEncodedString()

Pokemon.noPVP = ProcessInfo.processInfo.environment["NO_PVP"] != nil
Pokemon.noWeatherIVClearing = ProcessInfo.processInfo.environment["NO_IV_WEATHER_CLEARING"] != nil
Pokemon.noCellPokemon = ProcessInfo.processInfo.environment["NO_CELL_POKEMON"] != nil
InstanceController.noRequireAccount = ProcessInfo.processInfo.environment["NO_REQUIRE_ACCOUNT"] != nil

if !Pokemon.noPVP {
    Log.info(message: "[MAIN] Getting PVP Stats".green)
    _ = PVPStatsManager.global
} else {
    Log.info(message: "[MAIN] PVP Stats deactivated".red)
}

Log.info(message: "[MAIN] Starting Webhook".green)
WebHookController.global.webhookURLStrings = webhookUrlStrings.components(separatedBy: ";")

Log.info(message: "[MAIN] Starting Account Controller".green)
AccountController.global.setup()

Log.info(message: "[MAIN] Starting Assignement Controller".green)
do {
    try AssignmentController.global.setup()
} catch {
    let message = "[MAIN] Failed to start Assignement Controller"
    Log.critical(message: message.red)
    fatalError(message)
}

// Check if is setup
Log.info(message: "[MAIN] Checking if setup is completed".cyan)
let isSetup: String?
do {
    isSetup = try DBController.global.getValueForKey(key: "IS_SETUP")
} catch {
    let message = "Failed to get setup status."
    Log.critical(message: "[Main] " + message.red)
    fatalError(message)
}

if isSetup != nil && isSetup == "true" {
    WebRequestHandler.isSetup = true
} else {
    WebRequestHandler.isSetup = false
    WebRequestHandler.accessToken = URandom().secureToken
    Log.info(message: "[MAIN] Use this access-token to create the admin user: \(WebRequestHandler.accessToken!)")
}

// Start MailController
Log.info(message: "[MAIL] Starting Mail Controller".green)
try! MailController.global.setup()

// Start DiscordController
Log.info(message: "[MAIL] Starting Discord Controller".green)
try! DiscordController.global.setup()

// Create Raid images
let noGenerateImages =
  ProcessInfo.processInfo.environment["NO_GENERATE_IMAGES"] != nil
if !noGenerateImages {
  Log.info(message: "[MAIN] Starting Images Generator")
  ImageGenerator.generate()
} else {
  Log.info(message: "[MAIN] Image generation disabled - skipping")
}

// Stopping Startup Webserver
Log.info(message: "[MAIN] Stopping Startup Webserver".red)
startupServerContext!.terminate()
startupServer = nil
startupServerContext = nil

ApiRequestHandler.start = Date()

Log.info(message: "[MAIN] Starting Webservers".green)
do {
    try HTTPServer.launch(
        [
            WebServer.server,
            WebHookServer.server
        ]
    )
} catch {
    let message = "Failed to launch Servers: \(error.localizedDescription)"
    Log.critical(message: message.red)
    fatalError(message)
}
