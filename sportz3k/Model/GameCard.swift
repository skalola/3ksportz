//
//  GameCard.swift
//  sportz3k
//
//  Created by Shiv Kalola on 7/4/22.
//

import Foundation

struct GameCard: Identifiable {
    var id = UUID()
    var sport:String
    var image:String
    var title:String
    var description:String
}

var gameData:[GameCard] = [
    GameCard(
        sport:"basketball",
        image: "basketball",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"boxing",
        image: "boxing",
        title: "Intro to Boxing",
        description: "A Beginner level class to learn the principles of boxing from stances, forms, and striking."),
    GameCard(
        sport:"cricket",
        image: "cricket",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"pickleball",
        image: "pickleball",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"racquetball",
        image: "racquetball",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"soccer",
        image: "soccer",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"tennis",
        image: "tennis",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"volleyball",
        image: "volleyball",
        title: "Around the World",
        description: "Playesrs shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins.")
//    GameCard(
//        sport:"basketball",
//         image: "basketball",
//         title: "H-O-R-S-E",
//         description: "Players create a shot an opponent has to copy. If you miss you take a letter. Make your opponent spell HORSE."),
//    GameCard(
//        sport:"basketball",
//        image: "basketball",
//        title: "King of the Court",
//        description: "Fast paced 1 on 1. Score to stay on the court, loser walks off until there's one person left."),
//    GameCard(
//        sport:"basketball",
//        image: "basketball",
//        title: "Knockout",
//        description: "Two balls, two shooters. If the first shooter misses, the second shooter can elimante them before they can rebound and finish the bucket."),
//    GameCard(
//        sport:"basketball",
//        image: "basketball",
//        title: "21",
//        description: "Free for all with a variety of rules to get to 21. Blackjack, free throws, and taps are optional."),
//    GameCard(
//        sport:"basketball",
//        image: "basketball",
//        title: "Versus",
//        description: "Head to head to a set score, with 2s and 1s. Win by 2 optional.")
]
