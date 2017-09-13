//
//  CDWyprawyExtension.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 13.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import MapKit

extension CDWyprawy: MKAnnotation {
    
    public var coordinate: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2DMake(wyprawa_lat?.doubleValue ?? 0, wyprawa_long?.doubleValue ?? 0)
        }
    }
}
