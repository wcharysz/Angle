//
//  LowiskaViewController.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 16.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import UIKit
import MapKit

class LowiskaViewController: UIViewController, UITextFieldDelegate, MKMapViewDelegate, ObjectWithViewModel {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var districtButton: UIButton!
    
    lazy var viewModel: LowiskaViewModel = {
        let model = LowiskaViewModel()
        model.delegate = self
        
        return model
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let api = Networking()
        api.downloadLowiska()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if CLLocationManager.authorizationStatus() == .notDetermined {
            viewModel.locationManager.requestAlwaysAuthorization()
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    @IBAction func tappedRefresh(_ button: UIButton) {
        
    }
    
    @IBAction func tappedNormalMap(_ button: UIButton) {
        mapView.mapType = .standard
    }
    
    @IBAction func tappedSateliteMap(_ button: UIButton) {
        mapView.mapType = .hybrid
    }
    
    @IBAction func tappedBrania(_ button: UIButton) {
        
    }
    
    @IBAction func tappedDistrict(_ button: UIButton) {
        
    }
}
