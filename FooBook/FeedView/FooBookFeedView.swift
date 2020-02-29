//
//  FooBookFeedView.swift
//  FooBook
//
//  
//  Copyright © 2020 Slicode. All rights reserved.
//

import Foundation
import UIKit

class FooBookFeedView: UIView {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var feedImageView: UIImageView!
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var sharesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = 10.0
    }
    
    func updateWith(feed: FeedModel) {
        profileImageView.image = UIImage(named: feed.profileImageName)
        dateLabel.text = feed.dateString
        nameLabel.text = feed.name
        
        subTitleLabel.text = feed.subTitle
        feedImageView.image = UIImage(named: feed.feedImageName)
        
        likeLabel.text = feed.likes
        commentsLabel.text = feed.comments
        sharesLabel.text = feed.shares
    }
}
