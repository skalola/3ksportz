//
//  TaskListView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 7/4/22.
//


import Foundation
import SwiftUI
import UserNotifications


struct TaskListView: View {
    @ObservedObject var taskManager = TaskManager.shared
    @State var showNotificationSettingsUI = false

    var body: some View {

        ZStack {
            
            VStack {
                
                HStack {
                  Spacer()
                  Text("SCHEDULE")
                        .font(.title)
                        .foregroundColor(.pink)
                  Spacer()
                  Button(action: {
                      // 1
                      NotificationManager.shared.requestAuthorization { granted in
                        // 2
                        if granted {
                            self.showNotificationSettingsUI = true
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
                        // Hide Sheet and use Full screen
                        GameTabView()
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
//            AddTaskView()
            }
        .navigationViewStyle(StackNavigationViewStyle())
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
                  GameTabView()
              }
        }
    }
}

// Functions

