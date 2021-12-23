//
//  GameRulesView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//

import SwiftUI
import CoreData
import Amplify
import AmplifyPlugins
import AuthenticationServices
import UserNotifications
import MapKit
import UIKit

struct GameRulesView: View {
    
    // Observed objects for map
    @ObservedObject var locationManager = LocationManager()

    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    // Declare variables to use
    let user: AuthUser
    @State var authStatus: String?
    
    // Notification framework
    @State var taskName: String = ""
    @State var selectedTrigger = ReminderType.time
    @State var timeDurationIndex: Int = 0
    @State private var dateTrigger = Date()
    @State private var shouldRepeat = false
    @State private var latitude: String = ""
    @State private var longitude: String = ""
    @State private var radius: String = ""
    @Environment(\.presentationMode) var presentationMode
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = ""
    @State private var tapped: Bool = false
    @State private var showingSheet = false
    @State private var showMapList = false
    
    let triggers = ["Time", "Calendar", "Location"]
    let timeDurations: [Int] = Array(1...59)
        
    func makeReminder() -> Reminder? {
        
        var reminder = Reminder()
        reminder.reminderType = selectedTrigger
        switch selectedTrigger {
        case .time:
            reminder.timeInterval
                TimeInterval(timeDurations[timeDurationIndex] * 60)
        case .calendar:
            reminder.date = dateTrigger
        case .location:
            if let latitude = Double(latitude),
               let longitude = Double(longitude),
               let radius = Double(radius) {
                    reminder.location = LocationReminder(
                        latitude: latitude,
                        longitude: longitude,
                        radius: radius
                    )
                }
            }
        reminder.repeats = shouldRepeat
        return reminder
    }
    
    private func getNearByLandmarks() {
            
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
            }
        }
    }

    
    func calculateOffset() -> CGFloat {
            
        if self.landmarks.count > 0 && !self.tapped {
            return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 4
        }
        else if self.tapped {
            return 100
        } else {
            return UIScreen.main.bounds.size.height
        }
    }
    
 
                    
    var body: some View {
        
        NavigationView{
            //Notification controls
            Form {
                
                VStack {
                    Spacer()
                    Image("3kappicon")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)
                    .clipped()
                    Spacer()
                    TextField("replace this", text: $taskName)
                        .padding(.vertical)
                    Spacer()
                }
                
                Section {
                    Text("SELECT LOCATION").font(.caption)
                    VStack {
                        Spacer()
                        VStack {
                            MapView(landmarks: landmarks)
                                .frame(height:200)
                            Button(
                              action: {
                                  showMapList = true
                              },
                              label: {
                            })
                        }
                        .sheet(isPresented: $showMapList) {
                            LocationCardView()
                        }
                    }
                    
                }
                
                Section {
                    VStack {
                        ReminderView(
                          selectedTrigger: $selectedTrigger,
                          timeDurationIndex: $timeDurationIndex,
                          triggerDate: $dateTrigger,
                          shouldRepeat: $shouldRepeat,
                          latitude: $latitude,
                          longitude: $longitude,
                          radius: $radius,
                          user: user)
                          .navigationBarHidden(true)
                          .navigationTitle("")
                    }
                    .padding()
                }
   
                HStack {
                    Button("SAVE GAME") {
                        TaskManager.shared.addNewTask(taskName, makeReminder())
                        presentationMode.wrappedValue.dismiss()
                    }
                    .disabled(taskName.isEmpty ? true : false)
                    .padding()
                    .clipShape(Capsule())
                    .font(.custom("Avenir Next Condensed Bold", size: 25))
                    .foregroundColor(Color.red)
                    Spacer()
                }
            }
            
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
   
}

struct GameRulesView_Previews: PreviewProvider {
    private struct GuestUser: AuthUser {
        let userId: String = "1"
        let username: String = "Guest"
    }
    
    static var previews: some View {
        GameRulesView(user: GuestUser()).environmentObject(SessionManager())
    }
}

struct ReminderView: View {
    @Binding var selectedTrigger: ReminderType
    @Binding var timeDurationIndex: Int
    @Binding var triggerDate: Date
    @Binding var shouldRepeat: Bool
    @Binding var latitude: String
    @Binding var longitude: String
    @Binding var radius: String
    @StateObject var locationManager = LocationManager()
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = ""
    @State private var tapped: Bool = false
    @State private var showingSheet = false
    @State private var showMapList = false
    
    let user: AuthUser
    
    private func getNearByLandmarks() {
            
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
            }
        }
    }

    
    func calculateOffset() -> CGFloat {
            
        if self.landmarks.count > 0 && !self.tapped {
            return UIScreen.main.bounds.size.height - UIScreen.main.bounds.size.height / 4
        }
        else if self.tapped {
            return 100
        } else {
            return UIScreen.main.bounds.size.height
        }
    }


    var body: some View {
        
        VStack {
          Picker("Notification Trigger", selection: $selectedTrigger) {
            Text("GAME TIME").tag(ReminderType.calendar)
          }
          .pickerStyle(SegmentedPickerStyle())
          .padding(.vertical)
          
            if selectedTrigger == ReminderType.calendar {
                DatePicker("Please enter a date", selection: $triggerDate)
                  .labelsHidden()
                  .padding(.vertical)
            }
        
            Toggle(isOn: $shouldRepeat) {
                Text("Cardz Wagered")
                    .padding(.vertical)
            }
            
            Toggle(isOn: $shouldRepeat) {
                Text("Recurring Game")
                    .padding(.vertical)
            }
        }
        .sheet(isPresented: $showMapList) {
            LocationCardView()
        }
    }
}

