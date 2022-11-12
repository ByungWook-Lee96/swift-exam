import UIKit

var greeting = "Hello, playground"

print("Welcome to Swift")

var x = 10

for index in 1...20 {
    let y = index * x
    x -= 1
    print(y)
}


// '//:' 사용하면 서식있는 주석 사용 가능 '/*: */' 줄바꿈하기 위해서는 해당 주석 사용
// Editor > Show Rendered Markup 클릭 시 변경됨
//: 서식 있는 주석은 이렇게 사용
// 이렇게 변경 할 수 있음 일반 주석은 // 사용
/*:
 # 제목
 내용
 * 나누는 부분
 * 나누는 부분2
 */


// playground 실행 단축키 command + shift + enter
