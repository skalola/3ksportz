//
//  GameTabView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Foundation
import UIKit

struct GameTabView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser
    @State var selectedPage:Int = 1
        
    var body: some View {
        
        NavigationView {
            VStack{
                TabView(selection: $selectedPage ) {
                    ForEach(0..<gameData.count) { index in
                        GameCardView(user: user, gameCard: gameData[index]).tag(index)
                    }
                    
                }
                .background(Color(red: 231/255, green: 20/255, blue: 83/255))
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .top
            )
        .background(Color(red: 231/255, green: 20/255, blue: 83/255))
            
            
        }
        
        
}

struct GameTabView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        GameTabView(user: GuestUser()).environmentObject(SessionManager())
    }
}
