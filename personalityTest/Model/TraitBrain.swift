//
//  TraitBrain.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 03/06/22.
//

import Foundation

struct TraitBrain{
    let traits = [
        Trait(name: "Extroversion", median: 15.621093, std: 6.025811),
        Trait(name: "Stability", median: 18.011059, std: 6.537830),
        Trait(name: "Agreeableness", median: 21.053374, std: 5.702230),
        Trait(name: "Consciousness", median: 17.713736, std: 5.291877),
        Trait(name: "Openness", median: 23.354704, std: 4.400262),
    ]
    
    let traitIndex = ["Extrversion" : 0, "Stability" : 1, "Agreeableness" : 2, "Consciousness" : 3, "Openness" : 4 ]
    
    // estocar o escores do usuário em variáveis ou num dict?
    var extroversionEscore : Int = 0
    var stabilityEscore : Int = 0
    var agreeablenessEscore : Int = 0
    var consciousnessEscore : Int = 0
    var openessEscore : Int = 0
    
    func getScoreZ(userEscore escore : Int, traitEscore trait : String) -> Float {
        let indexOfTrait = traitIndex[trait]
        let trait = traits[indexOfTrait!]

        let userEscoreFloat = Float(escore)
        let medianTrait = trait.median
        let stdTrait = trait.std
        
        
        return (userEscoreFloat - medianTrait) / stdTrait
    }
    
    
}
