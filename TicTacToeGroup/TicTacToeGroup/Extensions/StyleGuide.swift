//
//  StyleGuide.swift
//  TicTacToeGroup
//
//  Created by Adam Hatch on 2/13/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit



extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .lightGray) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    func rotate(by radians: CGFloat = (-CGFloat.pi/2)) {
        self.transform = CGAffineTransform(rotationAngle: radians)
    }
}


extension UIColor {
    static let redAccent = UIColor(named: "redAccent")!
  
}



