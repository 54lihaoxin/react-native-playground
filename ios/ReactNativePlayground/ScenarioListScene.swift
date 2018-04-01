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
    
    override var viewController: UIViewController {
        return scenarioListViewController as UIViewController
    }
    
    let items: [Item] = [.RNHighScores]
    lazy var scenarioListViewController: ScenarioListViewController = { ScenarioListViewController(with: self) }()
    
    func select(item: Item) {
        switch item {
        case .RNHighScores: navigationPush(scene: RnHighScoresScene(parentScene: self))
        }
    }
}
