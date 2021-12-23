//
//  IntroCardView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/29/21.
//

import Foundation
import SwiftUI
import Amplify
import AmplifyPlugins
import AuthenticationServices

struct IntroCardView: View {
    
    var introCard:IntroCard
 
    var body: some View {
                
        VStack {
            Image(introCard.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:250, height: 250, alignment: .center)
            Text(introCard.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text(introCard.description)
                .lineLimit(5)
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(.secondary)
        }
    }
    
}

struct IntroCardView_Preview: PreviewProvider {
    static var previews: some View {
        IntroCardView(introCard: introData[0])
    }
}
