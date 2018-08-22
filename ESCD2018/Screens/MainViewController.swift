//
//  MainViewController.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tabbar: UITabBar!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var sublocationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        //self.navigationController?.navigationBar.shadowImage = UIImage()
        
        tabbar.tintColor = UIColor.tintColor
        if #available(iOS 10.0, *) {
            tabbar.unselectedItemTintColor = UIColor.tintColor
        } else {
            // Fallback on earlier versions
        }
        
        
        if UI_USER_INTERFACE_IDIOM() == .pad {
            locationLabel.textColor = .black
            sublocationLabel.textColor = .black
        }
    }
}

extension MainViewController: UITabBarDelegate {
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag - 100 {
        case 0:
            performSegue(withIdentifier: "showScheduleSegue", sender: self)
            break
        case 1:
            performSegue(withIdentifier: "showAbstractsSegue", sender: self)
            break
        case 2:
            performSegue(withIdentifier: "showSpeakersSegue", sender: self)
            break
        case 3:
            performSegue(withIdentifier: "showSponsorsSegue", sender: self)
            break
        case 4:
            performSegue(withIdentifier: "showMapSegue", sender: self)
        default:
            break
        }
    }
}
