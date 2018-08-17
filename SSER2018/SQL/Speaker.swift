//
//  Speaker.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import Foundation

final class Speaker: SQLManagedObject {
    
    @objc var objectId: NSNumber?
    @objc var name: String?
    
    func load() {
        fetch()
        
        console(objectId)
    }
}
