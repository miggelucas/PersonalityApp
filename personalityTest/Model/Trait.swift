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
    
    init (name : String, median : Float, std : Float) {
        self.name = name
        self.median = median
        self.std = std
    }
    
}

