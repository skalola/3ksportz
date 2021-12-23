//
//  Styles.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/22/21.
//

import Foundation
import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(15)
//            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(5)
            .shadow(color: .gray, radius: 10)

    }
}

