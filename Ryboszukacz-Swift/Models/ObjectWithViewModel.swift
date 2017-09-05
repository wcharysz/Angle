//
//  ObjectWithViewModel.swift
//  Ryboszukacz-Swift
//
//  Created by User  on 17.08.2017.
//  Copyright © 2017 J Apps!. All rights reserved.
//

import Foundation

protocol ObjectWithViewModel {
    associatedtype ModelType
    var viewModel: ModelType { get }
}
