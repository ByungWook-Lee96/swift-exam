//
//  ContentView.swift
//  ObservableDemo
//
//  Created by 병욱 on 2022/11/24.
//

import SwiftUI

struct ContentView: View {
    
//    @ObservedObject var timerData: TimerData = TimerData()  // ObservedObject 프로퍼티 생성
    @EnvironmentObject var timerData: TimerData  // EnvironmentObject 프로퍼티 생성
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                Text("Timer count = \(timerData.timeCount)")  // 타이머 증가
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                // 버튼 클릭 시 resetCount 함수 진행
                Button(action: resetCount){
                    Text("Reset Counter")
                }
                // 네비게이션 링크의 목적지를 SecondView로 연결하고, 연결할 때 timerData를 같이 보냄(SecondView(timerData: TimerData()) 형태) -> ObservedObject인 경우 지금은 EnvironmentObject
                NavigationLink(destination: SecondView()){
                    Text("Next Screen")
                }
                .padding()
            }
        }
        
    }
    // timerData의 resetCount 함수 실행
    func resetCount() {
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())  // EnvironmentObject 사용
    }
}
