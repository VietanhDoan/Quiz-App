//
//  ViewController.swift
//  My Quiz App
//
//  Created by Viet Anh on 30/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPlayClicked(_ sender: Any) {
        print("Hello")
        let viewController = PlayViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


}

