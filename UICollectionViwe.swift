// Enable scroll or not
self.collectionView.isScrollEnabled = false

// reload all
self.tableView.reloadData()

// reload specific one
let indexPath = IndexPath(item: 0, section: 0)
tableView.reloadRows(at: [indexPath], with: .none)
