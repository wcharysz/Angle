//
//  UIToolbarExtension.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 16.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import UIKit

extension UIToolbar {
    
    @IBInspectable var bottomBackgroundImage: UIImage? {
        get {
            return backgroundImage(forToolbarPosition: .bottom, barMetrics: .default)
        }
        set {
            setBackgroundImage(newValue, forToolbarPosition: .bottom, barMetrics: .default)
        }
    }
}
