//
//  PlaceListView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/24/21.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
//                EmptyView()
                Text("SELECT A LOCATION").font(.caption)
            }.frame(width: UIScreen.main.bounds.size.width, height: 50)
                .background(Color.pink)
                .gesture(TapGesture()
                    .onEnded(self.onTap)
            )
            
            List {
                ForEach(self.landmarks, id: \.id) { landmark in
                    
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .fontWeight(.bold)
                        
                        Text(landmark.title)
                    }
                }
                
            }.animation(nil)
            
        }.cornerRadius(10)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Landmark(placemark: MKPlacemark())], onTap: {})
    }
}
