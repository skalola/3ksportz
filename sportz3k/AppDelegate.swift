//
//  AppDelegate.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/27/21.
//

import Foundation
import UIKit
import Amplify
import AmplifyPlugins
import AuthenticationServices

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
                     launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
            
        configureUserNotifications()
        UNUserNotificationCenter.current().delegate = self
        
        return true
        
        }
}

class AppState: ObservableObject {
    static let shared = AppState()
    @Published var pageToNavigationTo : String?
}

// MARK: - UNUserNotificationCenterDelegate
extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: (UNNotificationPresentationOptions) -> Void
    ) {
        completionHandler(.banner)
    }

    private func configureUserNotifications() {
        UNUserNotificationCenter.current().delegate = self
        // 1
        let dismissAction = UNNotificationAction(
            identifier: "dismiss",
            title: "Dismiss",
            options: []
        )
        let markAsDone = UNNotificationAction(
            identifier: "markAsDone",
            title: "Mark As Done",
            options: []
        )
        // 2
        let category = UNNotificationCategory(
            identifier: "OrganizerPlusCategory",
            actions: [dismissAction, markAsDone],
            intentIdentifiers: [],
            options: []
        )
        // 3
        UNUserNotificationCenter.current().setNotificationCategories([category])
    }

    // 1
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void) {
        // 2
        if response.actionIdentifier == "markAsDone" {
            let userInfo = response.notification.request.content.userInfo
            if let taskData = userInfo["Task"] as? Data {
                if let task = try? JSONDecoder().decode(Task.self, from: taskData) {
                    // 3
                    TaskManager.shared.remove(task: task)
                }
            }
        }
        completionHandler()
    }
    
}

