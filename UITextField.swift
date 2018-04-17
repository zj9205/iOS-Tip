// Change return key type, then use delegate, either one is ok
textfield.returnKeyType = .done
textFieldDidEndEditing(_:) { textfield.resignFirstResponder }
textFieldShouldEndEditing(_:) { textfield.resignFirstResponder; return true }

// End editing
func textFieldShouldReturn(textField: UITextField) -> Bool {
    self.view.endEditing(true)
    return true;
}

// Change Font
textField.font = UIFont.init(name: "Helvetica", size: 18)

// Change style of placeholder
let attributes = [
    NSForegroundColorAttributeName: UIColor.blackColor(),
    NSFontAttributeName : UIFont(name: "Roboto-Bold", size: 17)!  // Note the !
]
someUITextField.attributedPlaceholder = NSAttributedString(string: "Placeholder Text", attributes:attributes)

