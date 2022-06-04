//
//  Trait.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 03/06/22.
//

import Foundation

struct Trait {
    let name : String
    let median : Float
    let std : Float
    var userEscore : Int?
    var userEscoreZ : Float?
    var UserPercentile : Float?
    
    init (name : String, median : Float, std : Float, userEscore : Int? = 0, userEscoreZ : Float? = 0, UserPercentile : Float? = 0) {
        self.name = name
        self.median = median
        self.std = std
        self.userEscore = userEscore
        self.userEscoreZ = userEscoreZ
        self.UserPercentile = UserPercentile
    }
    
}

