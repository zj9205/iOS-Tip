// Get the domain part of an URL string
var urlString = "http://someurl.com/something"
var url = URL(string: urlString)
var domain = url?.host

// get url from webView
self.webView.url?.absoluteString
