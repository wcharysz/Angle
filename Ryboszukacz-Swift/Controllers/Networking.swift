//
//  Networking.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 11.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import Alamofire
import SWXMLHash
import CoreStore

class Networking {

    static let lowiskaURL = URL(string: "http://ryboszukacz.j-apps.pl/lowiska.xml")
    
    func downloadLowiska() {
        if let url = Networking.lowiskaURL {
            let headers = ["content-type": "application/x-www-form-urlencoded"];

            Alamofire.request(url, method: .post, parameters: nil, encoding: URLEncoding.default, headers: headers).responseData(completionHandler: { (response) in
              
                if let data = response.data {
                    let xml = SWXMLHash.parse(data)
                    print("XML ", xml)
                }
            })
        }
    }
}
