//
//  ProfileView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/13/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Foundation

struct ProfileView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    @State var showCreateTaskView = false
    
    let user: AuthUser
    
    var body: some View {
    
        NavigationView {
            
            VStack {
                ZStack {
                    HStack {
                        Image("3kappicon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: CGFloat(75), height: CGFloat(75), alignment: .center)
                        
                    }
                    HStack {
                        Spacer()
                        NavigationLink(destination: CardMakerView()){
                            Image(systemName: "bolt")
                              .font(.title)
                              .accentColor(.pink)
                        }
                        .foregroundColor(Color.white)

                        NavigationLink(destination: TaskListView(user: user)){
                            Image(systemName: "bell")
                              .font(.title)
                              .accentColor(.pink)
                        }
                        .foregroundColor(Color.white)
                        .padding()
                    }
                }
                
                VStack{
                    Text("\(user.username)").padding(2)
                }
                    
                // Profile header stack                
                TabView {
                    StatCardView(user: user)
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("First")
                        }
                        .tag(1)
                    GalleryView()
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("Second")
                        }
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

                
                
                // Bottom Navigation
                HStack {
                    Button(
                      action: {
                          showCreateTaskView = true
                      },
                      label: {
                      Text("🕹")
                        .font(.system(size: 60.0))
                        .multilineTextAlignment(.center)
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color.white)
                        .padding()
                    })
                    .background(Color.pink)
                    .cornerRadius(50)
                    .padding()
                    
                    }
                    .sheet(isPresented: $showCreateTaskView) {
                        GameTabView(user: user)

                }
                
                HStack{
                    NavigationLink(destination: SettingsView(user: user)){
                        Image(systemName: "gear")
                          .font(.title)
                          .accentColor(.pink)
                    }
                    .foregroundColor(Color.white)
                    .padding()    
                }
                          
            }
            .navigationViewStyle(StackNavigationViewStyle())
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
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ProfileView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        ProfileView(user: GuestUser()).environmentObject(SessionManager())
            .preferredColorScheme(.light)
    }
}
