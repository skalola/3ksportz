//
//  ConfirmationView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/13/21.
//

import SwiftUI

struct ConfirmationView: View {
    
    // initialize AWS & session manager
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.colorScheme) var colorScheme
    @State var confirmationCode = ""
    
    let username: String
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("Hello \(username)")
                
                Spacer()
                
                VStack{
                    Text("Enter your confirmation code:")
                    
                    TextField("Confirmation Code", text:
                                $confirmationCode).textFieldStyle(OvalTextFieldStyle())
                }
                
                
                Spacer()
                
                Button("CONFIRM", action: {
                    sessionManager.confirm(
                        username: username,
                        code: confirmationCode
                    )
                }).frame(width: 300, height: 50)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0))
                    .clipShape(Capsule())
                    .foregroundColor(Color.red)
            }
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .top
                )
            .background(Color(red: 231/255, green: 20/255, blue: 83/255))
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(false)
        }
        
    }
}

struct CardCollection_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "test user")
    }
}
