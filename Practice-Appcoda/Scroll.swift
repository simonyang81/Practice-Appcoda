//
//  Scroll.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/30.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        VStack {
            
            ScrollHeaderView()
            
            
            ScrollView {
                VStack {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")

                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                    
                    
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                    
                    
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")


                }
            }
        }.navigationBarTitle("Scroll")
        
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}

struct ScrollHeaderView: View {
    var body: some View {
        HStack {
            Text("Your Reading").font(.system(.title, design: .rounded)).fontWeight(.black).foregroundColor(.black)
            Spacer()
        }.padding([.horizontal, .top])
    }
}
