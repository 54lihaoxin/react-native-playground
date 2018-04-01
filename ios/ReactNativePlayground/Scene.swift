//
//  Scene.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import Foundation
import UIKit

/// This class is meant to be subclassed. Do not use directly.
class Scene {
    let nibName: String?
    fileprivate(set) weak var parentScene: Scene?
    fileprivate(set) var childrenScenes: [Scene] = []    // Make it an array because `Set` requires `Scene` to be `Hashable`
    var viewController: UIViewController { fatalError("this has to be overriden") }
    
    init(nibName: String? = nil, parentScene: Scene?) {
        self.nibName = nibName
        self.parentScene = parentScene
    }
}

// MARK: - Parent / child relationship

extension Scene {
    
    fileprivate func addChild(scene: Scene) {
        guard !childrenScenes.contains(where: { $0 === scene }) else {
            assertionFailure("The scene has been added: \(scene)")
            return
        }
        childrenScenes.append(scene)
    }
    
    fileprivate func removeChild(scene: Scene) {
        guard let index = childrenScenes.index(where: { $0 === scene }) else {
            assertionFailure("The scene does not exist: \(scene)")
            return
        }
        childrenScenes.remove(at: index)
    }
    
    func didRemoveViewControllerFromParent() {
        guard let ps = parentScene else {
            assertionFailure("Parent scene does not exist: \(self)")
            return
        }
        ps.removeChild(scene: self)
    }
}

// MARK: - Navigation

extension Scene {
    
    func navigationPush(scene: Scene) {
        guard let nav = viewController.navigationController else {
            assertionFailure("\(#function) navigationController is nil")
            return
        }
        addChild(scene: scene)
        nav.pushViewController(scene.viewController , animated: true)
    }
}
