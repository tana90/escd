//
//  ScheduleViewController.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/19/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class ScheduleViewController: BaseTableViewController {
    
    lazy var filterHeaderView: BaseHeaderView = {
        let headerView = BaseHeaderView.instanceFromNib() as! BaseHeaderView
        headerView.types = DBManager.getScheduleTypes()
        headerView.segmentedControl.removeAllSegments()
        var count = 0
        for type in headerView.types {
            headerView.segmentedControl.insertSegment(withTitle: type["name"] as? String, at: count, animated: true)
            count += 1
        }
        headerView.segmentedControl.selectedSegmentIndex = 0
        return headerView
    }()
    
    lazy var dateInputFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm"
        return formatter
    }()
    
    lazy var timeOutputFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "HH:mm"
        return formatter
    }()
    
    var sections: [DefaultDictionary] = DBManager.getSection(where: 1)
    var searchedData: [DefaultDictionary] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    var selectedData: DefaultDictionary?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ScheduleCell", bundle: nil),
                           forCellReuseIdentifier: "scheduleCell")
        tableView.register(UINib(nibName: "SimpleScheduleCell", bundle: nil),
                           forCellReuseIdentifier: "simpleScheduleCell")
        
        filterHeaderView.changeFilterHandler = { [unowned self] (selectedIndex) in
            self.sections = DBManager.getSection(where: selectedIndex + 1)
            self.tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showScheduleDetailsSegue" {
            if let detailsViewController = segue.destination as? ScheduleDetailsViewController {
                detailsViewController.selectedSchedule = selectedData!
            }
        }
    }
}

extension ScheduleViewController {
    
    override func tableView(_ tableView: UITableView,
                            heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return super.tableView(tableView,
                                   heightForHeaderInSection: section)
        }
        guard searchedData.count == 0 else {
            return 0
        }
        return super.tableView(tableView,
                               heightForHeaderInSection: section)
    }
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return filterHeaderView
        }
        
        guard searchedData.count == 0 else {
            return nil
        }
        
        let sectionHeader = UINib(nibName: "ScheduleSectionHeader", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! ScheduleSectionHeader
        
        if let beginTimeLabel = sectionHeader.viewWithTag(100) as? UILabel {
            if let _ = sections[section - 1]["beginTime"] as? String,
                let date = dateInputFormatter.date(from: (sections[section - 1]["beginTime"] as? String)!) {
                beginTimeLabel.text = timeOutputFormatter.string(from: date)
            }
        }
        
        if let endTimeLabel = sectionHeader.viewWithTag(101) as? UILabel {
            if let _ = sections[section - 1]["endTime"] as? String,
                let date = dateInputFormatter.date(from: (sections[section - 1]["endTime"] as? String)!) {
                endTimeLabel.text = timeOutputFormatter.string(from: date)
            }
        }
        return sectionHeader
    }
    
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView,
                            estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if searchedData.count > 0 {
            return 2
        }
        return sections.count + 1
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 0
        }
        
        if searchedData.count > 0 {
            return searchedData.count
        }
        
        let scheduleData = DBManager.getScheduleFor(section: sections[section - 1]["objectId"] as! Int)
        return scheduleData.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var scheduleData: DefaultDictionary
        
        if searchedData.count > 0 {
            scheduleData = searchedData[indexPath.row]
        } else {
            let sectionIndex = sections[indexPath.section - 1]["objectId"] as! Int
            scheduleData = DBManager.getScheduleFor(section: sectionIndex)[indexPath.row]
        }
        
        var cellIdentifier = "simpleScheduleCell"
        
        
        
        if let _ = scheduleData["SpeakerName"] as? String {
            cellIdentifier = "scheduleCell"
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ScheduleCell {
            
            cell.show(scheduleData)
            cell.showFavoriteInfo(scheduleData)
            return cell
        }
        return super.tableView(tableView, cellForRowAt: indexPath)
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
    
        
        if searchedData.count > 0 {
            selectedData = searchedData[indexPath.row]
        } else {
            let sectionIndex = sections[indexPath.section - 1]["objectId"] as! Int
            selectedData = DBManager.getScheduleFor(section: sectionIndex)[indexPath.row]
        }
        searchController.isActive = false
        
        performSegue(withIdentifier: "showScheduleDetailsSegue", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}


extension ScheduleViewController  {
    
    override func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        super.searchBarTextDidBeginEditing(searchBar)
        filterHeaderView.disable()
    }
    
    override func searchBar(_ searchBar: UISearchBar,
                            textDidChange searchText: String) {
        
        searchedData = DBManager.searchScheduleFor(text: searchText)
    }
    
    override func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        super.searchBarTextDidEndEditing(searchBar)
        if let _ = searchBar.text,
            (searchBar.text?.count)! > Int(0) {
            
        } else {
            filterHeaderView.enable()
            filterHeaderView.didChangeSelection()
            searchedData.removeAll()
        }
    }
}
