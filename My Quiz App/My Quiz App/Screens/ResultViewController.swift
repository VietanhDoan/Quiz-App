//
//  ResultViewController.swift
//  My Quiz App
//
//  Created by Viet Anh on 31/10/2021.
//

import UIKit

class ResultViewController: UIViewController {

    var correctAnswer : Int = 0
    
    @IBOutlet weak var labelShowResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelShowResult.text = "Bạn đã trả lời đúng \(correctAnswer)/10 câu"
    }
}
