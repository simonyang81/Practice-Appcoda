//
//  HScroll.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/31.
//

import SwiftUI

struct HScroll: View {
    var body: some View {
        
        VStack(alignment:.center) {
            ScrollHeaderView()
            
            Spacer()
            
            ScrollView(.horizontal) {
                HStack {
                    CardGroupView()
                }
            }
            
            Spacer()
                        
        }
        
        
    }
}

struct HScroll_Previews: PreviewProvider {
    static var previews: some View {
        HScroll()
    }
}

struct CardGroupView: View {
    var body: some View {
        Group {
            CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
            
            CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
            
            CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
            
            
            CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
            
            
        }.frame(width: 300)
    }
}
