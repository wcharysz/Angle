//
//  CDMojeLowiskaExtension.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 13.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import MapKit

extension CDMojeLowiska: MKAnnotation {
    public var coordinate: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2DMake(latitude?.doubleValue ?? 0, longitude?.doubleValue ?? 0)
        }
    }
    
    public var title: String? {
        get {
            return lowisko_nazwa
        }
    }
}
