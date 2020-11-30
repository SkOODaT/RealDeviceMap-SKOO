//
//  File.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 17.10.18.
//
// swiftlint:disable all

import Foundation
import POGOProtos
import PerfectLib

extension POGOProtos_Enums_Form {

    public static var allCases: [POGOProtos_Enums_Form] = [
        .unownA,
        .unownB,
        .unownC,
        .unownD,
        .unownE,
        .unownF,
        .unownG,
        .unownH,
        .unownI,
        .unownJ,
        .unownK,
        .unownL,
        .unownM,
        .unownN,
        .unownO,
        .unownP,
        .unownQ,
        .unownR,
        .unownS,
        .unownT,
        .unownU,
        .unownV,
        .unownW,
        .unownX,
        .unownY,
        .unownZ,
        .unownExclamationPoint,
        .unownQuestionMark,
        .castformNormal,
        .castformSunny,
        .castformRainy,
        .castformSnowy,
        .deoxysNormal,
        .deoxysAttack,
        .deoxysDefense,
        .deoxysSpeed,
        .spinda00,
        .spinda01,
        .spinda02,
        .spinda03,
        .spinda04,
        .spinda05,
        .spinda06,
        .spinda07,
        .rattataNormal,
        .rattataAlola,
        .raticateNormal,
        .raticateAlola,
        .raichuNormal,
        .raichuAlola,
        .sandshrewNormal,
        .sandshrewAlola,
        .sandslashNormal,
        .sandslashAlola,
        .vulpixNormal,
        .vulpixAlola,
        .ninetalesNormal,
        .ninetalesAlola,
        .diglettNormal,
        .diglettAlola,
        .dugtrioNormal,
        .dugtrioAlola,
        .meowthNormal,
        .meowthAlola,
        .persianNormal,
        .persianAlola,
        .geodudeNormal,
        .geodudeAlola,
        .gravelerNormal,
        .gravelerAlola,
        .golemNormal,
        .golemAlola,
        .grimerNormal,
        .grimerAlola,
        .mukNormal,
        .mukAlola,
        .exeggutorNormal,
        .exeggutorAlola,
        .marowakNormal,
        .marowakAlola,
        .rotomNormal,
        .rotomFrost,
        .rotomFan,
        .rotomMow,
        .rotomWash,
        .rotomHeat,
        .wormadamPlant,
        .wormadamSandy,
        .wormadamTrash,
        .giratinaAltered,
        .giratinaOrigin,
        .shayminSky,
        .shayminLand,
        .cherrimOvercast,
        .cherrimSunny,
        .shellosWestSea,
        .shellosEastSea,
        .gastrodonWestSea,
        .gastrodonEastSea,
        .arceusNormal,
        .arceusFighting,
        .arceusFlying,
        .arceusPoison,
        .arceusGround,
        .arceusRock,
        .arceusBug,
        .arceusGhost,
        .arceusSteel,
        .arceusFire,
        .arceusWater,
        .arceusGrass,
        .arceusElectric,
        .arceusPsychic,
        .arceusIce,
        .arceusDragon,
        .arceusDark,
        .arceusFairy,
        .burmyPlant,
        .burmySandy,
        .burmyTrash,
        .spinda08,
        .spinda09,
        .spinda10,
        .spinda11,
        .spinda12,
        .spinda13,
        .spinda14,
        .spinda15,
        .spinda16,
        .spinda17,
        .spinda18,
        .spinda19,
        .mewtwoA,
        .mewtwoNormal,
        .basculinRedStriped,
        .basculinBlueStriped,
        .darmanitanStandard,
        .darmanitanZen,
        .tornadusIncarnate,
        .tornadusTherian,
        .thundurusIncarnate,
        .thundurusTherian,
        .landorusIncarnate,
        .landorusTherian,
        .kyuremNormal,
        .kyuremBlack,
        .kyuremWhite,
        .keldeoOrdinary,
        .keldeoResolute,
        .meloettaAria,
        .meloettaPirouette,
        .rattataShadow,
        .rattataPurified,
        .raticateShadow,
        .raticatePurified,
        .zubatNormal,
        .zubatShadow,
        .zubatPurified,
        .golbatNormal,
        .golbatShadow,
        .golbatPurified,
        .bulbasaurNormal,
        .bulbasaurShadow,
        .bulbasaurPurified,
        .ivysaurNormal,
        .ivysaurShadow,
        .ivysaurPurified,
        .venusaurNormal,
        .venusaurShadow,
        .venusaurPurified,
        .charmanderNormal,
        .charmanderShadow,
        .charmanderPurified,
        .charmeleonNormal,
        .charmeleonShadow,
        .charmeleonPurified,
        .charizardNormal,
        .charizardShadow,
        .charizardPurified,
        .squirtleNormal,
        .squirtleShadow,
        .squirtlePurified,
        .wartortleNormal,
        .wartortleShadow,
        .wartortlePurified,
        .blastoiseNormal,
        .blastoiseShadow,
        .blastoisePurified,
        .dratiniNormal,
        .dratiniShadow,
        .dratiniPurified,
        .dragonairNormal,
        .dragonairShadow,
        .dragonairPurified,
        .dragoniteNormal,
        .dragoniteShadow,
        .dragonitePurified,
        .snorlaxNormal,
        .snorlaxShadow,
        .snorlaxPurified,
        .crobatNormal,
        .crobatShadow,
        .crobatPurified,
        .mudkipNormal,
        .mudkipShadow,
        .mudkipPurified,
        .marshtompNormal,
        .marshtompShadow,
        .marshtompPurified,
        .swampertNormal,
        .swampertShadow,
        .swampertPurified,
        .drowzeeNormal,
        .drowzeeShadow,
        .drowzeePurified,
        .hypnoNormal,
        .hypnoShadow,
        .hypnoPurified,
        .grimerShadow,
        .grimerPurified,
        .mukShadow,
        .mukPurified,
        .cuboneNormal,
        .cuboneShadow,
        .cubonePurified,
        .marowakShadow,
        .marowakPurified,
        .houndourNormal,
        .houndourShadow,
        .houndourPurified,
        .houndoomNormal,
        .houndoomShadow,
        .houndoomPurified,
        .poliwagNormal,
        .poliwagShadow,
        .poliwagPurified,
        .poliwhirlNormal,
        .poliwhirlShadow,
        .poliwhirlPurified,
        .poliwrathNormal,
        .poliwrathShadow,
        .poliwrathPurified,
        .politoedNormal,
        .politoedShadow,
        .politoedPurified,
        .scytherNormal,
        .scytherShadow,
        .scytherPurified,
        .scizorNormal,
        .scizorShadow,
        .scizorPurified,
        .magikarpNormal,
        .magikarpShadow,
        .magikarpPurified,
        .gyaradosNormal,
        .gyaradosShadow,
        .gyaradosPurified,
        .venonatNormal,
        .venonatShadow,
        .venonatPurified,
        .venomothNormal,
        .venomothShadow,
        .venomothPurified,
        .oddishNormal,
        .oddishShadow,
        .oddishPurified,
        .gloomNormal,
        .gloomShadow,
        .gloomPurified,
        .vileplumeNormal,
        .vileplumeShadow,
        .vileplumePurified,
        .bellossomNormal,
        .bellossomShadow,
        .bellossomPurified,
        .hitmonchanNormal,
        .hitmonchanShadow,
        .hitmonchanPurified,
        .growlitheNormal,
        .growlitheShadow,
        .growlithePurified,
        .arcanineNormal,
        .arcanineShadow,
        .arcaninePurified,
        .psyduckNormal,
        .psyduckShadow,
        .psyduckPurified,
        .golduckNormal,
        .golduckShadow,
        .golduckPurified,
        .raltsNormal,
        .raltsShadow,
        .raltsPurified,
        .kirliaNormal,
        .kirliaShadow,
        .kirliaPurified,
        .gardevoirNormal,
        .gardevoirShadow,
        .gardevoirPurified,
        .galladeNormal,
        .galladeShadow,
        .galladePurified,
        .abraNormal,
        .abraShadow,
        .abraPurified,
        .kadabraNormal,
        .kadabraShadow,
        .kadabraPurified,
        .alakazamNormal,
        .alakazamShadow,
        .alakazamPurified,
        .larvitarNormal,
        .larvitarShadow,
        .larvitarPurified,
        .pupitarNormal,
        .pupitarShadow,
        .pupitarPurified,
        .tyranitarNormal,
        .tyranitarShadow,
        .tyranitarPurified,
        .laprasNormal,
        .laprasShadow,
        .laprasPurified,
        .deerlingSpring,
        .deerlingSummer,
        .deerlingAutumn,
        .deerlingWinter,
        .sawsbuckSpring,
        .sawsbuckSummer,
        .sawsbuckAutumn,
        .sawsbuckWinter,
        .genesectNormal,
        .genesectShock,
        .genesectBurn,
        .genesectChill,
        .genesectDouse,
        .pikachuNormal,
        .wurmpleNormal,
        .wobbuffetNormal,
        .cacneaNormal,
        .cacneaShadow,
        .cacneaPurified,
        .cacturneNormal,
        .cacturneShadow,
        .cacturnePurified,
        .weedleNormal,
        .weedleShadow,
        .weedlePurified,
        .kakunaNormal,
        .kakunaShadow,
        .kakunaPurified,
        .beedrillNormal,
        .beedrillShadow,
        .beedrillPurified,
        .seedotNormal,
        .seedotShadow,
        .seedotPurified,
        .nuzleafNormal,
        .nuzleafShadow,
        .nuzleafPurified,
        .shiftryNormal,
        .shiftryShadow,
        .shiftryPurified,
        .magmarNormal,
        .magmarShadow,
        .magmarPurified,
        .magmortarNormal,
        .magmortarShadow,
        .magmortarPurified,
        .electabuzzNormal,
        .electabuzzShadow,
        .electabuzzPurified,
        .electivireNormal,
        .electivireShadow,
        .electivirePurified,
        .mareepNormal,
        .mareepShadow,
        .mareepPurified,
        .flaaffyNormal,
        .flaaffyShadow,
        .flaaffyPurified,
        .ampharosNormal,
        .ampharosShadow,
        .ampharosPurified,
        .magnemiteNormal,
        .magnemiteShadow,
        .magnemitePurified,
        .magnetonNormal,
        .magnetonShadow,
        .magnetonPurified,
        .magnezoneNormal,
        .magnezoneShadow,
        .magnezonePurified,
        .bellsproutNormal,
        .bellsproutShadow,
        .bellsproutPurified,
        .weepinbellNormal,
        .weepinbellShadow,
        .weepinbellPurified,
        .victreebelNormal,
        .victreebelShadow,
        .victreebelPurified,
        .sandshrewShadow,
        .sandshrewPurified,
        .sandslashShadow,
        .sandslashPurified,
        .porygonNormal,
        .porygonShadow,
        .porygonPurified,
        .porygon2Normal,
        .porygon2Shadow,
        .porygon2Purified,
        .porygonZNormal,
        .porygonZShadow,
        .porygonZPurified,
        .wobbuffetShadow,
        .wobbuffetPurified,
        .turtwigNormal,
        .turtwigShadow,
        .turtwigPurified,
        .grotleNormal,
        .grotleShadow,
        .grotlePurified,
        .torterraNormal,
        .torterraShadow,
        .torterraPurified,
        .ekansNormal,
        .ekansShadow,
        .ekansPurified,
        .arbokNormal,
        .arbokShadow,
        .arbokPurified,
        .koffingNormal,
        .koffingShadow,
        .koffingPurified,
        .weezingNormal,
        .weezingShadow,
        .weezingPurified,
        .meowthShadow,
        .meowthPurified,
        .persianShadow,
        .persianPurified,
        .hitmonleeNormal,
        .hitmonleeShadow,
        .hitmonleePurified,
        .articunoNormal,
        .articunoShadow,
        .articunoPurified,
        .misdreavusNormal,
        .misdreavusShadow,
        .misdreavusPurified,
        .mismagiusNormal,
        .mismagiusShadow,
        .mismagiusPurified,
        .vulpixShadow,
        .vulpixPurified,
        .ninetalesShadow,
        .ninetalesPurified,
        .exeggcuteNormal,
        .exeggcuteShadow,
        .exeggcutePurified,
        .exeggutorShadow,
        .exeggutorPurified,
        .carvanhaNormal,
        .carvanhaShadow,
        .carvanhaPurified,
        .sharpedoNormal,
        .sharpedoShadow,
        .sharpedoPurified,
        .omanyteNormal,
        .omanyteShadow,
        .omanytePurified,
        .omastarNormal,
        .omastarShadow,
        .omastarPurified,
        .trapinchNormal,
        .trapinchShadow,
        .trapinchPurified,
        .vibravaNormal,
        .vibravaShadow,
        .vibravaPurified,
        .flygonNormal,
        .flygonShadow,
        .flygonPurified,
        .bagonNormal,
        .bagonShadow,
        .bagonPurified,
        .shelgonNormal,
        .shelgonShadow,
        .shelgonPurified,
        .salamenceNormal,
        .salamenceShadow,
        .salamencePurified,
        .beldumNormal,
        .beldumShadow,
        .beldumPurified,
        .metangNormal,
        .metangShadow,
        .metangPurified,
        .metagrossNormal,
        .metagrossShadow,
        .metagrossPurified,
        .zapdosNormal,
        .zapdosShadow,
        .zapdosPurified,
        .nidoranNormal,
        .nidoranShadow,
        .nidoranPurified,
        .nidorinaNormal,
        .nidorinaShadow,
        .nidorinaPurified,
        .nidoqueenNormal,
        .nidoqueenShadow,
        .nidoqueenPurified,
        .nidorinoNormal,
        .nidorinoShadow,
        .nidorinoPurified,
        .nidokingNormal,
        .nidokingShadow,
        .nidokingPurified,
        .stunkyNormal,
        .stunkyShadow,
        .stunkyPurified,
        .skuntankNormal,
        .skuntankShadow,
        .skuntankPurified,
        .sneaselNormal,
        .sneaselShadow,
        .sneaselPurified,
        .weavileNormal,
        .weavileShadow,
        .weavilePurified,
        .gligarNormal,
        .gligarShadow,
        .gligarPurified,
        .gliscorNormal,
        .gliscorShadow,
        .gliscorPurified,
        .machopNormal,
        .machopShadow,
        .machopPurified,
        .machokeNormal,
        .machokeShadow,
        .machokePurified,
        .machampNormal,
        .machampShadow,
        .machampPurified,
        .chimcharNormal,
        .chimcharShadow,
        .chimcharPurified,
        .monfernoNormal,
        .monfernoShadow,
        .monfernoPurified,
        .infernapeNormal,
        .infernapeShadow,
        .infernapePurified,
        .shuckleNormal,
        .shuckleShadow,
        .shucklePurified,
        .absolNormal,
        .absolShadow,
        .absolPurified,
        .mawileNormal,
        .mawileShadow,
        .mawilePurified,
        .moltresNormal,
        .moltresShadow,
        .moltresPurified,
        .kangaskhanNormal,
        .kangaskhanShadow,
        .kangaskhanPurified,
        .diglettShadow,
        .diglettPurified,
        .dugtrioShadow,
        .dugtrioPurified,
        .rhyhornNormal,
        .rhyhornShadow,
        .rhyhornPurified,
        .rhydonNormal,
        .rhydonShadow,
        .rhydonPurified,
        .rhyperiorNormal,
        .rhyperiorShadow,
        .rhyperiorPurified,
        .murkrowNormal,
        .murkrowShadow,
        .murkrowPurified,
        .honchkrowNormal,
        .honchkrowShadow,
        .honchkrowPurified,
        .gibleNormal,
        .gibleShadow,
        .giblePurified,
        .gabiteNormal,
        .gabiteShadow,
        .gabitePurified,
        .garchompNormal,
        .garchompShadow,
        .garchompPurified,
        .krabbyNormal,
        .krabbyShadow,
        .krabbyPurified,
        .kinglerNormal,
        .kinglerShadow,
        .kinglerPurified,
        .shellderNormal,
        .shellderShadow,
        .shellderPurified,
        .cloysterNormal,
        .cloysterShadow,
        .cloysterPurified,
        .geodudeShadow,
        .geodudePurified,
        .gravelerShadow,
        .gravelerPurified,
        .golemShadow,
        .golemPurified,
        .hippopotasNormal,
        .hippopotasShadow,
        .hippopotasPurified,
        .hippowdonNormal,
        .hippowdonShadow,
        .hippowdonPurified,
        .pikachuFall2019,
        .squirtleFall2019,
        .charmanderFall2019,
        .bulbasaurFall2019,
        .pinsirNormal,
        .pinsirShadow,
        .pinsirPurified,
        .pikachuVs2019,
        .onixNormal,
        .onixShadow,
        .onixPurified,
        .steelixNormal,
        .steelixShadow,
        .steelixPurified,
        .shuppetNormal,
        .shuppetShadow,
        .shuppetPurified,
        .banetteNormal,
        .banetteShadow,
        .banettePurified,
        .duskullNormal,
        .duskullShadow,
        .duskullPurified,
        .dusclopsNormal,
        .dusclopsShadow,
        .dusclopsPurified,
        .dusknoirNormal,
        .dusknoirShadow,
        .dusknoirPurified,
        .sableyeNormal,
        .sableyeShadow,
        .sableyePurified,
        .snoruntNormal,
        .snoruntShadow,
        .snoruntPurified,
        .glalieNormal,
        .glalieShadow,
        .glaliePurified,
        .snoverNormal,
        .snoverShadow,
        .snoverPurified,
        .abomasnowNormal,
        .abomasnowShadow,
        .abomasnowPurified,
        .delibirdNormal,
        .delibirdShadow,
        .delibirdPurified,
        .stantlerNormal,
        .stantlerShadow,
        .stantlerPurified,
        .weezingGalarian,
        .zigzagoonNormal,
        .zigzagoonGalarian,
        .linooneNormal,
        .linooneGalarian,
        .pikachuCopy2019,
        .venusaurCopy2019,
        .charizardCopy2019,
        .blastoiseCopy2019,
        .caterpieNormal,
        .caterpieShadow,
        .caterpiePurified,
        .metapodNormal,
        .metapodShadow,
        .metapodPurified,
        .butterfreeNormal,
        .butterfreeShadow,
        .butterfreePurified,
        .pidgeyNormal,
        .pidgeyShadow,
        .pidgeyPurified,
        .pidgeottoNormal,
        .pidgeottoShadow,
        .pidgeottoPurified,
        .pidgeotNormal,
        .pidgeotShadow,
        .pidgeotPurified,
        .spearowNormal,
        .spearowShadow,
        .spearowPurified,
        .fearowNormal,
        .fearowShadow,
        .fearowPurified,
        .pikachuShadow,
        .pikachuPurified,
        .raichuShadow,
        .raichuPurified,
        .clefairyNormal,
        .clefairyShadow,
        .clefairyPurified,
        .clefableNormal,
        .clefableShadow,
        .clefablePurified,
        .jigglypuffNormal,
        .jigglypuffShadow,
        .jigglypuffPurified,
        .wigglytuffNormal,
        .wigglytuffShadow,
        .wigglytuffPurified,
        .parasNormal,
        .parasShadow,
        .parasPurified,
        .parasectNormal,
        .parasectShadow,
        .parasectPurified,
        .mankeyNormal,
        .mankeyShadow,
        .mankeyPurified,
        .primeapeNormal,
        .primeapeShadow,
        .primeapePurified,
        .tentacoolNormal,
        .tentacoolShadow,
        .tentacoolPurified,
        .tentacruelNormal,
        .tentacruelShadow,
        .tentacruelPurified,
        .ponytaNormal,
        .ponytaShadow,
        .ponytaPurified,
        .rapidashNormal,
        .rapidashShadow,
        .rapidashPurified,
        .slowpokeNormal,
        .slowpokeShadow,
        .slowpokePurified,
        .slowbroNormal,
        .slowbroShadow,
        .slowbroPurified,
        .farfetchdNormal,
        .farfetchdShadow,
        .farfetchdPurified,
        .doduoNormal,
        .doduoShadow,
        .doduoPurified,
        .dodrioNormal,
        .dodrioShadow,
        .dodrioPurified,
        .seelNormal,
        .seelShadow,
        .seelPurified,
        .dewgongNormal,
        .dewgongShadow,
        .dewgongPurified,
        .gastlyNormal,
        .gastlyShadow,
        .gastlyPurified,
        .haunterNormal,
        .haunterShadow,
        .haunterPurified,
        .gengarNormal,
        .gengarShadow,
        .gengarPurified,
        .voltorbNormal,
        .voltorbShadow,
        .voltorbPurified,
        .electrodeNormal,
        .electrodeShadow,
        .electrodePurified,
        .lickitungNormal,
        .lickitungShadow,
        .lickitungPurified,
        .chanseyNormal,
        .chanseyShadow,
        .chanseyPurified,
        .tangelaNormal,
        .tangelaShadow,
        .tangelaPurified,
        .horseaNormal,
        .horseaShadow,
        .horseaPurified,
        .seadraNormal,
        .seadraShadow,
        .seadraPurified,
        .goldeenNormal,
        .goldeenShadow,
        .goldeenPurified,
        .seakingNormal,
        .seakingShadow,
        .seakingPurified,
        .staryuNormal,
        .staryuShadow,
        .staryuPurified,
        .starmieNormal,
        .starmieShadow,
        .starmiePurified,
        .mrMimeNormal,
        .mrMimeShadow,
        .mrMimePurified,
        .jynxNormal,
        .jynxShadow,
        .jynxPurified,
        .taurosNormal,
        .taurosShadow,
        .taurosPurified,
        .dittoNormal,
        .dittoShadow,
        .dittoPurified,
        .eeveeNormal,
        .eeveeShadow,
        .eeveePurified,
        .vaporeonNormal,
        .vaporeonShadow,
        .vaporeonPurified,
        .jolteonNormal,
        .jolteonShadow,
        .jolteonPurified,
        .flareonNormal,
        .flareonShadow,
        .flareonPurified,
        .kabutoNormal,
        .kabutoShadow,
        .kabutoPurified,
        .kabutopsNormal,
        .kabutopsShadow,
        .kabutopsPurified,
        .aerodactylNormal,
        .aerodactylShadow,
        .aerodactylPurified,
        .mewtwoShadow,
        .mewtwoPurified,
        .mewNormal,
        .mewShadow,
        .mewPurified,
        .chikoritaNormal,
        .chikoritaShadow,
        .chikoritaPurified,
        .bayleefNormal,
        .bayleefShadow,
        .bayleefPurified,
        .meganiumNormal,
        .meganiumShadow,
        .meganiumPurified,
        .cyndaquilNormal,
        .cyndaquilShadow,
        .cyndaquilPurified,
        .quilavaNormal,
        .quilavaShadow,
        .quilavaPurified,
        .typhlosionNormal,
        .typhlosionShadow,
        .typhlosionPurified,
        .totodileNormal,
        .totodileShadow,
        .totodilePurified,
        .croconawNormal,
        .croconawShadow,
        .croconawPurified,
        .feraligatrNormal,
        .feraligatrShadow,
        .feraligatrPurified,
        .sentretNormal,
        .sentretShadow,
        .sentretPurified,
        .furretNormal,
        .furretShadow,
        .furretPurified,
        .hoothootNormal,
        .hoothootShadow,
        .hoothootPurified,
        .noctowlNormal,
        .noctowlShadow,
        .noctowlPurified,
        .ledybaNormal,
        .ledybaShadow,
        .ledybaPurified,
        .ledianNormal,
        .ledianShadow,
        .ledianPurified,
        .spinarakNormal,
        .spinarakShadow,
        .spinarakPurified,
        .ariadosNormal,
        .ariadosShadow,
        .ariadosPurified,
        .chinchouNormal,
        .chinchouShadow,
        .chinchouPurified,
        .lanturnNormal,
        .lanturnShadow,
        .lanturnPurified,
        .pichuNormal,
        .pichuShadow,
        .pichuPurified,
        .cleffaNormal,
        .cleffaShadow,
        .cleffaPurified,
        .igglybuffNormal,
        .igglybuffShadow,
        .igglybuffPurified,
        .togepiNormal,
        .togepiShadow,
        .togepiPurified,
        .togeticNormal,
        .togeticShadow,
        .togeticPurified,
        .natuNormal,
        .natuShadow,
        .natuPurified,
        .xatuNormal,
        .xatuShadow,
        .xatuPurified,
        .marillNormal,
        .marillShadow,
        .marillPurified,
        .azumarillNormal,
        .azumarillShadow,
        .azumarillPurified,
        .sudowoodoNormal,
        .sudowoodoShadow,
        .sudowoodoPurified,
        .hoppipNormal,
        .hoppipShadow,
        .hoppipPurified,
        .skiploomNormal,
        .skiploomShadow,
        .skiploomPurified,
        .jumpluffNormal,
        .jumpluffShadow,
        .jumpluffPurified,
        .aipomNormal,
        .aipomShadow,
        .aipomPurified,
        .sunkernNormal,
        .sunkernShadow,
        .sunkernPurified,
        .sunfloraNormal,
        .sunfloraShadow,
        .sunfloraPurified,
        .yanmaNormal,
        .yanmaShadow,
        .yanmaPurified,
        .wooperNormal,
        .wooperShadow,
        .wooperPurified,
        .quagsireNormal,
        .quagsireShadow,
        .quagsirePurified,
        .espeonNormal,
        .espeonShadow,
        .espeonPurified,
        .umbreonNormal,
        .umbreonShadow,
        .umbreonPurified,
        .slowkingNormal,
        .slowkingShadow,
        .slowkingPurified,
        .girafarigNormal,
        .girafarigShadow,
        .girafarigPurified,
        .pinecoNormal,
        .pinecoShadow,
        .pinecoPurified,
        .forretressNormal,
        .forretressShadow,
        .forretressPurified,
        .dunsparceNormal,
        .dunsparceShadow,
        .dunsparcePurified,
        .snubbullNormal,
        .snubbullShadow,
        .snubbullPurified,
        .granbullNormal,
        .granbullShadow,
        .granbullPurified,
        .qwilfishNormal,
        .qwilfishShadow,
        .qwilfishPurified,
        .heracrossNormal,
        .heracrossShadow,
        .heracrossPurified,
        .teddiursaNormal,
        .teddiursaShadow,
        .teddiursaPurified,
        .ursaringNormal,
        .ursaringShadow,
        .ursaringPurified,
        .slugmaNormal,
        .slugmaShadow,
        .slugmaPurified,
        .magcargoNormal,
        .magcargoShadow,
        .magcargoPurified,
        .swinubNormal,
        .swinubShadow,
        .swinubPurified,
        .piloswineNormal,
        .piloswineShadow,
        .piloswinePurified,
        .corsolaNormal,
        .corsolaShadow,
        .corsolaPurified,
        .remoraidNormal,
        .remoraidShadow,
        .remoraidPurified,
        .octilleryNormal,
        .octilleryShadow,
        .octilleryPurified,
        .mantineNormal,
        .mantineShadow,
        .mantinePurified,
        .skarmoryNormal,
        .skarmoryShadow,
        .skarmoryPurified,
        .kingdraNormal,
        .kingdraShadow,
        .kingdraPurified,
        .phanpyNormal,
        .phanpyShadow,
        .phanpyPurified,
        .donphanNormal,
        .donphanShadow,
        .donphanPurified,
        .smeargleNormal,
        .smeargleShadow,
        .smearglePurified,
        .tyrogueNormal,
        .tyrogueShadow,
        .tyroguePurified,
        .hitmontopNormal,
        .hitmontopShadow,
        .hitmontopPurified,
        .smoochumNormal,
        .smoochumShadow,
        .smoochumPurified,
        .elekidNormal,
        .elekidShadow,
        .elekidPurified,
        .magbyNormal,
        .magbyShadow,
        .magbyPurified,
        .miltankNormal,
        .miltankShadow,
        .miltankPurified,
        .blisseyNormal,
        .blisseyShadow,
        .blisseyPurified,
        .raikouNormal,
        .raikouShadow,
        .raikouPurified,
        .enteiNormal,
        .enteiShadow,
        .enteiPurified,
        .suicuneNormal,
        .suicuneShadow,
        .suicunePurified,
        .lugiaNormal,
        .lugiaShadow,
        .lugiaPurified,
        .hoOhNormal,
        .hoOhShadow,
        .hoOhPurified,
        .celebiNormal,
        .celebiShadow,
        .celebiPurified,
        .treeckoNormal,
        .treeckoShadow,
        .treeckoPurified,
        .grovyleNormal,
        .grovyleShadow,
        .grovylePurified,
        .sceptileNormal,
        .sceptileShadow,
        .sceptilePurified,
        .torchicNormal,
        .torchicShadow,
        .torchicPurified,
        .combuskenNormal,
        .combuskenShadow,
        .combuskenPurified,
        .blazikenNormal,
        .blazikenShadow,
        .blazikenPurified,
        .poochyenaNormal,
        .poochyenaShadow,
        .poochyenaPurified,
        .mightyenaNormal,
        .mightyenaShadow,
        .mightyenaPurified,
        .zigzagoonShadow,
        .zigzagoonPurified,
        .linooneShadow,
        .linoonePurified,
        .wurmpleShadow,
        .wurmplePurified,
        .silcoonNormal,
        .silcoonShadow,
        .silcoonPurified,
        .beautiflyNormal,
        .beautiflyShadow,
        .beautiflyPurified,
        .cascoonNormal,
        .cascoonShadow,
        .cascoonPurified,
        .dustoxNormal,
        .dustoxShadow,
        .dustoxPurified,
        .lotadNormal,
        .lotadShadow,
        .lotadPurified,
        .lombreNormal,
        .lombreShadow,
        .lombrePurified,
        .ludicoloNormal,
        .ludicoloShadow,
        .ludicoloPurified,
        .taillowNormal,
        .taillowShadow,
        .taillowPurified,
        .swellowNormal,
        .swellowShadow,
        .swellowPurified,
        .wingullNormal,
        .wingullShadow,
        .wingullPurified,
        .pelipperNormal,
        .pelipperShadow,
        .pelipperPurified,
        .surskitNormal,
        .surskitShadow,
        .surskitPurified,
        .masquerainNormal,
        .masquerainShadow,
        .masquerainPurified,
        .shroomishNormal,
        .shroomishShadow,
        .shroomishPurified,
        .breloomNormal,
        .breloomShadow,
        .breloomPurified,
        .slakothNormal,
        .slakothShadow,
        .slakothPurified,
        .vigorothNormal,
        .vigorothShadow,
        .vigorothPurified,
        .slakingNormal,
        .slakingShadow,
        .slakingPurified,
        .nincadaNormal,
        .nincadaShadow,
        .nincadaPurified,
        .ninjaskNormal,
        .ninjaskShadow,
        .ninjaskPurified,
        .shedinjaNormal,
        .shedinjaShadow,
        .shedinjaPurified,
        .whismurNormal,
        .whismurShadow,
        .whismurPurified,
        .loudredNormal,
        .loudredShadow,
        .loudredPurified,
        .exploudNormal,
        .exploudShadow,
        .exploudPurified,
        .makuhitaNormal,
        .makuhitaShadow,
        .makuhitaPurified,
        .hariyamaNormal,
        .hariyamaShadow,
        .hariyamaPurified,
        .azurillNormal,
        .azurillShadow,
        .azurillPurified,
        .nosepassNormal,
        .nosepassShadow,
        .nosepassPurified,
        .skittyNormal,
        .skittyShadow,
        .skittyPurified,
        .delcattyNormal,
        .delcattyShadow,
        .delcattyPurified,
        .aronNormal,
        .aronShadow,
        .aronPurified,
        .laironNormal,
        .laironShadow,
        .laironPurified,
        .aggronNormal,
        .aggronShadow,
        .aggronPurified,
        .medititeNormal,
        .medititeShadow,
        .medititePurified,
        .medichamNormal,
        .medichamShadow,
        .medichamPurified,
        .electrikeNormal,
        .electrikeShadow,
        .electrikePurified,
        .manectricNormal,
        .manectricShadow,
        .manectricPurified,
        .plusleNormal,
        .plusleShadow,
        .pluslePurified,
        .minunNormal,
        .minunShadow,
        .minunPurified,
        .volbeatNormal,
        .volbeatShadow,
        .volbeatPurified,
        .illumiseNormal,
        .illumiseShadow,
        .illumisePurified,
        .roseliaNormal,
        .roseliaShadow,
        .roseliaPurified,
        .gulpinNormal,
        .gulpinShadow,
        .gulpinPurified,
        .swalotNormal,
        .swalotShadow,
        .swalotPurified,
        .wailmerNormal,
        .wailmerShadow,
        .wailmerPurified,
        .wailordNormal,
        .wailordShadow,
        .wailordPurified,
        .numelNormal,
        .numelShadow,
        .numelPurified,
        .cameruptNormal,
        .cameruptShadow,
        .cameruptPurified,
        .torkoalNormal,
        .torkoalShadow,
        .torkoalPurified,
        .spoinkNormal,
        .spoinkShadow,
        .spoinkPurified,
        .grumpigNormal,
        .grumpigShadow,
        .grumpigPurified,
        .swabluNormal,
        .swabluShadow,
        .swabluPurified,
        .altariaNormal,
        .altariaShadow,
        .altariaPurified,
        .zangooseNormal,
        .zangooseShadow,
        .zangoosePurified,
        .seviperNormal,
        .seviperShadow,
        .seviperPurified,
        .lunatoneNormal,
        .lunatoneShadow,
        .lunatonePurified,
        .solrockNormal,
        .solrockShadow,
        .solrockPurified,
        .barboachNormal,
        .barboachShadow,
        .barboachPurified,
        .whiscashNormal,
        .whiscashShadow,
        .whiscashPurified,
        .corphishNormal,
        .corphishShadow,
        .corphishPurified,
        .crawdauntNormal,
        .crawdauntShadow,
        .crawdauntPurified,
        .baltoyNormal,
        .baltoyShadow,
        .baltoyPurified,
        .claydolNormal,
        .claydolShadow,
        .claydolPurified,
        .lileepNormal,
        .lileepShadow,
        .lileepPurified,
        .cradilyNormal,
        .cradilyShadow,
        .cradilyPurified,
        .anorithNormal,
        .anorithShadow,
        .anorithPurified,
        .armaldoNormal,
        .armaldoShadow,
        .armaldoPurified,
        .feebasNormal,
        .feebasShadow,
        .feebasPurified,
        .miloticNormal,
        .miloticShadow,
        .miloticPurified,
        .kecleonNormal,
        .kecleonShadow,
        .kecleonPurified,
        .tropiusNormal,
        .tropiusShadow,
        .tropiusPurified,
        .chimechoNormal,
        .chimechoShadow,
        .chimechoPurified,
        .wynautNormal,
        .wynautShadow,
        .wynautPurified,
        .sphealNormal,
        .sphealShadow,
        .sphealPurified,
        .sealeoNormal,
        .sealeoShadow,
        .sealeoPurified,
        .walreinNormal,
        .walreinShadow,
        .walreinPurified,
        .clamperlNormal,
        .clamperlShadow,
        .clamperlPurified,
        .huntailNormal,
        .huntailShadow,
        .huntailPurified,
        .gorebyssNormal,
        .gorebyssShadow,
        .gorebyssPurified,
        .relicanthNormal,
        .relicanthShadow,
        .relicanthPurified,
        .luvdiscNormal,
        .luvdiscShadow,
        .luvdiscPurified,
        .regirockNormal,
        .regirockShadow,
        .regirockPurified,
        .regiceNormal,
        .regiceShadow,
        .regicePurified,
        .registeelNormal,
        .registeelShadow,
        .registeelPurified,
        .latiasNormal,
        .latiasShadow,
        .latiasPurified,
        .latiosNormal,
        .latiosShadow,
        .latiosPurified,
        .kyogreNormal,
        .kyogreShadow,
        .kyogrePurified,
        .groudonNormal,
        .groudonShadow,
        .groudonPurified,
        .rayquazaNormal,
        .rayquazaShadow,
        .rayquazaPurified,
        .jirachiNormal,
        .jirachiShadow,
        .jirachiPurified,
        .piplupNormal,
        .piplupShadow,
        .piplupPurified,
        .prinplupNormal,
        .prinplupShadow,
        .prinplupPurified,
        .empoleonNormal,
        .empoleonShadow,
        .empoleonPurified,
        .starlyNormal,
        .starlyShadow,
        .starlyPurified,
        .staraviaNormal,
        .staraviaShadow,
        .staraviaPurified,
        .staraptorNormal,
        .staraptorShadow,
        .staraptorPurified,
        .bidoofNormal,
        .bidoofShadow,
        .bidoofPurified,
        .bibarelNormal,
        .bibarelShadow,
        .bibarelPurified,
        .kricketotNormal,
        .kricketotShadow,
        .kricketotPurified,
        .kricketuneNormal,
        .kricketuneShadow,
        .kricketunePurified,
        .shinxNormal,
        .shinxShadow,
        .shinxPurified,
        .luxioNormal,
        .luxioShadow,
        .luxioPurified,
        .luxrayNormal,
        .luxrayShadow,
        .luxrayPurified,
        .budewNormal,
        .budewShadow,
        .budewPurified,
        .roseradeNormal,
        .roseradeShadow,
        .roseradePurified,
        .cranidosNormal,
        .cranidosShadow,
        .cranidosPurified,
        .rampardosNormal,
        .rampardosShadow,
        .rampardosPurified,
        .shieldonNormal,
        .shieldonShadow,
        .shieldonPurified,
        .bastiodonNormal,
        .bastiodonShadow,
        .bastiodonPurified,
        .burmyNormal,
        .burmyShadow,
        .burmyPurified,
        .wormadamNormal,
        .wormadamShadow,
        .wormadamPurified,
        .mothimNormal,
        .mothimShadow,
        .mothimPurified,
        .combeeNormal,
        .combeeShadow,
        .combeePurified,
        .vespiquenNormal,
        .vespiquenShadow,
        .vespiquenPurified,
        .pachirisuNormal,
        .pachirisuShadow,
        .pachirisuPurified,
        .buizelNormal,
        .buizelShadow,
        .buizelPurified,
        .floatzelNormal,
        .floatzelShadow,
        .floatzelPurified,
        .cherubiNormal,
        .cherubiShadow,
        .cherubiPurified,
        .cherrimNormal,
        .cherrimShadow,
        .cherrimPurified,
        .shellosNormal,
        .shellosShadow,
        .shellosPurified,
        .gastrodonNormal,
        .gastrodonShadow,
        .gastrodonPurified,
        .ambipomNormal,
        .ambipomShadow,
        .ambipomPurified,
        .drifloonNormal,
        .drifloonShadow,
        .drifloonPurified,
        .drifblimNormal,
        .drifblimShadow,
        .drifblimPurified,
        .bunearyNormal,
        .bunearyShadow,
        .bunearyPurified,
        .lopunnyNormal,
        .lopunnyShadow,
        .lopunnyPurified,
        .glameowNormal,
        .glameowShadow,
        .glameowPurified,
        .puruglyNormal,
        .puruglyShadow,
        .puruglyPurified,
        .chinglingNormal,
        .chinglingShadow,
        .chinglingPurified,
        .bronzorNormal,
        .bronzorShadow,
        .bronzorPurified,
        .bronzongNormal,
        .bronzongShadow,
        .bronzongPurified,
        .bonslyNormal,
        .bonslyShadow,
        .bonslyPurified,
        .mimeJrNormal,
        .mimeJrShadow,
        .mimeJrPurified,
        .happinyNormal,
        .happinyShadow,
        .happinyPurified,
        .chatotNormal,
        .chatotShadow,
        .chatotPurified,
        .spiritombNormal,
        .spiritombShadow,
        .spiritombPurified,
        .munchlaxNormal,
        .munchlaxShadow,
        .munchlaxPurified,
        .rioluNormal,
        .rioluShadow,
        .rioluPurified,
        .lucarioNormal,
        .lucarioShadow,
        .lucarioPurified,
        .skorupiNormal,
        .skorupiShadow,
        .skorupiPurified,
        .drapionNormal,
        .drapionShadow,
        .drapionPurified,
        .croagunkNormal,
        .croagunkShadow,
        .croagunkPurified,
        .toxicroakNormal,
        .toxicroakShadow,
        .toxicroakPurified,
        .carnivineNormal,
        .carnivineShadow,
        .carnivinePurified,
        .finneonNormal,
        .finneonShadow,
        .finneonPurified,
        .lumineonNormal,
        .lumineonShadow,
        .lumineonPurified,
        .mantykeNormal,
        .mantykeShadow,
        .mantykePurified,
        .lickilickyNormal,
        .lickilickyShadow,
        .lickilickyPurified,
        .tangrowthNormal,
        .tangrowthShadow,
        .tangrowthPurified,
        .togekissNormal,
        .togekissShadow,
        .togekissPurified,
        .yanmegaNormal,
        .yanmegaShadow,
        .yanmegaPurified,
        .leafeonNormal,
        .leafeonShadow,
        .leafeonPurified,
        .glaceonNormal,
        .glaceonShadow,
        .glaceonPurified,
        .mamoswineNormal,
        .mamoswineShadow,
        .mamoswinePurified,
        .probopassNormal,
        .probopassShadow,
        .probopassPurified,
        .froslassNormal,
        .froslassShadow,
        .froslassPurified,
        .uxieNormal,
        .uxieShadow,
        .uxiePurified,
        .mespritNormal,
        .mespritShadow,
        .mespritPurified,
        .azelfNormal,
        .azelfShadow,
        .azelfPurified,
        .dialgaNormal,
        .dialgaShadow,
        .dialgaPurified,
        .palkiaNormal,
        .palkiaShadow,
        .palkiaPurified,
        .heatranNormal,
        .heatranShadow,
        .heatranPurified,
        .regigigasNormal,
        .regigigasShadow,
        .regigigasPurified,
        .giratinaNormal,
        .giratinaShadow,
        .giratinaPurified,
        .cresseliaNormal,
        .cresseliaShadow,
        .cresseliaPurified,
        .phioneNormal,
        .phioneShadow,
        .phionePurified,
        .manaphyNormal,
        .manaphyShadow,
        .manaphyPurified,
        .darkraiNormal,
        .darkraiShadow,
        .darkraiPurified,
        .shayminNormal,
        .shayminShadow,
        .shayminPurified,
        .victiniNormal,
        .victiniShadow,
        .victiniPurified,
        .snivyNormal,
        .snivyShadow,
        .snivyPurified,
        .servineNormal,
        .servineShadow,
        .servinePurified,
        .serperiorNormal,
        .serperiorShadow,
        .serperiorPurified,
        .tepigNormal,
        .tepigShadow,
        .tepigPurified,
        .pigniteNormal,
        .pigniteShadow,
        .pignitePurified,
        .emboarNormal,
        .emboarShadow,
        .emboarPurified,
        .oshawottNormal,
        .oshawottShadow,
        .oshawottPurified,
        .dewottNormal,
        .dewottShadow,
        .dewottPurified,
        .samurottNormal,
        .samurottShadow,
        .samurottPurified,
        .patratNormal,
        .patratShadow,
        .patratPurified,
        .watchogNormal,
        .watchogShadow,
        .watchogPurified,
        .lillipupNormal,
        .lillipupShadow,
        .lillipupPurified,
        .herdierNormal,
        .herdierShadow,
        .herdierPurified,
        .stoutlandNormal,
        .stoutlandShadow,
        .stoutlandPurified,
        .purrloinNormal,
        .purrloinShadow,
        .purrloinPurified,
        .liepardNormal,
        .liepardShadow,
        .liepardPurified,
        .pansageNormal,
        .pansageShadow,
        .pansagePurified,
        .simisageNormal,
        .simisageShadow,
        .simisagePurified,
        .pansearNormal,
        .pansearShadow,
        .pansearPurified,
        .simisearNormal,
        .simisearShadow,
        .simisearPurified,
        .panpourNormal,
        .panpourShadow,
        .panpourPurified,
        .simipourNormal,
        .simipourShadow,
        .simipourPurified,
        .munnaNormal,
        .munnaShadow,
        .munnaPurified,
        .musharnaNormal,
        .musharnaShadow,
        .musharnaPurified,
        .pidoveNormal,
        .pidoveShadow,
        .pidovePurified,
        .tranquillNormal,
        .tranquillShadow,
        .tranquillPurified,
        .unfezantNormal,
        .unfezantShadow,
        .unfezantPurified,
        .blitzleNormal,
        .blitzleShadow,
        .blitzlePurified,
        .zebstrikaNormal,
        .zebstrikaShadow,
        .zebstrikaPurified,
        .roggenrolaNormal,
        .roggenrolaShadow,
        .roggenrolaPurified,
        .boldoreNormal,
        .boldoreShadow,
        .boldorePurified,
        .gigalithNormal,
        .gigalithShadow,
        .gigalithPurified,
        .woobatNormal,
        .woobatShadow,
        .woobatPurified,
        .swoobatNormal,
        .swoobatShadow,
        .swoobatPurified,
        .drilburNormal,
        .drilburShadow,
        .drilburPurified,
        .excadrillNormal,
        .excadrillShadow,
        .excadrillPurified,
        .audinoNormal,
        .audinoShadow,
        .audinoPurified,
        .timburrNormal,
        .timburrShadow,
        .timburrPurified,
        .gurdurrNormal,
        .gurdurrShadow,
        .gurdurrPurified,
        .conkeldurrNormal,
        .conkeldurrShadow,
        .conkeldurrPurified,
        .tympoleNormal,
        .tympoleShadow,
        .tympolePurified,
        .palpitoadNormal,
        .palpitoadShadow,
        .palpitoadPurified,
        .seismitoadNormal,
        .seismitoadShadow,
        .seismitoadPurified,
        .throhNormal,
        .throhShadow,
        .throhPurified,
        .sawkNormal,
        .sawkShadow,
        .sawkPurified,
        .sewaddleNormal,
        .sewaddleShadow,
        .sewaddlePurified,
        .swadloonNormal,
        .swadloonShadow,
        .swadloonPurified,
        .leavannyNormal,
        .leavannyShadow,
        .leavannyPurified,
        .venipedeNormal,
        .venipedeShadow,
        .venipedePurified,
        .whirlipedeNormal,
        .whirlipedeShadow,
        .whirlipedePurified,
        .scolipedeNormal,
        .scolipedeShadow,
        .scolipedePurified,
        .cottoneeNormal,
        .cottoneeShadow,
        .cottoneePurified,
        .whimsicottNormal,
        .whimsicottShadow,
        .whimsicottPurified,
        .petililNormal,
        .petililShadow,
        .petililPurified,
        .lilligantNormal,
        .lilligantShadow,
        .lilligantPurified,
        .sandileNormal,
        .sandileShadow,
        .sandilePurified,
        .krokorokNormal,
        .krokorokShadow,
        .krokorokPurified,
        .krookodileNormal,
        .krookodileShadow,
        .krookodilePurified,
        .darumakaNormal,
        .darumakaShadow,
        .darumakaPurified,
        .maractusNormal,
        .maractusShadow,
        .maractusPurified,
        .dwebbleNormal,
        .dwebbleShadow,
        .dwebblePurified,
        .crustleNormal,
        .crustleShadow,
        .crustlePurified,
        .scraggyNormal,
        .scraggyShadow,
        .scraggyPurified,
        .scraftyNormal,
        .scraftyShadow,
        .scraftyPurified,
        .sigilyphNormal,
        .sigilyphShadow,
        .sigilyphPurified,
        .yamaskNormal,
        .yamaskShadow,
        .yamaskPurified,
        .cofagrigusNormal,
        .cofagrigusShadow,
        .cofagrigusPurified,
        .tirtougaNormal,
        .tirtougaShadow,
        .tirtougaPurified,
        .carracostaNormal,
        .carracostaShadow,
        .carracostaPurified,
        .archenNormal,
        .archenShadow,
        .archenPurified,
        .archeopsNormal,
        .archeopsShadow,
        .archeopsPurified,
        .trubbishNormal,
        .trubbishShadow,
        .trubbishPurified,
        .garbodorNormal,
        .garbodorShadow,
        .garbodorPurified,
        .zoruaNormal,
        .zoruaShadow,
        .zoruaPurified,
        .zoroarkNormal,
        .zoroarkShadow,
        .zoroarkPurified,
        .minccinoNormal,
        .minccinoShadow,
        .minccinoPurified,
        .cinccinoNormal,
        .cinccinoShadow,
        .cinccinoPurified,
        .gothitaNormal,
        .gothitaShadow,
        .gothitaPurified,
        .gothoritaNormal,
        .gothoritaShadow,
        .gothoritaPurified,
        .gothitelleNormal,
        .gothitelleShadow,
        .gothitellePurified,
        .solosisNormal,
        .solosisShadow,
        .solosisPurified,
        .duosionNormal,
        .duosionShadow,
        .duosionPurified,
        .reuniclusNormal,
        .reuniclusShadow,
        .reuniclusPurified,
        .ducklettNormal,
        .ducklettShadow,
        .ducklettPurified,
        .swannaNormal,
        .swannaShadow,
        .swannaPurified,
        .vanilliteNormal,
        .vanilliteShadow,
        .vanillitePurified,
        .vanillishNormal,
        .vanillishShadow,
        .vanillishPurified,
        .vanilluxeNormal,
        .vanilluxeShadow,
        .vanilluxePurified,
        .emolgaNormal,
        .emolgaShadow,
        .emolgaPurified,
        .karrablastNormal,
        .karrablastShadow,
        .karrablastPurified,
        .escavalierNormal,
        .escavalierShadow,
        .escavalierPurified,
        .foongusNormal,
        .foongusShadow,
        .foongusPurified,
        .amoongussNormal,
        .amoongussShadow,
        .amoongussPurified,
        .frillishNormal,
        .frillishShadow,
        .frillishPurified,
        .jellicentNormal,
        .jellicentShadow,
        .jellicentPurified,
        .alomomolaNormal,
        .alomomolaShadow,
        .alomomolaPurified,
        .joltikNormal,
        .joltikShadow,
        .joltikPurified,
        .galvantulaNormal,
        .galvantulaShadow,
        .galvantulaPurified,
        .ferroseedNormal,
        .ferroseedShadow,
        .ferroseedPurified,
        .ferrothornNormal,
        .ferrothornShadow,
        .ferrothornPurified,
        .klinkNormal,
        .klinkShadow,
        .klinkPurified,
        .klangNormal,
        .klangShadow,
        .klangPurified,
        .klinklangNormal,
        .klinklangShadow,
        .klinklangPurified,
        .tynamoNormal,
        .tynamoShadow,
        .tynamoPurified,
        .eelektrikNormal,
        .eelektrikShadow,
        .eelektrikPurified,
        .eelektrossNormal,
        .eelektrossShadow,
        .eelektrossPurified,
        .elgyemNormal,
        .elgyemShadow,
        .elgyemPurified,
        .beheeyemNormal,
        .beheeyemShadow,
        .beheeyemPurified,
        .litwickNormal,
        .litwickShadow,
        .litwickPurified,
        .lampentNormal,
        .lampentShadow,
        .lampentPurified,
        .chandelureNormal,
        .chandelureShadow,
        .chandelurePurified,
        .axewNormal,
        .axewShadow,
        .axewPurified,
        .fraxureNormal,
        .fraxureShadow,
        .fraxurePurified,
        .haxorusNormal,
        .haxorusShadow,
        .haxorusPurified,
        .cubchooNormal,
        .cubchooShadow,
        .cubchooPurified,
        .bearticNormal,
        .bearticShadow,
        .bearticPurified,
        .cryogonalNormal,
        .cryogonalShadow,
        .cryogonalPurified,
        .shelmetNormal,
        .shelmetShadow,
        .shelmetPurified,
        .accelgorNormal,
        .accelgorShadow,
        .accelgorPurified,
        .stunfiskNormal,
        .stunfiskShadow,
        .stunfiskPurified,
        .mienfooNormal,
        .mienfooShadow,
        .mienfooPurified,
        .mienshaoNormal,
        .mienshaoShadow,
        .mienshaoPurified,
        .druddigonNormal,
        .druddigonShadow,
        .druddigonPurified,
        .golettNormal,
        .golettShadow,
        .golettPurified,
        .golurkNormal,
        .golurkShadow,
        .golurkPurified,
        .pawniardNormal,
        .pawniardShadow,
        .pawniardPurified,
        .bisharpNormal,
        .bisharpShadow,
        .bisharpPurified,
        .bouffalantNormal,
        .bouffalantShadow,
        .bouffalantPurified,
        .ruffletNormal,
        .ruffletShadow,
        .ruffletPurified,
        .braviaryNormal,
        .braviaryShadow,
        .braviaryPurified,
        .vullabyNormal,
        .vullabyShadow,
        .vullabyPurified,
        .mandibuzzNormal,
        .mandibuzzShadow,
        .mandibuzzPurified,
        .heatmorNormal,
        .heatmorShadow,
        .heatmorPurified,
        .durantNormal,
        .durantShadow,
        .durantPurified,
        .deinoNormal,
        .deinoShadow,
        .deinoPurified,
        .zweilousNormal,
        .zweilousShadow,
        .zweilousPurified,
        .hydreigonNormal,
        .hydreigonShadow,
        .hydreigonPurified,
        .larvestaNormal,
        .larvestaShadow,
        .larvestaPurified,
        .volcaronaNormal,
        .volcaronaShadow,
        .volcaronaPurified,
        .cobalionNormal,
        .cobalionShadow,
        .cobalionPurified,
        .terrakionNormal,
        .terrakionShadow,
        .terrakionPurified,
        .virizionNormal,
        .virizionShadow,
        .virizionPurified,
        .reshiramNormal,
        .reshiramShadow,
        .reshiramPurified,
        .zekromNormal,
        .zekromShadow,
        .zekromPurified,
        .meltanNormal,
        .meltanShadow,
        .meltanPurified,
        .melmetalNormal,
        .melmetalShadow,
        .melmetalPurified,
        .wurmpleSpring2020,
        .wobbuffetSpring2020,
        .raticateSpring2020,
        .frillishFemale,
        .jellicentFemale,
        .pikachuCostume2020,
        .dragoniteCostume2020,
        .onixCostume2020,
        .meowthGalarian,
        .ponytaGalarian,
        .rapidashGalarian,
        .farfetchdGalarian,
        .mrMimeGalarian,
        .corsolaGalarian,
        .darumakaGalarian,
        .darmanitanGalarianStandard,
        .darmanitanGalarianZen,
        .yamaskGalarian,
        .stunfiskGalarian,
        .obstagoonNormal,
        .obstagoonShadow,
        .obstagoonPurified,
        .perrserkerNormal,
        .perrserkerShadow,
        .perrserkerPurified,
        .sirfetchdNormal,
        .sirfetchdShadow,
        .sirfetchdPurified,
        .runerigusNormal,
        .runerigusShadow,
        .runerigusPurified,
        .slowpokeGalarian,
        .slowbroGalarian,
        .laprasCostume2020,
        .gengarCostume2020,
        .pyroarNormal,
        .pyroarFemale,
        .meowsticNormal,
        .meowsticFemale,
        .zygardeTenPercent,
        .zygardeFiftyPercent,
        .zygardeComplete,
        .vivillonArchipelago,
        .vivillonContinental,
        .vivillonElegant,
        .vivillonFancy,
        .vivillonGarden,
        .vivillonHighPlains,
        .vivillonIcySnow,
        .vivillonJungle,
        .vivillonMarine,
        .vivillonMeadow,
        .vivillonModern,
        .vivillonMonsoon,
        .vivillonOcean,
        .vivillonPokeball,
        .vivillonPolar,
        .vivillonRiver,
        .vivillonSandstorm,
        .vivillonSavanna,
        .vivillonSun,
        .vivillonTundra,
        .flabebeRed,
        .flabebeYellow,
        .flabebeOrange,
        .flabebeBlue,
        .flabebeWhite,
        .floetteRed,
        .floetteYellow,
        .floetteOrange,
        .floetteBlue,
        .floetteWhite,
        .florgesRed,
        .florgesYellow,
        .florgesOrange,
        .florgesBlue,
        .florgesWhite,
        .furfrouNatural,
        .furfrouHeart,
        .furfrouStar,
        .furfrouDiamond,
        .furfrouDebutante,
        .furfrouMatron,
        .furfrouDandy,
        .furfrouLaReine,
        .furfrouKabuki,
        .furfrouPharaoh,
        .aegislashShield,
        .aegislashBlade,
        .pumpkabooSmall,
        .pumpkabooAverage,
        .pumpkabooLarge,
        .pumpkabooSuper,
        .gourgeistSmall,
        .gourgeistAverage,
        .gourgeistLarge,
        .gourgeistSuper,
        .xerneasNeutral,
        .xerneasActive,
        .hoopaConfined,
        .hoopaUnbound,
        .sableyeCostume2020Deprecated,
        .sableyeCostume2020,
        .pikachuAdventureHat2020,
        .pikachuWinter2020,
        .delibirdWinter2020,
        .cubchooWinter2020,
        .slowpoke2020,
        .slowbro2021
    ]

