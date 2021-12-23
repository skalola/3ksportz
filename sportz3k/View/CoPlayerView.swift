//
//  CoPlayerView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/21/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Foundation

struct CoPlayerView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager

    
    let user: AuthUser
    
    let data = (1...9).map { "Item \($0)" }

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
        
    var body: some View {
        VStack(spacing: -15) {
            // Top Navigation
            HStack {
                VStack{
                    HStack{
                    Image("3kappicon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    }
                }.padding()
                Spacer()
                
                VStack{
                    Text("\(user.username)").font(.custom("Avenir Next Condensed Bold", size: 25))
                }
                Spacer()
                
                VStack{
                    Button("🕹", action: {}).font(.system(size: 50.0))
                }
            }

            // Profile header stack
            HStack {
                VStack{
                    HStack{
                    Image("3kappicon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
                    .clipShape(Circle())
                    .clipped()
                    }
                    Button("⭐️⭐️⭐️⭐️⭐️", action: {}).font(.system(size: 12.0))
                    
                }.padding()
                Spacer()
                
                VStack{
                    Text("10/30").font(.custom("Avenir Next Condensed Bold", size: 25))
                    Button("NEXT GAME", action: {})
                }
                Spacer()
                
                VStack{
                    Text("20").font(.custom("Avenir Next Condensed Bold", size: 25))
                    Button("Team", action: {})
                }
                Spacer()
            }
            
            Spacer()
            
            // State Table
            ScrollView {
                
                HStack{
                    Text("\(user.username)'s CARDZ").font(.custom("Avenir Next Condensed Bold", size: 25))
                }
                Spacer()
                
                Text("\(user.username)'s STATZ").font(.custom("Avenir Next Condensed Bold", size: 25))
                Spacer()
                HStack{
                    Text("SPORT")
                    Spacer()
                    Text("RATING")
                    Spacer()
                    Text("BADGES")
                        
                }.frame(width: 300)
                    .font(.caption)
                    .colorInvert()
                    .background(Color(red: 0, green: 0, blue: 0))
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                    }
                }
                .padding(.horizontal)
                
                Text("LEADERBOARD")
                    .frame(width: 300)
                    .font(.caption)
                    .colorInvert()
                    .background(Color(red: 0, green: 0, blue: 0))
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                    }
                }
                .padding(.horizontal)
                
                Text("HISTORY")
                    .frame(width: 300)
                    .font(.caption)
                    .colorInvert()
                    .background(Color(red: 0, green: 0, blue: 0))
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .frame(maxHeight: 400)
            
            Spacer()
            
            Button("START GAME", action: {})
                .frame(width: 300, height: 20)
                .padding(25)
                .background(Color(red: 0, green: 0, blue: 0))
                .clipShape(Capsule())
                .font(.custom("Avenir Next Condensed Bold", size: 25))
            Spacer()
            
            Button("sign out", action: sessionManager.signOut)
          
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

struct CoPlayerView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        CoPlayerView(user: GuestUser()).environmentObject(SessionManager())
    }
}
