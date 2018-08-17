//
//  SQLFetchedResultsController.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import Foundation

protocol SQLFetchedResultsControllerDelegate {
    func didChange()
}

class SQLFetchedResultsController: NSObject {
    
    var delegate: SQLFetchedResultsControllerDelegate?
    
    public func listen() {
        
    }
}
