//
//  CameraView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/28/21.
//

import Foundation
import SwiftUI
import CoreData
import Amplify
import AmplifyPlugins
import AuthenticationServices

struct CameraView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    
    var body: some View {
        
        NavigationView {
            VStack {
                if let image = self.image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Text("Card Maker")
                Spacer()
                Button(action: {didTapButton()}, label: {
                    let imageName = self.image == nil
                        ? "camera"
                        : "icloud.and.arrow.up"
                    
                    Image(systemName: "camera")
                        .font(.largeTitle)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(Color.white)
                        .clipShape(Circle())
                })
            }
            .sheet(isPresented: $shouldShowImagePicker, content: {
                ImagePicker(image: $image)
            })
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    func didTapButton() {
        if let image = self.image {
            // upload image
            upload(image)
        } else {
            shouldShowImagePicker.toggle()
        }
        
    }
    
    func upload(_ image: UIImage) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let key = UUID().uuidString + ".jpg"
        
        _ = Amplify.Storage.uploadData(key: key, data: imageData) { result in
            switch result {
            case .success:
                print("Uploaded image")
                
                // Save image to a Post
                let post = Post(imageKey: key)
                save(post)
                
            case .failure(let error):
                print("Failed to upload - \(error)")
            }
            
        }
    }
    
    func save(_ post: Post) {
        Amplify.DataStore.save(post) { result in
            switch result {
            case .success:
                print("Post saved")
                self.image = nil
                
            case .failure(let error):
                print("Failed to save post - \(error)")
            }
        }
    }
    
}

struct CameraView_Previews: PreviewProvider {

    static var previews: some View {
        CameraView().environmentObject(SessionManager())
    }
}

