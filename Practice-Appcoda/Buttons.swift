//
//  Buttons.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/31.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        
        VStack {
            Button(action: {
                print("Click Button")
            }) {
                Text("I'm a button")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(10)
                
            }.padding(.bottom)
            
            Button(action: {
                print("Client trash iamge")
            }) {
                Image(systemName: "trash")
                    .font(.largeTitle)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                
            }.padding(.bottom)
            
            Button(action: {
                print("Click Text Button")
            }) {
                
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    
                    Text("Delete").font(.title).fontWeight(.semibold)
                    
                }.padding().background(Color.red).foregroundColor(.white).cornerRadius(40)
            }

            Button(action: {
                print("Click Text Button")
            }) {
                
                HStack {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                    
                    Text("Edit").font(.title).fontWeight(.semibold)
                    
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                
                // 背景使用渐变色
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .foregroundColor(.white)
                .cornerRadius(40)
            }.padding()

            
        }
        
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
