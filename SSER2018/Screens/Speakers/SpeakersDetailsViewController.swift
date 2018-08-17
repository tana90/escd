//
//  SpeakersDetailsViewController.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/15/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import UIKit

final class SpeakersDetailsViewController: BaseDetailsViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SpeakerDetailsCell", bundle: nil),
                           forCellReuseIdentifier: "speakerDetailsCell")
    }
}

extension SpeakersDetailsViewController {
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "speakerDetailsCell") as? SpeakerDetailsCell
        cell?.show(data)
        cell?.showImageActionHandler = { [unowned self] (image) in
            let mediaPreview = MediaPreview(nibName: "MediaPreview", bundle: nil)
            self.present(mediaPreview, animated: true, completion: nil)
            mediaPreview.show(image)
        }
        if let _ = data["name"] as? String {
            self.navigationHeaderView.titleLabel.text = data["name"]! as? String
        }
        return cell!
    }
}
