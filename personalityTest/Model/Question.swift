//
//  Question.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 02/06/22.
//

import Foundation

struct Question {
    var text : String
    var trait : String
    var isInverted : Bool
    
    init(text : String, trait : String, isInverted : Bool){
        self.text = text
        self.trait = trait
        self.isInverted = isInverted
    }
}
