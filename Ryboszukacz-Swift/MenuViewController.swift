//
//  ViewController.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 26.07.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let showLicense = !UserDefaults.standard.bool(forKey: Constants.UserDefaultsKeys.licenseAgreed.rawValue)
        
        if let controller = storyboard?.instantiateViewController(withIdentifier: "LicenseViewController"), showLicense {
            present(controller, animated: animated, completion: {
                
            })
        }
    }
}

