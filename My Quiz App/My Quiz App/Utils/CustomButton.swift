//
//  CustomButton.swift
//  My Quiz App
//
//  Created by Viet Anh on 31/10/2021.
//

import Foundation
import UIKit

@IBDesignable class CustomButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()

        updateCornerRadius()
    }

    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }

    func updateCornerRadius() {
        layer.cornerRadius = rounded ? frame.size.height / 2 : 0
    }
}
