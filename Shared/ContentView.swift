//
//  ContentView.swift
//  Shared
//
//  Created by Furkan Arabaci on 13/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageView()
        }
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: UIViewRepresentableContext<TextView>) -> UITextView {
        return UITextView()
    }

    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<TextView>) {
        uiView.text = text
        uiView.backgroundColor = UIColor.red
    }
}

struct ImageView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<ImageView>) -> UIImageView {
        let image: UIImage = UIImage(named: "TestCat")!
        return UIImageView(image: image)
    }
    
    func updateUIView(_ uiView: UIImageView, context: UIViewRepresentableContext<ImageView>) {
        
    }
}
