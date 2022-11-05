//
//  ViewController.swift
//  personalityTest
//
//  Created by Lucas Migge de Barros on 02/06/22.
//

import UIKit


// swipe mudar o a tela
// registrar mudanca de estado dos butões

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
        
        // por algum motivo do satanas o currentittle não funcionou
        //let userAnswer = sender.currentTitle!
        let userAnswer = sender.titleLabel!.text!

        let valueUserAnswer = questionBrain.getValueFromAnswer(answer: userAnswer)
        let questionTrait = questionBrain.getQuestionTrait()

        traitBrain.updateUserEscore(UserScore: valueUserAnswer, traitOfScore: questionTrait)
        
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

