//
//  TicTacToeTableViewController.swift
//  TicTacToeGroup
//
//  Created by Adam Hatch on 2/12/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class TicTacToeTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var buttonBoard = [[UIButton]](repeating: [UIButton](repeating: UIButton(), count: 3), count: 3)
    
    // MARK: - Outlets
    
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var gridButton00: UIButton!
    @IBOutlet weak var gridButton01: UIButton!
    @IBOutlet weak var gridButton02: UIButton!
    @IBOutlet weak var gridButton10: UIButton!
    @IBOutlet weak var gridButton11: UIButton!
    @IBOutlet weak var gridButton12: UIButton!
    @IBOutlet weak var gridButton20: UIButton!
    @IBOutlet weak var gridButton21: UIButton!
    @IBOutlet weak var gridButton22: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initButtonBoard()
        tableView.allowsSelection = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initButtonBoard()
    }
    //MARK: - Private functions
    
    private func initButtonBoard() {
        self.buttonBoard = [[gridButton00, gridButton01, gridButton02],
                            [gridButton10, gridButton11, gridButton12],
                            [gridButton20, gridButton21, gridButton22]]
    }
    
    private func updateView(row: Int, column: Int) {
        TicTacToeController.shared.takeTurn(row: row, column: column) { (gamestate) in
            DispatchQueue.main.async {
                switch gamestate {
                case .turnTaken:
                    self.buttonBoard[row][column].setImage(UIImage(named: Symbol.getImageName(symbol: TicTacToeController.shared.turn)), for: .normal)
                case .tie:
                    self.buttonBoard[row][column].setImage(UIImage(named: Symbol.getImageName(symbol: TicTacToeController.shared.turn)), for: .normal)
                    self.gameStateLabel.text = "Tie Game!"
                    TicTacToeController.shared.turn = -1
                case .winner:
                    self.buttonBoard[row][column].setImage(UIImage(named: Symbol.getImageName(symbol: TicTacToeController.shared.turn)), for: .normal)
                    let symbol = TicTacToeController.shared.turn
                    self.gameStateLabel.text = "\(Symbol.getWinner(symbol: symbol))"
                    TicTacToeController.shared.turn = -1
                case .error:
                    self.gameStateLabel.text = "Error with Model Controller Logic"
                    TicTacToeController.shared.turn = -1
                }
            }
            
        }
    }
    
    private func clearButtons() {
        for (r, row) in buttonBoard.enumerated() {
            for (c, _) in row.enumerated() {
                buttonBoard[r][c].setImage(nil, for: .normal)
            }
        }
    }
    
    //MARK: - Actions
    
    @IBAction func gridButton00Tapped(_ sender: Any) {
        updateView(row: 0, column: 0)
    }
    @IBAction func gridButton01Tapped(_ sender: Any) {
        updateView(row: 0, column: 1)
    }
    @IBAction func gridButton02Tapped(_ sender: Any) {
        updateView(row: 0, column: 2)
    }
    @IBAction func gridButton10Tapped(_ sender: Any) {
        updateView(row: 1, column: 0)
    }
    @IBAction func gridButton11Tapped(_ sender: Any) {
        updateView(row: 1, column: 1)
    }
    @IBAction func gridButton12Tapped(_ sender: Any) {
        updateView(row: 1, column: 2)
    }
    @IBAction func gridButton20Tapped(_ sender: Any) {
        updateView(row: 2, column: 0)
    }
    @IBAction func gridButton21Tapped(_ sender: Any) {
        updateView(row: 2, column: 1)
    }
    @IBAction func gridButton22Tapped(_ sender: Any) {
        updateView(row: 2, column: 2)
    }
    @IBAction func menuButtonTapped(_ sender: Any) {
        
    }
    @IBAction func newGameButtonTapped(_ sender: Any) {
        TicTacToeController.shared.resetBoard()
        clearButtons()
        TicTacToeController.shared.turn = Int.random(in: 0...10) > 5 ? Symbol.x : Symbol.o
    }
}
