//
//  TextAndImage.swift
//  Practice-Appcoda
//
//  Created by SIMON Y on 2021/1/30.
//

import SwiftUI

struct TextAndImage: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Spacer()
                View1()
                View2()
            }.navigationBarTitle("Text and Image View")
        }
        
        
        
    }
}

struct TextAndImage_Previews: PreviewProvider {
    static var previews: some View {
        TextAndImage()
    }
}

struct View1: View {
    var body: some View {
        VStack {
            Text("""
Your time is limited, so don't waste it living someone else's life. Don't be trapped by
dogma-which is living with the results of other people's thinking. Don't let the noise of
others' opinions drown out your own inner voice. And most important, have the courage to
follow your heart and intuition.
""")
                .fontWeight(.medium).font(.body)
                // 文字居中对齐
                .multilineTextAlignment(.center)
                // 限制行数
                .lineLimit(3)
                // 设定省略号截断位置
                .truncationMode(.tail)
                // 设置行间距
                .lineSpacing(10)
                .padding()
                .border(Color.yellow)
            
            // 使用系统图片
            Image(systemName: "cloud.heavyrain")
                // 设置大小
                .font(.system(size: 52)).padding()
                // 设置阴影
                .shadow(color: .gray, radius: 10, x: 10, y: 10)
            
            // 非系统图片
            Image("dogs1")
                // 调整图片大小
                .resizable()
                // 保持图片宽高比
                .scaledToFit()
                // 文字重叠
                .overlay(
                    Text("""
If you are lucky enough to have lived in Paris as a young man,
then wherever you go for the rest of your life it stays with you,
for Pairs is a moveable feast.\n\n- Ernest Hemingway
""")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                        .opacity(0.6)
                        .padding(),
                    alignment: .top
                )
            
        }
    }
}

struct View2: View {
    var body: some View {
        VStack {
            // 和 scaledToFit 方法同样的效果
            Image("dogs1").resizable().aspectRatio(contentMode: .fit)
            
            Image("dogs1").resizable()
                // 拉伸
                .aspectRatio(contentMode: .fill).frame(width: 200)
                // 剪裁视图多余部分, 剪成长方形
                .clipped()
            
            Image("dogs1").resizable().aspectRatio(contentMode: .fit).frame(width: 300)
                // 剪裁成圆形
                .clipShape(Circle())
                // 透明度
                .opacity(0.5)
                // 图片重叠
                .overlay(
                    Image(systemName: "heart.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.blue).opacity(0.8)
                )
        }
    }
}
