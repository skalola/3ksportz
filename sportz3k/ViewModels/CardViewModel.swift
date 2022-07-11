//
//  CardViewModel.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

class CardViewModel {
    let uid: String
    let imageUrls: [String]
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
    var bio: String?
    init(uid: String, imageNames: [String], attributedString: NSAttributedString, textAlignment: NSTextAlignment, bio: String?) {
        self.uid = uid
        self.imageUrls = imageNames
        self.attributedString = attributedString
        self.textAlignment = textAlignment
        self.bio = bio
    }

    fileprivate var imageIndex = 0 {
        didSet {
            let imageUrl = imageUrls[imageIndex]
            imageIndexObserver?(imageIndex, imageUrl)
        }
    }

    var imageIndexObserver: ((Int, String?) -> ())?

    func advanceToNextPhoto() {
        imageIndex = min(imageIndex + 1, imageUrls.count - 1)
    }

    func goToPreviousPhoto() {
        imageIndex = max(0, imageIndex - 1)
    }
}
