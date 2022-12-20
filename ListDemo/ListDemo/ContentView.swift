//
//  ContentView.swift
//  ListDemo
//
//  Created by 병욱 on 2022/12/19.
//

import SwiftUI

// id와 task, imageName을 받는 구조체(Identifiable을 사용하기 위해서는 고유 식별하는 것 필요 -> UUID 사용)
struct ToDoItem : Identifiable{
    var id = UUID()
    var task: String
    var imageName: String
}

// 리스트 데이터
var listData: [ToDoItem] = [
        ToDoItem(task: "음식물쓰레기 버리기", imageName: "trash.fill"),
        ToDoItem(task: "SwiftUI 공부하기", imageName: "book.fill"),
        ToDoItem(task: "12시에 꿀잠자기", imageName: "bed.double.fill"),
        ToDoItem(task: "쇼핑하기", imageName: "bag.fill")
]

struct ContentView: View {
    
    @State var toggleStatus = true  // 토글 버튼 생성하기 위해서 State 변수 생성
    
    var body: some View {
        // 항목을 터치하여 이동하게 만들기 위해서는 NavigationView 사용해야 함
        NavigationView{
            List{
                // 섹션 만들기
                Section(header: Text("설정")){
                    // 토글 버튼
                    Toggle(isOn: $toggleStatus){
                        Text("Allow Notifications")
                    }
                }
                Section(header: Text("To Do Tasks")){
                    // 리스트에 리스트 데이터 사용, ForEach 사용하여 정적 항목 선언
                    ForEach(listData) { item in
                        HStack{
                            // 클릭 시 다음 페이지 출력되고, 해당 task가 text로 출력됨
                            NavigationLink(destination: Text(item.task)){
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)  // 항목 삭제
                    .onMove(perform: moveItem)  // 항목 이동
                }
            }
            .navigationBarTitle(Text("To Do List"))  // 네비게이션 타이틀 추가
            .navigationBarItems(trailing: EditButton())  // edit버튼 추가
        }

        
    }
    // 삭제하는 함수
    // IndexSet은 인덱스 전달 시 사용하는 것으로 반드시 매개변수로 받아야 함
    func deleteItem(at offsets: IndexSet){
        // 데이터 소스에서 항목 삭제하는 코드
    }
    // 수정하는 함수(항목 이동)
    // IndextSet은 이동해야되는 항목의 인덱스를 받아야 하여 반드시 매개변수로 받아야 함
    func moveItem(from source: IndexSet, to destination: Int){
        // 항목 재배열하는 코드
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
