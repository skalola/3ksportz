//
//  CardMakerView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/28/21.
//


import Foundation
import SwiftUI
import CoreData
import Amplify
import AmplifyPlugins
import AuthenticationServices

struct CardMakerView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                CameraView()
                    .tabItem{ Image(systemName: "camera") }
                GalleryView()
                    .tabItem{ Image(systemName: "photo.on.rectangle") }
            }
        }
        .navigationBarHidden(false)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
}

struct CardMakerView_Previews: PreviewProvider {

    static var previews: some View {
        CardMakerView().environmentObject(SessionManager())
    }
}
