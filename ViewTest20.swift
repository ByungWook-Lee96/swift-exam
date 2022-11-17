//
//  ViewTest20.swift
//  ViewTest
//
//  Created by MK-Mac-384 on 2022/11/17.
//

import SwiftUI

struct ViewTest20: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            VStack {
                Image(systemName: "goforward.10")
                    .padding()  // 위 아래 좌우 패딩 설정됨
                Image(systemName: "goforward.15")
                    .padding(10)
                Image(systemName: "goforward.30")
                    .padding(.top, 10)  // 특정 방향만, 10 패딩
            }
            Spacer()
            VStack{
                Text("Title")
                
            }
            Text("body")
        }
        
    }
}

struct ViewTest20_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest20()
    }
}
