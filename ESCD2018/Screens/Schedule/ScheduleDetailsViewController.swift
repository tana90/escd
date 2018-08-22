//
//  ScheduleDetailsViewController.swift
//  ESCD2018
//
//  Created by Tudor Ana on 5/5/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit
import EventKit

final class ScheduleDetailsViewController: UITableViewController {
    
    var selectedSchedule: DefaultDictionary = [:]
    
    var speakers: [DefaultDictionary] = []
    var abstracts: [DefaultDictionary] = []
    var selectedSpeaker: DefaultDictionary = [:]
    
    var calendar: EKCalendar = EKCalendar(for: EKEntityType.event, eventStore: EKEventStore())
    
    lazy var timeFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "HH:mm"
        return formatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let abstractId = selectedSchedule["AbstractId"] as? Int {

            speakers = DBManager.getSpeakersOfAbstract(where: abstractId)
            abstracts = DBManager.getAbstractsOf(abstractId)
        }
    }
    
    override final func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSpeakerDetailsSegue" {
            let destinationViewController = segue.destination as! SpeakersDetailsViewController
            destinationViewController.data = selectedSpeaker
        }
    }
}

extension ScheduleDetailsViewController {
    
    override final func tableView(_ tableView: UITableView,
                                  heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 || indexPath.section == 3 {
            return 88
        }
        return UITableViewAutomaticDimension
    }
    
    override final func tableView(_ tableView: UITableView,
                                  estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 4
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return speakers.count
        }
        
        if section == 1 {
            return 1
        }
        
        if section == 2 {
            if speakers.count > 0 {
                return 2 * abstracts.count
            }
            return 1
        }
        
        if section == 3 {
            return 1
        }
        
        return 0
    }
    
    
    override final func tableView(_ tableView: UITableView,
                                  cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "speakerCellIdentifier")
        
        //Speaker cell
        if indexPath.section == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "speakerCellIdentifier")
            let speaker = speakers[indexPath.row]
            let titleLabel = cell?.viewWithTag(100) as! UILabel
            let imageView = cell?.viewWithTag(101) as! UIImageView
            let subtitleLabel = cell?.viewWithTag(102) as! UILabel
            
            let typeView = cell?.viewWithTag(105)
            let typeLabel = typeView?.viewWithTag(100) as! UILabel
            
            if let _ = selectedSchedule["ScheduleType"] as? String {
                typeLabel.text = (selectedSchedule["ScheduleType"]! as? String)?.uppercased()
                if let _ = selectedSchedule["ScheduleColor"] as? String {
                    typeView?.backgroundColor = UIColor.hexString(hex: selectedSchedule["ScheduleColor"] as! String)
                }
            } else {
                typeLabel.text = "OTHER"
            }
            
            titleLabel.text = speaker["name"] as? String
            if let _ = speaker["picture"] as? String,
                let image = UIImage(named: speaker["picture"]! as! String) {
                imageView.image = image
            } else {
                imageView.image = UIImage(named: "user_undefined")
            }
            
            subtitleLabel.text = speaker["country"] as? String
        }
        
        //Location cell
        if indexPath.section == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: "locationCellIdentifier")

            cell?.textLabel?.text = String(format: "%@ - %@\n%@", selectedSchedule["BeginTime"] as! String, selectedSchedule["EndTime"] as! String, (selectedSchedule["LocationName"] as? String) ?? "")
            
        }
        
        if indexPath.section == 2 {
            cell = tableView.dequeueReusableCell(withIdentifier: "abstractTitleCellIdentifier")
            if speakers.count == 0 {
                cell?.textLabel?.text = selectedSchedule["ScheduleName"] as? String
            } else {
                cell?.textLabel?.text = abstracts[Int(indexPath.row / 2)]["title"] as? String
                if indexPath.row % 2 == 1 {
                    cell = tableView.dequeueReusableCell(withIdentifier: "abstractContentCellIdentifier")
                    cell?.textLabel?.text = abstracts[Int(indexPath.row / 2)]["description"] as? String
                }
            }
        }
        
        if indexPath.section == 3 {
            cell = tableView.dequeueReusableCell(withIdentifier: "addFavoriteCellIdentifier")
            let addToFavoriteLabel = cell?.viewWithTag(100) as! UILabel
            
            if selectedSchedule["ScheduleFavorite"] as! Int == 1 {
                addToFavoriteLabel.text = "Remove from My schedule"
            } else {
                addToFavoriteLabel.text = "Add to My schedule"
            }
        }
        
        
        return cell!
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0 {
            selectedSpeaker = speakers[indexPath.row]
            performSegue(withIdentifier: "showSpeakerDetailsSegue", sender: self)
            return
        }
        
        if indexPath.section == 3 {
            
            if selectedSchedule["ScheduleFavorite"] as! Int == 1 {
                DBManager.unmarkScheduleAsFavorite(where: selectedSchedule["ScheduleId"] as! Int)
                showToast(message: "Removed from My schedule")
            } else {
                DBManager.markScheduleAsFavorite(where: selectedSchedule["ScheduleId"] as! Int)
                showToast(message: "Added to My schedule")
                
                //Try to save to Calendar
                checkIfSaveToCalendar()
            }
            
            if let newSelectedSchedule = DBManager.getScheduleBy(selectedSchedule["ScheduleId"] as! Int) {
                selectedSchedule = newSelectedSchedule
            }
            tableView.reloadData()
            
     
            

        }
    }
}


