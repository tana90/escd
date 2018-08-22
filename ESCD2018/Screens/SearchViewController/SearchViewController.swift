//
//  SearchViewController.swift
//  ESCD2018
//
//  Created by Tudor Ana on 5/7/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SearchViewController: UITableViewController {
    
    var scheduleResults: [DefaultDictionary]?
    var speakersResults: [DefaultDictionary]?
    var abstractsResults: [DefaultDictionary]?
    
    
    var selectedSchedule: DefaultDictionary?
    var selectedSpeaker: DefaultDictionary?
    var selectedAbstract: DefaultDictionary?
    
    @IBAction func closeAction() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "ScheduleCell", bundle: nil),
                           forCellReuseIdentifier: "scheduleCell")
        tableView.register(UINib(nibName: "SimpleScheduleCell", bundle: nil),
                           forCellReuseIdentifier: "simpleScheduleCell")
        tableView.register(UINib(nibName: "AbstractsCell", bundle: nil),
                           forCellReuseIdentifier: "abstractsCell")
        tableView.register(UINib(nibName: "SpeakersCell", bundle: nil),
                           forCellReuseIdentifier: "speakersCell")
    }
    
    override final func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showScheduleDetailsSegue" {
            (segue.destination as! ScheduleDetailsViewController).selectedSchedule = selectedSchedule!
        }
        
        if segue.identifier == "showSpeakerDetails" {
            let destinationViewController = segue.destination as! SpeakersDetailsViewController
            destinationViewController.data = selectedSpeaker!
        }
        
        if segue.identifier == "showAbstractsDetailsSegue" {
            (segue.destination as! AbstractsDetailsViewController).data = selectedAbstract!
        }
    }
}


extension SearchViewController: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        search(text: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        search(text: searchBar.text)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        search(text: searchBar.text)
        searchBar.setShowsCancelButton(false, animated: true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
    }
}

extension SearchViewController {
    
    func search(text: String?) {
        
        
        guard let searchText = text,
            searchText.count > 0 else {
                scheduleResults?.removeAll()
                speakersResults?.removeAll()
                abstractsResults?.removeAll()
                tableView.reloadData()
                return
        }
        
        self.scheduleResults = DBManager.searchScheduleFor(text: searchText)
        self.speakersResults = DBManager.searchSpeakers(text: searchText)
        self.abstractsResults = DBManager.searchAbstracts(text: searchText)
        self.tableView.reloadData()        
    }
}



extension SearchViewController {
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        if section == 0,
            (scheduleResults?.count) ?? 0 > 0 {
            return "Schedule"
        }
        
        if section == 1,
            (speakersResults?.count) ?? 0 > 0 {
            return "Speakers"
        }
        
        if section == 2,
            (abstractsResults?.count) ?? 0 > 0 {
            return "Abstracts"
        }
        
        return ""
    }
    
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView,
                            estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            //Schedule
            return scheduleResults?.count ?? 0
        }
        if section == 1 {
            //Speakers
            return speakersResults?.count ?? 0
        }
        
        //Abstracts
        return abstractsResults?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let scheduleData: DefaultDictionary = scheduleResults![indexPath.row]
            var cellIdentifier = "simpleScheduleCell"
            if let _ = scheduleData["SpeakerName"] as? String {
                cellIdentifier = "scheduleCell"
            }
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ScheduleCell
            cell.show(scheduleData)
            return cell
            
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "speakersCell") as! SpeakersCell
            let speakerData = speakersResults![indexPath.row]
            cell.show(speakerData)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "abstractsCell") as! AbstractsCell
            let abstractData = abstractsResults![indexPath.row]
            cell.show(abstractData)
            return cell
        }
    }
    
    
    override final func tableView(_ tableView: UITableView,
                                  didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        //Schedule
        if indexPath.section == 0 {
            selectedSchedule = scheduleResults?[indexPath.row]
            performSegue(withIdentifier: "showScheduleDetailsSegue", sender: self)
        }
        
        //Speaker
        if indexPath.section == 1 {
            selectedSpeaker = speakersResults?[indexPath.row]
            performSegue(withIdentifier: "showSpeakerDetails", sender: self)
        }
        
        //Abstract
        if indexPath.section == 2 {
            selectedAbstract = abstractsResults?[indexPath.row]
            performSegue(withIdentifier: "showAbstractsDetailsSegue", sender: self)
        }
    }
}
