//
//  AbstractsCell.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/18/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class AbstractsCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func show(_ dictionary: DefaultDictionary) {
        if let _ = dictionary["title"] as? String {
            titleLabel.text = dictionary["title"]! as? String
        }
    }
}
