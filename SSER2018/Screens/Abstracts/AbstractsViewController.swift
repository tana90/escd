//
//  AbstractsViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/17/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class AbstractsViewController: BaseTableViewController {
    
    lazy var filterHeaderView: BaseHeaderView = {
        
        let headerView = UINib(nibName: "BaseHeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! BaseHeaderView
        headerView.types = DBManager.getAbstractsTypes()
        headerView.segmentedControl.removeAllSegments()
        var count = 0
        for type in headerView.types {
            headerView.segmentedControl.insertSegment(withTitle: type["name"] as? String, at: count, animated: true)
            count += 1
        }
        headerView.segmentedControl.selectedSegmentIndex = 0
        return headerView
    }()
    
    var selectedData: DefaultDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Configure cell
        tableView.register(UINib(nibName: "AbstractsCell", bundle: nil),
                           forCellReuseIdentifier: "abstractsCell")
        
        filterHeaderView.changeFilterHandler = { [unowned self] (selectedIndex) in
            self.data = DBManager.getAbstracts(where: selectedIndex + 1)
        }
        filterHeaderView.didChangeSelection()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAbstractsDetailsSegue",
            let destination = segue.destination as? AbstractsDetailsViewController,
            let _ = selectedData {
            destination.data = selectedData!
        }
    }
}

extension AbstractsViewController {
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        return filterHeaderView
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView,
                            estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "abstractsCell") as? AbstractsCell {
            let abstractData = data[indexPath.row]
            cell.show(abstractData)
            return cell
        }
        return super.tableView(tableView, cellForRowAt: indexPath)
    }
}

extension AbstractsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedData = data[indexPath.row]
        performSegue(withIdentifier: "showAbstractsDetailsSegue", sender: self)
        searchController.isActive = false
    }
}


extension AbstractsViewController  {
    
    override func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        super.searchBarTextDidBeginEditing(searchBar)
        filterHeaderView.disable()
    }
    
    override func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        data = DBManager.searchAbstracts(text: searchText)
    }
    
    override func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        super.searchBarTextDidEndEditing(searchBar)
        if let _ = searchBar.text,
            (searchBar.text?.count)! > Int(0) {
            
        } else {
            filterHeaderView.enable()
            filterHeaderView.didChangeSelection()
        }
    }
}
