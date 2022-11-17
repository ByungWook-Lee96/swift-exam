//
//  ContentView.swift
//  ViewTest
//
//  Created by MK-Mac-384 on 2022/11/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let myString: String = "Welcome to SwirftUI"  // 해당 형식으로 작성하면 return 을 작성해야됨
        return MyVStack{  // MyVStack을 여기서 사용
            Text("Hello, world!")
                .padding()
            Text("World!")
                .font(.custom("Copperplate", size: 70))  // 폰트 + 고정된 크기 font만 적용이 됨
                .padding() // 주변 공백 추가
                .border(Color.black)  // 검정색 경계선
                .padding() // 위 아래 공백 추가
            Text(myString)
                .modifier(StandardTitle()) // 커스텀 수정자 사용
            MyHStackView()
                .font(.largeTitle)  // 불러온 부분도 설정 가능
            Button(action: buttonPressed){
                Text("Click Me")
            }
            
            // 클로저로 버튼 생성(image 버튼
            Button(action: {
                print("hello")  // 동작할 코드
            }){
                Image(systemName: "square.and.arrow.down")
            }
            Text("onAppear onDisapper")
                .onAppear(perform: {
                    // 뷰가 나타날 대 수행되는 코드
                })
                .onDisappear(perform: {
                    // 뷰가 사라질 때 수행되는 코드
                })
            
            
        }
    }
    // 버튼 이벤트 정석
    func buttonPressed(){
        // 동작 코드
    }
}
// viewBuilder 사용 -> 이해해야됨.. 초기화 같은데 확인 필요!
struct MyVStack<Content: View>: View{
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    var body: some View{
        VStack(spacing: 10){
            content()
        }
        .font(.largeTitle)
    }
}


// 공통적으로 사용할 커스텀 수정자
struct StandardTitle: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y:5)
    }
}

// 따로 View를 추가해서 사용 가능
struct MyHStackView: View{
    var body: some View {
        // 프로퍼티 형식으로 선언하고 사용 가능
        let carStack = VStack{
            Text("Car Image")
            Image(systemName: "car.fill")
                .resizable()  // 변경 가능하게
                .aspectRatio(contentMode: .fit) // 정비율
        }
        HStack{
            Text("Text3")
                .font(.largeTitle)
            Text("Text4")
                .font(.headline)
                .foregroundColor(.red)
            carStack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
