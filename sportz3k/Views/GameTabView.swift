//
//  GameTabView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//
import SwiftUI
import Foundation
import UIKit

struct GameTabView: View {
    
    @State var selectedPage:Int = 0
    
    var body: some View {
        
        NavigationView {
            VStack{
                TabView(selection: $selectedPage ) {
                    ForEach(0..<gameData.count) { index in
                        GameCardView(gameCard: gameData[index]).tag(index)
                    }
                    
                }
                .background(Color(red: 231/255, green: 20/255, blue: 83/255))
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .top
            )
        .background(Color(red: 231/255, green: 20/255, blue: 83/255))
            
            
        }
        
        
}


