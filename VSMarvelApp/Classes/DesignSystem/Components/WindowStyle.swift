//
//  WindowStyle.swift
//  VSMarvelApp
//
//  Created by Virgilius Santos on 20/01/20.
//  Copyright © 2020 Virgilius Santos. All rights reserved.
//

import UIKit

protocol WindowStyle {
    
    associatedtype Style
    
    var window: UIWindow? { get }
    
    func apply(style: Style)
}
