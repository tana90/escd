//
//  SponsorSectionHeader.swift
//  SSER2018
//
//  Created by Tudor Ana on 5/4/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SponsorSectionHeader: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func show(_ dictionary: DefaultDictionary) {
        if let _ = dictionary["category"] as? String {
            titleLabel.text = dictionary["category"] as? String
        }
    }
}
