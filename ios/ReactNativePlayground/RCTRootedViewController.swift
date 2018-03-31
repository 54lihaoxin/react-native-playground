//
//  RCTRootedViewController.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import React.RCTRootView

class RCTRootedViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("This must not be called")
    }

    init(with rctRootView: RCTRootView) {
        super.init(nibName: nil, bundle: nil)
        view = rctRootView
    }
}
