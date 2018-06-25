// disable backe swipe gesture in UINavigationController
self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false

// add navigation controller to a controller
let navigationController = UINavigationController(rootViewController: controller!)
present(navigationController, animated: true, completion: nil)
controller?.dismiss(animated: true, completion: nil)

// add button on navigation bar
let filterButton = UIBarButtonItem(title: "Filter", style: .plain, target: self, action: #selector(filterBarButtonPressed))
let onboardButton = UIBarButtonItem(title: "Onboard", style: .plain, target: self, action: #selector(onboardButtonClicked))
navigationItem.rightBarButtonItems = [onboardButton, filterButton]
navigationItem.rightBarButtonItem = onboardButton
