//
//  NotificationsManager.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/27/21.
//

import Foundation
import UserNotifications
import CoreLocation

enum NotificationManagerConstants {
    static let timeBasedNotificationThreadId =
        "TimeBasedNotificationThreadId"
    static let calendarBasedNotificationThreadId =
        "CalendarBasedNotificationThreadId"
    static let locationBasedNotificationThreadId =
        "LocationBasedNotificationThreadId"
}

class NotificationManager: ObservableObject {
    static let shared = NotificationManager()
    @Published var settings: UNNotificationSettings?

    func requestAuthorization(completion: @escaping  (Bool) -> Void) {
        UNUserNotificationCenter.current()
          .requestAuthorization(options: [.alert, .sound, .badge]) { granted, _  in
            self.fetchNotificationSettings()
            completion(granted)
          }
    }

    func fetchNotificationSettings() {
        // 1
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            // 2
            DispatchQueue.main.async {
                self.settings = settings
            }
        }
    }

    func removeScheduledNotification(task: Task) {
        UNUserNotificationCenter.current()
            .removePendingNotificationRequests(withIdentifiers: [task.id])
    }

    // 1
    func scheduleNotification(task: Task) {
        // 2
        let content = UNMutableNotificationContent()
        content.title = task.name
        content.body = "Your game is coming up soon."
        content.categoryIdentifier = "3K Sportz"
        let taskData = try? JSONEncoder().encode(task)
        if let taskData = taskData {
            content.userInfo = ["Task": taskData]
        }
        
        let open = UNNotificationAction(identifier: "open", title: "Open", options: .foreground)
        let cancel = UNNotificationAction(identifier: "cancel", title: "Cancel", options: .foreground)
        let categories = UNNotificationCategory(identifier: "action", actions: [open, cancel], intentIdentifiers: [])
        
        UNUserNotificationCenter.current().setNotificationCategories([categories])
        content.categoryIdentifier = "action"
        
        // 3
        var trigger: UNNotificationTrigger?
        switch task.reminder.reminderType {
        case .time:
            if let timeInterval = task.reminder.timeInterval {
                trigger = UNTimeIntervalNotificationTrigger(
                    timeInterval: timeInterval,
                    repeats: task.reminder.repeats)
            }
            content.threadIdentifier =
                NotificationManagerConstants.timeBasedNotificationThreadId
        
        case .calendar:
            if let date = task.reminder.date {
                trigger = UNCalendarNotificationTrigger(
                    dateMatching: Calendar.current.dateComponents(
                        [.day, .month, .year, .hour, .minute],
                        from: date),
                    repeats: task.reminder.repeats)
            }
            content.threadIdentifier =
            NotificationManagerConstants.calendarBasedNotificationThreadId
        
        case .location:
            // 1
            guard CLLocationManager().authorizationStatus == .authorizedWhenInUse else {
            return
        }
            
        // 2
        if let location = task.reminder.location {
            // 3
            let center = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            let region = CLCircularRegion(center: center, radius: location.radius, identifier: task.id)
            trigger = UNLocationNotificationTrigger(region: region, repeats: task.reminder.repeats)
        }
            
        content.threadIdentifier =
        NotificationManagerConstants.locationBasedNotificationThreadId
    }

        // 4
        if let trigger = trigger {
            let request = UNNotificationRequest(
                identifier: task.id,
                content: content,
                trigger: trigger)
          // 5
            UNUserNotificationCenter.current().add(request) { error in
                if let error = error {
                    print(error)
                }
            }
        }
    }
}
