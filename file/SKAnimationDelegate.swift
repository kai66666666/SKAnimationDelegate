//
//  SKAnimationDelegate.swift
//  Test
//
//  Created by sunkai on 2022/3/1.
//  Copyright © 2022 sunkai. All rights reserved.
//

import UIKit

open class SKAnimationDelegate: NSObject {
    
    @objc public var animationDidStart: ((_ anim: CAAnimation) -> Void)?
    @objc public var animationDidStop: ((_ anim: CAAnimation, _ finished: Bool) -> Void)?
    @objc public var showDeint = false
    
    deinit {
        if showDeint {
            print("SKAnimationDelegate deinit")
        }
    }
}
extension SKAnimationDelegate: CAAnimationDelegate {
    public func animationDidStart(_ anim: CAAnimation) {
        animationDidStart?(anim)
    }
    public func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        animationDidStop?(anim, flag)
    }
}
