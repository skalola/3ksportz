//
//  GameListView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/21/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Foundation
import UIKit

struct GameListView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var sport: String = ""
    let games = Bundle.main.decode([GameSection].self, from: "GamesList.json")
    let user: AuthUser
    let data = (1...9).map { "Item \($0)" }
    let columns = [
        GridItem(.flexible())
    ]
        
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 20) {
                // Top Navigation
                Image("3kappicon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipped()
                
                HStack{
                    Text("GAMEZ").font(.custom("Avenir Next Condensed Bold", size: 25))
                }
                
                // Game selector
                HStack{
                    Picker("Sport", selection: $sport, content: {
                        Text("🏀").tag("Basketball")
                        Text("🥊").tag("Boxing")
                        Text("⛳️").tag("Golf")
                        Text("🏓").tag("Tennis")
                                })
                                .pickerStyle(SegmentedPickerStyle())
                                                   
                }
                
                // State Table
                ScrollView {
                    Spacer()

                    LazyVGrid(columns: columns, spacing: 20) {
                        
                        //Fetch games from JSON
                        ForEach(games) { section in
                            Section(header: Text(section.sport)) {
                                ForEach(section.items) { item in
                                    
                                    ZStack{
                                        Image("3kappicon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 300, height: 150)
                                            .clipped()
                                            .cornerRadius(20.0)
                                        Spacer()
                                        
                                        NavigationLink(destination: GameRulesView(user: user)) {
                                                Text("\(item.name)")
                                                    .foregroundColor(Color.black)
                                                    .shadow(color: .black, radius: 5)
                                                    .font(.largeTitle)
                                        }
                                            
                                    }
                                }
                            }
                        }

                    }.padding(.horizontal)

                }.frame(maxHeight: 600)
                
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

struct GameListView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        GameListView(user: GuestUser()).environmentObject(SessionManager())
    }
}
