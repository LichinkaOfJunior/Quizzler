//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!
    @IBOutlet var choice3Button: UIButton!
    
    @IBOutlet var progressView: UIProgressView!
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    var quizzBrain = QuizzBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
    }
    
    @IBAction func pressedButtonAnswer(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        animate(isTrue: quizzBrain.checkAnswer(userAnswer), sender: sender)
        
        quizzBrain.nextQustions()
        updateUI()
        
    }
    
    func updateUI() {
        
        progressView.progress = quizzBrain.statusDisplayOfProgressView()
        questionLabel.text = quizzBrain.getQuizzQuestion()
        scoreLabel.text = quizzBrain.getUsersScore()
        
        let answer = quizzBrain.getArrayOfAnswer()
        
        choice1Button.setTitle(answer[0], for: .normal)
        choice2Button.setTitle(answer[1], for: .normal)
        choice3Button.setTitle(answer[2], for: .normal)
    }
    
    func animate(isTrue: Bool, sender: UIButton) {
        UIButton.animate(withDuration: 0.5) {
            if isTrue {
                sender.backgroundColor = UIColor.green
            } else {
                sender.backgroundColor = UIColor.red
            }
            //            sender.backgroundColor = UIColor(red: 53, green: 78, blue: 126, alpha: 0)
            sender.backgroundColor = .clear
        }
        
    }
    
}

