//
//  BaseHeaderView.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/19/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

class BaseHeaderView: UIView {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    public var changeFilterHandler: ((Int)->Void)?
    var types: [DefaultDictionary] = []

    class func instanceFromNib() -> UIView {
        return UINib(nibName: "BaseHeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! BaseHeaderView
    }
    
    func enable() {
        segmentedControl.isEnabled = true
        UIView.animate(withDuration: 0.3) { [unowned self] in
            self.segmentedControl.alpha = 1.0
        }
    }
    
    func show() {
        
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "All", at: 0, animated: true)
        var count = 1
        for type in types {
            segmentedControl.insertSegment(withTitle: type["name"] as? String, at: count, animated: true)
            count += 1
        }
        segmentedControl.selectedSegmentIndex = 0
    }
    
    func disable() {
        segmentedControl.isEnabled = false
        UIView.animate(withDuration: 0.3) { [unowned self] in
            self.segmentedControl.alpha = 0.3
        }
    }
    
    @IBAction func didChangeSelection() {
        if let _ = changeFilterHandler {
            changeFilterHandler!(segmentedControl.selectedSegmentIndex)
        }
    }
}
