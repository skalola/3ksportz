//
//  Games.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/13/21.
//

import SwiftUI

struct GameSection: Codable, Identifiable {
    var id: UUID
    var sport: String
    var items: [GameItem]
}

struct GameItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String    
    var image: String
    var description: String
    var numberOfPlayers: Int
    var date: String
    var location: String
    var ranked: String
    var cardsWagered: String

//    var mainImage: String {
//        name.replacingOccurrences(of: " ", with: "-").lowercased()
//    }
//
//    var thumbnailImage: String {
//        "\(mainImage)-thumb"
//    }

}

