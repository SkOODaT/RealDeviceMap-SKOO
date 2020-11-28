//
//  File.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 17.10.18.
//

import Foundation
import POGOProtos
import PerfectLib

extension POGOProtos_Enums_TemporaryEvolutionId {

    public static var allCases: [POGOProtos_Enums_TemporaryEvolutionId] = [
        .evolutionUnset,
        .evolutionMega,
        .evolutionMegaX,
        .evolutionMegaY
    ]

    static var allTemporaryEvolutionIdsInString: [String] {
        var temporaryevolutionStrings = [String]()
        for temporaryevolution in POGOProtos_Enums_TemporaryEvolutionId.allCases {
            for temporaryevolutionString in temporaryevolution.temporaryevolutionStrings {
                temporaryevolutionStrings.append(temporaryevolutionString)
            }
        }
        return temporaryevolutionStrings
    }

    var temporaryevolutionStrings: [String] {

        switch self {
        case .evolutionUnset: return ["0"]
        case .evolutionMega: return ["1"]
        case .evolutionMegaX: return ["2"]
        case .evolutionMegaY: return ["3"]
        case .UNRECOGNIZED: return []
        default:
            Log.warning(message: "Missing temporaryevolution string for temporaryevolution: \(self.rawValue)")
            return []
        }
    }
}
