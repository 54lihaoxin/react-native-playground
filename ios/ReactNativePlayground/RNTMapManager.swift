//
//  RNTMapManager.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 4/2/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import MapKit
import React.RCTViewManager
import UIKit

/**
 Export MKMapView to JavaScript. See official tutorial here https://facebook.github.io/react-native/docs/native-components-ios.html.
 See the limitation "This is now a fully-functioning native map view component in JavaScript, complete with pinch-zoom and other native
 gesture support. We can't really control it from JavaScript yet, though :( ".
 
 Again, Facebook / ReactNative documentation sucks... They don't event bother to offer the Swift version of tutorial this time. This
 tutorial is better: https://codedaily.io/tutorials/13/How-to-bridge-a-Swift-View
 */

@objc(RNTMapManager)
class RNTMapManager: RCTViewManager {
    
    @objc
    override func view() -> UIView! {
        return MKMapView()
    }
}
