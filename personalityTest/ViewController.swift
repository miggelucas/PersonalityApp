//
//  ViewController.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 02/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var agreeButton: UIButton!
    @IBOutlet weak var partAgreeButton: UIButton!
    @IBOutlet weak var neutralButton: UIButton!
    @IBOutlet weak var partDisagreeButton: UIButton!
    @IBOutlet weak var disagreeButton: UIButton!
    
    
    var questionBrain = QuestionBrain()
    var traitBrain = TraitBrain()
    var timer = Timer()
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        
        //let userAnswer = sender.currentTitle!
        //let valueUserAnswer = questionBrain.getValueFromAnswer(answer: userAnswer)
        sender.backgroundColor = UIColor.systemBlue
        
        questionBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        timer.invalidate()
    }

    @objc func updateUI() {
        questionLabel.text = questionBrain.getQuestionText()
        progressBar.progress = questionBrain.getProgress()
        clearButtons()
    }
    
    func clearButtons() {
        agreeButton.backgroundColor = UIColor.clear
        partAgreeButton.backgroundColor = UIColor.clear
        neutralButton.backgroundColor = UIColor.clear
        partDisagreeButton.backgroundColor = UIColor.clear
        disagreeButton.backgroundColor = UIColor.clear
    }
}

