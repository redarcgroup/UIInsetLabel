let paddedLabel: UIInsetLabel = UIInsetLabel()
paddedLabel.paddingInsets = UIEdgeInsets(top: 7.0, left: 7.0, bottom: 7.0, right: 7.0)

//Swift 2.3
paddedLabel.font = UIFont.boldSystemFontOfSize(14.0)

//Swift 3.0
paddedLabel.font = UIFont.boldSystemFont(ofSize: 14.0)

paddedLabel.text = "Some sample text"
self.view.addSubview(paddedLabel)
