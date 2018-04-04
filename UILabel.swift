// font init
myLabel.font = UIFont.init(name: myLabel.font.fontName, size: 20)
myLabel.font = myLabel.font.withSize(25)
myLabel.font.adjustsFontSizeToFitWidth = true

// different font types
myLabel.font = UIFont.systemFont(ofSize: 20.0)
myLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
myLabel.font = UIFont.italicSystemFont(ofSize: 20.0)
