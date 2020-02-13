//
//  Symbol.swift
//  TicTacToeGroup
//
//  Created by Devin Singh on 2/12/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation

struct Symbol {
    static let blank: Int = 0
    static let x: Int = 1
    static let o: Int = 2
    
    static func getOpposite(symbol: Int) -> Int {
        if symbol == Symbol.x {
            return Symbol.o
        } else {
            return Symbol.x
        }
    }
    
    static func getImageName(symbol: Int) -> String {
        if symbol == Symbol.x {
            return "xSymbol"
        } else {
            return "oSymbol"
        }
    }
    
    static func getWinner(symbol: Int) -> String {
        if symbol == Symbol.x {
            return "X Wins!"
        } else {
            return "O Wins!"
        }
    }
    
    static func getPlayerTurn(symbol: Int) -> String {
        if symbol == Symbol.x {
            return "X's Turn"
        } else {
            return "O's Turn"
        }
    }
}
