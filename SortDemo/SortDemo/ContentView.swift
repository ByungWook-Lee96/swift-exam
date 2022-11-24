//
//  ContentView.swift
//  SortDemo
//
//  Created by 병욱 on 2022/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // trailing은 우측 정렬, leading은 좌측 정렬, center는 가운데 정렬(df)
        VStack(alignment: .leading) {
            Text("This is some text")
            Text("This is some longer text")
            Text("This is short")
            
            // 수평 스택에서 firstTextBaseline은 첫줄로 정렬, lastTextBaseline은 마지막줄로 정렬
            HStack(alignment: .firstTextBaseline, spacing: 20){
                Text("This is some text")
                    .font(.largeTitle)
                Text("This is some longer text")
                    .font(.body)
                Text("This is short")
                    .font(.headline)
            }
        }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
