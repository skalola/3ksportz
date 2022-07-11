//
//  Advertiser.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import UIKit

struct Advertiser: ProducesCardViewModel {
    let title: String
    let brandName: String
    let posterPhotoName: String

    func toCardViewModel() -> CardViewModel {
        let attributedText = NSMutableAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 34, weight: .heavy)])
        attributedText.append(NSAttributedString(string: "\n\(brandName)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .bold)]))
        return .init(uid: "", imageNames: [posterPhotoName], attributedString: attributedText, textAlignment: .center, bio: "")
    }
}
