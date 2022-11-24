//
//  SecondView.swift
//  ObservableDemo
//
//  Created by 병욱 on 2022/11/24.
//

import SwiftUI

struct SecondView: View {
    
//    @ObservedObject var timerData: TimerData
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack{
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
//        SecondView(timerData: TimerData())  // 두번째 뷰에서 TimerData를 사용하기 위해서는 timerData: TimerData() 형식으로 받아야 함
        SecondView().environmentObject(TimerData())  // EnvironmentObject 사용하여 TimerData() 참조체로 받지 않아도 됨(해당 뷰를 사용할 때 참조 안해도됨)
    }
}
