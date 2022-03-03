//
//  File.swift
//  RealDeviceMapLib
//
//  Created by Florian Kostenzer on 17.10.18.
//

import Foundation
import POGOProtos
import PerfectLib

extension PokemonDisplayProto.Costume {

    public static var allCases: [PokemonDisplayProto.Costume] = [
        .holiday2016,
        .anniversary,
        .oneYearAnniversary,
        .halloween2017,
        .summer2018,
        .fall2018,
        .november2018,
        .winter2018,
        .feb2019,
        .may2019Noevolve,
        .jan2020Noevolve,
        .april2020Noevolve,
        .safari2020Noevolve,
        .spring2020Noevolve,
        .summer2020Noevolve,
        .fall2020Noevolve,
        .winter2020Noevolve,
        .notForReleaseAlpha,
        .notForReleaseBeta,
        .notForReleaseGamma,
        .notForReleaseNoevolve,
        .kanto2020Noevolve,
        .johto2020Noevolve,
        .hoenn2020Noevolve,
        .sinnoh2020Noevolve,
        .costume1,
        .costume2,
        .costume3,
        .costume4,
        .costume5,
        .costume6,
        .costume7,
        .costume8,
        .costume9,
        .costume10,
        //.costume1NoEvolve,
        //.costume2NoEvolve,
        //.costume3NoEvolve,
        //.costume4NoEvolve,
        //.costume5NoEvolve,
        //.costume6NoEvolve,
        //.costume7NoEvolve,
        //.costume8NoEvolve,
        //.costume9NoEvolve,
        //.costume10NoEvolve,
        .gofest2021Noevolve,
        .fashion2021Noevolve,
        .halloween2021Noevolve,
        .gems12021Noevolve,
        .gems22021Noevolve,
        .holiday2021Noevolve,
        .tcg2022Noevolve,
        .jan2022Noevolve
    ]

    static var allCostumesInString: [String] {
        var costumeStrings = [String]()
        for costume in PokemonDisplayProto.Costume.allCases {
            for costumeString in costume.costumeStrings {
                costumeStrings.append(costumeString)
            }
        }
        return costumeStrings
    }

    var costumeStrings: [String] {

        switch self {
        case .holiday2016: return ["1"]
        case .anniversary: return ["2"]
        case .oneYearAnniversary: return ["3"]
        case .halloween2017: return ["4"]
        case .summer2018: return ["5"]
        case .fall2018: return ["6"]
        case .november2018: return ["7"]
        case .winter2018: return ["8"]
        case .feb2019: return ["9"]
        case .may2019Noevolve: return ["10"]
        case .jan2020Noevolve: return ["11"]
        case .april2020Noevolve: return ["12"]
        case .safari2020Noevolve: return ["13"]
        case .spring2020Noevolve: return ["14"]
        case .summer2020Noevolve: return ["15"]
        case .fall2020Noevolve: return ["16"]
        case .winter2020Noevolve: return ["17"]
        case .notForReleaseAlpha: return ["18"]
        case .notForReleaseBeta: return ["19"]
        case .notForReleaseGamma: return ["20"]
        case .notForReleaseNoevolve: return ["21"]
        case .kanto2020Noevolve: return ["22"]
        case .johto2020Noevolve: return ["23"]
        case .hoenn2020Noevolve: return ["24"]
        case .sinnoh2020Noevolve: return ["25"]
        case .costume1: return ["27"]
        case .costume2: return ["28"]
        case .costume3: return ["29"]
        case .costume4: return ["30"]
        case .costume5: return ["31"]
        case .costume6: return ["32"]
        case .costume7: return ["33"]
        case .costume8: return ["34"]
        case .costume9: return ["35"]
        case .costume10: return ["36"]
        //case .costume1NoEvolve: return ["37"]
        //case .costume2NoEvolve: return ["38"]
        //case .costume3NoEvolve: return ["39"]
        //case .costume4NoEvolve: return ["40"]
        //case .costume5NoEvolve: return ["41"]
        //case .costume6NoEvolve: return ["42"]
        //case .costume7NoEvolve: return ["43"]
        //case .costume8NoEvolve: return ["44"]
        //case .costume9NoEvolve: return ["45"]
        //case .costume10NoEvolve: return ["46"]
        //case .gofest2021Noevolve: return ["47"]
        case .fashion2021Noevolve: return ["48"]
        case .halloween2021Noevolve: return ["49"]
        case .gems12021Noevolve: return ["50"]
        case .gems22021Noevolve: return ["51"]
        case .holiday2021Noevolve: return ["52"]
        case .tcg2022Noevolve: return ["53"]
        case .jan2022Noevolve: return ["54"]
        case .unset: return []
        case .UNRECOGNIZED: return []
        default:
            Log.warning(message: "Missing costume string for costume: \(self.rawValue)")
            return []
        }
    }
}
