//
//  BaseDetailsViewController.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/15/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

class BaseDetailsViewController: UITableViewController {
    
    var data: DefaultDictionary = [:] {
        didSet {
            tableView.reloadData()
        }
    }
    
    var cellHeight: CGFloat = 0.0
    
    var navigationHeaderView: NavigationTableHeaderView = {
        return UINib(nibName: "NavigationTableHeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! NavigationTableHeaderView
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension BaseDetailsViewController {
    
    override func tableView(_ tableView: UITableView,
                            heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        
        navigationHeaderView.hideTitle()
        navigationHeaderView.closeActionHandler = { [unowned self] in
            self.dismiss(animated: true, completion: nil)
        }
        navigationHeaderView.moreActionHander = {
            //Share
        }
        return navigationHeaderView
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        if cellHeight > 0.0 {
            return UIScreen.main.bounds.size.height - 44
        }
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if cell.frame.size.height < tableView.frame.size.height - 44 {
            cellHeight = tableView.frame.size.height
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView,
                            estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension BaseDetailsViewController {
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if scrollView.contentOffset.y < -122 {
            self.dismiss(animated: true, completion: nil)
        }
        
        if scrollView.contentOffset.y >= 140  {
            navigationHeaderView.showTitle()
        } else {
            navigationHeaderView.hideTitle()
        }
    }
}

