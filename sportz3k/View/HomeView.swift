//
//  SignInView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/16/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import AuthenticationServices


struct HomeView: View {
    
    // Environment for Color Schemes and AuthState
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.colorScheme) var colorScheme
    
    @State var username = ""
    @State var password = ""
    @State var selectedPage:Int = 1
        
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack{
                    Image("3kappicon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                }

                TabView(selection: $selectedPage ) {
                    ForEach(0..<introData.count) { index in
                        IntroCardView(introCard: introData[index]).tag(index)
                        
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                NavigationLink(destination: LoginView()) {
                    Text("LOGIN")
                }
                .frame(width: 300, height: 50)
                .padding()
                .background(Color(red: 0, green: 0, blue: 0))
                .clipShape(Capsule())
                .foregroundColor(Color.red)
                
                NavigationLink(destination: InvitationView()) {
                    Text("ENTER INVITATION CODE")
                }
                //Sign in button
    //            SignInWithAppleButton(
    //                .signIn,
    //                onRequest: configure,
    //                onCompletion: handle
    //            )
    //            .signInWithAppleButtonStyle(
    //                colorScheme == .dark ? .black : .black
    //            )
    //            .frame(height: 50)
    //            .padding(.top, 5)
                
            }
            .background(Color(red: 231/255, green: 20/255, blue: 83/255))
            .navigationBarHidden(true)
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
    
    func configure(_ request: ASAuthorizationAppleIDRequest) {
        request.requestedScopes = [.fullName, .email]
    }
    
    func handle(_ authResult: Result<ASAuthorization, Error>) {
        switch authResult {
        case .success(let auth):
            print(auth)
            
            switch auth.credential {
            case let appleIdCredentials as ASAuthorizationAppleIDCredential:
                if let appleUser = Player(credentials: appleIdCredentials),
                   let appleUserData = try? JSONEncoder().encode(appleUser) {
                    
                    //Save to Database or UserDefaults
                    UserDefaults.standard.setValue(appleUserData, forKey: appleUser.userId)
                    
                    print("saved apple user", appleUser)
                } else {
                    print("missing some fields", appleIdCredentials.email, appleIdCredentials.fullName, appleIdCredentials.user)

                    guard
                        let appleUserData = UserDefaults.standard.data(forKey: appleIdCredentials.user),
                        let appleUser = try? JSONDecoder().decode(Player.self, from: appleUserData)
                    else { return }

                    print(appleUser)

                }
                
            default:
                print(auth.credential)
            }
            
        case .failure(let error):
            print(error)
        }
    }
   
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
