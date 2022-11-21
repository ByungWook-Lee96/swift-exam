//
//  ViewTest20_2.swift
//  ViewTest
//
//  Created by 병욱 on 2022/11/21.
//

import SwiftUI

struct ViewTest20_2: View {
    var body: some View {
        // GeometryReader를 이용하여 프레임을 감쌀 수 있음(컨테이너의 크기 식별하는 reader 사용)
        GeometryReader{ geometry in
            VStack{
                Text("Hello World, how are you?")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 2,
                           height: (geometry.size.height / 4) * 2)
                    .border(Color.black)
                Text("Goodbye World")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 3,
                           height: geometry.size.height / 4)
                    .border(Color.black)
            }
            
        }
    }
}

struct ViewTest20_2_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest20_2()
    }
}
