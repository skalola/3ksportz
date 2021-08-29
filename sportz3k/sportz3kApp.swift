//
//  sportz3kApp.swift
//  sportz3k
//
//  Created by Shiv Kalola on 8/29/21.
//

import SwiftUI

@main
struct sportz3kApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
