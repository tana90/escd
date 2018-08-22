//
//  SponsorCell.swift
//  ESCD2018
//
//  Created by Tudor Ana on 5/3/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SponsorCell: UITableViewCell {
    
    @IBOutlet weak var sponsorImage: UIImageView!
    
    func show(_ dictionary: DefaultDictionary) {
        
        if let _ = dictionary["picture"] as? String {
            sponsorImage.image = UIImage(named: (dictionary["picture"] as! String))
        }
    }
    
}
