//
//  BaseAnnotationView.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 13.09.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import MapKit

class LowiskoAnnotationView: MKAnnotationView {
    
    var lowisko_id: Int?
    let weatherImage = UIImage(named: "unknown")
    
    override public init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupUI() {
        var frame = CGRect.zero
        frame.size = CGSize(width: 35, height: 35)
        let weatherButton = UIButton(frame: frame)
        weatherButton.setImage(weatherImage, for: .normal)
        rightCalloutAccessoryView = weatherButton
    }
}
