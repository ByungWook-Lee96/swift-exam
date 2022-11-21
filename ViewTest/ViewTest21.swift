//
//  ViewTest21.swift
//  ViewTest
//
//  Created by 병욱 on 2022/11/21.
//

import SwiftUI
import Combine  // Observable 선언하기 위한 임포트

// 상태 프로퍼티와 달리 영구적인 테이터 사용 가능 ObservableObject
// EnvironmentObject의 경우 모든 뷰 사용 가능(왠만하면 안 쓰는게 좋을 것 같음)
class DemoData: ObservableObject{
    
    // 프로퍼티를 게시
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init(){
        // 데이터를 초기화하는 코드
        updateData()
    }
    func updateData(){
        // 데이터를 최신 상태로 유지하기 위한 코드
    }
}

struct ViewTest21: View {
    
    // 상태 프로퍼티 (String이나 Int 값처럼 간단한 데이터 타입 저장하기 위해 사용)
    // 해당 부분이 사라지면 하위 뷰에서도 사용 불가
    @State private var wifiEnabled = true
    @State private var userName = ""
    
    var body: some View {
        VStack{
            // wifiEnabled 상태 프로퍼티를 토글버튼으로 받음
            Toggle(isOn: $wifiEnabled){
                Text("Enable Wi-Fi")
            }
            TextField("Enter user name", text: $userName)  // 상태 프로퍼티와의 바인딩($)
            Text(userName)  // 여기서는 이미 userName 상태 프로퍼티에 입력된 값을 참조하는 것
            WifiImageView(wifiEnabled: $wifiEnabled)  // 상태 프로퍼티 바인딩 전달

        }
    }
}

// 메인 뷰가 아니라 상태 프로퍼티는 불가하여 바인딩 프로퍼티 래퍼 사용
struct WifiImageView: View{
    
    @Binding var wifiEnabled: Bool  // @Binding 프로퍼티 래퍼 사용하여 프로퍼티 선언
    
    var body: some View{
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")  // 해당 프로퍼티가 true면 systemName이 wifi 이미지 출력, false면 systemNamedl wifi.slash 이미지 출력
    }
}

struct ViewTest21_Previews: PreviewProvider {
    static var previews: some View {
        ViewTest21()  //
    }
}
