//
//  Match.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import Foundation

struct Match {
    let name, profileImageUrl, uid: String

    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
    }
}
