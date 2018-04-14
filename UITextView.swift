// Large Text Being Cut Off in UITextView That is Inside UIScrollView
// 防止边缘被切
self.htmlTextView.isScrollEnabled = false
self.htmlTextView.isScrollEnabled = true

// Check if a UITextField is changing
inputTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControlEvents.editingChanged)

@objc func textFieldDidChange(_ textField: UITextField) {
    
}
