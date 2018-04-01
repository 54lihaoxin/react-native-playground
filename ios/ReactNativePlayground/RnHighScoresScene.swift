//
//  RnHighScoresScene.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import Foundation
import React
import UIKit

// Original code is from this tutorial: https://facebook.github.io/react-native/docs/integration-with-existing-apps.html

final class RnHighScoresScene: Scene {

    override var viewController: UIViewController {
        return vc as UIViewController
    }
    
    let module = JavaScriptCodeLocation.Module.RNHighScores
    let mockData: NSDictionary = ["scores":
        [
            ["name":"Alex", "value":"42"],
            ["name":"Joel", "value":"10"]
        ]
    ]
    fileprivate lazy var vc: RCTRootedViewController = {
        guard let rootView = RCTRootView(bundleURL: JavaScriptCodeLocation.bundleUrl(for: module),
                                         moduleName: module.rawValue,
                                         initialProperties: mockData as [NSObject: AnyObject],
                                         launchOptions: nil )
            else { fatalError("failed to load module \(module)") }
        return RCTRootedViewController(with: rootView, scene: self)
    }()
}
