// load html file
if let htmlURL = Bundle.main.path(forResource: fileName, ofType: "html") {
    do {
        let htmlString = try String(contentsOfFile: htmlURL)
        let htmlData = NSString(string: htmlString).data(using: String.Encoding.unicode.rawValue)
        let options = [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.html]
        let attributedString = try! NSAttributedString(data: htmlData!, options: options, documentAttributes: nil)
        self.htmlTextView.attributedText = attributedString
    } catch {
        // contents could not be loaded
    }
} else {
    // example.txt not found!
}

