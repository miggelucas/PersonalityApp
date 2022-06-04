//
//  PersonalityBrain.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 02/06/22.
//

import Foundation
import UIKit


struct QuestionBrain{
    let questions = [
        Question(text: "I don't talk a lot.", trait: "Extroversion", isInverted: true),
        Question(text: "I start conversations.", trait: "Extroversion", isInverted: false),
        Question(text: "I talk to a lot of different people at parties.", trait: "Extroversion", isInverted: false),
        Question(text: "I don't like to draw attention to myself.", trait: "Extroversion", isInverted: false),
        Question(text: "I don't mind being the center of attention.", trait: "Extroversion", isInverted: true),
        Question(text: "I am quiet around strangers.", trait: "Extroversion", isInverted: true),
        
        Question(text: "I get stressed out easily.", trait: "Stability", isInverted: false),
        Question(text: "I am easily disturbed.", trait: "Stability", isInverted: false),
        Question(text: "I get upset easily.", trait: "Stability", isInverted: false),
        Question(text: "I change my mood a lot.", trait: "Stability", isInverted: false),
        Question(text: "I have frequent mood swings.", trait: "Stability", isInverted: false),
        Question(text: "I get irritated easily.", trait: "Stability", isInverted: false),
    
        Question(text: "I am interested in people.", trait: "Agreeableness", isInverted: false),
        Question(text: "I sympathize with others' feelings.", trait: "Agreeableness", isInverted: false),
        Question(text: "I am not interested in other people's problems.", trait: "Agreeableness", isInverted: true),
        Question(text: "I have a soft heart.", trait: "Agreeableness", isInverted: false),
        Question(text: "I am not really interested in others.", trait: "Agreeableness", isInverted: true),
        Question(text: "I feel others' emotions.", trait: "Agreeableness", isInverted: false),
        
        Question(text: "I leave my belongings around.", trait: "Consciousness", isInverted: true),
        Question(text: "I make a mess of things.", trait: "Consciousness", isInverted: true),
        Question(text: "I get chores done right away.", trait: "Consciousness", isInverted: false),
        Question(text: "I often forget to put things back in their proper place.", trait: "Consciousness", isInverted: true),
        Question(text: "I like order.", trait: "Consciousness", isInverted: false),
        Question(text: "I follow a schedule.", trait: "Consciousness", isInverted: false),
        
        Question(text: "I have a rich vocabulary.", trait: "Openness", isInverted: false),
        Question(text: "I have a vivid imagination.", trait: "Openness", isInverted: false),
        Question(text: "I have excellent ideas.", trait: "Openness", isInverted: false),
        Question(text: "I use difficult words.", trait: "Openness", isInverted: false),
        Question(text: "I am quick to understand things.", trait: "Openness", isInverted: false),
        Question(text: "I am full of ideas.", trait: "Openness", isInverted: false),
    ]
    
    var currentQuestionIndex = 0
    
    
    func getQuestionText() -> String {
        return questions[currentQuestionIndex].text
    }
    
    func getQuestionTrait() -> String {
        return questions[currentQuestionIndex].trait
    }
    
    func checkIfQuestionIsInverted() -> Bool {
        return questions[currentQuestionIndex].isInverted
    }
    
    func getProgress() -> Float {
        return Float(currentQuestionIndex + 1) / Float(questions.count)
    }
    
    func getValueFromAnswer(answer : String) -> Int {
        var valueAnswer : Int
        
        switch (answer) {
        case "Agree":
            valueAnswer = 1
        case "Partially agree":
            valueAnswer = 2
        case "Neutral":
            valueAnswer = 3
        case "Partially disagree":
            valueAnswer = 4
        case "Disagree":
            valueAnswer = 5
        default:
            valueAnswer = 0
        }
        
        if checkIfQuestionIsInverted() {
            valueAnswer = invertEscore(escoreToBeInverted: valueAnswer)
        }
        
        return valueAnswer
    }
    
        
    func invertEscore(escoreToBeInverted score : Int) -> Int {
        return 6 - score
    }

    
    mutating func nextQuestion() {
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
            
        } else {
            
            // resetando o app por enquanto
            // showResults()
            currentQuestionIndex = 0
            currentQuestionIndex = 0
        }
        
    }

}
