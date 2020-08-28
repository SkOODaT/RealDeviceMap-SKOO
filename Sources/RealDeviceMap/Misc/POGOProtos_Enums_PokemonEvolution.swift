//
//  File.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 17.10.18.
//

import Foundation
import POGOProtos
import PerfectLib

extension POGOProtos_Enums_PokemonEvolution {

    public static var allCases: [POGOProtos_Enums_PokemonEvolution] = [
        .evolutionUnset,
        .evolutionMega,
        .evolutionMegaX,
        .evolutionMegaY
    ]

    static var allPokemonEvolutionsInString: [String] {
        var pokemonevolutionStrings = [String]()
        for pokemonevolution in POGOProtos_Enums_PokemonEvolution.allCases {
            for pokemonevolutionString in pokemonevolution.pokemonevolutionStrings {
                pokemonevolutionStrings.append(pokemonevolutionString)
            }
        }
        return pokemonevolutionStrings
    }

    var pokemonevolutionStrings: [String] {

        switch self {
        case .evolutionUnset: return ["0"]
        case .evolutionMega: return ["1"]
        case .evolutionMegaX: return ["2"]
        case .evolutionMegaY: return ["3"]
        case .UNRECOGNIZED: return []
        default:
            Log.warning(message: "Missing pokemonevolution string for pokemonevolution: \(self.rawValue)")
            return []
        }
    }
}
