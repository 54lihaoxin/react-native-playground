//
//  BasicBridgingExample.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 4/1/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import Foundation
import React

/**
 First of all, as always, Facebook / ReactNative documentation sucks. This is especially true for Swift native module.
 
 The article at https://moduscreate.com/blog/swift-modules-for-react-native/ is more helpful than the official tutorial
 http://facebook.github.io/react-native/docs/native-modules-ios.html, but still it's outdated and cannot be used out of
 the box. This `BasicBridgingExample` is meant to be the simplest example of the how the JavaScript code talks to Swift
 native code and gets some callback data.
 
 Comparing to the RCTEventEmitter mechanism (not used here), the callback mechanism seems to set up a better relationship
 between JS and Swift code. RCTEventEmitter is probably better for Swift to JS notification and timer one-way handling.
 
 The promises mechanism is the latest (ES2016's async/await syntax) but might not the greatest.
 */

@objc(BasicBridgingExample)
class BasicBridgingExample: NSObject {
    
    @objc(addEvent:location:numberOfSecondsSince1970:details:callback:)
    func addEvent(name: String, location: String, numberOfSecondsSince1970: NSNumber, details: NSDictionary, callback: (NSObject) -> ()) -> Void {
        print("\(#function)", name, location, numberOfSecondsSince1970, details)
        let ret: NSDictionary = [
            "title": "This is a dictionary return from Swift native code via a callback",
            "native_number": 987654321
        ]
        callback(NSArray(arrayLiteral: [ret]))  // It doesn't work if the return dictionary is not inside an NSArray.
    }
    
    // check this out in JavaScript by `console.log(BasicBridgingExample.firstDayOfTheWeek)`
    @objc
    func constantsToExport() -> NSObject {
        return ["firstDayOfTheWeek": "The first day of the week is Monday"] as NSDictionary
    }
}
