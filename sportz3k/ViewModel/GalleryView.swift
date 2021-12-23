//
//  GalleryView.swift
//  sportz3k
//
//  Created by Shiv Kalola on 11/28/21.
//

import Foundation
import SwiftUI
import CoreData
import Amplify
import Combine
import AmplifyPlugins
import AuthenticationServices

struct GalleryView: View {
    
    // Environment for Color Schemes and AuthState
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var imageCache = [String: UIImage?]()
    
    var body: some View {
                
        List(imageCache.sorted(by: { $0.key > $1.key}), id: \.key) { key, image in
            if let image = image {

                ZStack {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                    
                        Rectangle()
                        .fill(.blue)
                        .blendMode(.multiply)
                }
                
            }
        }
        .onAppear {
            getPosts()
            observePosts()

        }


    }
    
    func getPosts() {
        Amplify.DataStore.query(Post.self) { result in
            switch result {
            case .success(let posts):
                print("Retreived posts \(posts)")
                
                //Download images
                 downloadImages(for: posts)
                
                
            case .failure(let error):
                print("Failed to retrieve posts - \(error)")
            }
            
        }
    }
    
    func downloadImages(for posts: [Post]) {
        for post in posts {
            
            _ = Amplify.Storage.downloadData(key: post.imageKey) { result in
                switch result {
                case .success(let imageData):
                    let image = UIImage(data: imageData)
                    
                    DispatchQueue.main.async {
                        imageCache[post.imageKey] = image
                    }
                    
                case .failure(let error):
                    print("Failed to downnload data - \(error)")
                    
                }
                
            }
            
        }
    }
    
    @State var token: AnyCancellable?
    func observePosts() {
        token = Amplify.DataStore.publisher(for: Post.self).sink(
            receiveCompletion: { print($0) },
            receiveValue: { event in
                do {
                    let post = try event.decodeModel(as: Post.self)
                    downloadImages(for: [post])
                } catch {
                    print(error)
                }
                
            })
    }
    
}

struct GalleryView_Previews: PreviewProvider {

    static var previews: some View {
        GalleryView().environmentObject(SessionManager())
    }
}
