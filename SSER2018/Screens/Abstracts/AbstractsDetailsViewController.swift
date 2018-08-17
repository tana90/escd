//
//  AbstractsDetailsViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/19/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class AbstractsDetailsViewController: UITableViewController {
    
    var data: DefaultDictionary = [:]
    var speakers: [DefaultDictionary] = []
    var selectedSpeaker: DefaultDictionary = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speakers = DBManager.getSpeakersOfAbstract(where: (data["speakerId"] as? Int)!)
    }
    
    
    override final func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSpeakerDetailsSegue" {
            let destinationViewController = segue.destination as! SpeakersDetailsViewController
            destinationViewController.data = selectedSpeaker
        }
    }
}

extension AbstractsDetailsViewController {
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    override final func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override final func tableView(_ tableView: UITableView,
                                  numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return speakers.count
        }
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "abstractCellIdentifier")
        
        if indexPath.section == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "speakersCell")
            let speaker = speakers[indexPath.row]

            let titleLabel = cell?.viewWithTag(100) as! UILabel
            let imageView = cell?.viewWithTag(101) as! UIImageView
            let subtitleLabel = cell?.viewWithTag(102) as! UILabel
            
            titleLabel.text = speaker["name"] as? String
            
            if let _ = speaker["picture"] as? String,
                let image = UIImage(named: speaker["picture"]! as! String) {
                imageView.image = image
            } else {
                imageView.image = UIImage(named: "user_undefined")
            }
            
            
            subtitleLabel.text = speaker["country"] as? String
            return cell!
        }
        
        var text = data["title"] as! String
        if indexPath.row == 1 {
            text = data["description"] as! String

        } else {

        }
        cell?.textLabel?.text = text
        
        return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)
        
        
        if indexPath.section == 0 {
            selectedSpeaker = speakers[indexPath.row]
            performSegue(withIdentifier: "showSpeakerDetailsSegue", sender: self)
        }
    }
}
