//
//  SwiftUIView20_1.swift
//  ViewTest
//
//  Created by MK-Mac-384 on 2022/11/17.
//

import SwiftUI

struct ViewTest20_1: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Text("Financial Results")
                .font(.title)
            HStack(alignment: .top){
                Text("Q1 Sales")
                    .font(.headline)  // bold? 같음
                Spacer()
                VStack(alignment: .leading){
                    Text("January")
                    Text("February")
                    Text("March")
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("$10000")
                    Text("$200")
                    Text("$3000")
                }
                .padding(5)
            }
            .padding(5)
        }
        .padding(5)
    }
}

struct ViewTest20_1_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest20_1()
    }
}
