//
//  MyScheduleViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 5/5/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class MyScheduleViewController: UITableViewController {
    
    var schedules: [DefaultDictionary] = DBManager.getFavoriteSchedule()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        schedules = DBManager.getFavoriteSchedule()
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.view.backgroundColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        tableView.register(UINib(nibName: "ScheduleCell", bundle: nil),
                           forCellReuseIdentifier: "scheduleCell")
        tableView.register(UINib(nibName: "SimpleScheduleCell", bundle: nil),
                           forCellReuseIdentifier: "simpleScheduleCell")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showScheduleDetailsSegue" {
            
            var scheduleData: DefaultDictionary
            if let selectedRow = tableView.indexPathForSelectedRow {
                scheduleData = schedules[selectedRow.row]
                
                if let detailsViewController = segue.destination as? ScheduleDetailsViewController {
                    detailsViewController.selectedSchedule = scheduleData
                }
            }
        }
    }
}

extension MyScheduleViewController {
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView,
                            estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return schedules.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let scheduleData: DefaultDictionary = schedules[indexPath.row]

        var cellIdentifier = "simpleScheduleCell"

        if let _ = scheduleData["SpeakerName"] as? String {
            cellIdentifier = "scheduleCell"
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ScheduleCell {
            
            cell.show(scheduleData)
            return cell
        }
        return super.tableView(tableView, cellForRowAt: indexPath)
    }
    
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showScheduleDetailsSegue", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
