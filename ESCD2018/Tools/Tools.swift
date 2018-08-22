//
//  Tools.swift
//  ESCD2018
//
//  Created by Tudor Ana on 4/12/18.
//  Copyright © 2018 Tudor Ana. All rights reserved.
//

import Foundation

func console<T>(_ object: T,
                filename: String = #file,
                line: Int = #line,
                funcname: String = #function,
                isSolo: Bool? = false) {
    
    let className = filename.split{$0 == "/"}.map(String.init).last
    print("[\(Date()) :: \(className ?? "Unknow class") : \(funcname)(\(line))] - \(object)")
}
