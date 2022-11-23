//
//  ContentView.swift
//  SwiftDemo
//
//  Created by 병욱 on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.black, .red, .green, .blue]  // 픽커 색상
    var colornames = ["Black", "Red", "Green", "Blue"]  // 픽커 색상명
    
    @State private var colorIndex = 0  // 픽커 사용
    @State private var rotation: Double = 0  // 슬라이더를 사용하기 위해 상태 프로퍼티 생성
    @State private var text: String = "Welcom to SwiftUI"  // textField 디폴트 값 상태 프로퍼티
    
    var body: some View {
                    VStack {
                        Spacer()  // 가변적으로 공간을 두는 것
                        Text("Hello, world!")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .rotationEffect(.degrees(self.rotation))  // 텍스트 회전을 슬라이더에 사용한 상태 프로퍼티를 이용하여 슬라이더 움직이면 텍스트 회전
                            .animation(.easeOut(duration: 3))  // 느리게 움직이기 애니메이션(3초 후에 도착)
                            .foregroundColor(self.colors[self.colorIndex])  // 픽커에서 선택된 colorindex 값이 colors 변수에 있는 인덱스가 되면서 텍스트 색 변경
                        Spacer()  // 가변적으로 공간을 두는 것
                        Divider()  // 나누어지는 선
                        Slider(value: $rotation, in: 0 ... 360, step: 0.1)  // 슬라이더 생성 및 범위 지정
                            .padding()
                        TextField("Enter text here", text: $text)  // textField 삽입, placeholder 입력
                            .textFieldStyle(RoundedBorderTextFieldStyle())  // 약간 넓어짐
                            .border(Color.black)  // textFieldStyle 확인용
                            .padding()
                        HStack(){
                            Text("Color")
                            // 선택할 수 있는 픽커 생성, 현재 픽커에서 선택된 color값이 colorIndex에 들어감
                            Picker("Color",selection: $colorIndex) {
                                // ForEach를 사용하여 상태 프로퍼티인 colorIndex에 저장 colornames에 색상이름까지 표시
                                ForEach(0 ..< colornames.count){
                                    Text(self.colornames[$0])
                                        .foregroundColor(self.colors[$0])

                                }
                            }
                            .pickerStyle(.wheel)  // 휠로 변경
                            .padding()
                        }

                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
