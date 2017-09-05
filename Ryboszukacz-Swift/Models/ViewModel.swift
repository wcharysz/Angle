//
//  ViewModel.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 17.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation
import UIKit

protocol ViewModel {
    associatedtype ControllerType: UIResponder
    weak var delegate: ControllerType? { get }
}
