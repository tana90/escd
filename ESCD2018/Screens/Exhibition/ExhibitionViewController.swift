//
//  ExhibitionViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 5/3/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class ExhibitionViewController: BaseTableViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var sections: [DefaultDictionary] = DBManager.getSponsorsCategories()
    
    @IBAction func segmentedChanged() {
        title = segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
        if segmentedControl.selectedSegmentIndex == 0 {
            tableView.isScrollEnabled = true
        } else {
            tableView.isScrollEnabled = false
        }
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.selectedSegmentIndex = 0
        
        tableView.register(UINib(nibName: "SponsorCell", bundle: nil),
                           forCellReuseIdentifier: "sponsorCell")
        tableView.register(UINib(nibName: "MapCell", bundle: nil),
                           forCellReuseIdentifier: "mapCellIdentifier")
        tableView.register(UINib(nibName: "VenueCell", bundle: nil),
                           forCellReuseIdentifier: "venueCellIdentifier")
        
        
        data = DBManager.getSponsors()
    }
    
    override func showSearchBar() {
        //Don't show search bar
    }
}




extension ExhibitionViewController {
    
    override func tableView(_ tableView: UITableView,
                            heightForHeaderInSection section: Int) -> CGFloat {
        if segmentedControl.selectedSegmentIndex == 0 {
            return 44
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        
        let sectionHeader = UINib(nibName: "SponsorSectionHeader", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! SponsorSectionHeader
        
        
        
        sectionHeader.show(sections[section])
        
        return sectionHeader
    }
    
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        if segmentedControl.selectedSegmentIndex == 0 {
            if indexPath.section == 0 {
                return 250
            } else if indexPath.section == 1 {
                return 200
            } else if indexPath.section == 3 {
                return 150
            }
            return 200
        }
        return tableView.frame.size.height
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if segmentedControl.selectedSegmentIndex == 0 {
        return sections.count
        }
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentedControl.selectedSegmentIndex == 0 {
            return DBManager.getSponsors(where: sections[section]["category"] as! String).count
        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell
        
        if segmentedControl.selectedSegmentIndex == 0 {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "sponsorCell", for: indexPath) as! SponsorCell
            
            let sponsor = DBManager.getSponsors(where: sections[indexPath.section]["category"] as! String)[indexPath.row]
            (cell as! SponsorCell).show(sponsor)
            return cell
        } else if segmentedControl.selectedSegmentIndex == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: "mapCellIdentifier", for: indexPath) as! MapCell
            (cell as! MapCell).show()
            return cell
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "venueCellIdentifier", for: indexPath) as! VenueCell
            (cell as! VenueCell).show()
            return cell
        }
    }

}

extension ExhibitionViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if segmentedControl.selectedSegmentIndex == 0 {
            let sponsor = DBManager.getSponsors(where: sections[indexPath.section]["category"] as! String)[indexPath.row]
            if let urlString = sponsor["url"] as? String,
                let url = URL(string: urlString) {
                if #available(iOS 10.0, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
            
        }
    }
}
