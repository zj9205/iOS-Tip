// disable backe swipe gesture in UINavigationController
self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false

// add navigation controller to a controller
let navigationController = UINavigationController(rootViewController: controller!)
present(navigationController, animated: true, completion: nil)
controller?.dismiss(animated: true, completion: nil)
