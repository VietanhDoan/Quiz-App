//
//  PlayViewController.swift
//  My Quiz App
//
//  Created by Viet Anh on 31/10/2021.
//

import UIKit

class PlayViewController: UIViewController{
    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var collectionViewAnswer: UICollectionView!
    @IBOutlet weak var buttonSubmitAnswer: CustomButton!
    
    @IBAction func submitAnswer(_ sender: Any) {
        let resultController = ResultViewController()
        self.navigationController?.pushViewController(resultController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        collectionViewAnswer.delegate = self
//        collectionViewAnswer.dataSource = self
    }
    
    func changeToNextQuestion() -> Void {
        //
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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
