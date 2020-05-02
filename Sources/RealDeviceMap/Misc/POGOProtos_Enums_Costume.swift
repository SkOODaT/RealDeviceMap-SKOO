//
//  File.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 17.10.18.
//

import Foundation
import POGOProtos
import PerfectLib

extension POGOProtos_Enums_Costume {

    public static var allCases: [POGOProtos_Enums_Costume] = [
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
        .sinnoh2020Noevolve
    ]

    static var allCostumesInString: [String] {
        var costumeStrings = [String]()
        for costume in POGOProtos_Enums_Costume.allCases {
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
        case .unset: return []
        case .UNRECOGNIZED: return []
        default:
            Log.warning(message: "Missing costume string for costume: \(self.rawValue)")
            return []
        }
    }
}
