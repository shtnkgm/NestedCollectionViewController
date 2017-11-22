# NestedCollectionViewController
NestedCollectionViewController（UICollectionView in UICollectionView） Sample

<img src="./Simulator Screen Shot - iPhone 8 Plus - 2017-11-21 at 21.30.28.png" width="320px">

# Lifecycle Log when launching
```swift
ParentViewController:viewDidLoad()
ParentViewController:viewWillAppear
ParentViewController:viewDidLayoutSubviews()
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ChildViewController:willMove(toParentViewController:)
ChildViewController:viewDidLoad()
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewWillAppear
ParentViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ChildViewController:viewDidLayoutSubviews()
ParentViewController:viewDidAppear
ParentViewController:didMove(toParentViewController:)
ChildViewController:viewDidAppear
ChildViewController:viewDidAppear
ChildViewController:viewDidAppear
ChildViewController:viewDidAppear
ChildViewController:viewDidAppear
ChildViewController:viewDidAppear
ChildViewController:viewDidAppear

```
