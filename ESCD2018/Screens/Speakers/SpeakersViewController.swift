//
//  SpeakersViewController.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SpeakersViewController: BaseTableViewController {
    
    lazy var filterHeaderView: BaseHeaderView = {
        let headerView = BaseHeaderView.instanceFromNib() as! BaseHeaderView
        headerView.types = DBManager.getSpeakersTypes()
        headerView.segmentedControl.removeAllSegments()
        headerView.segmentedControl.insertSegment(withTitle: "All", at: 0, animated: true)
        var count = 1
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
        tableView.register(UINib(nibName: "SpeakersCell", bundle: nil),
                           forCellReuseIdentifier: "speakersCell")

        filterHeaderView.changeFilterHandler = { [unowned self] (selectedIndex) in
            if selectedIndex > 0 {
                self.data = DBManager.getSpeakers(where: selectedIndex)
            } else {
                self.data = DBManager.getAllSpeakers()
            }
        }
        filterHeaderView.didChangeSelection()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSpeakerDetails",
            let destination = segue.destination as? SpeakersDetailsViewController {
            destination.data = selectedData!
        }
    }
}

extension SpeakersViewController {
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        
        return filterHeaderView
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "speakersCell") as? SpeakersCell {
            let speakerData = data[indexPath.row]
            cell.show(speakerData)
            return cell
        }
        return super.tableView(tableView, cellForRowAt: indexPath)
    }
}


extension SpeakersViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedData = data[indexPath.row]
        searchController.isActive = false
        performSegue(withIdentifier: "showSpeakerDetails", sender: self)
        
    }
}


extension SpeakersViewController  {
    
    override func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        super.searchBarTextDidBeginEditing(searchBar)
        filterHeaderView.disable()
    }
    
    override func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        data = DBManager.searchSpeakers(text: searchText)
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


