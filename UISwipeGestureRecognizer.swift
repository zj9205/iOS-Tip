override func viewDidLoad() {
    super.viewDidLoad()
    
    let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
    swipeLeft.direction = .left
    self.view.addGestureRecognizer(swipeLeft)
    
    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
    swipeRight.direction = .right
    self.view.addGestureRecognizer(swipeRight)
    
    let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
    swipeUp.direction = .up
    self.view.addGestureRecognizer(swipeUp)
    
    let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
    swipeDown.direction = .down
    self.view.addGestureRecognizer(swipeDown)
}

func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
    if gesture.direction == UISwipeGestureRecognizerDirection.right {
        print("Swipe Right")
    }
    else if gesture.direction == UISwipeGestureRecognizerDirection.left {
        print("Swipe Left")
    }
    else if gesture.direction == UISwipeGestureRecognizerDirection.up {
        print("Swipe Up")
    }
    else if gesture.direction == UISwipeGestureRecognizerDirection.down {
        print("Swipe Down")
    }
}
