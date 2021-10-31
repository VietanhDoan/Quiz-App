//
//  QuestionModel.swift
//  My Quiz App
//
//  Created by Viet Anh on 31/10/2021.
//

import Foundation

class QuestionModel {
    var id: Int = 0
    var question: String = ""
    var selectionA: String = ""
    var selectionB: String = ""
    var selectionC: String = ""
    var selectionD: String = ""
    var correctAnswer: Int = 0
    
    init(id: Int, question: String, selectionA: String, selectionB: String, selectionC: String, selectionD: String, correctAnswer: Int) {
        self.id = id
        self.question = question
        self.selectionA = selectionA
        self.selectionB = selectionB
        self.selectionC = selectionC
        self.selectionD = selectionD
        self.correctAnswer = correctAnswer
        
    }
}

