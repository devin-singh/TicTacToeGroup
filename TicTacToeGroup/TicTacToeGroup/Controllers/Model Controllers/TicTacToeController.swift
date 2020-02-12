//
//  TicTacToeController.swift
//  TicTacToeGroup
//
//  Created by Devin Singh on 2/12/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

class TicTacToeController {
    
    // MARK: - Properties
    
    static let shared = TicTacToeController()
    
    // TODO: - Change Int to custom Symbol type
    
    var ticTacToeBoard = [[Int]](repeating: [Int](repeating: 0, count: 3), count: 3)
    
    // MARK: - Property Maniputation Functions
    
    func resetBoard() {
        for (r, array) in ticTacToeBoard.enumerated() {
            for (c, _) in array.enumerated() {
                ticTacToeBoard[r][c] = 0
            }
        }
    }
}
