//
//  SettingssView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/21/21.
//

import SwiftUI
import CoreData
import Amplify
import AmplifyPlugins
import AuthenticationServices

struct SettingsView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    //Declare variables
    let user: AuthUser
    
    @State var authStatus: String?
    @State private var username: String = ""
    @State private var showingSheet = false
//    @Binding var show : Bool?

                    
    var body: some View {
       
        NavigationView {
            
            Form {

                Section {
                
 
                }
                
                Section {
                    VStack{
                        NavigationLink(destination: ReferralView()) {
                            Text("INVITE A PLAYER")
                                .font(.custom("Avenir Next Condensed Bold", size: 20))
                                .padding()
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    Button("SIGN OUT", action: sessionManager.signOut)
                    .padding()
                    .clipShape(Capsule())
                    .font(.custom("Avenir Next Condensed Bold", size: 25))
                    .foregroundColor(Color.red)
                    Spacer()
                }
                
                
            }
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .top
                )
            .navigationBarTitle("SETTINGS", displayMode: .inline)
            
        }
        .navigationBarHidden(false)
        .navigationViewStyle(StackNavigationViewStyle())
//        .onAppear() {
//            NotificationCenter.default.addObserver(forName: NSNotification.Name("open"), object: nil, queue: .main) { (_) in
//
//                self.show = true
//            }
//
//        }
        
    }
    
   
}

struct SettingsView_Previews: PreviewProvider {

    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }

    static var previews: some View {
        SettingsView(user: GuestUser()).environmentObject(SessionManager())
        .preferredColorScheme(.dark)
    }
}

