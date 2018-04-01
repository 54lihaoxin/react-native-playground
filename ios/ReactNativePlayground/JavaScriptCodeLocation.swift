//
//  JavaScriptCodeLocation.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import UIKit

struct JavaScriptCodeLocation {
    
    enum Module: String {
        case RNHelloWorld
        case RNHighScores
    }
    
    static var base: String {
        return "http://localhost:8081/"
    }
    
    static func bundleUrl(for module: Module) -> URL {
        let urlStr = String(format: "%@javascript/%@.bundle?platform=ios", arguments: [base, module.rawValue])
        guard let url = URL(string: urlStr) else { fatalError("Unable to load module \(module) from URL \(urlStr)") }
        return url
    }
}
