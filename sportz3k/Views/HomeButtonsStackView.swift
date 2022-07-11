//
//  HomeBottomControlsStackView.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import UIKit

class HomeButtonsStackView: UIStackView {

    static func createButton(image: UIImage) -> UIButton {
        let button: UIButton = .init(type: .system)
        button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }

    let refreshButton = createButton(image: #imageLiteral(resourceName: "super_like_circle"))
    let dislikeButton = createButton(image: #imageLiteral(resourceName: "dismiss_circle"))
    let superlikeButton = createButton(image: #imageLiteral(resourceName: "play_circle"))
    let likeButton = createButton(image: #imageLiteral(resourceName: "like_circle"))
    let specialButton = createButton(image: #imageLiteral(resourceName: "boost_circle"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .fillEqually
        self.snp.makeConstraints {
            $0.height.equalTo(100)
        }
        
        [refreshButton, dislikeButton, superlikeButton, likeButton, specialButton].forEach { (button) in
            self.addArrangedSubview(button)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}