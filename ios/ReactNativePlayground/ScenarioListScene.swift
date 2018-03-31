//
//  ScenarioListScene.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import Foundation
import React
import UIKit

final class ScenarioListScene: Scene {
    
    enum Item: String {
        case RNHighScores
    }
    
    let nibName: String? = nil
    let parentScene: Scene?
    var viewController: UIViewController {
        return scenarioListViewController as UIViewController
    }
    
    let items: [Item] = [.RNHighScores]
    lazy var scenarioListViewController: ScenarioListViewController = { ScenarioListViewController(with: self) }()
    
    init(parentScene: Scene?) {
        self.parentScene = parentScene
    }
    
    func select(item: Item) {
        switch item {
        case .RNHighScores: selectRnHighScoresItem()
        }
    }
}

private extension ScenarioListScene {
    
    func selectRnHighScoresItem() {
        
        // Original code is from this tutorial: https://facebook.github.io/react-native/docs/integration-with-existing-apps.html
        
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
        guard let nav = viewController.navigationController else {
            assertionFailure("navigationController is nil \(module)")
            return
        }
        nav.pushViewController(RCTRootedViewController(with: rootView), animated: true)
    }
}
