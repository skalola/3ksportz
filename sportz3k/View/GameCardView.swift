//
//  GameCardView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//

import Foundation
import SwiftUI
import Amplify
import AmplifyPlugins
import AuthenticationServices
import UIKit


struct GameCardView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager

    let user: AuthUser
    var gameCard:GameCard
    
    var body: some View {
        
        VStack {
            Spacer()
            Image(gameCard.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height: 300, alignment: .center)
            Text(gameCard.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text(gameCard.description)
                .lineLimit(5)
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(.secondary)
            Spacer()
            NavigationLink(destination: GameRulesView(user: user)) {
                Text("PLAY \(gameCard.title)")
            }
            .frame(width: 300, height: 100)
            .clipShape(Capsule())
            .font(.custom("Avenir Next Condensed Bold", size: 25))
            .foregroundColor(Color.red)
            .background(Color.black)
            Spacer()
        }.padding()

        
    }
    
}

struct GameCardView_Preview: PreviewProvider {
    
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }

    static var previews: some View {
        GameCardView(user: GuestUser(), gameCard: gameData[1]).environmentObject(SessionManager())
    }
}
