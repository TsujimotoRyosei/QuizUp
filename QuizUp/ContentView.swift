//
//  ContentView.swift
//  QuizUp
//
//  Created by ryosei on 2025/03/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景色
            Color.blue.ignoresSafeArea()

            VStack(spacing: 30) {
                // クイズアプリのタイトル
                Text("クイズチャレンジ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // クイズのイメージアイコン
                Image(systemName: "brain.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                
                // クイズ開始ボタン
                Button(action: {
                    print("クイズ開始！")
                }) {
                    Text("クイズを開始")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: 250)
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                }

                // 設定や履歴ボタン
                HStack {
                    Button(action: {
                        print("設定画面へ")
                    }) {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                    }
                    
                    Spacer().frame(width: 40)
                    
                    Button(action: {
                        print("履歴を表示")
                    }) {
                        Image(systemName: "clock.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                    }
                }
                .padding(.top, 20)
            }
        }
    }
}

#Preview {
    ContentView()
}

