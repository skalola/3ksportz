//
//  LobbyView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/21/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Foundation

struct LobbyView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager

    @State private var sport: String = ""
    let user: AuthUser
    let data = (1...9).map { "Item \($0)" }
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
        
    var body: some View {
        VStack(spacing: 20) {
            // Top Navigation
            Image("3kappicon")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
            .clipped()
            
            HStack{
                Text("LOBBY").font(.custom("Avenir Next Condensed Bold", size: 25))
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
                    ForEach(data, id: \.self) { item in
//                        Text(item)
                        Image("3kappicon")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipped()
                            .cornerRadius(20.0)
                    }
                }
                .padding(.horizontal)

            }
            .frame(maxHeight: 600)
            
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

struct LobbyView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        LobbyView(user: GuestUser()).environmentObject(SessionManager())
    }
}
