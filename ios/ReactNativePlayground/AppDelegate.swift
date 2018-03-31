//
//  AppDelegate.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/24/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var rootScene: Scene = ScenarioListScene(parentScene: nil)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let w = UIWindow(frame: UIScreen.main.bounds)
        w.rootViewController = UINavigationController.embed(viewController: rootScene.viewController)
        w.makeKeyAndVisible()
        window = w
        
        return true
    }
}
