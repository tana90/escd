//
//  LiveQuestionViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 5/7/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class LiveQuestionViewController: UITableViewController {
    
    var selectedHall: Int = 0
    @IBOutlet weak var questionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LiveQuestionViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        
        if indexPath.section == 1 {
            
            guard let question = questionTextField.text,
                question.count > Int(5) else {
                    
                    let alertViewController = UIAlertController(title: "Please enter your question.", message: nil, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .cancel) { (alert) in
                    }
                    
                    alertViewController.addAction(okAction)
                    self.present(alertViewController, animated: true, completion: nil)
                    
                    return
            }
            
            if let escapingQuestion = question.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
                let urlString = String(format: "http://activa.ro/sser/app18.php?sala=%ld&question=%@", selectedHall + 1, escapingQuestion)
                
                
                var request = URLRequest(url: URL(string: urlString)!)
                request.httpMethod = "GET"
                let session = URLSession.shared
                
                session.dataTask(with: request) { [weak self] (data, response, err) in
                    
                    guard let _ = self else { return }
                    
                    if let _ = err {
                        
                    } else {
                        
                        DispatchQueue.main.async { [weak self] in
                            guard let _ = self else { return }
                            self!.showToast(message: "Question posted. Thank you!")
                            self?.questionTextField.resignFirstResponder()
                            
                            let deadlineTime = DispatchTime.now() + .seconds(2)
                            DispatchQueue.main.asyncAfter(deadline: deadlineTime) { [weak self] in
                                guard let _ = self else { return }
                                self!.navigationController?.dismiss(animated: true, completion: nil)
                            }
  
                        }
                        
                    }
                    }.resume()
                
            }
        }
    }
}
