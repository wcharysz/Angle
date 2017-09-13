//
//  CDLowisko+CoreDataProperties.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 11.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import CoreData


extension CDLowisko {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDLowisko> {
        return NSFetchRequest<CDLowisko>(entityName: "CDLowisko")
    }

    @NSManaged public var latitude: NSNumber?
    @NSManaged public var longitude: NSNumber?
    @NSManaged public var lowisko_id: NSNumber?
    @NSManaged public var lowisko_nazwa: String?
    @NSManaged public var opis: String?
    @NSManaged public var polozenie: String?
    @NSManaged public var ryby_nazwa: String?
    @NSManaged public var wlasciciel_adres: String?
    @NSManaged public var wlasciciel_email: String?
    @NSManaged public var wlasciciel_nazwa: String?
    @NSManaged public var wlasciciel_telefon: String?
    @NSManaged public var wlasciciel_www: String?
    @NSManaged public var wojewodztwo: String?
    @NSManaged public var wojewodztwo_latitude: NSNumber?
    @NSManaged public var wojewodztwo_longitude: NSNumber?

}
