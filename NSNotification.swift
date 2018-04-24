// get keyboard size, keyboard height and intersection
let userInfo = (notification as NSNotification).userInfo!
let keyboardSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
let keyboardHeight = keyboardSize.height
let intersection = self.view.frame.intersection(keyboardSize)

