//
//  TimerData.swift
//  ObservableDemo
//
//  Created by 병욱 on 2022/11/24.
//

import Foundation
import Combine

class TimerData: ObservableObject{
    
    @Published var timeCount = 0  // Published 프로퍼티 래퍼로 선언되어 프로젝트 내에 있는 뷰에서 사용 가능
    var timer: Timer?
    
    // 매 초마다 timerDidFire() 함수 호출하는 초기화
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerDidFire), userInfo: nil, repeats: true)
    }
    
    // timeCount 증가 시키는 함수
    @objc func timerDidFire(){
        timeCount += 1
    }
    
    // timeCount 리셋하는 함수
    func resetCount(){
        timeCount = 0
    }
}
