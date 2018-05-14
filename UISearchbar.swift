// add s search bar to navigation bar
let titleView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 32))
searchBar = UISearchBar.init(frame: titleView.bounds)
searchBar?.barStyle = .default
searchBar?.searchBarStyle = .minimal
searchBar?.placeholder = domainName
searchBar?.isUserInteractionEnabled = false
searchBar?.sizeToFit()
titleView.addSubview(searchBar!)
navigationItem.titleView = titleView

// replace search bar by a custom view, in viewDidAppear function
if let searchBar = searchBar {
    for subView in searchBar.subviews  {
        for subsubView in subView.subviews  {
            if let textField = subsubView as? UITextField {
                let customSearchBar = AddressBarView.init(frame: textField.frame)
                customSearchBar.titleLabel.text = domainName
                navigationItem.titleView = customSearchBar
            }
        }
    }
}
