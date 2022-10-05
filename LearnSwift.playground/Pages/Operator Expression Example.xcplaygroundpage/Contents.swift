
import Foundation

// 표현식 구문
var myResult = 1 + 2

// 옵셔널 x 변수 생성
var x: Int?
var y = 20
x = 10
print(x!)
// 옵셔널 x 변수에 y 덧셈
x = x! + y
print(x!)
// y 값을 x에 대입
x = y
print(x!)

// 산술, 복합 할당(+=, %=...), 비교(==, >=...), 불리언 논리(||, &&...)는 다른 언어들과 동일하게 사용하여 넘어감

// 범위 연산자(1,2,3,4,5)
1...5
for num in 1...5{
    print(num)
}
// 반 개발 범위 연산자(1,2,3,4)
1..<5

// 단방향 범위 연산자(1,2,3,4,5,6...)
1...
...5

// 삼항 연산자
let a = 10
let b = 20

// a가 크면 a 출력 b가 크면 b 출력
print("Largest number is \(a > b ? a : b)")


// 비트 연산자

