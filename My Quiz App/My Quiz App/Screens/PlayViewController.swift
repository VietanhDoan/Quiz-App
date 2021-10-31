//
//  PlayViewController.swift
//  My Quiz App
//
//  Created by Viet Anh on 31/10/2021.
//

import UIKit

class PlayViewController: UIViewController{
    
    
    var indexOfCurrentQuestion = 0
    var correctAnswer = 0
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var collectionViewAnswer: UICollectionView!
    @IBOutlet weak var buttonSubmitAnswer: CustomButton!
    
    @IBAction func submitAnswer(_ sender: Any) {
        let resultController = ResultViewController()
        resultController.correctAnswer = correctAnswer
        self.navigationController?.pushViewController(resultController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSubmitAnswer.isHidden = false
//        collectionViewAnswer.delegate = self
//        collectionViewAnswer.dataSource = self
    }
    
    func changeToNextQuestion() -> Void {
        //
        indexOfCurrentQuestion += 1
        
        if (indexOfCurrentQuestion == 10) {
            buttonSubmitAnswer.isHidden = false
        }
    }
}

//extension PlayViewController: UICollectionViewDelegate, UICollectionViewDataSource  {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionViewAnswer.dequeueReusableCell(
//            withReuseIdentifier: "AnswerCollectionViewCell",
//            for: indexPath)
//        return cell
//    }
//}
