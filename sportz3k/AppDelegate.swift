//
//  AppDelegate.swift
//  3K SPORTZ
//
//  Created by Shiv Kalola 07.03.2022
//

import UIKit
import IQKeyboardManagerSwift
import Firebase
import AuthenticationServices
import Foundation

//@main
class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        IQKeyboardManager.shared.enable = true
        FirebaseApp.configure()
        // Override point for customization after application launch.
    
        configureUserNotifications()
        UNUserNotificationCenter.current().delegate = self
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
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
