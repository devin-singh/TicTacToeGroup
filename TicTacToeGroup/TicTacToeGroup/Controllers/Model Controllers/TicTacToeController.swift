//
//  TicTacToeController.swift
//  TicTacToeGroup
//
//  Created by Devin Singh on 2/12/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class TicTacToeController {
    
    // MARK: - Properties
    
    static let shared = TicTacToeController()
    
    var turn: Int = Int.random(in: 0...10) > 5 ? Symbol.x : Symbol.o
    
    // TODO: - Change Int to custom Symbol type
    
    var ticTacToeBoard = [[Int]](repeating: [Int](repeating: 0, count: 3), count: 3)
    
    var occupiedPositions: [Position] = []
    
    // MARK: - Property Maniputation Functions
    
    func resetBoard() {
        for (r, array) in ticTacToeBoard.enumerated() {
            for (c, _) in array.enumerated() {
                ticTacToeBoard[r][c] = Symbol.blank
            }
        }
    }
    
    func takeTurn(row: Int, column: Int, completion: @escaping (GameState) -> Void) {
        if turn == -1 { return }
        let position = Position(row: row, column: column)
        if !occupiedPositions.contains(position) {
            ticTacToeBoard[row][column] = turn
        } else {
            return completion(.goAgain)
        }
        if !isThereAWinner() && isGameStillGoing() && !occupiedPositions.contains(position) {
            occupiedPositions.append(position)
            turn = Symbol.getOpposite(symbol: turn)
            return completion(.turnTaken)
        } else if occupiedPositions.contains(position) {
            return completion(.goAgain)
        } else if isThereAWinner() {
            turn = Symbol.getOpposite(symbol: turn)
            return completion(.winner)
        } else if !isGameStillGoing() && !isThereAWinner() {
            completion(.tie)
        } else {
            print("Error. Gamestate Not recognized")
            return completion(.error)
        }
    }
        
    // MARK: - Private functions
    
    // Check Corners for Diag Winner
    
    private func isGameStillGoing() -> Bool {
        for (r, array) in ticTacToeBoard.enumerated() {
            for (c, _) in array.enumerated() {
                if ticTacToeBoard[r][c] == Symbol.blank {
                    return true
                }
            }
        }
        return false
    }
    
    private func isThereAWinner() -> Bool {
        return isCornerWinner() || isHorizontalWinner() || isVerticalWinner()
    }
    
    private func isCornerWinner() -> Bool {
        return topCornerWinner() || bottomCornerWinner()
    }
    
    private func topCornerWinner() -> Bool {
        return ticTacToeBoard[0][0] == turn && ticTacToeBoard[1][1] == turn && ticTacToeBoard[2][2] == turn
    }
    
    private func bottomCornerWinner() -> Bool {
        return ticTacToeBoard[2][0] == turn && ticTacToeBoard[1][1] == turn && ticTacToeBoard[0][2] == turn
    }
    
    // Check Horizontals For Winner
    
    private func isHorizontalWinner() -> Bool {
        return topHorizontal() || middleHorizontal() || bottomHorizontal()
    }
    
    private func topHorizontal() -> Bool {
        return ticTacToeBoard[0][0] == turn && ticTacToeBoard[0][1] == turn && ticTacToeBoard[0][2] == turn
    }
    
    private func middleHorizontal() -> Bool {
        return ticTacToeBoard[1][0] == turn && ticTacToeBoard[1][1] == turn && ticTacToeBoard[1][2] == turn
    }
    
    private func bottomHorizontal() -> Bool {
        return ticTacToeBoard[2][0] == turn && ticTacToeBoard[2][1] == turn && ticTacToeBoard[2][2] == turn
    }
    
    // Check Verticals For Winner
    
    private func isVerticalWinner() -> Bool {
        return leftVertical() || middleVertical() || rightVertical()
    }
    
    private func leftVertical() -> Bool {
        return ticTacToeBoard[0][0] == turn && ticTacToeBoard[1][0] == turn && ticTacToeBoard[2][0] == turn
    }
    
    private func middleVertical() -> Bool {
        return ticTacToeBoard[0][1] == turn && ticTacToeBoard[1][1] == turn && ticTacToeBoard[2][1] == turn
    }
    
    private func rightVertical() -> Bool {
        return ticTacToeBoard[0][2] == turn && ticTacToeBoard[1][2] == turn && ticTacToeBoard[2][2] == turn
    }
    
}

