//
//  RecentMessageCell.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import LBTATools

class RecentMessageCell: LBTAListCell<RecentMessage> {

    let userProfileImageView: UIImageView = .init(image: #imageLiteral(resourceName: "kelly1"), contentMode: .scaleAspectFill)
    let usernameLabel: UILabel = .init(text: "Username here", font: .boldSystemFont(ofSize: 18))
    let messageTextLabel: UILabel = .init(text: "some long linge of text that should span 2 lines i guess", font: .boldSystemFont(ofSize: 16), textColor: .gray, numberOfLines: 2)
    override var item: RecentMessage! {
        didSet {
            usernameLabel.text = item.name
            messageTextLabel.text = item.text
            userProfileImageView.sd_setImage(with: URL(string: item.profileImageUrl))
        }
    }
    
    override func setupViews() {
        super.setupViews()
        userProfileImageView.layer.cornerRadius = 94 / 2
        hstack(userProfileImageView.withWidth(94).withHeight(94),
               stack(usernameLabel, messageTextLabel, spacing: 2),
               spacing: 20,
               alignment: .center).padLeft(20).padRight(20)
        
        addSeparatorView(leadingAnchor: usernameLabel.leadingAnchor)
    }
}
