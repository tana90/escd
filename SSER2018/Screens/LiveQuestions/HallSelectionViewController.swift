//
//  HallSelectionViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 5/7/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class HallSelectionViewController: UITableViewController {
    
    var selectedHall: Int = 0
    
    @IBAction func closeAction() {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLiveQuestionSegue" {
            (segue.destination as! LiveQuestionViewController).selectedHall = selectedHall
        }
    }
}

extension HallSelectionViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedHall = indexPath.row
        
        performSegue(withIdentifier: "showLiveQuestionSegue", sender: self)
    }
}
