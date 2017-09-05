//
//  LicenseViewController.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 15.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import UIKit

class LicenseViewController: UIViewController {

    @IBAction func tappedOK(_ button: UIButton) {
        UserDefaults.standard.set(true, forKey: Constants.UserDefaultsKeys.licenseAgreed.rawValue)
        UserDefaults.standard.synchronize()        
        dismiss(animated: true) { 
            
        }
    }
}
