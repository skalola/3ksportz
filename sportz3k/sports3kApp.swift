//
//  sports3kApp.swift
//  sportz3k
//
//  Created by Shiv Kalola on 7/6/22.
//



import SwiftUI
import UIKit
import UserNotifications

@main
struct sportz3kApp: App {
//    let persistenceController = PersistenceController.shared
    
    // initialize AWS & session manager
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    init() {

    }
    
    // Setup scene
    var body: some Scene {
        WindowGroup {
            TaskListView()
            
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
