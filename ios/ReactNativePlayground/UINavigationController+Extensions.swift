//
//  UINavigationController+Extensions.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import UIKit

extension UINavigationController {

    static func embed(viewController: UIViewController) -> UINavigationController {
        return UINavigationController(rootViewController: viewController)
    }
}
