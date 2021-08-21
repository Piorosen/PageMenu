//
//  File.swift
//  
//
//  Created by aoikazto on 2021/08/22.
//

import UIKit

open class CAPSScrollView: UIScrollView {
    private var _exclusiveView = [UIView]()
    var exclusiveView: [UIView] {
        get {
            return _exclusiveView
        }
        set {
            _exclusiveView = newValue
        }
    }
    
    open override func touchesShouldCancel(in view: UIView) -> Bool {
        return !exclusiveView.contains { type(of: $0) == type(of: view) }
    }
}

