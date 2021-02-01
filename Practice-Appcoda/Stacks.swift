//
//  Stacks.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/30.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        
        VStack {
            HeaderView()
            
            HStack {
                PriceView(title: "Basic", price: "$9", txtColor: .white, bgColor: .purple)
                
                
                ZStack {
                    PriceView(title: "Pro", price: "$19", txtColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    
                    Text("Best for designer").font(.system(.caption, design: .rounded)).fontWeight(.bold).foregroundColor(.white).padding(3).background(Color(red: 255/255, green: 183/255, blue: 37/255)).offset(x: 0, y: 88)
                }
            }.padding(.horizontal)
            
            ZStack {
                PriceView(title: "Team", price: "$299", txtColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                
                Text("Perfect for teams with 20 members").font(.system(.caption, design: .rounded)).fontWeight(.bold).foregroundColor(.white).padding(3).background(Color(red: 255/255, green: 183/255, blue: 37/255)).offset(x: 0, y: 88)
            }.padding()
            
            Spacer()
            
            
            
        }
        
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose").font(.system(.largeTitle, design: .rounded)).fontWeight(.black)
                Text("Your Plan").font(.system(.largeTitle, design: .rounded)).fontWeight(.black)
            }
            Spacer()
        }.padding()
    }
}

struct PriceView: View {
    
    var title: String
    var price: String
    var txtColor: Color
    var bgColor: Color
    
    var icon: String?
    
    var body: some View {
        //        HStack {
        VStack {
            if let icon = icon {
                Image(systemName: icon).font(.largeTitle).foregroundColor(txtColor)
            }
            
            Text(title).font(.system(.title, design: .rounded)).fontWeight(.black).foregroundColor(txtColor)
            Text(price).font(.system(size: 40, weight: .heavy, design: .rounded)).fontWeight(.black).foregroundColor(txtColor)
            Text("per month").font(.headline).foregroundColor(txtColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
        
        //            VStack {
        //                Text("Pro").font(.system(.title, design: .rounded)).fontWeight(.black)
        //                Text("$19").font(.system(size: 40, weight: .heavy, design: .rounded)).fontWeight(.black)
        //                Text("per month").font(.headline).foregroundColor(.gray)
        //            }
        //            .padding(40)
        //            .background(Color(red: 240/255, green: 240/255, blue: 240/255))
        //            .cornerRadius(10)
        //        }.padding(.horizontal)
    }
}
