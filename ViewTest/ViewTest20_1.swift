//
//  SwiftUIView20_1.swift
//  ViewTest
//
//  Created by MK-Mac-384 on 2022/11/17.
//

import SwiftUI

struct ViewTest20_1: View {
    var body: some View {
        VStack(){
            VStack(alignment: .center, spacing: 15){
                Group{  // 하위 뷰가 10개로 제한되기 때문에 조금씩 그룹화하는게 좋음
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
            }
            .padding(5)
            
            HStack{
                Image(systemName: "airplane")
                Text("Flight times: ")
                Text("London")
                Text("And France").layoutPriority(1)  // 사용 시 해당 문자는 무조건 출력

            }
            .font(.largeTitle)
            .lineLimit(1)  // 1줄로 출력되게 고정(공간 부족 시 텍스트 잘려서 출력됨(layoutPrioty 사용)
            Text("Hello World People")
                .font(.largeTitle)
//                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)  // 글자가 길어져도 무한대로 커버 가능한 틀(단, text 영역 전부를 커버함..)
                .border(Color.black, width: 5)  // 경계선
//                .frame(width: 100, height: 100, alignment: .center)  // 틀을 만들 수 있음 -> 글자가 길어지면 잘리는 현상 발생
                .frame(minWidth: 100, maxWidth: 300, minHeight: 100, maxHeight: 300, alignment: .center)  // 글자가 길어져도 300까지는 커버 가능한 틀
                .edgesIgnoringSafeArea(.all)  // frame이 가지고 있는 안전 영역을 벗어나는 부분의 처리가 필요할때 사용(ex. 노치 영역)
                
        }

        .padding(5)
    }
}

struct ViewTest20_1_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest20_1()
    }
}
