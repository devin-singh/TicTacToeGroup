//
//  TicTacButtons.swift
//  TicTacToeGroup
//
//  Created by Adam Hatch on 2/13/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class TicTacButton: UIButton {

      override func awakeFromNib() {
          super.awakeFromNib()
          setupView()
      }
      
     func setupView() {
         self.backgroundColor = .redAccent
         self.addCornerRadius()
     }
      
  }


