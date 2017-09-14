//
//  LocalContent.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 11.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import SWXMLHash
import CoreStore

class LocalContent {
    
    static func loadLocalLowiska() -> XMLIndexer? {
        guard let data = NSDataAsset(name: "lowiska.xml") else  {
            return nil
        }
        
        let xml = SWXMLHash.parse(data.data)
        
        return xml
    }
    
    static func saveLowiskaXmlInCoreData(_ xml: XMLIndexer?, completion:@escaping () -> Void) {
        if let sites = xml?["sites"]["site"] {
            
            CoreStore.defaultStack.perform(asynchronous: { (transaction) -> Void in
                for site in sites.all {
                    let lowisko = transaction.create(Into<CDLowisko>())
                    
                    if let text = site["lowisko_id"].element?.text, let number = Int(text) {
                        lowisko.lowisko_id = NSNumber(value: number)
                    }
                    
                    lowisko.lowisko_nazwa = site["lowisko_nazwa"].element?.text
                    lowisko.wojewodztwo = site["wojewodztwo"].element?.text
                    
                    if let coordinates = site["wojewodztwo_coords"].element?.text.components(separatedBy: ","),
                        let latitudeString = coordinates.first,
                        let latitude = Double(latitudeString),
                        let longitudeString = coordinates.last,
                        let longitude = Double(longitudeString) {
                        
                        lowisko.wojewodztwo_latitude = NSNumber(value: latitude)
                        lowisko.wojewodztwo_longitude = NSNumber(value: longitude)
                    }
                    
                    lowisko.polozenie = site["polozenie"].element?.text
                    
                    if let latitudeString = site["latitude"].element?.text, let latitude = Double(latitudeString) {
                        lowisko.latitude = NSNumber(value: latitude)
                    }
                    
                    if let longitudeString = site["longitude"].element?.text, let longitude = Double(longitudeString) {
                        lowisko.longitude = NSNumber(value: longitude)
                    }
                    
                    lowisko.opis = site["opis"].element?.text
                    lowisko.ryby_nazwa = site["ryby_nazwa"].element?.text
                    lowisko.wlasciciel_nazwa = site["wlasciciel_nazwa"].element?.text
                    lowisko.wlasciciel_adres = site["wlasciciel_adres"].element?.text
                    lowisko.wlasciciel_telefon = site["wlasciciel_telefon"].element?.text
                    lowisko.wlasciciel_www = site["wlasciciel_www"].element?.text
                    lowisko.wlasciciel_email = site["wlasciciel_email"].element?.text
                }
            }, completion: { (result) in
                completion()
            })
        }
    }
}
