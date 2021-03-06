//
//  TraitBrain.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 03/06/22.
//

import Foundation

struct TraitBrain{
    var traits = [
        "Extroversion" : Trait(name: "Extroversion", median: 15.621093, std: 6.025811),
        "Stability" : Trait(name: "Stability", median: 18.011059, std: 6.537830),
        "Agreeableness" : Trait(name: "Agreeableness", median: 21.053374, std: 5.702230),
        "Consciousness" : Trait(name: "Consciousness", median: 17.713736, std: 5.291877),
        "Openness" : Trait(name: "Openness", median: 23.354704, std: 4.400262)
    ]
    
    mutating func updateUserEscore(UserScore score : Int, traitOfScore trait : String) {
        traits[trait]!.userEscore! += score
    }
    
    func getScoreZ( traitEscore trait : String) -> Float {
        let trait = traits[trait]!

        let userEscoreFloat = Float(trait.userEscore!)
        let medianTrait = trait.median
        let stdTrait = trait.std
        
        
        return (userEscoreFloat - medianTrait) / stdTrait
    }
    
    
}
