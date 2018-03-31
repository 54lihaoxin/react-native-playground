//
//  Scene.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import Foundation
import UIKit

protocol Scene {
    var nibName: String? { get }
    var parentScene: Scene? { get }
    var viewController: UIViewController { get }
}
