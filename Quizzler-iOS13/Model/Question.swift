//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Nikita on 12.09.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    
    let question: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
