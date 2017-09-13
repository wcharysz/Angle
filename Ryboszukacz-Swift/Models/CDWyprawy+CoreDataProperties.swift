//
//  CDWyprawy+CoreDataProperties.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 11.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import CoreData


extension CDWyprawy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDWyprawy> {
        return NSFetchRequest<CDWyprawy>(entityName: "CDWyprawy")
    }

    @NSManaged public var wyprawa_cisnienie: String?
    @NSManaged public var wyprawa_data: String?
    @NSManaged public var wyprawa_id: NSNumber?
    @NSManaged public var wyprawa_image: String?
    @NSManaged public var wyprawa_lat: NSNumber?
    @NSManaged public var wyprawa_long: NSNumber?
    @NSManaged public var wyprawa_lowisko: String?
    @NSManaged public var wyprawa_name: String?
    @NSManaged public var wyprawa_opady: String?
    @NSManaged public var wyprawa_pogoda: String?
    @NSManaged public var wyprawa_ryba1_dlugosc: NSNumber?
    @NSManaged public var wyprawa_ryba1_metoda: String?
    @NSManaged public var wyprawa_ryba1_name: String?
    @NSManaged public var wyprawa_ryba1_przyneta: String?
    @NSManaged public var wyprawa_ryba1_waga: NSNumber?
    @NSManaged public var wyprawa_ryba1_zdjecie: String?
    @NSManaged public var wyprawa_ryba2_dlugosc: NSNumber?
    @NSManaged public var wyprawa_ryba2_metoda: String?
    @NSManaged public var wyprawa_ryba2_name: String?
    @NSManaged public var wyprawa_ryba2_przyneta: String?
    @NSManaged public var wyprawa_ryba2_waga: NSNumber?
    @NSManaged public var wyprawa_ryba2_zdjecie: String?
    @NSManaged public var wyprawa_ryba3_dlugosc: NSNumber?
    @NSManaged public var wyprawa_ryba3_metoda: String?
    @NSManaged public var wyprawa_ryba3_name: String?
    @NSManaged public var wyprawa_ryba3_przyneta: String?
    @NSManaged public var wyprawa_ryba3_waga: NSNumber?
    @NSManaged public var wyprawa_ryba3_zdjecie: String?
    @NSManaged public var wyprawa_ryba4_dlugosc: NSNumber?
    @NSManaged public var wyprawa_ryba4_metoda: String?
    @NSManaged public var wyprawa_ryba4_name: String?
    @NSManaged public var wyprawa_ryba4_przyneta: String?
    @NSManaged public var wyprawa_ryba4_waga: NSNumber?
    @NSManaged public var wyprawa_ryba4_zdjecie: String?
    @NSManaged public var wyprawa_ryba5_dlugosc: NSNumber?
    @NSManaged public var wyprawa_ryba5_metoda: String?
    @NSManaged public var wyprawa_ryba5_name: String?
    @NSManaged public var wyprawa_ryba5_przyneta: String?
    @NSManaged public var wyprawa_ryba5_waga: NSNumber?
    @NSManaged public var wyprawa_ryba5_zdjecie: String?
    @NSManaged public var wyprawa_temperatura: String?
    @NSManaged public var wyprawa_wiatr_kierunek: String?
    @NSManaged public var wyprawa_wiatr_predkosc: String?
    @NSManaged public var wyprawa_wilgotnosc: String?

}
