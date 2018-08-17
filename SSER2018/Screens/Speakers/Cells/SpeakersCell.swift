//
//  SpeakersCell.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/15/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SpeakersCell: UITableViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    func show(_ dictionary: DefaultDictionary) {
        if let _ = dictionary["name"] as? String {
            nameLabel.text = dictionary["name"]! as? String
        }
        
        if let _ = dictionary["picture"] as? String,
            let image = UIImage(named: dictionary["picture"]! as! String) {
            photoView.image = image
        } else {
            photoView.image = UIImage(named: "user_undefined")
        }
        
        if let _ = dictionary["country"] as? String {
            countryLabel.text = dictionary["country"]! as? String
        }
    }
}
