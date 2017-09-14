//
//  LowiskaViewController.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 16.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import UIKit
import MapKit
import CoreData
import CoreStore

class LowiskaViewController: UIViewController, UITextFieldDelegate, MKMapViewDelegate, ObjectWithViewModel {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var districtButton: UIButton!
    
    var userMark: MKAnnotationView?
    let userMarkIdentifier = "USERPOZ"
    let userFlag = UIImage(named: "position_icon")
    let poiFlagImage = UIImage(named: "POI_flag")
    let weatherImage = UIImage(named: "unknown")

    let lowiskoReusableIdentifier = "lowiskoReusableIdentifier"
    
    lazy var viewModel: LowiskaViewModel = {
        let model = LowiskaViewModel()
        model.delegate = self
        
        return model
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let lowiska = CoreStore.fetchAll(From<CDLowisko>()) {
            mapView.addAnnotations(lowiska)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let api = Networking()
        api.downloadLowiska()

        viewModel.loadLowiska()
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
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation is MKUserLocation {
            userMark = mapView.dequeueReusableAnnotationView(withIdentifier: userMarkIdentifier) ?? MKAnnotationView(annotation: annotation, reuseIdentifier: userMarkIdentifier)
            userMark?.annotation = annotation
            userMark?.isEnabled = true
            userMark?.canShowCallout = true
            userMark?.image = userFlag
            
            return userMark
        }
        
        let lowiskoView = mapView.dequeueReusableAnnotationView(withIdentifier: lowiskoReusableIdentifier) as? LowiskoAnnotationView ?? LowiskoAnnotationView(annotation: annotation, reuseIdentifier: lowiskoReusableIdentifier)
        
        lowiskoView.image = poiFlagImage
        lowiskoView.annotation = annotation
        lowiskoView.isEnabled = true
        lowiskoView.canShowCallout = true
        
        var frame = CGRect.zero
        frame.size = CGSize(width: 35, height: 35)
        let weatherButton = UIButton(frame: frame)
        weatherButton.setImage(weatherImage, for: .normal)
        lowiskoView.rightCalloutAccessoryView = weatherButton
        
        let infoButton = UIButton(type: .custom)
        infoButton.titleLabel?.numberOfLines = 3
        infoButton.titleLabel?.lineBreakMode = .byWordWrapping
        infoButton.titleLabel?.textAlignment = .center
        infoButton.titleLabel?.adjustsFontSizeToFitWidth = true
        infoButton.setTitleColor(UIColor.black, for: .normal)
        infoButton.setTitle(annotation.title ?? "", for: .normal)
        frame.size.width = 260
        infoButton.frame = frame
        lowiskoView.leftCalloutAccessoryView = infoButton
        
        return lowiskoView
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
