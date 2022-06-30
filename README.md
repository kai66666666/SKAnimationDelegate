# SKAnimationDelegate
CAAnimationDelegate闭包

  let animationDelegate = SKAnimationDelegate()
  animationDelegate.animationDidStop = { [weak self] anim, finished in
      guard let self = self else { return }
      
  }

  let tranAnimation = CATransition()
  tranAnimation.delegate = animationDelegate
