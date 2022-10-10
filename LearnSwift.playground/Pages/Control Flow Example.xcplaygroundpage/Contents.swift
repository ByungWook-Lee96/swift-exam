import Foundation

// for ~ in 구문
for index in 1...5 {
    print("Value of index is \(index)")
}
print()

// 참조체가 필요하지 않은 경우
var count = 0

for _ in 1...5 {
    count += 1 // count++ 형식 사용 불가
    print(count)
}
print()


// while 반복문
var myCount = 0

while myCount < 10 {
    myCount += 1
    print(myCount)
}
print()

// repeat ... while 반복문
var i = 10

repeat {
    i -= 1
    print(i)
} while(i > 0)
print()

// 반복문 빠져나오기 break
var j = 10

for _ in 0...100 {
    j += j
    
    if j > 100 {
        break
    }
        print("j = \(j)")
}
print()

// continue 구문
var k = 1

while k < 20 {
    k += 1
    if (k % 2) != 0 {
        continue
    }
    print("k = \(k)")
}
print()


// 조건부 흐름 제어
// if 구문
let x = 10

if x > 9{
    print("x is greater than 9!")
}
print()

// if...else...구문
let y = 5

if y > 9 {
    print("y is greater than 9!")
} else {
    print("y is less than 9!")
}
print()

// if...else if...구문
let z = 9

if x == 10 {
    print("x is 10")
} else if x == 9 {
    print("x is 9")
} else if x == 8 {
    print("x is 8")
}
print()

// guard 구문 불리언 표현식을 포함, true 일 때만 guard 구문 다음에 위치한 코드가 실행되는 것
// gurad 구문 안에서 사용된 number qustnsms guard 구문 밖에서도 유효함
func multiplyByTen(value: Int?) {
    guard let number = value, number < 10 else {
        print("Number is too high")
        return
    }
    
    let result = number * 10
    print(result)
}

multiplyByTen(value: 5)

