//
//  ScheduleSectionHeader.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/20/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class ScheduleSectionHeader: UIView {
    
    @IBOutlet weak var beginTimeLabel: UILabel!
    @IBOutlet weak var endTimeLabel: UILabel!
    
    lazy var dateInputFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "YYYY-MM-DDTHH:MM"
        return formatter
    }()
    
    lazy var timeOutputFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "HH:mm"
        return formatter
    }()
    
    func show(_ dictionary: DefaultDictionary) {
        if let _ = dictionary["beginTime"] as? String,
            let date = dateInputFormatter.date(from: (dictionary["beginTime"] as? String)!) {
            beginTimeLabel.text = timeOutputFormatter.string(from: date)
        }
        
        if let _ = dictionary["endTime"] as? String,
            let date = dateInputFormatter.date(from: (dictionary["endTime"] as? String)!) {
            endTimeLabel.text = timeOutputFormatter.string(from: date)
        }
    }
}
