//
//  IntroCard.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//

import Foundation

struct IntroCard: Identifiable {
    var id = UUID()
    var image:String
    var title:String
    var description:String
}

var introData:[IntroCard] = [
    IntroCard(image: "IntroBall1", title: "Find & Play Games", description: "Find games to play in your area"),
    IntroCard(image: "IntroRating2", title: "Track Stats", description: "Track your achievements and unlock rewards"),
    IntroCard(image: "IntroCards3", title: "Collector Cards", description: "Trade cards and compete with players")
]
