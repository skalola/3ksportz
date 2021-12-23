//
//  GameCard.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
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
        image: "3kappicon",
        title: "Around the World",
        description: "Players shoot from the 3pt line at baseline, corners and center. One miss allowed per spot. The first player to make it around the world and back wins."),
    GameCard(
        sport:"basketball",
         image: "3kappicon",
         title: "H-O-R-S-E",
         description: "Players create a shot an opponent has to copy. If you miss you take a letter. Make your opponent spell HORSE."),
    GameCard(
        sport:"basketball",
        image: "3kappicon",
        title: "King of the Court",
        description: "Fast paced 1 on 1. Score to stay on the court, loser walks off until there's one person left."),
    GameCard(
        sport:"basketball",
        image: "3kappicon",
        title: "Knockout",
        description: "Two balls, two shooters. If the first shooter misses, the second shooter can elimante them before they can rebound and finish the bucket."),
    GameCard(
        sport:"basketball",
        image: "3kappicon",
        title: "21",
        description: "Free for all with a variety of rules to get to 21. Blackjack, free throws, and taps are optional."),
    GameCard(
        sport:"basketball",
        image: "3kappicon",
        title: "Versus",
        description: "Head to head to a set score, with 2s and 1s. Win by 2 optional.")
]
