//
//  UIView+Extensions.swift
//  ReactNativePlayground
//
//  Created by Li, Haoxin on 3/31/18.
//  Copyright © 2018 Haoxin. All rights reserved.
//

import UIKit

extension UIView {

    func pinEdgesToSuperviewEdges(insets: UIEdgeInsets = .zero) {
        guard let sv = superview else {
            assertionFailure("superview is nil")
            return
        }
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: sv.topAnchor, constant: insets.top).isActive = true
        leftAnchor.constraint(equalTo: sv.leftAnchor, constant: insets.left).isActive = true
        bottomAnchor.constraint(equalTo: sv.bottomAnchor, constant: insets.bottom).isActive = true
        rightAnchor.constraint(equalTo: sv.rightAnchor, constant: insets.right).isActive = true
    }
}