    static var allFormsInString: [String] {
        var formStrings = [String]()
        for form in POGOProtos_Enums_Form.allCases {
            for formString in form.formStrings {
                formStrings.append(formString)
            }
        }
        return formStrings
    }

    var formStrings: [String] {
        switch self {
        case .unownA: return ["201-1"]
        case .unownB: return ["201-2"]
        case .unownC: return ["201-3"]
        case .unownD: return ["201-4"]
        case .unownE: return ["201-5"]
        case .unownF: return ["201-6"]
        case .unownG: return ["201-7"]
        case .unownH: return ["201-8"]
        case .unownI: return ["201-9"]
        case .unownJ: return ["201-10"]
        case .unownK: return ["201-11"]
        case .unownL: return ["201-12"]
        case .unownM: return ["201-13"]
        case .unownN: return ["201-14"]
        case .unownO: return ["201-15"]
        case .unownP: return ["201-16"]
        case .unownQ: return ["201-17"]
        case .unownR: return ["201-18"]
        case .unownS: return ["201-19"]
        case .unownT: return ["201-20"]
        case .unownU: return ["201-21"]
        case .unownV: return ["201-22"]
        case .unownW: return ["201-23"]
        case .unownX: return ["201-24"]
        case .unownY: return ["201-25"]
        case .unownZ: return ["201-26"]
        case .unownExclamationPoint: return ["201-27"]
        case .unownQuestionMark: return ["201-28"]
        case .castformNormal: return ["351-29"]
        case .castformSunny: return ["351-30"]
        case .castformRainy: return ["351-31"]
        case .castformSnowy: return ["351-32"]
        case .deoxysNormal: return ["386-33"]
        case .deoxysAttack: return ["386-34"]
        case .deoxysDefense: return ["386-35"]
        case .deoxysSpeed: return ["386-36"]
        case .spinda00: return ["327-37"]
        case .spinda01: return ["327-38"]
        case .spinda02: return ["327-39"]
        case .spinda03: return ["327-40"]
        case .spinda04: return ["327-41"]
        case .spinda05: return ["327-42"]
        case .spinda06: return ["327-43"]
        case .spinda07: return ["327-44"]
        case .rattataNormal: return ["19-45"]
        case .rattataAlola: return ["19-46"]
        case .raticateNormal: return ["20-47"]
        case .raticateAlola: return ["20-48"]
        case .raichuNormal: return ["26-49"]
        case .raichuAlola: return ["26-50"]
        case .sandshrewNormal: return ["27-51"]
        case .sandshrewAlola: return ["27-52"]
        case .sandslashNormal: return ["28-53"]
        case .sandslashAlola: return ["28-54"]
        case .vulpixNormal: return ["37-55"]
        case .vulpixAlola: return ["37-56"]
        case .ninetalesNormal: return ["38-57"]
        case .ninetalesAlola: return ["38-58"]
        case .diglettNormal: return ["50-59"]
        case .diglettAlola: return ["50-60"]
        case .dugtrioNormal: return ["51-61"]
        case .dugtrioAlola: return ["51-62"]
        case .meowthNormal: return ["52-63"]
        case .meowthAlola: return ["52-64"]
        case .persianNormal: return ["53-65"]
        case .persianAlola: return ["53-66"]
        case .geodudeNormal: return ["74-67"]
        case .geodudeAlola: return ["74-68"]
        case .gravelerNormal: return ["75-69"]
        case .gravelerAlola: return ["75-70"]
        case .golemNormal: return ["76-71"]
        case .golemAlola: return ["76-72"]
        case .grimerNormal: return ["88-73"]
        case .grimerAlola: return ["88-74"]
        case .mukNormal: return ["89-75"]
        case .mukAlola: return ["89-76"]
        case .exeggutorNormal: return ["103-77"]
        case .exeggutorAlola: return ["103-78"]
        case .marowakNormal: return ["105-79"]
        case .marowakAlola: return ["105-80"]
        case .rotomNormal: return ["479-81"]
        case .rotomFrost: return ["479-82"]
        case .rotomFan: return ["479-83"]
        case .rotomMow: return ["479-84"]
        case .rotomWash: return ["479-85"]
        case .rotomHeat: return ["479-86"]
        case .wormadamPlant: return ["413-87"]
        case .wormadamSandy: return ["413-88"]
        case .wormadamTrash: return ["413-89"]
        case .giratinaAltered: return ["487-90"]
        case .giratinaOrigin: return ["487-91"]
        case .shayminSky: return ["492-92"]
        case .shayminLand: return ["492-93"]
        case .cherrimOvercast: return ["421-94"]
        case .cherrimSunny: return ["421-95"]
        case .shellosWestSea: return ["422-96"]
        case .shellosEastSea: return ["422-97"]
        case .gastrodonWestSea: return ["423-98"]
        case .gastrodonEastSea: return ["423-99"]
        case .arceusNormal: return ["493-100"]
        case .arceusFighting: return ["493-101"]
        case .arceusFlying: return ["493-102"]
        case .arceusPoison: return ["493-103"]
        case .arceusGround: return ["493-104"]
        case .arceusRock: return ["493-105"]
        case .arceusBug: return ["493-106"]
        case .arceusGhost: return ["493-107"]
        case .arceusSteel: return ["493-108"]
        case .arceusFire: return ["493-109"]
        case .arceusWater: return ["493-110"]
        case .arceusGrass: return ["493-111"]
        case .arceusElectric: return ["493-112"]
        case .arceusPsychic: return ["493-113"]
        case .arceusIce: return ["493-114"]
        case .arceusDragon: return ["493-115"]
        case .arceusDark: return ["493-116"]
        case .arceusFairy: return ["493-117"]
        case .burmyPlant: return ["412-118"]
        case .burmySandy: return ["412-119"]
        case .burmyTrash: return ["412-120"]
        case .spinda08: return ["327-121"]
        case .spinda09: return ["327-122"]
        case .spinda10: return ["327-123"]
        case .spinda11: return ["327-124"]
        case .spinda12: return ["327-125"]
        case .spinda13: return ["327-126"]
        case .spinda14: return ["327-127"]
        case .spinda15: return ["327-128"]
        case .spinda16: return ["327-129"]
        case .spinda17: return ["327-130"]
        case .spinda18: return ["327-131"]
        case .spinda19: return ["327-132"]
        case .mewtwoA: return ["150-133"]
        case .mewtwoNormal: return ["150-135"]
        case .rattataShadow: return ["19-153"]
        case .rattataPurified: return ["19-154"]
        case .raticateShadow: return ["20-155"]
        case .raticatePurified: return ["20-156"]
        case .zubatNormal: return ["41-157"]
        case .zubatShadow: return ["41-158"]
        case .zubatPurified: return ["41-159"]
        case .golbatNormal: return ["42-160"]
        case .golbatShadow: return ["42-161"]
        case .golbatPurified: return ["42-162"]
        case .bulbasaurNormal: return ["1-163"]
        case .bulbasaurShadow: return ["1-164"]
        case .bulbasaurPurified: return ["1-165"]
        case .ivysaurNormal: return ["2-166"]
        case .ivysaurShadow: return ["2-167"]
        case .ivysaurPurified: return ["2-168"]
        case .venusaurNormal: return ["3-169"]
        case .venusaurShadow: return ["3-170"]
        case .venusaurPurified: return ["3-171"]
        case .charmanderNormal: return ["4-172"]
        case .charmanderShadow: return ["4-173"]
        case .charmanderPurified: return ["4-174"]
        case .charmeleonNormal: return ["5-175"]
        case .charmeleonShadow: return ["5-176"]
        case .charmeleonPurified: return ["5-177"]
        case .charizardNormal: return ["6-178"]
        case .charizardShadow: return ["6-179"]
        case .charizardPurified: return ["6-180"]
        case .squirtleNormal: return ["7-181"]
        case .squirtleShadow: return ["7-182"]
        case .squirtlePurified: return ["7-183"]
        case .wartortleNormal: return ["8-184"]
        case .wartortleShadow: return ["8-185"]
        case .wartortlePurified: return ["8-186"]
        case .blastoiseNormal: return ["9-187"]
        case .blastoiseShadow: return ["9-188"]
        case .blastoisePurified: return ["9-189"]
        case .dratiniNormal: return ["147-190"]
        case .dratiniShadow: return ["147-191"]
        case .dratiniPurified: return ["147-192"]
        case .dragonairNormal: return ["148-193"]
        case .dragonairShadow: return ["148-194"]
        case .dragonairPurified: return ["148-195"]
        case .dragoniteNormal: return ["149-196"]
        case .dragoniteShadow: return ["149-197"]
        case .dragonitePurified: return ["149-198"]
        case .snorlaxNormal: return ["143-199"]
        case .snorlaxShadow: return ["143-200"]
        case .snorlaxPurified: return ["143-201"]
        case .crobatNormal: return ["169-202"]
        case .crobatShadow: return ["169-203"]
        case .crobatPurified: return ["169-204"]
        case .mudkipNormal: return ["258-205"]
        case .mudkipShadow: return ["258-206"]
        case .mudkipPurified: return ["258-207"]
        case .marshtompNormal: return ["259-208"]
        case .marshtompShadow: return ["259-209"]
        case .marshtompPurified: return ["259-210"]
        case .swampertNormal: return ["260-211"]
        case .swampertShadow: return ["260-212"]
        case .swampertPurified: return ["260-213"]
        case .drowzeeNormal: return ["96-214"]
        case .drowzeeShadow: return ["96-215"]
        case .drowzeePurified: return ["96-216"]
        case .hypnoNormal: return ["97-217"]
        case .hypnoShadow: return ["97-218"]
        case .hypnoPurified: return ["97-219"]
        case .grimerShadow: return ["88-220"]
        case .grimerPurified: return ["88-221"]
        case .mukShadow: return ["89-222"]
        case .mukPurified: return ["89-223"]
        case .cuboneNormal: return ["104-224"]
        case .cuboneShadow: return ["104-225"]
        case .cubonePurified: return ["104-226"]
        case .marowakShadow: return ["105-227"]
        case .marowakPurified: return ["105-228"]
        case .houndourNormal: return ["228-229"]
        case .houndourShadow: return ["228-230"]
        case .houndourPurified: return ["228-231"]
        case .houndoomNormal: return ["229-232"]
        case .houndoomShadow: return ["229-233"]
        case .houndoomPurified: return ["229-234"]
        case .poliwagNormal: return ["60-235"]
        case .poliwagShadow: return ["60-236"]
        case .poliwagPurified: return ["60-237"]
        case .poliwhirlNormal: return ["61-238"]
        case .poliwhirlShadow: return ["61-239"]
        case .poliwhirlPurified: return ["61-240"]
        case .poliwrathNormal: return ["62-241"]
        case .poliwrathShadow: return ["62-242"]
        case .poliwrathPurified: return ["62-243"]
        case .politoedNormal: return ["186-244"]
        case .politoedShadow: return ["186-245"]
        case .politoedPurified: return ["186-246"]
        case .scytherNormal: return ["123-247"]
        case .scytherShadow: return ["123-248"]
        case .scytherPurified: return ["123-249"]
        case .scizorNormal: return ["212-250"]
        case .scizorShadow: return ["212-251"]
        case .scizorPurified: return ["212-252"]
        case .magikarpNormal: return ["129-253"]
        case .magikarpShadow: return ["129-254"]
        case .magikarpPurified: return ["129-255"]
        case .gyaradosNormal: return ["130-256"]
        case .gyaradosShadow: return ["130-257"]
        case .gyaradosPurified: return ["130-258"]
        case .venonatNormal: return ["48-259"]
        case .venonatShadow: return ["48-260"]
        case .venonatPurified: return ["48-261"]
        case .venomothNormal: return ["49-262"]
        case .venomothShadow: return ["49-263"]
        case .venomothPurified: return ["49-264"]
        case .oddishNormal: return ["43-265"]
        case .oddishShadow: return ["43-266"]
        case .oddishPurified: return ["43-267"]
        case .gloomNormal: return ["44-268"]
        case .gloomShadow: return ["44-269"]
        case .gloomPurified: return ["44-270"]
        case .vileplumeNormal: return ["45-271"]
        case .vileplumeShadow: return ["45-272"]
        case .vileplumePurified: return ["45-273"]
        case .bellossomNormal: return ["182-274"]
        case .bellossomShadow: return ["182-275"]
        case .bellossomPurified: return ["182-276"]
        case .hitmonchanNormal: return ["107-277"]
        case .hitmonchanShadow: return ["107-278"]
        case .hitmonchanPurified: return ["107-279"]
        case .growlitheNormal: return ["58-280"]
        case .growlitheShadow: return ["58-281"]
        case .growlithePurified: return ["58-282"]
        case .arcanineNormal: return ["59-283"]
        case .arcanineShadow: return ["59-284"]
        case .arcaninePurified: return ["59-285"]
        case .psyduckNormal: return ["54-286"]
        case .psyduckShadow: return ["54-287"]
        case .psyduckPurified: return ["54-288"]
        case .golduckNormal: return ["55-289"]
        case .golduckShadow: return ["55-290"]
        case .golduckPurified: return ["55-291"]
        case .raltsNormal: return ["280-292"]
        case .raltsShadow: return ["280-293"]
        case .raltsPurified: return ["280-294"]
        case .kirliaNormal: return ["281-295"]
        case .kirliaShadow: return ["281-296"]
        case .kirliaPurified: return ["281-297"]
        case .gardevoirNormal: return ["282-298"]
        case .gardevoirShadow: return ["282-299"]
        case .gardevoirPurified: return ["282-300"]
        case .galladeNormal: return ["475-301"]
        case .galladeShadow: return ["475-302"]
        case .galladePurified: return ["475-303"]
        case .abraNormal: return ["63-304"]
        case .abraShadow: return ["63-305"]
        case .abraPurified: return ["63-306"]
        case .kadabraNormal: return ["63-307"]
        case .kadabraShadow: return ["63-308"]
        case .kadabraPurified: return ["63-309"]
        case .alakazamNormal: return ["65-310"]
        case .alakazamShadow: return ["65-311"]
        case .alakazamPurified: return ["65-312"]
        case .larvitarNormal: return ["246-313"]
        case .larvitarShadow: return ["246-314"]
        case .larvitarPurified: return ["246-315"]
        case .pupitarNormal: return ["247-316"]
        case .pupitarShadow: return ["247-317"]
        case .pupitarPurified: return ["247-318"]
        case .tyranitarNormal: return ["248-319"]
        case .tyranitarShadow: return ["248-320"]
        case .tyranitarPurified: return ["248-321"]
        case .laprasNormal: return ["131-322"]
        case .laprasShadow: return ["131-323"]
        case .laprasPurified: return ["131-324"]
        case .pikachuNormal: return ["25-598"]
        case .wurmpleNormal: return ["265-600"]
        case .wobbuffetNormal: return ["202-602"]
        case .cacneaNormal: return ["331-610"]
        case .cacneaShadow: return ["331-611"]
        case .cacneaPurified: return ["331-612"]
        case .cacturneNormal: return ["332-613"]
        case .cacturneShadow: return ["332-614"]
        case .cacturnePurified: return ["332-615"]
        case .weedleNormal: return ["13-616"]
        case .weedleShadow: return ["13-617"]
        case .weedlePurified: return ["13-618"]
        case .kakunaNormal: return ["14-619"]
        case .kakunaShadow: return ["14-620"]
        case .kakunaPurified: return ["14-621"]
        case .beedrillNormal: return ["15-622"]
        case .beedrillShadow: return ["15-623"]
        case .beedrillPurified: return ["15-624"]
        case .seedotNormal: return ["273-625"]
        case .seedotShadow: return ["273-626"]
        case .seedotPurified: return ["273-627"]
        case .nuzleafNormal: return ["274-628"]
        case .nuzleafShadow: return ["274-629"]
        case .nuzleafPurified: return ["274-630"]
        case .shiftryNormal: return ["275-631"]
        case .shiftryShadow: return ["275-632"]
        case .shiftryPurified: return ["275-633"]
        case .magmarNormal: return ["126-634"]
        case .magmarShadow: return ["126-635"]
        case .magmarPurified: return ["126-636"]
        case .magmortarNormal: return ["467-637"]
        case .magmortarShadow: return ["467-638"]
        case .magmortarPurified: return ["467-639"]
        case .electabuzzNormal: return ["125-640"]
        case .electabuzzShadow: return ["125-641"]
        case .electabuzzPurified: return ["125-642"]
        case .electivireNormal: return ["466-643"]
        case .electivireShadow: return ["466-644"]
        case .electivirePurified: return ["466-645"]
        case .mareepNormal: return ["179-646"]
        case .mareepShadow: return ["179-647"]
        case .mareepPurified: return ["179-648"]
        case .flaaffyNormal: return ["180-649"]
        case .flaaffyShadow: return ["180-650"]
        case .flaaffyPurified: return ["180-651"]
        case .ampharosNormal: return ["181-652"]
        case .ampharosShadow: return ["181-653"]
        case .ampharosPurified: return ["181-654"]
        case .magnemiteNormal: return ["81-655"]
        case .magnemiteShadow: return ["81-656"]
        case .magnemitePurified: return ["81-657"]
        case .magnetonNormal: return ["82-658"]
        case .magnetonShadow: return ["82-659"]
        case .magnetonPurified: return ["82-660"]
        case .magnezoneNormal: return ["462-661"]
        case .magnezoneShadow: return ["462-662"]
        case .magnezonePurified: return ["462-663"]
        case .bellsproutNormal: return ["69-664"]
        case .bellsproutShadow: return ["69-665"]
        case .bellsproutPurified: return ["69-666"]
        case .weepinbellNormal: return ["70-667"]
        case .weepinbellShadow: return ["70-668"]
        case .weepinbellPurified: return ["70-669"]
        case .victreebelNormal: return ["71-670"]
        case .victreebelShadow: return ["71-671"]
        case .victreebelPurified: return ["71-672"]
        case .sandshrewShadow: return ["27-673"]
        case .sandshrewPurified: return ["27-674"]
        case .sandslashShadow: return ["28-675"]
        case .sandslashPurified: return ["28-676"]
        case .porygonNormal: return ["137-677"]
        case .porygonShadow: return ["137-678"]
        case .porygonPurified: return ["137-679"]
        case .porygon2Normal: return ["233-680"]
        case .porygon2Shadow: return ["233-681"]
        case .porygon2Purified: return ["233-682"]
        case .porygonZNormal: return ["474-683"]
        case .porygonZShadow: return ["474-684"]
        case .porygonZPurified: return ["474-685"]
        case .wobbuffetShadow: return ["202-686"]
        case .wobbuffetPurified: return ["202-687"]
        case .turtwigNormal: return ["387-688"]
        case .turtwigShadow: return ["387-689"]
        case .turtwigPurified: return ["387-690"]
        case .grotleNormal: return ["388-691"]
        case .grotleShadow: return ["388-692"]
        case .grotlePurified: return ["388-693"]
        case .torterraNormal: return ["389-694"]
        case .torterraShadow: return ["389-695"]
        case .torterraPurified: return ["389-696"]
        case .ekansNormal: return ["23-697"]
        case .ekansShadow: return ["23-698"]
        case .ekansPurified: return ["23-699"]
        case .arbokNormal: return ["24-700"]
        case .arbokShadow: return ["24-701"]
        case .arbokPurified: return ["24-702"]
        case .koffingNormal: return ["109-703"]
        case .koffingShadow: return ["109-704"]
        case .koffingPurified: return ["109-705"]
        case .weezingNormal: return ["110-706"]
        case .weezingShadow: return ["110-707"]
        case .weezingPurified: return ["110-708"]
        case .meowthShadow: return ["52-709"]
        case .meowthPurified: return ["52-710"]
        case .persianShadow: return ["53-711"]
        case .persianPurified: return ["53-712"]
        case .hitmonleeNormal: return ["106-713"]
        case .hitmonleeShadow: return ["106-714"]
        case .hitmonleePurified: return ["106-715"]
        case .articunoNormal: return ["144-716"]
        case .articunoShadow: return ["144-717"]
        case .articunoPurified: return ["144-718"]
        case .misdreavusNormal: return ["200-719"]
        case .misdreavusShadow: return ["200-720"]
        case .misdreavusPurified: return ["200-721"]
        case .mismagiusNormal: return ["429-722"]
        case .mismagiusShadow: return ["429-723"]
        case .mismagiusPurified: return ["429-724"]
        case .vulpixShadow: return ["37-725"]
        case .vulpixPurified: return ["37-726"]
        case .ninetalesShadow: return ["38-727"]
        case .ninetalesPurified: return ["38-728"]
        case .exeggcuteNormal: return ["102-729"]
        case .exeggcuteShadow: return ["102-730"]
        case .exeggcutePurified: return ["102-731"]
        case .exeggutorShadow: return ["103-732"]
        case .exeggutorPurified: return ["103-733"]
        case .carvanhaNormal: return ["318-734"]
        case .carvanhaShadow: return ["318-735"]
        case .carvanhaPurified: return ["318-736"]
        case .sharpedoNormal: return ["319-737"]
        case .sharpedoShadow: return ["319-738"]
        case .sharpedoPurified: return ["319-739"]
        case .omanyteNormal: return ["138-740"]
        case .omanyteShadow: return ["138-741"]
        case .omanytePurified: return ["138-742"]
        case .omastarNormal: return ["139-743"]
        case .omastarShadow: return ["139-744"]
        case .omastarPurified: return ["139-745"]
        case .trapinchNormal: return ["328-746"]
        case .trapinchShadow: return ["328-747"]
        case .trapinchPurified: return ["328-748"]
        case .vibravaNormal: return ["329-749"]
        case .vibravaShadow: return ["329-750"]
        case .vibravaPurified: return ["329-751"]
        case .flygonNormal: return ["330-752"]
        case .flygonShadow: return ["330-753"]
        case .flygonPurified: return ["330-754"]
        case .bagonNormal: return ["371-755"]
        case .bagonShadow: return ["371-756"]
        case .bagonPurified: return ["371-757"]
        case .shelgonNormal: return ["372-758"]
        case .shelgonShadow: return ["372-759"]
        case .shelgonPurified: return ["372-760"]
        case .salamenceNormal: return ["373-761"]
        case .salamenceShadow: return ["373-762"]
        case .salamencePurified: return ["373-763"]
        case .beldumNormal: return ["374-764"]
        case .beldumShadow: return ["374-765"]
        case .beldumPurified: return ["374-766"]
        case .metangNormal: return ["375-767"]
        case .metangShadow: return ["375-768"]
        case .metangPurified: return ["375-769"]
        case .metagrossNormal: return ["376-770"]
        case .metagrossShadow: return ["376-771"]
        case .metagrossPurified: return ["376-772"]
        case .zapdosNormal: return ["145-773"]
        case .zapdosShadow: return ["145-774"]
        case .zapdosPurified: return ["145-775"]
        case .nidoranNormal: return ["29-776", "32-776"]
        case .nidoranShadow: return ["29-777", "32-777"]
        case .nidoranPurified: return ["29-778", "32-778"]
        case .nidorinaNormal: return ["30-779"]
        case .nidorinaShadow: return ["30-780"]
        case .nidorinaPurified: return ["30-781"]
        case .nidoqueenNormal: return ["31-782"]
        case .nidoqueenShadow: return ["31-783"]
        case .nidoqueenPurified: return ["31-784"]
        case .nidorinoNormal: return ["33-785"]
        case .nidorinoShadow: return ["33-786"]
        case .nidorinoPurified: return ["33-787"]
        case .nidokingNormal: return ["34-788"]
        case .nidokingShadow: return ["34-789"]
        case .nidokingPurified: return ["34-790"]
        case .stunkyNormal: return ["434-791"]
        case .stunkyShadow: return ["434-792"]
        case .stunkyPurified: return ["434-793"]
        case .skuntankNormal: return ["435-794"]
        case .skuntankShadow: return ["435-795"]
        case .skuntankPurified: return ["435-796"]
        case .sneaselNormal: return ["215-797"]
        case .sneaselShadow: return ["215-798"]
        case .sneaselPurified: return ["215-799"]
        case .weavileNormal: return ["461-800"]
        case .weavileShadow: return ["461-801"]
        case .weavilePurified: return ["461-802"]
        case .gligarNormal: return ["207-803"]
        case .gligarShadow: return ["207-804"]
        case .gligarPurified: return ["207-805"]
        case .gliscorNormal: return ["472-806"]
        case .gliscorShadow: return ["472-807"]
        case .gliscorPurified: return ["472-808"]
        case .machopNormal: return ["66-809"]
        case .machopShadow: return ["66-810"]
        case .machopPurified: return ["66-811"]
        case .machokeNormal: return ["67-812"]
        case .machokeShadow: return ["67-813"]
        case .machokePurified: return ["67-814"]
        case .machampNormal: return ["68-815"]
        case .machampShadow: return ["68-816"]
        case .machampPurified: return ["68-817"]
        case .chimcharNormal: return ["390-818"]
        case .chimcharShadow: return ["390-819"]
        case .chimcharPurified: return ["390-820"]
        case .monfernoNormal: return ["391-821"]
        case .monfernoShadow: return ["391-822"]
        case .monfernoPurified: return ["391-823"]
        case .infernapeNormal: return ["392-824"]
        case .infernapeShadow: return ["392-825"]
        case .infernapePurified: return ["392-826"]
        case .shuckleNormal: return ["213-827"]
        case .shuckleShadow: return ["213-828"]
        case .shucklePurified: return ["213-829"]
        case .absolNormal: return ["359-830"]
        case .absolShadow: return ["359-831"]
        case .absolPurified: return ["359-832"]
        case .mawileNormal: return ["303-833"]
        case .mawileShadow: return ["303-834"]
        case .mawilePurified: return ["303-835"]
        case .moltresNormal: return ["146-836"]
        case .moltresShadow: return ["146-837"]
        case .moltresPurified: return ["146-838"]
        case .kangaskhanNormal: return ["115-839"]
        case .kangaskhanShadow: return ["115-840"]
        case .kangaskhanPurified: return ["115-841"]
        case .diglettShadow: return ["50-842"]
        case .diglettPurified: return ["50-843"]
        case .dugtrioShadow: return ["51-844"]
        case .dugtrioPurified: return ["51-845"]
        case .rhyhornNormal: return ["111-846"]
        case .rhyhornShadow: return ["111-847"]
        case .rhyhornPurified: return ["111-848"]
        case .rhydonNormal: return ["112-849"]
        case .rhydonShadow: return  ["112-850"]
        case .rhydonPurified: return  ["112-851"]
        case .rhyperiorNormal: return ["464-852"]
        case .rhyperiorShadow: return ["464-853"]
        case .rhyperiorPurified: return ["464-854"]
        case .murkrowNormal: return ["198-855"]
        case .murkrowShadow: return ["198-856"]
        case .murkrowPurified: return ["198-857"]
        case .honchkrowNormal: return ["430-858"]
        case .honchkrowShadow: return ["430-859"]
        case .honchkrowPurified: return ["430-860"]
        case .gibleNormal: return ["443-861"]
        case .gibleShadow: return ["443-862"]
        case .giblePurified: return ["443-863"]
        case .gabiteNormal: return ["444-864"]
        case .gabiteShadow: return ["444-865"]
        case .gabitePurified: return ["444-866"]
        case .garchompNormal: return ["445-867"]
        case .garchompShadow: return ["445-868"]
        case .garchompPurified: return ["445-869"]
        case .krabbyNormal: return ["98-870"]
        case .krabbyShadow: return ["98-871"]
        case .krabbyPurified: return ["98-872"]
        case .kinglerNormal: return ["99-873"]
        case .kinglerShadow: return ["99-874"]
        case .kinglerPurified: return ["99-875"]
        case .shellderNormal: return ["90-876"]
        case .shellderShadow: return ["90-877"]
        case .shellderPurified: return ["90-878"]
        case .cloysterNormal: return ["91-879"]
        case .cloysterShadow: return ["91-880"]
        case .cloysterPurified: return ["91-881"]
        case .geodudeShadow: return ["74-882"]
        case .geodudePurified: return ["74-883"]
        case .gravelerShadow: return ["75-884"]
        case .gravelerPurified: return ["75-885"]
        case .golemShadow: return ["76-886"]
        case .golemPurified: return ["76-887"]
        case .hippopotasNormal: return ["449-888"]
        case .hippopotasShadow: return ["449-889"]
        case .hippopotasPurified: return ["449-890"]
        case .hippowdonNormal: return ["450-891"]
        case .hippowdonShadow: return ["450-892"]
        case .hippowdonPurified: return ["450-893"]
        case .basculinRedStriped: return ["550-136"]
        case .basculinBlueStriped: return ["550-137"]
        case .darmanitanStandard: return ["555-138"]
        case .darmanitanZen: return ["555-139"]
        case .tornadusIncarnate: return ["641-140"]
        case .tornadusTherian: return ["641-141"]
        case .thundurusIncarnate: return ["642-142"]
        case .thundurusTherian: return ["642-143"]
        case .landorusIncarnate: return ["645-144"]
        case .landorusTherian: return ["645-145"]
        case .kyuremNormal: return ["646-146"]
        case .kyuremBlack: return ["646-147"]
        case .kyuremWhite: return ["646-148"]
        case .keldeoOrdinary: return ["647-149"]
        case .keldeoResolute: return ["647-150"]
        case .meloettaAria: return ["648-151"]
        case .meloettaPirouette: return ["648-152"]
        case .deerlingSpring: return ["585-585"]
        case .deerlingSummer: return ["585-586"]
        case .deerlingAutumn: return ["585-587"]
        case .deerlingWinter: return ["585-588"]
        case .sawsbuckSpring: return ["586-589"]
        case .sawsbuckSummer: return ["586-590"]
        case .sawsbuckAutumn: return ["586-591"]
        case .sawsbuckWinter: return ["586-592"]
        case .genesectNormal: return ["649-593"]
        case .genesectShock: return ["649-594"]
        case .genesectBurn: return ["649-595"]
        case .genesectChill: return ["649-596"]
        case .genesectDouse: return ["649-597"]
        case .pikachuFall2019: return ["25-894"]
        case .squirtleFall2019: return ["7-895"]
        case .charmanderFall2019: return ["4-896"]
        case .bulbasaurFall2019: return ["1-897"]
        case .pinsirNormal: return ["127-898"]
        case .pinsirShadow: return ["127-899"]
        case .pinsirPurified: return ["127-900"]
        case .pikachuVs2019: return ["25-901"]
        case .onixNormal: return ["95-902"]
        case .onixShadow: return ["95-903"]
        case .onixPurified: return ["95-904"]
        case .steelixNormal: return ["208-905"]
        case .steelixShadow: return ["208-906"]
        case .steelixPurified: return ["208-907"]
        case .shuppetNormal: return ["353-908"]
        case .shuppetShadow: return ["353-909"]
        case .shuppetPurified: return ["353-910"]
        case .banetteNormal: return ["354-911"]
        case .banetteShadow: return ["354-912"]
        case .banettePurified: return ["354-913"]
        case .duskullNormal: return ["355-914"]
        case .duskullShadow: return ["355-915"]
        case .duskullPurified: return ["355-916"]
        case .dusclopsNormal: return ["356-917"]
        case .dusclopsShadow: return ["356-918"]
        case .dusclopsPurified: return ["356-919"]
        case .dusknoirNormal: return ["477-920"]
        case .dusknoirShadow: return ["477-921"]
        case .dusknoirPurified: return ["477-922"]
        case .sableyeNormal: return ["302-923"]
        case .sableyeShadow: return ["302-924"]
        case .sableyePurified: return ["302-925"]
        case .snoruntNormal: return ["361-926"]
        case .snoruntShadow: return ["361-927"]
        case .snoruntPurified: return ["361-928"]
        case .glalieNormal: return ["362-929"]
        case .glalieShadow: return ["362-930"]
        case .glaliePurified: return ["362-931"]
        case .snoverNormal: return ["459-932"]
        case .snoverShadow: return ["459-933"]
        case .snoverPurified: return ["459-934"]
        case .abomasnowNormal: return ["460-935"]
        case .abomasnowShadow: return ["460-936"]
        case .abomasnowPurified: return ["460-937"]
        case .delibirdNormal: return ["225-938"]
        case .delibirdShadow: return ["225-939"]
        case .delibirdPurified: return ["225-940"]
        case .stantlerNormal: return ["234-941"]
        case .stantlerShadow: return ["234-942"]
        case .stantlerPurified: return ["234-943"]
        case .weezingGalarian: return ["110-944"]
        case .zigzagoonNormal: return ["263-945"]
        case .zigzagoonGalarian: return ["263-946"]
        case .linooneNormal: return ["264-947"]
        case .linooneGalarian: return ["264-948"]
        case .pikachuCopy2019: return ["25-949"]
        case .venusaurCopy2019: return ["3-950"]
        case .charizardCopy2019: return ["6-951"]
        case .blastoiseCopy2019: return ["9-952"]
        case .caterpieNormal: return ["953"]
        case .caterpieShadow: return ["954"]
        case .caterpiePurified: return ["955"]
        case .metapodNormal: return ["956"]
        case .metapodShadow: return ["957"]
        case .metapodPurified: return ["958"]
        case .butterfreeNormal: return ["959"]
        case .butterfreeShadow: return ["960"]
        case .butterfreePurified: return ["961"]
        case .pidgeyNormal: return ["962"]
        case .pidgeyShadow: return ["963"]
        case .pidgeyPurified: return ["964"]
        case .pidgeottoNormal: return ["965"]
        case .pidgeottoShadow: return ["966"]
        case .pidgeottoPurified: return ["967"]
        case .pidgeotNormal: return ["968"]
        case .pidgeotShadow: return ["969"]
        case .pidgeotPurified: return ["970"]
        case .spearowNormal: return ["971"]
        case .spearowShadow: return ["972"]
        case .spearowPurified: return ["973"]
        case .fearowNormal: return ["974"]
        case .fearowShadow: return ["975"]
        case .fearowPurified: return ["976"]
        case .pikachuShadow: return ["977"]
        case .pikachuPurified: return ["978"]
        case .raichuShadow: return ["979"]
        case .raichuPurified: return ["980"]
        case .clefairyNormal: return ["981"]
        case .clefairyShadow: return ["982"]
        case .clefairyPurified: return ["983"]
        case .clefableNormal: return ["984"]
        case .clefableShadow: return ["985"]
        case .clefablePurified: return ["986"]
        case .jigglypuffNormal: return ["987"]
        case .jigglypuffShadow: return ["988"]
        case .jigglypuffPurified: return ["989"]
        case .wigglytuffNormal: return ["990"]
        case .wigglytuffShadow: return ["991"]
        case .wigglytuffPurified: return ["992"]
        case .parasNormal: return ["993"]
        case .parasShadow: return ["994"]
        case .parasPurified: return ["995"]
        case .parasectNormal: return ["996"]
        case .parasectShadow: return ["997"]
        case .parasectPurified: return ["998"]
        case .mankeyNormal: return ["999"]
        case .mankeyShadow: return ["1000"]
        case .mankeyPurified: return ["1001"]
        case .primeapeNormal: return ["1002"]
        case .primeapeShadow: return ["1003"]
        case .primeapePurified: return ["1004"]
        case .tentacoolNormal: return ["1005"]
        case .tentacoolShadow: return ["1006"]
        case .tentacoolPurified: return ["1007"]
        case .tentacruelNormal: return ["1008"]
        case .tentacruelShadow: return ["1009"]
        case .tentacruelPurified: return ["1010"]
        case .ponytaNormal: return ["1011"]
        case .ponytaShadow: return ["1012"]
        case .ponytaPurified: return ["1013"]
        case .rapidashNormal: return ["1014"]
        case .rapidashShadow: return ["1015"]
        case .rapidashPurified: return ["1016"]
        case .slowpokeNormal: return ["1017"]
        case .slowpokeShadow: return ["1018"]
        case .slowpokePurified: return ["1019"]
        case .slowbroNormal: return ["1020"]
        case .slowbroShadow: return ["1021"]
        case .slowbroPurified: return ["1022"]
        case .farfetchdNormal: return ["1023"]
        case .farfetchdShadow: return ["1024"]
        case .farfetchdPurified: return ["1025"]
        case .doduoNormal: return ["1026"]
        case .doduoShadow: return ["1027"]
        case .doduoPurified: return ["1028"]
        case .dodrioNormal: return ["1029"]
        case .dodrioShadow: return ["1030"]
        case .dodrioPurified: return ["1031"]
        case .seelNormal: return ["1032"]
        case .seelShadow: return ["1033"]
        case .seelPurified: return ["1034"]
        case .dewgongNormal: return ["1035"]
        case .dewgongShadow: return ["1036"]
        case .dewgongPurified: return ["1037"]
        case .gastlyNormal: return ["1038"]
        case .gastlyShadow: return ["1039"]
        case .gastlyPurified: return ["1040"]
        case .haunterNormal: return ["1041"]
        case .haunterShadow: return ["1042"]
        case .haunterPurified: return ["1043"]
        case .gengarNormal: return ["1044"]
        case .gengarShadow: return ["1045"]
        case .gengarPurified: return ["1046"]
        case .voltorbNormal: return ["1047"]
        case .voltorbShadow: return ["1048"]
        case .voltorbPurified: return ["1049"]
        case .electrodeNormal: return ["1050"]
        case .electrodeShadow: return ["1051"]
        case .electrodePurified: return ["1052"]
        case .lickitungNormal: return ["1053"]
        case .lickitungShadow: return ["1054"]
        case .lickitungPurified: return ["1055"]
        case .chanseyNormal: return ["1056"]
        case .chanseyShadow: return ["1057"]
        case .chanseyPurified: return ["1058"]
        case .tangelaNormal: return ["1059"]
        case .tangelaShadow: return ["1060"]
        case .tangelaPurified: return ["1061"]
        case .horseaNormal: return ["1062"]
        case .horseaShadow: return ["1063"]
        case .horseaPurified: return ["1064"]
        case .seadraNormal: return ["1065"]
        case .seadraShadow: return ["1066"]
        case .seadraPurified: return ["1067"]
        case .goldeenNormal: return ["1068"]
        case .goldeenShadow: return ["1069"]
        case .goldeenPurified: return ["1070"]
        case .seakingNormal: return ["1071"]
        case .seakingShadow: return ["1072"]
        case .seakingPurified: return ["1073"]
        case .staryuNormal: return ["1074"]
        case .staryuShadow: return ["1075"]
        case .staryuPurified: return ["1076"]
        case .starmieNormal: return ["1077"]
        case .starmieShadow: return ["1078"]
        case .starmiePurified: return ["1079"]
        case .mrMimeNormal: return ["1080"]
        case .mrMimeShadow: return ["1081"]
        case .mrMimePurified: return ["1082"]
        case .jynxNormal: return ["1083"]
        case .jynxShadow: return ["1084"]
        case .jynxPurified: return ["1085"]
        case .taurosNormal: return ["1086"]
        case .taurosShadow: return ["1087"]
        case .taurosPurified: return ["1088"]
        case .dittoNormal: return ["1089"]
        case .dittoShadow: return ["1090"]
        case .dittoPurified: return ["1091"]
        case .eeveeNormal: return ["1092"]
        case .eeveeShadow: return ["1093"]
        case .eeveePurified: return ["1094"]
        case .vaporeonNormal: return ["1095"]
        case .vaporeonShadow: return ["1096"]
        case .vaporeonPurified: return ["1097"]
        case .jolteonNormal: return ["1098"]
        case .jolteonShadow: return ["1099"]
        case .jolteonPurified: return ["1100"]
        case .flareonNormal: return ["1101"]
        case .flareonShadow: return ["1102"]
        case .flareonPurified: return ["1103"]
        case .kabutoNormal: return ["1104"]
        case .kabutoShadow: return ["1105"]
        case .kabutoPurified: return ["1106"]
        case .kabutopsNormal: return ["1107"]
        case .kabutopsShadow: return ["1108"]
        case .kabutopsPurified: return ["1109"]
        case .aerodactylNormal: return ["1110"]
        case .aerodactylShadow: return ["1111"]
        case .aerodactylPurified: return ["1112"]
        case .mewtwoShadow: return ["1113"]
        case .mewtwoPurified: return ["1114"]
        case .mewNormal: return ["1115"]
        case .mewShadow: return ["1116"]
        case .mewPurified: return ["1117"]
        case .chikoritaNormal: return ["1118"]
        case .chikoritaShadow: return ["1119"]
        case .chikoritaPurified: return ["1120"]
        case .bayleefNormal: return ["1121"]
        case .bayleefShadow: return ["1122"]
        case .bayleefPurified: return ["1123"]
        case .meganiumNormal: return ["1124"]
        case .meganiumShadow: return ["1125"]
        case .meganiumPurified: return ["1126"]
        case .cyndaquilNormal: return ["1127"]
        case .cyndaquilShadow: return ["1128"]
        case .cyndaquilPurified: return ["1129"]
        case .quilavaNormal: return ["1130"]
        case .quilavaShadow: return ["1131"]
        case .quilavaPurified: return ["1132"]
        case .typhlosionNormal: return ["1133"]
        case .typhlosionShadow: return ["1134"]
        case .typhlosionPurified: return ["1135"]
        case .totodileNormal: return ["1136"]
        case .totodileShadow: return ["1137"]
        case .totodilePurified: return ["1138"]
        case .croconawNormal: return ["1139"]
        case .croconawShadow: return ["1140"]
        case .croconawPurified: return ["1141"]
        case .feraligatrNormal: return ["1142"]
        case .feraligatrShadow: return ["1143"]
        case .feraligatrPurified: return ["1144"]
        case .sentretNormal: return ["1145"]
        case .sentretShadow: return ["1146"]
        case .sentretPurified: return ["1147"]
        case .furretNormal: return ["1148"]
        case .furretShadow: return ["1149"]
        case .furretPurified: return ["1150"]
        case .hoothootNormal: return ["1151"]
        case .hoothootShadow: return ["1152"]
        case .hoothootPurified: return ["1153"]
        case .noctowlNormal: return ["1154"]
        case .noctowlShadow: return ["1155"]
        case .noctowlPurified: return ["1156"]
        case .ledybaNormal: return ["1157"]
        case .ledybaShadow: return ["1158"]
        case .ledybaPurified: return ["1159"]
        case .ledianNormal: return ["1160"]
        case .ledianShadow: return ["1161"]
        case .ledianPurified: return ["1162"]
        case .spinarakNormal: return ["1163"]
        case .spinarakShadow: return ["1164"]
        case .spinarakPurified: return ["1165"]
        case .ariadosNormal: return ["1166"]
        case .ariadosShadow: return ["1167"]
        case .ariadosPurified: return ["1168"]
        case .chinchouNormal: return ["1169"]
        case .chinchouShadow: return ["1170"]
        case .chinchouPurified: return ["1171"]
        case .lanturnNormal: return ["1172"]
        case .lanturnShadow: return ["1173"]
        case .lanturnPurified: return ["1174"]
        case .pichuNormal: return ["1175"]
        case .pichuShadow: return ["1176"]
        case .pichuPurified: return ["1177"]
        case .cleffaNormal: return ["1178"]
        case .cleffaShadow: return ["1179"]
        case .cleffaPurified: return ["1180"]
        case .igglybuffNormal: return ["1181"]
        case .igglybuffShadow: return ["1182"]
        case .igglybuffPurified: return ["1183"]
        case .togepiNormal: return ["1184"]
        case .togepiShadow: return ["1185"]
        case .togepiPurified: return ["1186"]
        case .togeticNormal: return ["1187"]
        case .togeticShadow: return ["1188"]
        case .togeticPurified: return ["1189"]
        case .natuNormal: return ["1190"]
        case .natuShadow: return ["1191"]
        case .natuPurified: return ["1192"]
        case .xatuNormal: return ["1193"]
        case .xatuShadow: return ["1194"]
        case .xatuPurified: return ["1195"]
        case .marillNormal: return ["1196"]
        case .marillShadow: return ["1197"]
        case .marillPurified: return ["1198"]
        case .azumarillNormal: return ["1199"]
        case .azumarillShadow: return ["1200"]
        case .azumarillPurified: return ["1201"]
        case .sudowoodoNormal: return ["1202"]
        case .sudowoodoShadow: return ["1203"]
        case .sudowoodoPurified: return ["1204"]
        case .hoppipNormal: return ["1205"]
        case .hoppipShadow: return ["1206"]
        case .hoppipPurified: return ["1207"]
        case .skiploomNormal: return ["1208"]
        case .skiploomShadow: return ["1209"]
        case .skiploomPurified: return ["1210"]
        case .jumpluffNormal: return ["1211"]
        case .jumpluffShadow: return ["1212"]
        case .jumpluffPurified: return ["1213"]
        case .aipomNormal: return ["1214"]
        case .aipomShadow: return ["1215"]
        case .aipomPurified: return ["1216"]
        case .sunkernNormal: return ["1217"]
        case .sunkernShadow: return ["1218"]
        case .sunkernPurified: return ["1219"]
        case .sunfloraNormal: return ["1220"]
        case .sunfloraShadow: return ["1221"]
        case .sunfloraPurified: return ["1222"]
        case .yanmaNormal: return ["1223"]
        case .yanmaShadow: return ["1224"]
        case .yanmaPurified: return ["1225"]
        case .wooperNormal: return ["1226"]
        case .wooperShadow: return ["1227"]
        case .wooperPurified: return ["1228"]
        case .quagsireNormal: return ["1229"]
        case .quagsireShadow: return ["1230"]
        case .quagsirePurified: return ["1231"]
        case .espeonNormal: return ["1232"]
        case .espeonShadow: return ["1233"]
        case .espeonPurified: return ["1234"]
        case .umbreonNormal: return ["1235"]
        case .umbreonShadow: return ["1236"]
        case .umbreonPurified: return ["1237"]
        case .slowkingNormal: return ["1238"]
        case .slowkingShadow: return ["1239"]
        case .slowkingPurified: return ["1240"]
        case .girafarigNormal: return ["1241"]
        case .girafarigShadow: return ["1242"]
        case .girafarigPurified: return ["1243"]
        case .pinecoNormal: return ["1244"]
        case .pinecoShadow: return ["1245"]
        case .pinecoPurified: return ["1246"]
        case .forretressNormal: return ["1247"]
        case .forretressShadow: return ["1248"]
        case .forretressPurified: return ["1249"]
        case .dunsparceNormal: return ["1250"]
        case .dunsparceShadow: return ["1251"]
        case .dunsparcePurified: return ["1252"]
        case .snubbullNormal: return ["1253"]
        case .snubbullShadow: return ["1254"]
        case .snubbullPurified: return ["1255"]
        case .granbullNormal: return ["1256"]
        case .granbullShadow: return ["1257"]
        case .granbullPurified: return ["1258"]
        case .qwilfishNormal: return ["1259"]
        case .qwilfishShadow: return ["1260"]
        case .qwilfishPurified: return ["1261"]
        case .heracrossNormal: return ["1262"]
        case .heracrossShadow: return ["1263"]
        case .heracrossPurified: return ["1264"]
        case .teddiursaNormal: return ["1265"]
        case .teddiursaShadow: return ["1266"]
        case .teddiursaPurified: return ["1267"]
        case .ursaringNormal: return ["1268"]
        case .ursaringShadow: return ["1269"]
        case .ursaringPurified: return ["1270"]
        case .slugmaNormal: return ["1271"]
        case .slugmaShadow: return ["1272"]
        case .slugmaPurified: return ["1273"]
        case .magcargoNormal: return ["1274"]
        case .magcargoShadow: return ["1275"]
        case .magcargoPurified: return ["1276"]
        case .swinubNormal: return ["1277"]
        case .swinubShadow: return ["1278"]
        case .swinubPurified: return ["1279"]
        case .piloswineNormal: return ["1280"]
        case .piloswineShadow: return ["1281"]
        case .piloswinePurified: return ["1282"]
        case .corsolaNormal: return ["1283"]
        case .corsolaShadow: return ["1284"]
        case .corsolaPurified: return ["1285"]
        case .remoraidNormal: return ["1286"]
        case .remoraidShadow: return ["1287"]
        case .remoraidPurified: return ["1288"]
        case .octilleryNormal: return ["1289"]
        case .octilleryShadow: return ["1290"]
        case .octilleryPurified: return ["1291"]
        case .mantineNormal: return ["1292"]
        case .mantineShadow: return ["1293"]
        case .mantinePurified: return ["1294"]
        case .skarmoryNormal: return ["1295"]
        case .skarmoryShadow: return ["1296"]
        case .skarmoryPurified: return ["1297"]
        case .kingdraNormal: return ["1298"]
        case .kingdraShadow: return ["1299"]
        case .kingdraPurified: return ["1300"]
        case .phanpyNormal: return ["1301"]
        case .phanpyShadow: return ["1302"]
        case .phanpyPurified: return ["1303"]
        case .donphanNormal: return ["1304"]
        case .donphanShadow: return ["1305"]
        case .donphanPurified: return ["1306"]
        case .smeargleNormal: return ["1307"]
        case .smeargleShadow: return ["1308"]
        case .smearglePurified: return ["1309"]
        case .tyrogueNormal: return ["1310"]
        case .tyrogueShadow: return ["1311"]
        case .tyroguePurified: return ["1312"]
        case .hitmontopNormal: return ["1313"]
        case .hitmontopShadow: return ["1314"]
        case .hitmontopPurified: return ["1315"]
        case .smoochumNormal: return ["1316"]
        case .smoochumShadow: return ["1317"]
        case .smoochumPurified: return ["1318"]
        case .elekidNormal: return ["1319"]
        case .elekidShadow: return ["1320"]
        case .elekidPurified: return ["1321"]
        case .magbyNormal: return ["1322"]
        case .magbyShadow: return ["1323"]
        case .magbyPurified: return ["1324"]
        case .miltankNormal: return ["1325"]
        case .miltankShadow: return ["1326"]
        case .miltankPurified: return ["1327"]
        case .blisseyNormal: return ["1328"]
        case .blisseyShadow: return ["1329"]
        case .blisseyPurified: return ["1330"]
        case .raikouNormal: return ["1331"]
        case .raikouShadow: return ["1332"]
        case .raikouPurified: return ["1333"]
        case .enteiNormal: return ["1334"]
        case .enteiShadow: return ["1335"]
        case .enteiPurified: return ["1336"]
        case .suicuneNormal: return ["1337"]
        case .suicuneShadow: return ["1338"]
        case .suicunePurified: return ["1339"]
        case .lugiaNormal: return ["1340"]
        case .lugiaShadow: return ["1341"]
        case .lugiaPurified: return ["1342"]
        case .hoOhNormal: return ["1343"]
        case .hoOhShadow: return ["1344"]
        case .hoOhPurified: return ["1345"]
        case .celebiNormal: return ["1346"]
        case .celebiShadow: return ["1347"]
        case .celebiPurified: return ["1348"]
        case .treeckoNormal: return ["1349"]
        case .treeckoShadow: return ["1350"]
        case .treeckoPurified: return ["1351"]
        case .grovyleNormal: return ["1352"]
        case .grovyleShadow: return ["1353"]
        case .grovylePurified: return ["1354"]
        case .sceptileNormal: return ["1355"]
        case .sceptileShadow: return ["1356"]
        case .sceptilePurified: return ["1357"]
        case .torchicNormal: return ["1358"]
        case .torchicShadow: return ["1359"]
        case .torchicPurified: return ["1360"]
        case .combuskenNormal: return ["1361"]
        case .combuskenShadow: return ["1362"]
        case .combuskenPurified: return ["1363"]
        case .blazikenNormal: return ["1364"]
        case .blazikenShadow: return ["1365"]
        case .blazikenPurified: return ["1366"]
        case .poochyenaNormal: return ["1367"]
        case .poochyenaShadow: return ["1368"]
        case .poochyenaPurified: return ["1369"]
        case .mightyenaNormal: return ["1370"]
        case .mightyenaShadow: return ["1371"]
        case .mightyenaPurified: return ["1372"]
        case .zigzagoonShadow: return ["1373"]
        case .zigzagoonPurified: return ["1374"]
        case .linooneShadow: return ["1375"]
        case .linoonePurified: return ["1376"]
        case .wurmpleShadow: return ["1377"]
        case .wurmplePurified: return ["1378"]
        case .silcoonNormal: return ["1379"]
        case .silcoonShadow: return ["1380"]
        case .silcoonPurified: return ["1381"]
        case .beautiflyNormal: return ["1382"]
        case .beautiflyShadow: return ["1383"]
        case .beautiflyPurified: return ["1384"]
        case .cascoonNormal: return ["1385"]
        case .cascoonShadow: return ["1386"]
        case .cascoonPurified: return ["1387"]
        case .dustoxNormal: return ["1388"]
        case .dustoxShadow: return ["1389"]
        case .dustoxPurified: return ["1390"]
        case .lotadNormal: return ["1391"]
        case .lotadShadow: return ["1392"]
        case .lotadPurified: return ["1393"]
        case .lombreNormal: return ["1394"]
        case .lombreShadow: return ["1395"]
        case .lombrePurified: return ["1396"]
        case .ludicoloNormal: return ["1397"]
        case .ludicoloShadow: return ["1398"]
        case .ludicoloPurified: return ["1399"]
        case .taillowNormal: return ["1400"]
        case .taillowShadow: return ["1401"]
        case .taillowPurified: return ["1402"]
        case .swellowNormal: return ["1403"]
        case .swellowShadow: return ["1404"]
        case .swellowPurified: return ["1405"]
        case .wingullNormal: return ["1406"]
        case .wingullShadow: return ["1407"]
        case .wingullPurified: return ["1408"]
        case .pelipperNormal: return ["1409"]
        case .pelipperShadow: return ["1410"]
        case .pelipperPurified: return ["1411"]
        case .surskitNormal: return ["1412"]
        case .surskitShadow: return ["1413"]
        case .surskitPurified: return ["1414"]
        case .masquerainNormal: return ["1415"]
        case .masquerainShadow: return ["1416"]
        case .masquerainPurified: return ["1417"]
        case .shroomishNormal: return ["1418"]
        case .shroomishShadow: return ["1419"]
        case .shroomishPurified: return ["1420"]
        case .breloomNormal: return ["1421"]
        case .breloomShadow: return ["1422"]
        case .breloomPurified: return ["1423"]
        case .slakothNormal: return ["1424"]
        case .slakothShadow: return ["1425"]
        case .slakothPurified: return ["1426"]
        case .vigorothNormal: return ["1427"]
        case .vigorothShadow: return ["1428"]
        case .vigorothPurified: return ["1429"]
        case .slakingNormal: return ["1430"]
        case .slakingShadow: return ["1431"]
        case .slakingPurified: return ["1432"]
        case .nincadaNormal: return ["1433"]
        case .nincadaShadow: return ["1434"]
        case .nincadaPurified: return ["1435"]
        case .ninjaskNormal: return ["1436"]
        case .ninjaskShadow: return ["1437"]
        case .ninjaskPurified: return ["1438"]
        case .shedinjaNormal: return ["1439"]
        case .shedinjaShadow: return ["1440"]
        case .shedinjaPurified: return ["1441"]
        case .whismurNormal: return ["1442"]
        case .whismurShadow: return ["1443"]
        case .whismurPurified: return ["1444"]
        case .loudredNormal: return ["1445"]
        case .loudredShadow: return ["1446"]
        case .loudredPurified: return ["1447"]
        case .exploudNormal: return ["1448"]
        case .exploudShadow: return ["1449"]
        case .exploudPurified: return ["1450"]
        case .makuhitaNormal: return ["1451"]
        case .makuhitaShadow: return ["1452"]
        case .makuhitaPurified: return ["1453"]
        case .hariyamaNormal: return ["1454"]
        case .hariyamaShadow: return ["1455"]
        case .hariyamaPurified: return ["1456"]
        case .azurillNormal: return ["1457"]
        case .azurillShadow: return ["1458"]
        case .azurillPurified: return ["1459"]
        case .nosepassNormal: return ["1460"]
        case .nosepassShadow: return ["1461"]
        case .nosepassPurified: return ["1462"]
        case .skittyNormal: return ["1463"]
        case .skittyShadow: return ["1464"]
        case .skittyPurified: return ["1465"]
        case .delcattyNormal: return ["1466"]
        case .delcattyShadow: return ["1467"]
        case .delcattyPurified: return ["1468"]
        case .aronNormal: return ["1469"]
        case .aronShadow: return ["1470"]
        case .aronPurified: return ["1471"]
        case .laironNormal: return ["1472"]
        case .laironShadow: return ["1473"]
        case .laironPurified: return ["1474"]
        case .aggronNormal: return ["1475"]
        case .aggronShadow: return ["1476"]
        case .aggronPurified: return ["1477"]
        case .medititeNormal: return ["1478"]
        case .medititeShadow: return ["1479"]
        case .medititePurified: return ["1480"]
        case .medichamNormal: return ["1481"]
        case .medichamShadow: return ["1482"]
        case .medichamPurified: return ["1483"]
        case .electrikeNormal: return ["1484"]
        case .electrikeShadow: return ["1485"]
        case .electrikePurified: return ["1486"]
        case .manectricNormal: return ["1487"]
        case .manectricShadow: return ["1488"]
        case .manectricPurified: return ["1489"]
        case .plusleNormal: return ["1490"]
        case .plusleShadow: return ["1491"]
        case .pluslePurified: return ["1492"]
        case .minunNormal: return ["1493"]
        case .minunShadow: return ["1494"]
        case .minunPurified: return ["1495"]
        case .volbeatNormal: return ["1496"]
        case .volbeatShadow: return ["1497"]
        case .volbeatPurified: return ["1498"]
        case .illumiseNormal: return ["1499"]
        case .illumiseShadow: return ["1500"]
        case .illumisePurified: return ["1501"]
        case .roseliaNormal: return ["1502"]
        case .roseliaShadow: return ["1503"]
        case .roseliaPurified: return ["1504"]
        case .gulpinNormal: return ["1505"]
        case .gulpinShadow: return ["1506"]
        case .gulpinPurified: return ["1507"]
        case .swalotNormal: return ["1508"]
        case .swalotShadow: return ["1509"]
        case .swalotPurified: return ["1510"]
        case .wailmerNormal: return ["1511"]
        case .wailmerShadow: return ["1512"]
        case .wailmerPurified: return ["1513"]
        case .wailordNormal: return ["1514"]
        case .wailordShadow: return ["1515"]
        case .wailordPurified: return ["1516"]
        case .numelNormal: return ["1517"]
        case .numelShadow: return ["1518"]
        case .numelPurified: return ["1519"]
        case .cameruptNormal: return ["1520"]
        case .cameruptShadow: return ["1521"]
        case .cameruptPurified: return ["1522"]
        case .torkoalNormal: return ["1523"]
        case .torkoalShadow: return ["1524"]
        case .torkoalPurified: return ["1525"]
        case .spoinkNormal: return ["1526"]
        case .spoinkShadow: return ["1527"]
        case .spoinkPurified: return ["1528"]
        case .grumpigNormal: return ["1529"]
        case .grumpigShadow: return ["1530"]
        case .grumpigPurified: return ["1531"]
        case .swabluNormal: return ["1532"]
        case .swabluShadow: return ["1533"]
        case .swabluPurified: return ["1534"]
        case .altariaNormal: return ["1535"]
        case .altariaShadow: return ["1536"]
        case .altariaPurified: return ["1537"]
        case .zangooseNormal: return ["1538"]
        case .zangooseShadow: return ["1539"]
        case .zangoosePurified: return ["1540"]
        case .seviperNormal: return ["1541"]
        case .seviperShadow: return ["1542"]
        case .seviperPurified: return ["1543"]
        case .lunatoneNormal: return ["1544"]
        case .lunatoneShadow: return ["1545"]
        case .lunatonePurified: return ["1546"]
        case .solrockNormal: return ["1547"]
        case .solrockShadow: return ["1548"]
        case .solrockPurified: return ["1549"]
        case .barboachNormal: return ["1550"]
        case .barboachShadow: return ["1551"]
        case .barboachPurified: return ["1552"]
        case .whiscashNormal: return ["1553"]
        case .whiscashShadow: return ["1554"]
        case .whiscashPurified: return ["1555"]
        case .corphishNormal: return ["1556"]
        case .corphishShadow: return ["1557"]
        case .corphishPurified: return ["1558"]
        case .crawdauntNormal: return ["1559"]
        case .crawdauntShadow: return ["1560"]
        case .crawdauntPurified: return ["1561"]
        case .baltoyNormal: return ["1562"]
        case .baltoyShadow: return ["1563"]
        case .baltoyPurified: return ["1564"]
        case .claydolNormal: return ["1565"]
        case .claydolShadow: return ["1566"]
        case .claydolPurified: return ["1567"]
        case .lileepNormal: return ["1568"]
        case .lileepShadow: return ["1569"]
        case .lileepPurified: return ["1570"]
        case .cradilyNormal: return ["1571"]
        case .cradilyShadow: return ["1572"]
        case .cradilyPurified: return ["1573"]
        case .anorithNormal: return ["1574"]
        case .anorithShadow: return ["1575"]
        case .anorithPurified: return ["1576"]
        case .armaldoNormal: return ["1577"]
        case .armaldoShadow: return ["1578"]
        case .armaldoPurified: return ["1579"]
        case .feebasNormal: return ["1580"]
        case .feebasShadow: return ["1581"]
        case .feebasPurified: return ["1582"]
        case .miloticNormal: return ["1583"]
        case .miloticShadow: return ["1584"]
        case .miloticPurified: return ["1585"]
        case .kecleonNormal: return ["1586"]
        case .kecleonShadow: return ["1587"]
        case .kecleonPurified: return ["1588"]
        case .tropiusNormal: return ["1589"]
        case .tropiusShadow: return ["1590"]
        case .tropiusPurified: return ["1591"]
        case .chimechoNormal: return ["1592"]
        case .chimechoShadow: return ["1593"]
        case .chimechoPurified: return ["1594"]
        case .wynautNormal: return ["1595"]
        case .wynautShadow: return ["1596"]
        case .wynautPurified: return ["1597"]
        case .sphealNormal: return ["1598"]
        case .sphealShadow: return ["1599"]
        case .sphealPurified: return ["1600"]
        case .sealeoNormal: return ["1601"]
        case .sealeoShadow: return ["1602"]
        case .sealeoPurified: return ["1603"]
        case .walreinNormal: return ["1604"]
        case .walreinShadow: return ["1605"]
        case .walreinPurified: return ["1606"]
        case .clamperlNormal: return ["1607"]
        case .clamperlShadow: return ["1608"]
        case .clamperlPurified: return ["1609"]
        case .huntailNormal: return ["1610"]
        case .huntailShadow: return ["1611"]
        case .huntailPurified: return ["1612"]
        case .gorebyssNormal: return ["1613"]
        case .gorebyssShadow: return ["1614"]
        case .gorebyssPurified: return ["1615"]
        case .relicanthNormal: return ["1616"]
        case .relicanthShadow: return ["1617"]
        case .relicanthPurified: return ["1618"]
        case .luvdiscNormal: return ["1619"]
        case .luvdiscShadow: return ["1620"]
        case .luvdiscPurified: return ["1621"]
        case .regirockNormal: return ["1622"]
        case .regirockShadow: return ["1623"]
        case .regirockPurified: return ["1624"]
        case .regiceNormal: return ["1625"]
        case .regiceShadow: return ["1626"]
        case .regicePurified: return ["1627"]
        case .registeelNormal: return ["1628"]
        case .registeelShadow: return ["1629"]
        case .registeelPurified: return ["1630"]
        case .latiasNormal: return ["1631"]
        case .latiasShadow: return ["1632"]
        case .latiasPurified: return ["1633"]
        case .latiosNormal: return ["1634"]
        case .latiosShadow: return ["1635"]
        case .latiosPurified: return ["1636"]
        case .kyogreNormal: return ["1637"]
        case .kyogreShadow: return ["1638"]
        case .kyogrePurified: return ["1639"]
        case .groudonNormal: return ["1640"]
        case .groudonShadow: return ["1641"]
        case .groudonPurified: return ["1642"]
        case .rayquazaNormal: return ["1643"]
        case .rayquazaShadow: return ["1644"]
        case .rayquazaPurified: return ["1645"]
        case .jirachiNormal: return ["1646"]
        case .jirachiShadow: return ["1647"]
        case .jirachiPurified: return ["1648"]
        case .piplupNormal: return ["1649"]
        case .piplupShadow: return ["1650"]
        case .piplupPurified: return ["1651"]
        case .prinplupNormal: return ["1652"]
        case .prinplupShadow: return ["1653"]
        case .prinplupPurified: return ["1654"]
        case .empoleonNormal: return ["1655"]
        case .empoleonShadow: return ["1656"]
        case .empoleonPurified: return ["1657"]
        case .starlyNormal: return ["1658"]
        case .starlyShadow: return ["1659"]
        case .starlyPurified: return ["1660"]
        case .staraviaNormal: return ["1661"]
        case .staraviaShadow: return ["1662"]
        case .staraviaPurified: return ["1663"]
        case .staraptorNormal: return ["1664"]
        case .staraptorShadow: return ["1665"]
        case .staraptorPurified: return ["1666"]
        case .bidoofNormal: return ["1667"]
        case .bidoofShadow: return ["1668"]
        case .bidoofPurified: return ["1669"]
        case .bibarelNormal: return ["1670"]
        case .bibarelShadow: return ["1671"]
        case .bibarelPurified: return ["1672"]
        case .kricketotNormal: return ["1673"]
        case .kricketotShadow: return ["1674"]
        case .kricketotPurified: return ["1675"]
        case .kricketuneNormal: return ["1676"]
        case .kricketuneShadow: return ["1677"]
        case .kricketunePurified: return ["1678"]
        case .shinxNormal: return ["1679"]
        case .shinxShadow: return ["1680"]
        case .shinxPurified: return ["1681"]
        case .luxioNormal: return ["1682"]
        case .luxioShadow: return ["1683"]
        case .luxioPurified: return ["1684"]
        case .luxrayNormal: return ["1685"]
        case .luxrayShadow: return ["1686"]
        case .luxrayPurified: return ["1687"]
        case .budewNormal: return ["1688"]
        case .budewShadow: return ["1689"]
        case .budewPurified: return ["1690"]
        case .roseradeNormal: return ["1691"]
        case .roseradeShadow: return ["1692"]
        case .roseradePurified: return ["1693"]
        case .cranidosNormal: return ["1694"]
        case .cranidosShadow: return ["1695"]
        case .cranidosPurified: return ["1696"]
        case .rampardosNormal: return ["1697"]
        case .rampardosShadow: return ["1698"]
        case .rampardosPurified: return ["1699"]
        case .shieldonNormal: return ["1700"]
        case .shieldonShadow: return ["1701"]
        case .shieldonPurified: return ["1702"]
        case .bastiodonNormal: return ["1703"]
        case .bastiodonShadow: return ["1704"]
        case .bastiodonPurified: return ["1705"]
        case .burmyNormal: return ["1706"]
        case .burmyShadow: return ["1707"]
        case .burmyPurified: return ["1708"]
        case .wormadamNormal: return ["1709"]
        case .wormadamShadow: return ["1710"]
        case .wormadamPurified: return ["1711"]
        case .mothimNormal: return ["1712"]
        case .mothimShadow: return ["1713"]
        case .mothimPurified: return ["1714"]
        case .combeeNormal: return ["1715"]
        case .combeeShadow: return ["1716"]
        case .combeePurified: return ["1717"]
        case .vespiquenNormal: return ["1718"]
        case .vespiquenShadow: return ["1719"]
        case .vespiquenPurified: return ["1720"]
        case .pachirisuNormal: return ["1721"]
        case .pachirisuShadow: return ["1722"]
        case .pachirisuPurified: return ["1723"]
        case .buizelNormal: return ["1724"]
        case .buizelShadow: return ["1725"]
        case .buizelPurified: return ["1726"]
        case .floatzelNormal: return ["1727"]
        case .floatzelShadow: return ["1728"]
        case .floatzelPurified: return ["1729"]
        case .cherubiNormal: return ["1730"]
        case .cherubiShadow: return ["1731"]
        case .cherubiPurified: return ["1732"]
        case .cherrimNormal: return ["1733"]
        case .cherrimShadow: return ["1734"]
        case .cherrimPurified: return ["1735"]
        case .shellosNormal: return ["1736"]
        case .shellosShadow: return ["1737"]
        case .shellosPurified: return ["1738"]
        case .gastrodonNormal: return ["1739"]
        case .gastrodonShadow: return ["1740"]
        case .gastrodonPurified: return ["1741"]
        case .ambipomNormal: return ["1742"]
        case .ambipomShadow: return ["1743"]
        case .ambipomPurified: return ["1744"]
        case .drifloonNormal: return ["1745"]
        case .drifloonShadow: return ["1746"]
        case .drifloonPurified: return ["1747"]
        case .drifblimNormal: return ["1748"]
        case .drifblimShadow: return ["1749"]
        case .drifblimPurified: return ["1750"]
        case .bunearyNormal: return ["1751"]
        case .bunearyShadow: return ["1752"]
        case .bunearyPurified: return ["1753"]
        case .lopunnyNormal: return ["1754"]
        case .lopunnyShadow: return ["1755"]
        case .lopunnyPurified: return ["1756"]
        case .glameowNormal: return ["1757"]
        case .glameowShadow: return ["1758"]
        case .glameowPurified: return ["1759"]
        case .puruglyNormal: return ["1760"]
        case .puruglyShadow: return ["1761"]
        case .puruglyPurified: return ["1762"]
        case .chinglingNormal: return ["1763"]
        case .chinglingShadow: return ["1764"]
        case .chinglingPurified: return ["1765"]
        case .bronzorNormal: return ["1766"]
        case .bronzorShadow: return ["1767"]
        case .bronzorPurified: return ["1768"]
        case .bronzongNormal: return ["1769"]
        case .bronzongShadow: return ["1770"]
        case .bronzongPurified: return ["1771"]
        case .bonslyNormal: return ["1772"]
        case .bonslyShadow: return ["1773"]
        case .bonslyPurified: return ["1774"]
        case .mimeJrNormal: return ["1775"]
        case .mimeJrShadow: return ["1776"]
        case .mimeJrPurified: return ["1777"]
        case .happinyNormal: return ["1778"]
        case .happinyShadow: return ["1779"]
        case .happinyPurified: return ["1780"]
        case .chatotNormal: return ["1781"]
        case .chatotShadow: return ["1782"]
        case .chatotPurified: return ["1783"]
        case .spiritombNormal: return ["1784"]
        case .spiritombShadow: return ["1785"]
        case .spiritombPurified: return ["1786"]
        case .munchlaxNormal: return ["1787"]
        case .munchlaxShadow: return ["1788"]
        case .munchlaxPurified: return ["1789"]
        case .rioluNormal: return ["1790"]
        case .rioluShadow: return ["1791"]
        case .rioluPurified: return ["1792"]
        case .lucarioNormal: return ["1793"]
        case .lucarioShadow: return ["1794"]
        case .lucarioPurified: return ["1795"]
        case .skorupiNormal: return ["1796"]
        case .skorupiShadow: return ["1797"]
        case .skorupiPurified: return ["1798"]
        case .drapionNormal: return ["1799"]
        case .drapionShadow: return ["1800"]
        case .drapionPurified: return ["1801"]
        case .croagunkNormal: return ["1802"]
        case .croagunkShadow: return ["1803"]
        case .croagunkPurified: return ["1804"]
        case .toxicroakNormal: return ["1805"]
        case .toxicroakShadow: return ["1806"]
        case .toxicroakPurified: return ["1807"]
        case .carnivineNormal: return ["1808"]
        case .carnivineShadow: return ["1809"]
        case .carnivinePurified: return ["1810"]
        case .finneonNormal: return ["1811"]
        case .finneonShadow: return ["1812"]
        case .finneonPurified: return ["1813"]
        case .lumineonNormal: return ["1814"]
        case .lumineonShadow: return ["1815"]
        case .lumineonPurified: return ["1816"]
        case .mantykeNormal: return ["1817"]
        case .mantykeShadow: return ["1818"]
        case .mantykePurified: return ["1819"]
        case .lickilickyNormal: return ["1820"]
        case .lickilickyShadow: return ["1821"]
        case .lickilickyPurified: return ["1822"]
        case .tangrowthNormal: return ["1823"]
        case .tangrowthShadow: return ["1824"]
        case .tangrowthPurified: return ["1825"]
        case .togekissNormal: return ["1826"]
        case .togekissShadow: return ["1827"]
        case .togekissPurified: return ["1828"]
        case .yanmegaNormal: return ["1829"]
        case .yanmegaShadow: return ["1830"]
        case .yanmegaPurified: return ["1831"]
        case .leafeonNormal: return ["1832"]
        case .leafeonShadow: return ["1833"]
        case .leafeonPurified: return ["1834"]
        case .glaceonNormal: return ["1835"]
        case .glaceonShadow: return ["1836"]
        case .glaceonPurified: return ["1837"]
        case .mamoswineNormal: return ["1838"]
        case .mamoswineShadow: return ["1839"]
        case .mamoswinePurified: return ["1840"]
        case .probopassNormal: return ["1841"]
        case .probopassShadow: return ["1842"]
        case .probopassPurified: return ["1843"]
        case .froslassNormal: return ["1844"]
        case .froslassShadow: return ["1845"]
        case .froslassPurified: return ["1846"]
        case .uxieNormal: return ["1847"]
        case .uxieShadow: return ["1848"]
        case .uxiePurified: return ["1849"]
        case .mespritNormal: return ["1850"]
        case .mespritShadow: return ["1851"]
        case .mespritPurified: return ["1852"]
        case .azelfNormal: return ["1853"]
        case .azelfShadow: return ["1854"]
        case .azelfPurified: return ["1855"]
        case .dialgaNormal: return ["1856"]
        case .dialgaShadow: return ["1857"]
        case .dialgaPurified: return ["1858"]
        case .palkiaNormal: return ["1859"]
        case .palkiaShadow: return ["1860"]
        case .palkiaPurified: return ["1861"]
        case .heatranNormal: return ["1862"]
        case .heatranShadow: return ["1863"]
        case .heatranPurified: return ["1864"]
        case .regigigasNormal: return ["1865"]
        case .regigigasShadow: return ["1866"]
        case .regigigasPurified: return ["1867"]
        case .giratinaNormal: return ["1868"]
        case .giratinaShadow: return ["1869"]
        case .giratinaPurified: return ["1870"]
        case .cresseliaNormal: return ["1871"]
        case .cresseliaShadow: return ["1872"]
        case .cresseliaPurified: return ["1873"]
        case .phioneNormal: return ["1874"]
        case .phioneShadow: return ["1875"]
        case .phionePurified: return ["1876"]
        case .manaphyNormal: return ["1877"]
        case .manaphyShadow: return ["1878"]
        case .manaphyPurified: return ["1879"]
        case .darkraiNormal: return ["1880"]
        case .darkraiShadow: return ["1881"]
        case .darkraiPurified: return ["1882"]
        case .shayminNormal: return ["1883"]
        case .shayminShadow: return ["1884"]
        case .shayminPurified: return ["1885"]
        case .victiniNormal: return ["1886"]
        case .victiniShadow: return ["1887"]
        case .victiniPurified: return ["1888"]
        case .snivyNormal: return ["1889"]
        case .snivyShadow: return ["1890"]
        case .snivyPurified: return ["1891"]
        case .servineNormal: return ["1892"]
        case .servineShadow: return ["1893"]
        case .servinePurified: return ["1894"]
        case .serperiorNormal: return ["1895"]
        case .serperiorShadow: return ["1896"]
        case .serperiorPurified: return ["1897"]
        case .tepigNormal: return ["1898"]
        case .tepigShadow: return ["1899"]
        case .tepigPurified: return ["1900"]
        case .pigniteNormal: return ["1901"]
        case .pigniteShadow: return ["1902"]
        case .pignitePurified: return ["1903"]
        case .emboarNormal: return ["1904"]
        case .emboarShadow: return ["1905"]
        case .emboarPurified: return ["1906"]
        case .oshawottNormal: return ["1907"]
        case .oshawottShadow: return ["1908"]
        case .oshawottPurified: return ["1909"]
        case .dewottNormal: return ["1910"]
        case .dewottShadow: return ["1911"]
        case .dewottPurified: return ["1912"]
        case .samurottNormal: return ["1913"]
        case .samurottShadow: return ["1914"]
        case .samurottPurified: return ["1915"]
        case .patratNormal: return ["1916"]
        case .patratShadow: return ["1917"]
        case .patratPurified: return ["1918"]
        case .watchogNormal: return ["1919"]
        case .watchogShadow: return ["1920"]
        case .watchogPurified: return ["1921"]
        case .lillipupNormal: return ["1922"]
        case .lillipupShadow: return ["1923"]
        case .lillipupPurified: return ["1924"]
        case .herdierNormal: return ["1925"]
        case .herdierShadow: return ["1926"]
        case .herdierPurified: return ["1927"]
        case .stoutlandNormal: return ["1928"]
        case .stoutlandShadow: return ["1929"]
        case .stoutlandPurified: return ["1930"]
        case .purrloinNormal: return ["1931"]
        case .purrloinShadow: return ["1932"]
        case .purrloinPurified: return ["1933"]
        case .liepardNormal: return ["1934"]
        case .liepardShadow: return ["1935"]
        case .liepardPurified: return ["1936"]
        case .pansageNormal: return ["1937"]
        case .pansageShadow: return ["1938"]
        case .pansagePurified: return ["1939"]
        case .simisageNormal: return ["1940"]
        case .simisageShadow: return ["1941"]
        case .simisagePurified: return ["1942"]
        case .pansearNormal: return ["1943"]
        case .pansearShadow: return ["1944"]
        case .pansearPurified: return ["1945"]
        case .simisearNormal: return ["1946"]
        case .simisearShadow: return ["1947"]
        case .simisearPurified: return ["1948"]
        case .panpourNormal: return ["1949"]
        case .panpourShadow: return ["1950"]
        case .panpourPurified: return ["1951"]
        case .simipourNormal: return ["1952"]
        case .simipourShadow: return ["1953"]
        case .simipourPurified: return ["1954"]
        case .munnaNormal: return ["1955"]
        case .munnaShadow: return ["1956"]
        case .munnaPurified: return ["1957"]
        case .musharnaNormal: return ["1958"]
        case .musharnaShadow: return ["1959"]
        case .musharnaPurified: return ["1960"]
        case .pidoveNormal: return ["1961"]
        case .pidoveShadow: return ["1962"]
        case .pidovePurified: return ["1963"]
        case .tranquillNormal: return ["1964"]
        case .tranquillShadow: return ["1965"]
        case .tranquillPurified: return ["1966"]
        case .unfezantNormal: return ["1967"]
        case .unfezantShadow: return ["1968"]
        case .unfezantPurified: return ["1969"]
        case .blitzleNormal: return ["1970"]
        case .blitzleShadow: return ["1971"]
        case .blitzlePurified: return ["1972"]
        case .zebstrikaNormal: return ["1973"]
        case .zebstrikaShadow: return ["1974"]
        case .zebstrikaPurified: return ["1975"]
        case .roggenrolaNormal: return ["1976"]
        case .roggenrolaShadow: return ["1977"]
        case .roggenrolaPurified: return ["1978"]
        case .boldoreNormal: return ["1979"]
        case .boldoreShadow: return ["1980"]
        case .boldorePurified: return ["1981"]
        case .gigalithNormal: return ["1982"]
        case .gigalithShadow: return ["1983"]
        case .gigalithPurified: return ["1984"]
        case .woobatNormal: return ["1985"]
        case .woobatShadow: return ["1986"]
        case .woobatPurified: return ["1987"]
        case .swoobatNormal: return ["1988"]
        case .swoobatShadow: return ["1989"]
        case .swoobatPurified: return ["1990"]
        case .drilburNormal: return ["1991"]
        case .drilburShadow: return ["1992"]
        case .drilburPurified: return ["1993"]
        case .excadrillNormal: return ["1994"]
        case .excadrillShadow: return ["1995"]
        case .excadrillPurified: return ["1996"]
        case .audinoNormal: return ["1997"]
        case .audinoShadow: return ["1998"]
        case .audinoPurified: return ["1999"]
        case .timburrNormal: return ["2000"]
        case .timburrShadow: return ["2001"]
        case .timburrPurified: return ["2002"]
        case .gurdurrNormal: return ["2003"]
        case .gurdurrShadow: return ["2004"]
        case .gurdurrPurified: return ["2005"]
        case .conkeldurrNormal: return ["2006"]
        case .conkeldurrShadow: return ["2007"]
        case .conkeldurrPurified: return ["2008"]
        case .tympoleNormal: return ["2009"]
        case .tympoleShadow: return ["2010"]
        case .tympolePurified: return ["2011"]
        case .palpitoadNormal: return ["2012"]
        case .palpitoadShadow: return ["2013"]
        case .palpitoadPurified: return ["2014"]
        case .seismitoadNormal: return ["2015"]
        case .seismitoadShadow: return ["2016"]
        case .seismitoadPurified: return ["2017"]
        case .throhNormal: return ["2018"]
        case .throhShadow: return ["2019"]
        case .throhPurified: return ["2020"]
        case .sawkNormal: return ["2021"]
        case .sawkShadow: return ["2022"]
        case .sawkPurified: return ["2023"]
        case .sewaddleNormal: return ["2024"]
        case .sewaddleShadow: return ["2025"]
        case .sewaddlePurified: return ["2026"]
        case .swadloonNormal: return ["2027"]
        case .swadloonShadow: return ["2028"]
        case .swadloonPurified: return ["2029"]
        case .leavannyNormal: return ["2030"]
        case .leavannyShadow: return ["2031"]
        case .leavannyPurified: return ["2032"]
        case .venipedeNormal: return ["2033"]
        case .venipedeShadow: return ["2034"]
        case .venipedePurified: return ["2035"]
        case .whirlipedeNormal: return ["2036"]
        case .whirlipedeShadow: return ["2037"]
        case .whirlipedePurified: return ["2038"]
        case .scolipedeNormal: return ["2039"]
        case .scolipedeShadow: return ["2040"]
        case .scolipedePurified: return ["2041"]
        case .cottoneeNormal: return ["2042"]
        case .cottoneeShadow: return ["2043"]
        case .cottoneePurified: return ["2044"]
        case .whimsicottNormal: return ["2045"]
        case .whimsicottShadow: return ["2046"]
        case .whimsicottPurified: return ["2047"]
        case .petililNormal: return ["2048"]
        case .petililShadow: return ["2049"]
        case .petililPurified: return ["2050"]
        case .lilligantNormal: return ["2051"]
        case .lilligantShadow: return ["2052"]
        case .lilligantPurified: return ["2053"]
        case .sandileNormal: return ["2054"]
        case .sandileShadow: return ["2055"]
        case .sandilePurified: return ["2056"]
        case .krokorokNormal: return ["2057"]
        case .krokorokShadow: return ["2058"]
        case .krokorokPurified: return ["2059"]
        case .krookodileNormal: return ["2060"]
        case .krookodileShadow: return ["2061"]
        case .krookodilePurified: return ["2062"]
        case .darumakaNormal: return ["2063"]
        case .darumakaShadow: return ["2064"]
        case .darumakaPurified: return ["2065"]
        case .maractusNormal: return ["2066"]
        case .maractusShadow: return ["2067"]
        case .maractusPurified: return ["2068"]
        case .dwebbleNormal: return ["2069"]
        case .dwebbleShadow: return ["2070"]
        case .dwebblePurified: return ["2071"]
        case .crustleNormal: return ["2072"]
        case .crustleShadow: return ["2073"]
        case .crustlePurified: return ["2074"]
        case .scraggyNormal: return ["2075"]
        case .scraggyShadow: return ["2076"]
        case .scraggyPurified: return ["2077"]
        case .scraftyNormal: return ["2078"]
        case .scraftyShadow: return ["2079"]
        case .scraftyPurified: return ["2080"]
        case .sigilyphNormal: return ["2081"]
        case .sigilyphShadow: return ["2082"]
        case .sigilyphPurified: return ["2083"]
        case .yamaskNormal: return ["2084"]
        case .yamaskShadow: return ["2085"]
        case .yamaskPurified: return ["2086"]
        case .cofagrigusNormal: return ["2087"]
        case .cofagrigusShadow: return ["2088"]
        case .cofagrigusPurified: return ["2089"]
        case .tirtougaNormal: return ["2090"]
        case .tirtougaShadow: return ["2091"]
        case .tirtougaPurified: return ["2092"]
        case .carracostaNormal: return ["2093"]
        case .carracostaShadow: return ["2094"]
        case .carracostaPurified: return ["2095"]
        case .archenNormal: return ["2096"]
        case .archenShadow: return ["2097"]
        case .archenPurified: return ["2098"]
        case .archeopsNormal: return ["2099"]
        case .archeopsShadow: return ["2100"]
        case .archeopsPurified: return ["2101"]
        case .trubbishNormal: return ["2102"]
        case .trubbishShadow: return ["2103"]
        case .trubbishPurified: return ["2104"]
        case .garbodorNormal: return ["2105"]
        case .garbodorShadow: return ["2106"]
        case .garbodorPurified: return ["2107"]
        case .zoruaNormal: return ["2108"]
        case .zoruaShadow: return ["2109"]
        case .zoruaPurified: return ["2110"]
        case .zoroarkNormal: return ["2111"]
        case .zoroarkShadow: return ["2112"]
        case .zoroarkPurified: return ["2113"]
        case .minccinoNormal: return ["2114"]
        case .minccinoShadow: return ["2115"]
        case .minccinoPurified: return ["2116"]
        case .cinccinoNormal: return ["2117"]
        case .cinccinoShadow: return ["2118"]
        case .cinccinoPurified: return ["2119"]
        case .gothitaNormal: return ["2120"]
        case .gothitaShadow: return ["2121"]
        case .gothitaPurified: return ["2122"]
        case .gothoritaNormal: return ["2123"]
        case .gothoritaShadow: return ["2124"]
        case .gothoritaPurified: return ["2125"]
        case .gothitelleNormal: return ["2126"]
        case .gothitelleShadow: return ["2127"]
        case .gothitellePurified: return ["2128"]
        case .solosisNormal: return ["2129"]
        case .solosisShadow: return ["2130"]
        case .solosisPurified: return ["2131"]
        case .duosionNormal: return ["2132"]
        case .duosionShadow: return ["2133"]
        case .duosionPurified: return ["2134"]
        case .reuniclusNormal: return ["2135"]
        case .reuniclusShadow: return ["2136"]
        case .reuniclusPurified: return ["2137"]
        case .ducklettNormal: return ["2138"]
        case .ducklettShadow: return ["2139"]
        case .ducklettPurified: return ["2140"]
        case .swannaNormal: return ["2141"]
        case .swannaShadow: return ["2142"]
        case .swannaPurified: return ["2143"]
        case .vanilliteNormal: return ["2144"]
        case .vanilliteShadow: return ["2145"]
        case .vanillitePurified: return ["2146"]
        case .vanillishNormal: return ["2147"]
        case .vanillishShadow: return ["2148"]
        case .vanillishPurified: return ["2149"]
        case .vanilluxeNormal: return ["2150"]
        case .vanilluxeShadow: return ["2151"]
        case .vanilluxePurified: return ["2152"]
        case .emolgaNormal: return ["2153"]
        case .emolgaShadow: return ["2154"]
        case .emolgaPurified: return ["2155"]
        case .karrablastNormal: return ["2156"]
        case .karrablastShadow: return ["2157"]
        case .karrablastPurified: return ["2158"]
        case .escavalierNormal: return ["2159"]
        case .escavalierShadow: return ["2160"]
        case .escavalierPurified: return ["2161"]
        case .foongusNormal: return ["2162"]
        case .foongusShadow: return ["2163"]
        case .foongusPurified: return ["2164"]
        case .amoongussNormal: return ["2165"]
        case .amoongussShadow: return ["2166"]
        case .amoongussPurified: return ["2167"]
        case .frillishNormal: return ["2168"]
        case .frillishShadow: return ["2169"]
        case .frillishPurified: return ["2170"]
        case .jellicentNormal: return ["2171"]
        case .jellicentShadow: return ["2172"]
        case .jellicentPurified: return ["2173"]
        case .alomomolaNormal: return ["2174"]
        case .alomomolaShadow: return ["2175"]
        case .alomomolaPurified: return ["2176"]
        case .joltikNormal: return ["2177"]
        case .joltikShadow: return ["2178"]
        case .joltikPurified: return ["2179"]
        case .galvantulaNormal: return ["2180"]
        case .galvantulaShadow: return ["2181"]
        case .galvantulaPurified: return ["2182"]
        case .ferroseedNormal: return ["2183"]
        case .ferroseedShadow: return ["2184"]
        case .ferroseedPurified: return ["2185"]
        case .ferrothornNormal: return ["2186"]
        case .ferrothornShadow: return ["2187"]
        case .ferrothornPurified: return ["2188"]
        case .klinkNormal: return ["2189"]
        case .klinkShadow: return ["2190"]
        case .klinkPurified: return ["2191"]
        case .klangNormal: return ["2192"]
        case .klangShadow: return ["2193"]
        case .klangPurified: return ["2194"]
        case .klinklangNormal: return ["2195"]
        case .klinklangShadow: return ["2196"]
        case .klinklangPurified: return ["2197"]
        case .tynamoNormal: return ["2198"]
        case .tynamoShadow: return ["2199"]
        case .tynamoPurified: return ["2200"]
        case .eelektrikNormal: return ["2201"]
        case .eelektrikShadow: return ["2202"]
        case .eelektrikPurified: return ["2203"]
        case .eelektrossNormal: return ["2204"]
        case .eelektrossShadow: return ["2205"]
        case .eelektrossPurified: return ["2206"]
        case .elgyemNormal: return ["2207"]
        case .elgyemShadow: return ["2208"]
        case .elgyemPurified: return ["2209"]
        case .beheeyemNormal: return ["2210"]
        case .beheeyemShadow: return ["2211"]
        case .beheeyemPurified: return ["2212"]
        case .litwickNormal: return ["2213"]
        case .litwickShadow: return ["2214"]
        case .litwickPurified: return ["2215"]
        case .lampentNormal: return ["2216"]
        case .lampentShadow: return ["2217"]
        case .lampentPurified: return ["2218"]
        case .chandelureNormal: return ["2219"]
        case .chandelureShadow: return ["2220"]
        case .chandelurePurified: return ["2221"]
        case .axewNormal: return ["2222"]
        case .axewShadow: return ["2223"]
        case .axewPurified: return ["2224"]
        case .fraxureNormal: return ["2225"]
        case .fraxureShadow: return ["2226"]
        case .fraxurePurified: return ["2227"]
        case .haxorusNormal: return ["2228"]
        case .haxorusShadow: return ["2229"]
        case .haxorusPurified: return ["2230"]
        case .cubchooNormal: return ["2231"]
        case .cubchooShadow: return ["2232"]
        case .cubchooPurified: return ["2233"]
        case .bearticNormal: return ["2234"]
        case .bearticShadow: return ["2235"]
        case .bearticPurified: return ["2236"]
        case .cryogonalNormal: return ["2237"]
        case .cryogonalShadow: return ["2238"]
        case .cryogonalPurified: return ["2239"]
        case .shelmetNormal: return ["2240"]
        case .shelmetShadow: return ["2241"]
        case .shelmetPurified: return ["2242"]
        case .accelgorNormal: return ["2243"]
        case .accelgorShadow: return ["2244"]
        case .accelgorPurified: return ["2245"]
        case .stunfiskNormal: return ["2246"]
        case .stunfiskShadow: return ["2247"]
        case .stunfiskPurified: return ["2248"]
        case .mienfooNormal: return ["2249"]
        case .mienfooShadow: return ["2250"]
        case .mienfooPurified: return ["2251"]
        case .mienshaoNormal: return ["2252"]
        case .mienshaoShadow: return ["2253"]
        case .mienshaoPurified: return ["2254"]
        case .druddigonNormal: return ["2255"]
        case .druddigonShadow: return ["2256"]
        case .druddigonPurified: return ["2257"]
        case .golettNormal: return ["2258"]
        case .golettShadow: return ["2259"]
        case .golettPurified: return ["2260"]
        case .golurkNormal: return ["2261"]
        case .golurkShadow: return ["2262"]
        case .golurkPurified: return ["2263"]
        case .pawniardNormal: return ["2264"]
        case .pawniardShadow: return ["2265"]
        case .pawniardPurified: return ["2266"]
        case .bisharpNormal: return ["2267"]
        case .bisharpShadow: return ["2268"]
        case .bisharpPurified: return ["2269"]
        case .bouffalantNormal: return ["2270"]
        case .bouffalantShadow: return ["2271"]
        case .bouffalantPurified: return ["2272"]
        case .ruffletNormal: return ["2273"]
        case .ruffletShadow: return ["2274"]
        case .ruffletPurified: return ["2275"]
        case .braviaryNormal: return ["2276"]
        case .braviaryShadow: return ["2277"]
        case .braviaryPurified: return ["2278"]
        case .vullabyNormal: return ["2279"]
        case .vullabyShadow: return ["2280"]
        case .vullabyPurified: return ["2281"]
        case .mandibuzzNormal: return ["2282"]
        case .mandibuzzShadow: return ["2283"]
        case .mandibuzzPurified: return ["2284"]
        case .heatmorNormal: return ["2285"]
        case .heatmorShadow: return ["2286"]
        case .heatmorPurified: return ["2287"]
        case .durantNormal: return ["2288"]
        case .durantShadow: return ["2289"]
        case .durantPurified: return ["2290"]
        case .deinoNormal: return ["2291"]
        case .deinoShadow: return ["2292"]
        case .deinoPurified: return ["2293"]
        case .zweilousNormal: return ["2294"]
        case .zweilousShadow: return ["2295"]
        case .zweilousPurified: return ["2296"]
        case .hydreigonNormal: return ["2297"]
        case .hydreigonShadow: return ["2298"]
        case .hydreigonPurified: return ["2299"]
        case .larvestaNormal: return ["2300"]
        case .larvestaShadow: return ["2301"]
        case .larvestaPurified: return ["2302"]
        case .volcaronaNormal: return ["2303"]
        case .volcaronaShadow: return ["2304"]
        case .volcaronaPurified: return ["2305"]
        case .cobalionNormal: return ["2306"]
        case .cobalionShadow: return ["2307"]
        case .cobalionPurified: return ["2308"]
        case .terrakionNormal: return ["2309"]
        case .terrakionShadow: return ["2310"]
        case .terrakionPurified: return ["2311"]
        case .virizionNormal: return ["2312"]
        case .virizionShadow: return ["2313"]
        case .virizionPurified: return ["2314"]
        case .reshiramNormal: return ["2315"]
        case .reshiramShadow: return ["2316"]
        case .reshiramPurified: return ["2317"]
        case .zekromNormal: return ["2318"]
        case .zekromShadow: return ["2319"]
        case .zekromPurified: return ["2320"]
        case .meltanNormal: return ["2321"]
        case .meltanShadow: return ["2322"]
        case .meltanPurified: return ["2323"]
        case .melmetalNormal: return ["2324"]
        case .melmetalShadow: return ["2325"]
        case .melmetalPurified: return ["2326"]
        case .wurmpleSpring2020: return ["265-2327"]
        case .wobbuffetSpring2020: return ["202-2328"]
        case .raticateSpring2020: return ["20-2329"]
        case .frillishFemale: return ["593-2330"]
        case .jellicentFemale: return ["593-2331"]
        case .pikachuCostume2020: return ["25-2332"]
        case .dragoniteCostume2020: return ["149-2333"]
        case .onixCostume2020: return ["95-2334"]
        case .meowthGalarian: return ["52-2335"]
        case .ponytaGalarian: return ["77-2336"]
        case .rapidashGalarian: return ["78-2337"]
        case .farfetchdGalarian: return ["83-2338"]
        case .mrMimeGalarian: return ["122-2339"]
        case .corsolaGalarian: return ["222-2340"]
        case .darumakaGalarian: return ["554-2341"]
        case .darmanitanGalarianStandard: return ["554-2342"]
        case .darmanitanGalarianZen: return ["554-2343"]
        case .yamaskGalarian: return ["562-2344"]
        case .stunfiskGalarian: return ["618-2345"]
        case .obstagoonNormal: return ["862-2501"]
        case .obstagoonShadow: return ["862-2502"]
        case .obstagoonPurified: return ["862-2503"]
        case .perrserkerNormal: return ["863-2504"]
        case .perrserkerShadow: return ["863-2505"]
        case .perrserkerPurified: return ["863-2506"]
        case .sirfetchdNormal: return ["865-2510"]
        case .sirfetchdShadow: return ["865-2511"]
        case .sirfetchdPurified: return ["865-2512"]
        case .runerigusNormal: return ["867-2516"]
        case .runerigusShadow: return ["867-2517"]
        case .runerigusPurified: return ["867-2518"]
        case .slowpokeGalarian: return ["79-2582"]
        case .slowbroGalarian: return ["80-2583"]
        case .laprasCostume2020: return ["131-2585"]
        case .gengarCostume2020: return ["94-2586"]
        case .pyroarNormal: return ["668-2587"]
        case .pyroarFemale: return ["668-2588"]
        case .meowsticNormal: return ["678-2589"]
        case .meowsticFemale: return ["678-2590"]
        case .zygardeTenPercent: return ["718-2591"]
        case .zygardeFiftyPercent: return ["718-2592"]
        case .zygardeComplete: return ["718-2593"]
        case .vivillonArchipelago: return ["666-2594"]
        case .vivillonContinental: return ["666-2595"]
        case .vivillonElegant: return ["666-2596"]
        case .vivillonFancy: return ["666-2597"]
        case .vivillonGarden: return ["666-2598"]
        case .vivillonHighPlains: return ["666-2599"]
        case .vivillonIcySnow: return ["666-2600"]
        case .vivillonJungle: return ["666-2601"]
        case .vivillonMarine: return ["666-2602"]
        case .vivillonMeadow: return ["666-2603"]
        case .vivillonModern: return ["666-2604"]
        case .vivillonMonsoon: return ["666-2605"]
        case .vivillonOcean: return ["666-2606"]
        case .vivillonPokeball: return ["666-2607"]
        case .vivillonPolar: return ["666-2608"]
        case .vivillonRiver: return ["666-2609"]
        case .vivillonSandstorm: return ["666-2610"]
        case .vivillonSavanna: return ["666-2611"]
        case .vivillonSun: return ["666-2612"]
        case .vivillonTundra: return ["666-2613"]
        case .flabebeRed: return ["669-2614"]
        case .flabebeYellow: return ["669-2615"]
        case .flabebeOrange: return ["669-2616"]
        case .flabebeBlue: return ["669-2617"]
        case .flabebeWhite: return ["669-2618"]
        case .floetteRed: return ["670-2619"]
        case .floetteYellow: return ["670-2620"]
        case .floetteOrange: return ["670-2621"]
        case .floetteBlue: return ["670-2622"]
        case .floetteWhite: return ["670-2623"]
        case .florgesRed: return ["671-2624"]
        case .florgesYellow: return ["671-2625"]
        case .florgesOrange: return ["671-2626"]
        case .florgesBlue: return ["671-2627"]
        case .florgesWhite: return ["671-2628"]
        case .furfrouNatural: return ["676-2629"]
        case .furfrouHeart: return ["676-2630"]
        case .furfrouStar: return ["676-2631"]
        case .furfrouDiamond: return ["676-2632"]
        case .furfrouDebutante: return ["676-2633"]
        case .furfrouMatron: return ["676-2634"]
        case .furfrouDandy: return ["676-2635"]
        case .furfrouLaReine: return ["676-2636"]
        case .furfrouKabuki: return ["676-2637"]
        case .furfrouPharaoh: return ["676-2638"]
        case .aegislashShield: return ["681-2639"]
        case .aegislashBlade: return ["681-2640"]
        case .pumpkabooSmall: return ["710-2641"]
        case .pumpkabooAverage: return ["710-2642"]
        case .pumpkabooLarge: return ["710-2643"]
        case .pumpkabooSuper: return ["710-2644"]
        case .gourgeistSmall: return ["711-2645"]
        case .gourgeistAverage: return ["711-2646"]
        case .gourgeistLarge: return ["711-2647"]
        case .gourgeistSuper: return ["711-2648"]
        case .xerneasNeutral: return ["716-2649"]
        case .xerneasActive: return ["716-2650"]
        case .hoopaConfined: return ["720-2651"]
        case .hoopaUnbound: return ["720-2652"]
        case .sableyeCostume2020Deprecated: return ["302-2666"]
        case .sableyeCostume2020: return ["302-2668"]
        case .pikachuAdventureHat2020: return ["25-2669"]
        case .pikachuWinter2020: return ["25-2670"]
        case .delibirdWinter2020: return ["225-2671"]
        case .cubchooWinter2020: return ["613-2672"]
        case .slowpoke2020: return ["79-2673"]
        case .slowbro2021: return ["80-2674"]
        case .unset: return []
        case .UNRECOGNIZED: return []
        default:
            Log.warning(message: "Missing form string for form: \(self.rawValue)")
            return []
        }
    }
}
