//
//  NavigationTableHeaderView.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/15/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class NavigationTableHeaderView: UIView {
    
    @IBOutlet private weak var closeButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    public var closeActionHandler: (()->Void)?
    public var moreActionHander: (()->Void)?
    
    
    @IBAction func closeAction() {
        if let handler = closeActionHandler {
            handler()
        }
    }
    
    @IBAction func moreAction() {
        if let handler = moreActionHander {
            handler()
        }
    }
    
    func showTitle() {
       UIView.animate(withDuration: 0.2) { [weak self] in
            guard let _ = self else { return }
            self!.titleLabel.alpha = 1.0
            }
    }
    
    func hideTitle() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let _ = self else { return }
            self!.titleLabel.alpha = 0.0
            }
    }
}

