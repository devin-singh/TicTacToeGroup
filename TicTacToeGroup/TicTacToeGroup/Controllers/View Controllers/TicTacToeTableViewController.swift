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
    
    // MARK: - Table view data source
    

    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
