import Foundation
import UIKit

// 변수 생성
var myNumber = 10

// float 변수 생성
var myNumber1: Float = 10.5

// double 변수 생성
var myNumber2: Double = 1234.1234

print(myNumber)
print(myNumber1)
print(myNumber2)

// int32의 최솟값과, 최대값 출력
print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")

// 문자 변수 생성
var myChar1 = "f"
var myChar2 = ":"
var myChar3 = "x"

// 유니코드 사용
var myChar4 = "\u{0058}"

// 문자열 중간에 변수를 넣을 때는 \() 형식을 사용
print("\(myChar1), \(myChar2), \(myChar3), \(myChar4)")

var userName = "Lee"
var inboxCount = 25
var maxCount = 100

var message = "\(userName) has \(inboxCount) message. Message capacity remaining is \(maxCount - inboxCount) messages."

print(message)

// 여러줄 문자열 사용
var multiline = """
    안녕하세요. 여러줄 문자열 사용 예제입니다.

    이렇게 줄 바꿈까지 하면 예제의 내용이 많아집니다.

    그럼 이만
"""

print(multiline)


// 특수 문자/이스케이프 시퀀스
// \n 줄바꿈, \\ 역슬래시, \" 쌍따옴표, \' 홑따옴표

// 상수 let을 사용함
let companyName = "My Company"

// 상수로 타입만 미리 정해둘 수 있음
let bookTitle: String

var iosBookType: Bool = false

if iosBookType {
    bookTitle = "SwiftUI Essentials"
} else {
    bookTitle = "Android Studio Development Essentials"
}
print(bookTitle)

// 튜플 사용
let myTuple = (10, 433.433, "This is a String")

// 튜플 안에서 인덱스 사용
let myString = myTuple.2
print(myString)

// 튜플 안에 값을 상수에 할당
let (myInt, myDouble, myString1) = myTuple
print("\(myInt), \(myDouble), \(myString1)")

// 튜플 안에 일부 값만 변수에 할당
var (myInt1, _, myString2) = myTuple

// 튜플 생성하는 시점에 변수에 할당
let myTuple1 = (count: 10, length:433.433, message: "This is a String")

print(myTuple1.message)


// 옵셔널 타입
var index: Int?

// 옵셔널 index 변수에 래핑되었다 라는 뜻
index = 3

var treeArray = ["Oak", "Pie", "Yew", "Birch"]

// index 값이 없으면 else 부분 출력되고, 있으면 tressArray[index!] 출력됨
if index != nil{
    // 래핑된 값을 사용하기 위해서는 index! 를 사용해야함(강제 언래핑)
    print(treeArray[index!])
} else{
    print("index does not contain a value")
}

// 강제 언래핑을 하지 않기 위해서 옵셔널 바인딩 사용한 방법
if let index = index{
    print(treeArray[index])
} else{
    print("index does not contain a value")
}

// 강제적 언래핑 사용 선언 할 때 ?대신 !사용
var index1: Int!

index1 = 2

if index1 != nil{
    print(treeArray[index1])
} else{
    print("index does not contain a value")
}

// 타입 캐스팅 as!
// let myValue = record.object(forKey: "comment") as! String

// 업 캐스팅: 특정 클래스의 객체가 상위 클래스 중 하나로 변형되는 것
let myButton: UIButton = UIButton()
let myControl = myButton as UIControl

// 다운 캐스팅: 특정 클래스의 객체를 하위 클래스 중 하나로 변환
// 하단의 방법은 업 캐스팅만 가능하고, 다운 캐스팅인 경우는 불가함
//let myScrollView: UIScrollView = UIScrollView()
//let myTextView = myScrollView as UITextView

let myScrollView: UIScrollView = UIScrollView()
let myTextView = myScrollView as! UITextView

// 더 안전한 다운 캐스팅 방법은 옵셔널 바인딩 사용하여 확인 가능
//if let myTextView = myScrollView as? UITextView {
//    print("Type cast to UITextView succeeded")
//} else {
//    print("Type cast to UITextView failed")
//}
