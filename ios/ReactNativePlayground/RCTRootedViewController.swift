//
//  RCTRootedViewController.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import React.RCTRootView

class RCTRootedViewController: SceneAwareViewController {
    
    required init?(coder aDecoder: NSCoder) { fatalError() }

    init(with rctRootView: RCTRootView, scene: Scene) {
        super.init(nibName: nil, bundle: nil)
        self.scene = scene
        view = rctRootView
    }
}
