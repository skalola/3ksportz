//
//  ReferralView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 12/1/21.
//

import Foundation
import SwiftUI
import CoreData
import Amplify
import AmplifyPlugins
import AuthenticationServices

struct ReferralView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
        
    @State var authStatus: String?
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var age: Int?
    @State private var location: String = ""
    @State private var skill: String = ""
    @State private var showingSheet = false

                    
    var body: some View {
        
        NavigationView{
            VStack{
                //Create AWS Sign In
                Image("3kappicon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .clipped()
                .padding()
                Spacer()
                Text("Invite a player").font(.title)
                
                VStack{
                    TextField("Player Name", text: $username).textFieldStyle(OvalTextFieldStyle())
                    TextField("Email", text: $email).textFieldStyle(OvalTextFieldStyle())
                    TextField("Team Code", text: $password).textFieldStyle(OvalTextFieldStyle())
                }
                Spacer()
                
                Button("INVITE PLAYER", action: {
                    sessionManager.signUp(
                        username: username,
                        email: email,
                        password: password
                    )
                }).frame(width: 300, height: 50)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0))
                    .clipShape(Capsule())
                    .foregroundColor(Color.red)

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
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        
    }
   
}

struct ReferralView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ReferralView()
                .preferredColorScheme(.light)
        }
    }
}
