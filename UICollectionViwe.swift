// Enable scroll or not
self.collectionView.isScrollEnabled = false



// reload all cells
self.tableView.reloadData()



// reload a specific cell

// swift
let indexPath = IndexPath(item: 0, section: 0)
tableView.reloadRows(at: [indexPath], with: .none)

// objc
- (void)reloadItemsAtIndexPaths:(NSArray *)indexPaths

// without animations
BOOL animationsEnabled = [UIView areAnimationsEnabled];
[UIView setAnimationsEnabled:NO];
[myCollectionView reloadItemsAtIndexPaths:myIndexPaths];
[UIView setAnimationsEnabled:animationsEnabled];
