//
//  sportz3kApp.swift
//  sportz3k
//
//  Created by Shiv Kalola on 8/29/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI
import UIKit
import UserNotifications

@main
struct sportz3kApp: App {
    let persistenceController = PersistenceController.shared
    
    // initialize AWS & session manager
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var sessionManager = SessionManager()

    init() {
        
        configureAmplify()
        sessionManager.getCurrentAuthUser()
    }
    
    // Setup scene
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
                
            case .welcome:
                HomeView()
                    .environmentObject(sessionManager)
                
            case .login:
                LoginView().environmentObject(sessionManager)
                
            case .invite:
                InvitationView().environmentObject(sessionManager)
                
            case .signUp:
                SignUpView()
                    .environmentObject(sessionManager)
                
            case .confirmCode(let username):
                ConfirmationView(username: username)
                    .environmentObject(sessionManager)
                
            case .session(let user):
                ProfileView(user: user)
                    .environmentObject(sessionManager)

            }
            
        }
        
    }
    
    private func configureAmplify() {
        do {
            // Storage
            let dataStorePlugin = AWSDataStorePlugin(modelRegistration: AmplifyModels())
            try Amplify.add(plugin: dataStorePlugin)
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            
            // DataStore
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            try Amplify.add(plugin: AWSDataStorePlugin(modelRegistration: models))
            
            // Configure
            try Amplify.configure()
            
            print("Amplify configured with Datastore plugin successfully")
            
        } catch {
            print("Amplify could not be configured", error)
        }
    }
    
}

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }

        return loaded
    }
}

