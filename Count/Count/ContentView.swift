//
//  ContentView.swift
//  Count
//
//  Created by ほしょ on 2025/06/18.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    @State var result = ""
    
    var body: some View {
        VStack {
            Text("\(result)")
                .frame(width: 300, height: 100)
                .font(.system(size: 32))
            Text("\(count)")
                .frame(width: 300, height: 100)
                .font(.system(size: 48))
                .foregroundColor(count >= 0 ? .red : .blue)
            HStack{
                Button(action: {
                    count += 1
                    if count >= 5 {
                        result = "プラスの勝ち！"
                    } else if count <= -5 {
                        result = "マイナスの勝ち！"
                    } else {
                        result = ""
                    }
                }) {
                    Text("+")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(.red)
                }
                Button(action: {
                    count -= 1
                    if count >= 5 {
                        result = "プラスの勝ち！"
                    } else if count <= -5 {
                        result = "マイナスの勝ち！"
                    } else {
                        result = ""
                    }
                }) {
                    Text("-")
                        .font(.system(size: 48))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(.blue)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
