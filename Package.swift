// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "RealDeviceMap",
    platforms: [
           .macOS(.v10_15)
    ],
    products: [],
    dependencies: [
        .package(name: "PerfectHTTPServer", url: "https://github.com/SkOODaT/Perfect-HTTPServer.git", .branch("SKOODAT")),
        .package(name: "PerfectSessionMySQL", url: "https://github.com/SkOODaT/Perfect-Session-MySQL.git", .branch("SKOODAT")),
        .package(name: "PerfectMySQL", url: "https://github.com/SkOODaT/Perfect-MySQL.git", .branch("SKOODAT")),
        .package(name: "PerfectThread", url: "https://github.com/SkOODaT/Perfect-Thread.git", .branch("SKOODAT")),
        .package(name: "PerfectMustache", url: "https://github.com/SkOODaT/Perfect-Mustache.git", .branch("SKOODAT")),
        .package(name: "PerfectCURL", url: "https://github.com/SkOODaT/Perfect-CURL.git", .branch("SKOODAT")),
        .package(name: "PerfectSMTP", url: "https://github.com/SkOODaT/Perfect-SMTP.git", .branch("SKOODAT")),
        .package(name: "PerfectCrypto", url: "https://github.com/SkOODaT/Perfect-Crypto.git", .branch("SKOODAT")),
        .package(name: "Turnstile", url: "https://github.com/SkOODaT/Turnstile.git", from: "1.2.3"),
        .package(name: "Turf", url: "https://github.com/SkOODaT/turf-swift.git", from: "2.3.0"),
        .package(name: "S2Geometry", url: "https://github.com/SkOODaT/S2Geometry.git", from: "0.5.0"),
        .package(name: "Regex", url: "https://github.com/crossroadlabs/Regex.git", from: "1.2.0"),
        .package(name: "swift-backtrace", url: "https://github.com/swift-server/swift-backtrace.git", from: "1.3.1"),
        .package(name: "Rainbow", url: "https://github.com/onevcat/Rainbow", from: "4.0.1"),
        .package(name: "POGOProtos", url: "https://github.com/SkOODaT/POGOProtos-Swift.git", .upToNextMinor(from: "0.231.0-0"))
    ],
    targets: [
        .target(
            name: "RealDeviceMapLib",
            dependencies: [
                .product(name: "PerfectHTTPServer", package: "PerfectHTTPServer"),
                .product(name: "PerfectSessionMySQL", package: "PerfectSessionMySQL"),
                .product(name: "PerfectMySQL", package: "PerfectMySQL"),
                .product(name: "PerfectThread", package: "PerfectThread"),
                .product(name: "PerfectMustache", package: "PerfectMustache"),
                .product(name: "PerfectCURL", package: "PerfectCURL"),
                .product(name: "PerfectSMTP", package: "PerfectSMTP"),
                .product(name: "PerfectCrypto", package: "PerfectCrypto"),
                .product(name: "Turnstile", package: "Turnstile"),
                .product(name: "Regex", package: "Regex"),
                .product(name: "Turf", package: "Turf"),
                .product(name: "S2Geometry", package: "S2Geometry"),
                .product(name: "POGOProtos", package: "POGOProtos"),
                .product(name: "Backtrace", package: "swift-backtrace"),
                .product(name: "Rainbow", package: "Rainbow")
            ]
        ),
        .executableTarget(
            name: "RealDeviceMapApp",
            dependencies: [
                .target(name: "RealDeviceMapLib")
            ]
        ),
        .testTarget(
            name: "RealDeviceMapTests",
            dependencies: [
                .target(name: "RealDeviceMapLib")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
