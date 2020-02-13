//
//  Position.swift
//  TicTacToeGroup
//
//  Created by Devin Singh on 2/13/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import Foundation


class Position {
    let row: Int
    let column: Int
    
    init(row: Int, column: Int) {
        self.row = row
        self.column = column
    }
}

extension Position: Equatable {
    static func == (lhs: Position, rhs: Position) -> Bool {
        lhs.row == rhs.row && lhs.column == rhs.column
    }
    
}