extension ScheduleDetailsViewController {
    
    func checkIfSaveToCalendar() {
        
        let status = EKEventStore.authorizationStatus(for: EKEntityType.event)
        
        switch (status) {
        case EKAuthorizationStatus.notDetermined:
            EKEventStore().requestAccess(to: .event, completion: { [weak self] (accessGranted: Bool, error: Error?) in
                guard let _ = self else { return }
                
                if accessGranted == true {
                    self!.askToCreateEvent()
                }
            })
            
            break
        case EKAuthorizationStatus.authorized:
            askToCreateEvent()
            break
        case EKAuthorizationStatus.restricted, EKAuthorizationStatus.denied:
            
            break
        }
    }
    
    
    func askToCreateEvent() {
        let alertViewController = UIAlertController(title: "Whould you like to add this schedule in your phone Calendar?", message: nil, preferredStyle: .alert)
        let addAction = UIAlertAction(title: "Add", style: .default) { (alert) in
            self.createEvent()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
        }
        
        alertViewController.addAction(addAction)
        alertViewController.addAction(cancelAction)
        self.present(alertViewController, animated: true, completion: nil)
    }
    
    
    func createEvent() {
        
        let eventStore = EKEventStore()
        
        let newCalendar = EKCalendar(for: .event, eventStore: eventStore)
        
        newCalendar.title = "SSER Schedule"
        
        // Access list of available sources from the Event Store
        //let sourcesInEventStore = eventStore.sources
        
//        newCalendar.source = sourcesInEventStore.filter { (source: EKSource) -> Bool in
//            source.sourceType.rawValue == EKSourceType.local.rawValue
//            }.first!
        
        if eventStore.sources.count > 0 {
            newCalendar.source = eventStore.sources.first
        }
        
        do {
            try eventStore.saveCalendar(newCalendar, commit: true)
            UserDefaults.standard.set(newCalendar.calendarIdentifier, forKey: "SSERPrimaryCalendar")
        } catch {
        }
        
        

        
        if  let section = DBManager.getSectionBy(selectedSchedule["ScheduleSectionId"] as! Int) {
            let calendarForEvent = newCalendar

            
            let formatter = DateFormatter()
            formatter.timeZone = TimeZone(abbreviation: "GMT")
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
            let z = TimeZone.current.secondsFromGMT() / 3600
            
            var date = (section["beginTime"] as! String).components(separatedBy: "T")[0]
            var time = selectedSchedule["BeginTime"] as! String
            
            var dateTime = date + "T" + time + ":00+\(z)"
            let beginDate = formatter.date(from: dateTime)
            
            
            date = (section["endTime"] as! String).components(separatedBy: "T")[0]
            time = selectedSchedule["EndTime"] as! String
            dateTime = date + "T" + time + ":00+\(z)"
            let endDate = formatter.date(from: dateTime)

            
            let newEvent = EKEvent(eventStore: eventStore)
            
            newEvent.calendar = calendarForEvent
            if let speakerName = selectedSchedule["SpeakerName"] as? String {
                newEvent.title = String(format: "%@ - %@", speakerName, selectedSchedule["ScheduleName"] as? String ?? "SSER Schedule")
            } else {
                newEvent.title = selectedSchedule["ScheduleName"] as? String ?? "SSER Schedule"
            }
            newEvent.startDate = beginDate
            newEvent.endDate = endDate
            newEvent.location = selectedSchedule["LocationName"] as? String ?? ""
            newEvent.timeZone = TimeZone(abbreviation: "GMT")
            
            let alarm: EKAlarm = EKAlarm(relativeOffset: -60 * 5)
            newEvent.alarms = [alarm]

            
            do {
                try eventStore.save(newEvent, span: .thisEvent, commit: true)

            } catch {
                console(error)
            }
        }
    }
}
