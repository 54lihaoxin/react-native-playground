//
//  RNBasicBridgingExampleScene.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 4/1/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import Foundation
import React
import UIKit

final class RNBasicBridgingExampleScene: Scene {
    
    override var viewController: UIViewController {
        return vc as UIViewController
    }
    
    let module = JavaScriptCodeLocation.Module.RNBasicBridgingExample
    fileprivate lazy var vc: RCTRootedViewController = {
        guard let rootView = RCTRootView(bundleURL: JavaScriptCodeLocation.bundleUrl(for: module),
                                         moduleName: module.rawValue,
                                         initialProperties: nil,
                                         launchOptions: nil )
            else { fatalError("failed to load module \(module)") }
        return RCTRootedViewController(with: rootView, scene: self)
    }()
}
