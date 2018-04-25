import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // set start point, solution 1
        window = UIWindow.init(frame: UIScreen.main.bounds)
        var initialViewController: UIViewController?
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        initialViewController = storyBoard.instantiateViewController(withIdentifier: "ShopCollectionsListViewController")

        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()
        
        // set start point, solution 2
        if let initialViewController:PurchaseWebViewController = UIStoryboard.Main.instance() {
            let navigationController = UINavigationController(rootViewController: initialViewController)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }

        return true
    }
}

