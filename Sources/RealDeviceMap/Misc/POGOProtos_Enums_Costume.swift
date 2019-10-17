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
        case .holiday2016: return ["25-1"]
        case .anniversary: return ["25-2"]
        case .oneYearAnniversary: return ["25-3"]
        case .halloween2017: return ["25-4"]
        case .summer2018: return ["25-5"]
        case .fall2018: return ["25-6"]
        case .november2018: return ["25-7"]
        case .winter2018: return ["25-8"]
        case .feb2019: return ["25-9"]
        case .may2019Noevolve: return ["25-10"]
        case .unset: return []
        case .UNRECOGNIZED: return []
        default:
            Log.warning(message: "Missing costume string for costume: \(self.rawValue)")
		}
    }
    
}