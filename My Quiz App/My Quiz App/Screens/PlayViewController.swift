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
    
    var listColorBackground: [UIColor] = []
    var listQuestions : [QuestionModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initListColorBackGround()
        initListQuestions()
        
        
        
        collectionViewAnswer.delegate = self
        collectionViewAnswer.dataSource = self
        
        collectionViewAnswer.register(UINib(nibName: "AnswerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AnswerCollectionViewCell")
        
        self.view.backgroundColor = UIColor(red: 1.00, green: 0.95, blue: 0.74, alpha: 1.00)
        labelQuestion.text = listQuestions[indexOfCurrentQuestion].question
    }
    
    func randomSequenceGenerator(min: Int, max: Int) -> () -> Int {
        var numbers: [Int] = []
        return {
            if numbers.isEmpty {
                numbers = Array(min ... max)
            }

            let index = Int(arc4random_uniform(UInt32(numbers.count)))
            return numbers.remove(at: index)
        }
    }
    
    func getRandomQuestions() -> [Int] {
        var result: [Int] = []
        let getRandom = randomSequenceGenerator(min: 0, max: 19)
        for _ in 1...10 {
            print(getRandom())
            result.append(getRandom())
        }
        return result
    }
    
    func initListColorBackGround() -> Void {
        listColorBackground.append(.blue)
        listColorBackground.append(.cyan)
        listColorBackground.append(.red)
        listColorBackground.append(.yellow)
        listColorBackground.append(.gray)
        listColorBackground.append(.green)
        listColorBackground.append(.orange)
        listColorBackground.append(.purple)
        listColorBackground.append(.systemPink)
        listColorBackground.append(.brown)
    }
    
    func initListQuestions() -> Void {
        // Add 20 questions
        listQuestions.append(QuestionModel(id: 0, question: "Ngày thu phân là ngày nào?", selectionA: "23 – 24 tháng 8", selectionB: "23 – 24 tháng 10", selectionC: "23 – 24 tháng 9", selectionD: "23 – 24 tháng 11", correctAnswer: 2))
        listQuestions.append(QuestionModel(id: 1, question: "Các loại thuốc kháng sinh được dùng để chống", selectionA: "Vi rút", selectionB: "Nấm", selectionC: "Vi khuẩn", selectionD: "Côn trùng", correctAnswer: 2))
        listQuestions.append(QuestionModel(id: 2, question: "Trưởng phái đoàn ta tham dự Hội nghị Genève về lập lại hoà bình cho Đông Dương là ai?", selectionA: "Nguyễn Thị Bình", selectionB: "Võ Nguyên Giáp", selectionC: "Trường Chinh", selectionD: "Phạm Văn Đồng", correctAnswer: 3))
        listQuestions.append(QuestionModel(id: 3, question: "Công cụ tìm kiếm nào hiện nay được nhiều người sử dụng nhất trên thế giới?", selectionA: "Facebook", selectionB: "Youtube", selectionC: "Wikipedia", selectionD: "Google", correctAnswer: 3))
        listQuestions.append(QuestionModel(id: 4, question: "Trong lịch sử dựng nước của dân tộc ta, nhà nước đầu tiên được thành lập là nhà nước nào?", selectionA: "Âu Lạc", selectionB: "Đại Việt", selectionC: "Việt Nam", selectionD: "Văn Lang", correctAnswer: 3))
        listQuestions.append(QuestionModel(id: 5, question: "Nước nào đã phát minh ra món mì ăn liền (mì gói)?", selectionA: "Việt Nam", selectionB: "Hàn Quốc", selectionC: "Nhật Bản", selectionD: "Trung Quốc", correctAnswer: 2))
        listQuestions.append(QuestionModel(id: 6, question: "Việt Nam có bao nhiêu dân tộc anh em?", selectionA: "75 dân tộc", selectionB: "54 dân tộc", selectionC: "63 dân tộc", selectionD: "45 dân tộc", correctAnswer: 1))
        listQuestions.append(QuestionModel(id: 7, question: "Tác giả bài Quốc ca nước CHXHCN Việt Nam là", selectionA: "Nhạc sĩ Phan Huỳnh Điểu", selectionB: "Nhạc sĩ Hoàng Hiệp", selectionC: "Nhạc sĩ Văn Cao", selectionD: "Nhạc sĩ Thuận Yến", correctAnswer: 2))
        listQuestions.append(QuestionModel(id: 8, question: "Bộ phận nào trên cơ thể thằn lằn có khả năng mọc lại?", selectionA: "Đuôi", selectionB: "Đầu", selectionC: "Mắt", selectionD: "Tim", correctAnswer: 0))
        listQuestions.append(QuestionModel(id: 9, question: "Thành phố Cố đô của Nhật Bản?", selectionA: "Kyoto", selectionB: "Hiroshima", selectionC: "Hokkaido", selectionD: "Fukushima", correctAnswer: 0))
        listQuestions.append(QuestionModel(id: 10, question: "Con sông nào chảy qua 10 nước châu Âu và 3 thủ đô?", selectionA: "Sông Nile", selectionB: "Sông Amazon", selectionC: "Sông Danube", selectionD: "Sông Mekong", correctAnswer: 2))
        listQuestions.append(QuestionModel(id: 11, question: "Loại đá nào được hình thành từ xác động vật:", selectionA: "Đá trầm tích", selectionB: "Đá catket", selectionC: "Đá magma", selectionD: "Đá vôi", correctAnswer: 3))
        listQuestions.append(QuestionModel(id: 12, question: "Dãy núi nào là biên giới tự nhiên giữa Châu Á và Châu Âu?", selectionA: "Dãy Alps", selectionB: "Dãy Uran", selectionC: "Dãy Trường Sơn", selectionD: "Dãy Himalaya", correctAnswer: 1))
        listQuestions.append(QuestionModel(id: 13, question: "World Cup lần đầu tiên được tổ chức ở đâu?", selectionA: "Brazil", selectionB: "Pháp", selectionC: "Đức", selectionD: "Uruguay", correctAnswer: 3))
        listQuestions.append(QuestionModel(id: 14, question: "Hành tinh nào tối nhất trong Hệ Mặt Trời?", selectionA: "Sao Thổ", selectionB: "Trái Đất", selectionC: "Sao Hoả", selectionD: "Sao Diêm Vương", correctAnswer: 3))
        listQuestions.append(QuestionModel(id: 15, question: "Ai được coi là người sáng lập ra nhà Trần?", selectionA: "Trần Hưng Đạo", selectionB: "Trần Thủ Độ", selectionC: "Trần Thánh Tông", selectionD: "Trần Nhân Tông", correctAnswer: 1))
        listQuestions.append(QuestionModel(id: 16, question: "Địa danh núi Bà Đen thuộc tỉnh nào?", selectionA: "Thành phố Hồ Chí Minh", selectionB: "Tây Ninh", selectionC: "Hà Nội", selectionD: "Thừa Thiên Huế", correctAnswer: 1))
        listQuestions.append(QuestionModel(id: 17, question: "Thành phố nào là thủ đô của nước Nga?", selectionA: "Moscow", selectionB: "Paris", selectionC: "Saint Peterburg (Leningrad)", selectionD: "New York", correctAnswer: 0))
        listQuestions.append(QuestionModel(id: 18, question: "Năm 1928, nhân vật hoạt hình nào lần đầu tiên xuất hiện?", selectionA: "Vịt Donald", selectionB: "Công chúa Elsa", selectionC: "Chuột Mickey", selectionD: "Mèo Tom", correctAnswer: 2))
        listQuestions.append(QuestionModel(id: 19, question: "Người có công dẹp nạn cát cứ, thống nhất đất nước vào năm 967 là ai?", selectionA: "Đinh Bộ Lĩnh", selectionB: "Quang Trung", selectionC: "Lý Thường Kiệt", selectionD: "Lê Lợi", correctAnswer: 0))
        
        listQuestions.shuffle()
    }
    
    func changeToNextQuestion() -> Void {
        
        if (indexOfCurrentQuestion < 10) {
            indexOfCurrentQuestion += 1
        }

        if (indexOfCurrentQuestion >= 10) {
            let resultController = ResultViewController()
            resultController.correctAnswer = correctAnswer
            self.navigationController?.pushViewController(resultController, animated: true)
        } else {
//            self.view.backgroundColor = listColorBackground[indexOfCurrentQuestion]
        }
        
        self.view.backgroundColor = UIColor(red: 1.00, green: 0.95, blue: 0.74, alpha: 1.00)
        labelQuestion.text = listQuestions[indexOfCurrentQuestion].question
        collectionViewAnswer.reloadData()
    }
}

extension PlayViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewAnswer.dequeueReusableCell(
            withReuseIdentifier: "AnswerCollectionViewCell",
            for: indexPath) as! AnswerCollectionViewCell
        if (indexPath.row == 0) {
            cell.labelSelection.text = listQuestions[indexOfCurrentQuestion].selectionA
        } else if (indexPath.row == 1) {
            cell.labelSelection.text = listQuestions[indexOfCurrentQuestion].selectionB
        } else if (indexPath.row == 2) {
            cell.labelSelection.text = listQuestions[indexOfCurrentQuestion].selectionC
        } else {
            cell.labelSelection.text = listQuestions[indexOfCurrentQuestion].selectionD
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
       {
          return CGSize(width: 180, height: 150)
       }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let isCorrectAnswer = checkNumberCorrectAnswer(indexPath.row)
        if (isCorrectAnswer) {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.red
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            self.changeToNextQuestion()
        }
        
        
        print("Index \(indexOfCurrentQuestion)")
        
        
    }
    
    func checkNumberCorrectAnswer(_ selection: Int) -> Bool {
        var result = false
        if (selection == listQuestions[indexOfCurrentQuestion].correctAnswer) {
            correctAnswer += 1
            result = true
        }
        return result
    }
}
