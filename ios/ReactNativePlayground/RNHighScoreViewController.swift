//
//  RNHighScoreViewController.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/24/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

//  Original code is from this tutorial: https://facebook.github.io/react-native/docs/integration-with-existing-apps.html

import React
import UIKit

class RNHighScoreViewController: UIViewController {

    @IBAction func showHighScore(_ sender: Any) {
        let module = JavaScriptCodeLocation.Module.RNHighScores
        let mockData: NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        guard let rootView = RCTRootView(
            bundleURL: JavaScriptCodeLocation.bundleUrl(for: module),
            moduleName: module.rawValue,
            initialProperties: mockData as [NSObject: AnyObject],
            launchOptions: nil
            ) else {
                assertionFailure("failed to load module \(module)")
                return
        }
        present(RCTRootedViewController(with: rootView), animated: true, completion: nil)
    }
}
