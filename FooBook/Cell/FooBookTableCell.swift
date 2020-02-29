//
//  FooBookTableCell.swift
//  FooBook
//
//  
//  Copyright © 2020 Slicode. All rights reserved.
//

import Foundation
import UIKit

class FooBookTableCell: UITableViewCell {
    private var feedView: FooBookFeedView?
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setupSubView()
        setupConstraints()
    }
    
    private func setupSubView() {
        let feedViewNib = UINib(nibName: "FooBookFeedView", bundle: nil)
        let views = feedViewNib.instantiate(withOwner: self, options: nil)
        feedView = views.last as? FooBookFeedView
        if let feedView = feedView {
            feedView.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(feedView)
        }
    }
    
    private func setupConstraints() {
        if let feedView = feedView {
            feedView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            feedView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            feedView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            feedView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        }
    }
    
    public func updateCellWith(feed: FeedModel) {
        feedView?.updateWith(feed: feed)
    }
}
