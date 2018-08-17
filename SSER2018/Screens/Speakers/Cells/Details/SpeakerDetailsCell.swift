//
//  SpeakerDetailsCell.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/15/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SpeakerDetailsCell: UITableViewCell {
    
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    public var showImageActionHandler: ((UIImage) -> ())?
    
    @IBAction func showPictureAction() {
        if let _ = showImageActionHandler {
            showImageActionHandler!(profileImageView.image!)
        }
    }
    
    func show(_ data: DefaultDictionary) {
        
        if let _ = data["name"] as? String {
            nameLabel.text = data["name"]! as? String
        }
        
        if let _ = data["country"] as? String {
            countryLabel.text = data["country"]! as? String
        }
        
        if let _ = data["about"] as? String {
            detailsLabel.text = data["about"]! as? String
        }
        
        if let _ = data["picture"] as? String,
            let image = UIImage(named: data["picture"]! as! String) {
            profileImageView.image = image
            bannerImageView.image = image.blur(quantity: 15)
        } else {
            profileImageView.image = UIImage(named: "user_undefined")
            bannerImageView.image = UIImage()
        }
    }
}
