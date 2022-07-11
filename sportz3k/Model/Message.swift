//
//  Message.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import Foundation
import Firebase

struct Message {
    let text, fromId, toId: String
    let timestamp: Timestamp
    let isFromCurrentLoggedUser: Bool
    
    init(dictionary: [String: Any]) {
        self.text = dictionary["text"] as? String ?? ""
        self.fromId = dictionary["fromId"] as? String ?? ""
        self.toId = dictionary["toId"] as? String ?? ""
        self.timestamp = dictionary["timestamp"] as? Timestamp ?? Timestamp.init(date: Date())
        
        self.isFromCurrentLoggedUser = Auth.auth().currentUser?.uid == self.fromId
    }
}
