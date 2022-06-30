//
//  SKAnimationDelegate.swift
//  Test
//
//  Created by sunkai on 2022/3/1.
//  Copyright © 2022 sunkai. All rights reserved.
//

import UIKit

class SKAnimationDelegate: NSObject, CAAnimationDelegate {
    @objc var animationDidStart: ((_ anim: CAAnimation) -> Void)?
    @objc var animationDidStop: ((_ anim: CAAnimation, _ finished: Bool) -> Void)?
    
    func animationDidStart(_ anim: CAAnimation) {
        animationDidStart?(anim)
    }
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        animationDidStop?(anim, flag)
    }
}
