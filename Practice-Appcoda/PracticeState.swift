//
//  PracticeState.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/31.
//

import SwiftUI

struct PracticeState: View {
    
    @State var isPlaying = false
    @State var counter = 0
    
    var body: some View {
        VStack {
            
            Button(action: {
                
                isPlaying.toggle()
//                isPlaying = true
                
            }) {
                Image(systemName: isPlaying ?  "stop.circle.fill": "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isPlaying ? .red : .green)
            }.padding(.bottom)
            
            
            Button(action: {
                
                self.counter += 1
                
            }) {
                
                CounterView(counter: self.$counter)
                
            }

            
            Button(action: {
                
                self.counter += 1
                
            }) {
                
                CounterView(counter: self.$counter)
                
            }

            
                
        }
        
    }
}

struct PracticeState_Previews: PreviewProvider {
    static var previews: some View {
        PracticeState()
    }
}

struct CounterView: View {
    
    /*
     * 使用Binding注解，传参数，传的是参数的引用地址
     *
     * 在Swift中值的传递形式是值类型传递方式，
     * 也就是传递给子节点的是一个拷贝过的值。
     * 但是通过 @Binding 修饰器修饰后，属性变成了一个引用类型
     */
    @Binding var counter: Int
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(.red)
            .overlay(
                Text("\(self.counter)").font(.system(size: 40, weight: .bold, design: .rounded)).foregroundColor(.white).minimumScaleFactor(0.02)
            )
    }
}
