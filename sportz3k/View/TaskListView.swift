//
//  TaskListView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/27/21.
//

import Foundation
import SwiftUI
import UserNotifications
import Amplify
import AmplifyPlugins

struct TaskListView: View {
    @ObservedObject var taskManager = TaskManager.shared
    @State var showNotificationSettingsUI = false
    
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser

    var body: some View {
        
        ZStack {
            
            VStack {
                
                HStack {
                  Spacer()
                  Text("GAME SCHEDULE")
                        .font(.title)
                        .foregroundColor(.pink)
                  Spacer()
                  Button(action: {
                      // 1
                      NotificationManager.shared.requestAuthorization { granted in
                        // 2
                        if granted {
                          showNotificationSettingsUI = true
                        }
                      }
                    },
                    label: {
                      Image(systemName: "gamecontroller")
                        .font(.title)
                        .accentColor(.pink)
                    })
                    .padding(.trailing)
                    .sheet(isPresented: $showNotificationSettingsUI) {
                        SettingsView(user: user)
                    }
                    
                }
            .padding()
            if taskManager.tasks.isEmpty {
                Spacer()
                Text("No Games Scheduled.")
                    .foregroundColor(.pink)
                    .font(.title3)
                Spacer()
            } else {
                List(taskManager.tasks) { task in
                    TaskCell(task: task)
              }
              .padding()
            }
            }
            AddTaskView(user: user)
            }
        .navigationViewStyle(StackNavigationViewStyle())
        }
}

struct ContentView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        TaskListView(user: GuestUser()).environmentObject(SessionManager())
    }
}

struct TaskCell: View {
  var task: Task

  var body: some View {
        HStack {
            Button(
                action: {
                      TaskManager.shared.markTaskComplete(task: task)
                      DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        TaskManager.shared.remove(task: task)
                      }
                }, label: {
                      Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .accentColor(.pink)
                    
            })
            if task.completed {
                Text(task.name)
                    .strikethrough()
                    .foregroundColor(.pink)
                } else {
                    Text(task.name)
                        .foregroundColor(.pink)
                    }
                }
        }
}

struct AddTaskView: View {
    @State var showCreateTaskView = false
    
    let user: AuthUser

    var body: some View {
        VStack {
              Spacer()
                  HStack {
                      Spacer()
                      Button(
                        action: {
                            showCreateTaskView = true
                        },
                        label: {
                        Text("🕹")
                            .font(.title)
                            .frame(width: 30, height: 30)
                            .padding()
                      })
                      .background(Color.pink)
                      .cornerRadius(40)
                      .padding()
                  }
              .padding(.bottom)
              .sheet(isPresented: $showCreateTaskView) {
                  GameTabView(user: user)
              }
        }
    }
    
}
