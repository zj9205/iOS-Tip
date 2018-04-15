// Change return key type, then use delegate, either one is ok
textfield.returnKeyType = .done
textFieldDidEndEditing(_:) { textfield.resignFirstResponder }
textFieldShouldEndEditing(_:) { textfield.resignFirstResponder; return true }
