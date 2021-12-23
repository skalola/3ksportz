//
//  Profile3View.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/13/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Foundation

struct Profile3View: View {
    
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
    
        NavigationView {
            
            VStack {
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
                        Text("\(user.username)")
                    }
                    Spacer()

                    VStack{
                        NavigationLink(destination: GameListView(user: user)) {
                            Text("🕹").font(.system(size: 50.0))
                        }
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
                        
                        NavigationLink(destination: GameRulesView(user: user)){
                            Text("⭐️⭐️⭐️⭐️⭐️").font(.system(size: 12.0))
                        }
                        
                        

                    }.padding()
                    Spacer()

                    VStack{
                        Text("10/30").font(.custom("Avenir Next Condensed Bold", size: 25))
                        
                        NavigationLink(destination: TaskListView(user: user)){
                            Text("NEXT GAME")
                        }
                        .font(.custom("Avenir Next Condensed Bold", size: 15))
                        .foregroundColor(Color.white)
                    }
                    Spacer()

                    VStack{
                        Text("20").font(.custom("Avenir Next Condensed Bold", size: 25))
                        NavigationLink(destination: GameTabView(user: user)){
                            Text("NEXT GAME")
                        }
                        .font(.custom("Avenir Next Condensed Bold", size: 15))
                        .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                
                //State Table
                ScrollView {

                    HStack{
                        Text("MY CARDZ").font(.custom("Avenir Next Condensed Bold", size: 25))
                    }
                    Spacer()

                    Text("MY STATZ").font(.custom("Avenir Next Condensed Bold", size: 25))
                    Spacer()
                    HStack{
                        Text("SPORT")
                        Spacer()
                        Text("RATING")
                        Spacer()
                        Text("BADGES")

                    }.frame(width: 300)
                        .font(.caption)
                        .foregroundColor(Color.white)
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
                        .foregroundColor(Color.white)
                        .background(Color(red: 0, green: 0, blue: 0))
                        .font(.custom("Avenir Next Condensed Bold", size: 25))

                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                    }
                    .padding(.horizontal)

                    Text("HISTORY")
                        .frame(width: 300)
                        .font(.caption)
                        .foregroundColor(Color.white)
                        .background(Color(red: 0, green: 0, blue: 0))
                        .font(.custom("Avenir Next Condensed Bold", size: 25))

                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                    }
                }
                .frame(maxHeight: 375)
                
                Spacer()
                
                
                
                Button("sign out", action: sessionManager.signOut)
              
            }
            .navigationBarHidden(true)
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
}

struct Profile3View_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        Profile3View(user: GuestUser()).environmentObject(SessionManager())
            .preferredColorScheme(.light)
    }
}
