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
}
