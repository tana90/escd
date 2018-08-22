//
//  ScheduleCell.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/20/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class ScheduleCell: UITableViewCell {
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var typeView: UIView!
    @IBOutlet weak var indicatorView: UIView!
    @IBOutlet weak var speakerImageView: UIImageView?
    @IBOutlet weak var speakerNameLabel: UILabel?
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var abstractLabel: UILabel!
    @IBOutlet weak var favoriteLabel: UILabel!
    
    func show(_ dictionary: DefaultDictionary) {
        
        if let _ = dictionary["ScheduleType"] as? String {
            typeLabel!.text = (dictionary["ScheduleType"]! as? String)?.uppercased()
            if let _ = dictionary["ScheduleColor"] as? String {
                typeView.backgroundColor = UIColor.hexString(hex: dictionary["ScheduleColor"] as! String)
                indicatorView.backgroundColor = UIColor.hexString(hex: dictionary["ScheduleColor"] as! String)
            }
        } else {
            typeLabel!.text = "OTHER"
        }
        
        if let _ = speakerImageView {
            if let _ = dictionary["SpeakerPicture"] as? String,
                let image = UIImage(named: dictionary["SpeakerPicture"] as! String) {
                speakerImageView?.image = image
            } else {
                speakerImageView?.image = UIImage(named: "user_undefined")
            }
        }
        
        if let _ = speakerNameLabel {
            if let _ = dictionary["SpeakerName"] as? String {
                speakerNameLabel!.text = dictionary["SpeakerName"]! as? String
            } else {
                speakerNameLabel!.text = ""
            }
        }
        
        if let _ = dictionary["BeginTime"] as? String,
            let _ = dictionary["EndTime"] as? String {
            timeLabel.text = String(format: "%@ - %@", (dictionary["BeginTime"]! as? String)!, (dictionary["EndTime"]! as? String)!)
        } else {
            timeLabel.text = ""
        }
        
        if let _ = dictionary["LocationName"] as? String {
            locationLabel.text = dictionary["LocationName"]! as? String
        } else {
            locationLabel.text = ""
        }
        
        if let _ = dictionary["ScheduleName"] as? String {
            abstractLabel.text = dictionary["ScheduleName"]! as? String
        } else {
            abstractLabel.text = ""
        }
        
        favoriteLabel.alpha = 0.0
        
    }
    
    func showFavoriteInfo(_ dictionary: DefaultDictionary) {
        if dictionary["ScheduleFavorite"] as! Int == 1 {
            backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
            favoriteLabel.alpha = 1.0
        } else {
            backgroundColor = .white
            favoriteLabel.alpha = 0.0
        }
    }
}
