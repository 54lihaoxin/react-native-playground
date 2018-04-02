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
        case RNHelloWorld
        case RNHighScores
        case RNBasicBridgingExample
    }
    
    override var viewController: UIViewController {
        return scenarioListViewController as UIViewController
    }
    
    let items: [Item] = [.RNHelloWorld, .RNHighScores, .RNBasicBridgingExample]
    lazy var scenarioListViewController: ScenarioListViewController = { ScenarioListViewController(with: self) }()
    
    func select(item: Item) {
        switch item {
        case .RNHelloWorld: navigationPush(scene: RNHelloWorldScene(parentScene: self))
        case .RNHighScores: navigationPush(scene: RNHighScoresScene(parentScene: self))
        case .RNBasicBridgingExample: navigationPush(scene: RNBasicBridgingExampleScene(parentScene: self))
        }
    }
}
