// UITableView Refresh without scrolling
func reload(tableView: UITableView) {
    let contentOffset = tableView.contentOffset
    tableView.reloadData()
    tableView.layoutIfNeeded()
    tableView.setContentOffset(contentOffset, animated: false)
}

