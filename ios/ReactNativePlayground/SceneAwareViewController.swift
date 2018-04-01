//
//  SceneAwareViewController.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import UIKit

/// This class is meant to be subclassed. Do not use directly.
class SceneAwareViewController: UIViewController {
    
    weak var scene: Scene?
    
    override func didMove(toParentViewController parent: UIViewController?) {
        super.didMove(toParentViewController: parent)
        if parent == nil {
            guard let scn = scene else {
                assertionFailure("scene is unexpectedly nil")
                return
            }
            scn.didRemoveViewControllerFromParent()
        }
    }
}
