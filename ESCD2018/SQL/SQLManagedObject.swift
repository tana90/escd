//
//  SQLManagedObject.swift
//  SSER2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import Foundation

class SQLManagedObject: NSObject {
    
    //var values: [DefaultDictionary]?
    
    func fetch() {
        
        for result in SQLiteDB.shared.query(sql: "SELECT * FROM \(type(of: self))") {
            for property in properties() {
                
                if let key = property.keys.first {
                    
                    if let value = result[key] {
                        self.setValue(value, forKey: key)
                        //console(value)
                    }
                }
                
            }
        }
        
        //values = SQLiteDB.shared.query(sql: "SELECT \(#keyPath(Speaker.Name)) FROM \(String(describing: self))")
    }
    
    func keys() -> [String] {
        var keys: [String] = []
        for property in properties() {
            if let key = property.keys.first {
                keys.append(key)
            }
        }
        return keys
    }
    
    private func properties() -> [[String: Any]] {
        let mirror = Mirror(reflecting: self)
        
        var retValue = [[String:Any]]()
        for (_, attr) in mirror.children.enumerated() {
            if let property_name = attr.label as String? {
                retValue.append([property_name:attr.value])
            }
        }
        return retValue
    }
}
