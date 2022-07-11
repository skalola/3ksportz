//
//  GameRulesView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//
import SwiftUI
import CoreData
import AuthenticationServices
import UserNotifications
import MapKit
import UIKit

struct GameRulesView: View {
    
    // Observed objects for map
    @ObservedObject var locationManager = LocationManager()
    var gameCard:GameCard
    
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
                    Text("\(gameCard.sport.uppercased()) SETTINGS")
                        .font(.custom("Avenir Next Bold", size: 18))
                        .foregroundColor(Color.red)
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
                          radius: $radius)
                          .navigationBarHidden(true)
                          .navigationTitle("")
                    }
                    .padding()
                }
                
                Section {
                    Text("SELECT LOCATION")
                        .font(.custom("Avenir Next Bold", size: 18))
                        .foregroundColor(Color.red)
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
   
                HStack {
                    Button("SAVE GAME") {
                        taskName = gameCard.sport
                        TaskManager.shared.addNewTask(taskName, makeReminder())
                        presentationMode.wrappedValue.dismiss()
                    }
//                    .disabled(taskName.isEmpty ? true : false)
                    .padding()
                    .clipShape(Capsule())
                    .font(.custom("Avenir Next Bold", size: 25))
                    .foregroundColor(Color.red)
                    Spacer()
                }
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())

    }
   
}
//
//struct GameRulesView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        GameRulesView(gameCard: gameCard)
//    }
//}

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
                Text("Repeat")
                    .padding(.vertical)
            }
            .tint(.pink)
        }
        .sheet(isPresented: $showMapList) {
            LocationCardView()
        }
    }
}
