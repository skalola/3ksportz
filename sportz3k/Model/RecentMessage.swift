//
//  RecentMessage.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import Foundation
import Firebase

struct RecentMessage {
    let text, uid, name, profileImageUrl: String
    let timestamp: Timestamp
    
    init(dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.name = dictionary["name"] as? String ?? ""
        self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp.init(date: Date())
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
