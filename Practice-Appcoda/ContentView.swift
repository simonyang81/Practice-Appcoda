//
//  ContentView.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //        ScrollView {
        
        NavigationView {
            
            ScrollView {
                
                VStack {
                    Spacer()
                    NavigationLink(destination: TextAndImage()) {
                        Text("Text and Iamge View")
                    }.padding()
                    
                    NavigationLink(
                        destination: Stacks()) {
                        Text("Stacks")
                    }.padding(.bottom)
                    
                    NavigationLink(destination: Scroll()) {
                        Text("Scroll")
                    }.padding(.bottom)
                    
                    NavigationLink(destination: HScroll()) {
                        Text("Horizontal Scroll")
                    }.padding(.bottom)
                    
                    NavigationLink(destination: Buttons()) {
                        Text("Button Views")
                    }.padding(.bottom)
                    
                    NavigationLink(destination: PracticeState()) {
                        Text("State")
                    }.padding(.bottom)
                    
                    
                }.navigationBarTitle(Text("Home"), displayMode: .inline)
            }
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
