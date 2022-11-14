//
//  ContentView.swift
//  DemoProject
//
//  Created by 병욱 on 2022/11/14.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                // 폰트 설정
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // 여러개의 디바이스 미리보기
        Group{
            ContentView()
                // iPhone SE 디바이스 선택
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            
            ContentView()
                // iPhone 11 디바이스 선택
                .previewDevice(PreviewDevice(rawValue: "iPhone pro"))
                .previewDisplayName("iPhone 14 pro")
        }
    }
}
