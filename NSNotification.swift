// get keyboard size, keyboard height and intersection
let userInfo = (notification as NSNotification).userInfo!
let keyboardSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
let keyboardHeight = keyboardSize.height
let intersection = self.view.frame.intersection(keyboardSize)

// add, listen, get value, remove notification
NotificationCenter.default.addObserver(self, selector: #selector(self.changePrice(notification:)), name: Notification.Name.init(rawValue: "changeDeliveryOption"), object: nil)
NotificationCenter.default.post(name: Notification.Name.init(rawValue: "changeDeliveryOption"), object: nil, userInfo: ["index": row])
@objc func changePrice(notification: Notification)  {
    if let info = notification.userInfo {
        let userInfo = info as! [String: Int]
        if let product = product {
            let indexPath = IndexPath(item: 0, section: 0)
            if let cell = self.tableView.cellForRow(at: indexPath) {
                let cell = cell as! ProductTableViewCell
                cell.priceLabel.text = product.deliverList.fullPrice[userInfo["index"]!]
            }
        }
    }
}
deinit {
    NotificationCenter.default.removeObserver(self)
}
