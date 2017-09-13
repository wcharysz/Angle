//
//  LowiskaViewModel.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 17.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import CoreLocation
import CoreStore

class LowiskaViewModel: NSObject, ViewModel, CLLocationManagerDelegate {
    
    weak var delegate: LowiskaViewController?
    
    lazy var locationManager: CLLocationManager = {
        let manager = CLLocationManager()
        manager.distanceFilter = kCLDistanceFilterNone
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        
        return manager
    }()
    
    var lowiskaAnnotations: [CDLowisko]? {
        didSet {
            if let annotations = lowiskaAnnotations {
                delegate?.mapView.addAnnotations(annotations)
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
    
    func loadLowiska() {
        lowiskaAnnotations = CoreStore.fetchAll(From<CDLowisko>()) ?? loadLowiskaFromAssets()
    }
    
    func loadLowiskaFromAssets() -> [CDLowisko]? {
        return nil
    }
    
}
