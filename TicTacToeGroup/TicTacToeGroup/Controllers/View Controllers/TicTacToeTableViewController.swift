//
//  TicTacToeTableViewController.swift
//  TicTacToeGroup
//
//  Created by Adam Hatch on 2/12/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class TicTacToeTableViewController: UITableViewController {
    
    //MARK - Properties
    let buttonBoard = [[UIButton]](repeating: [UIButton](repeating: UIButton(), count: 3), count: 3)
    
    //MARK - OUTLETS
    
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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK - Private Functions
    private func initButtonBoard() {
        
    }
    //MARK - ACTIONS
    
    
    @IBAction func gridButton00Tapped(_ sender: Any) {
    }
    @IBAction func gridButton01Tapped(_ sender: Any) {
    }
    @IBAction func gridButton02Tapped(_ sender: Any) {
    }
    @IBAction func gridButton10Tapped(_ sender: Any) {
    }
    @IBAction func gridButton11Tapped(_ sender: Any) {
    }
    @IBAction func gridButton12Tapped(_ sender: Any) {
    }
    @IBAction func gridButton20Tapped(_ sender: Any) {
    }
    @IBAction func gridButton21Tapped(_ sender: Any) {
    }
    @IBAction func gridButton22Tapped(_ sender: Any) {
    }
    @IBAction func menuButtonTapped(_ sender: Any) {
    }
    @IBAction func newGameButtonTapped(_ sender: Any) {
    }
}
