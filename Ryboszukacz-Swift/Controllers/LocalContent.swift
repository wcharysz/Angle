//
//  LocalContent.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 11.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import SWXMLHash

class LocalContent {
    
    static func loadLocalLowiska() {
        if let data = NSDataAsset(name: "lowiska.xml") {
            let xml = SWXMLHash.parse(data.data)
            print("local XML ", xml)
        }
    }
}
