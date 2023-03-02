//
//  File.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 17.10.18.
//

import Foundation
import POGOProtos
import PerfectLib

extension HoloTemporaryEvolutionId {

    public static var allCases: [HoloTemporaryEvolutionId] = [
        .tempEvolutionMega,
        .tempEvolutionMegaX,
        .tempEvolutionMegaY,
        .tempEvolutionPrimal,
        .tempEvolutionUnset
    ]

    static var allTemporaryEvolutionIdsInString: [String] {
        var temporaryevolutionStrings = [String]()
        for temporaryevolution in HoloTemporaryEvolutionId.allCases {
            for temporaryevolutionString in temporaryevolution.temporaryevolutionStrings {
                temporaryevolutionStrings.append(temporaryevolutionString)
            }
        }
        return temporaryevolutionStrings
    }

    var temporaryevolutionStrings: [String] {

        switch self {
        case .tempEvolutionMega: return ["1"]
        case .tempEvolutionMegaX: return ["2"]
        case .tempEvolutionMegaY: return ["3"]
        case .tempEvolutionPrimal: return ["4"]
        case .tempEvolutionUnset: return ["0"]
        case .UNRECOGNIZED: return []
        }
    }
}
