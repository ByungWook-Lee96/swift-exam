import Foundation

// switch 예제
let value = 4

switch (value) {
    case 0:
        print("zero")
    case 1:
        print("one")
    case 2:
        print("two")
    case 3:
        print("three")
    case 4:
        print("four")
    case 5:
        print("five")
    default:
        print("Integer out of range")
}

// case 구문 결합
let value1 = 1

switch (value1) {
    case 0, 1, 2:
        print("zero, one or two")
    case 3:
        print("three")
    case 4:
        print("four")
    case 5:
        print("five")
    default:
        print("Integer out of range")
}

// switch 구문에서 범위 매칭
let temperature = 83

switch (temperature) {
    case 0...49:
        print("cold")
    case 50...79:
        print("Warm")
    case 80...110:
        print("Hot")
    default:
        print("Temperature out of range")
}

// where 구문
let temperature1 = 53

switch (temperature1) {
    case 0...49 where temperature1 % 2 == 0:
        print("Cold and even")
    case 50...79 where temperature1 % 2 == 0:
        print("Warm and even")
    case 80...110 where temperature1 % 2 == 0:
        print("Hot and even")
    default:
        print("Temperature out of range or odd")
}

// fallthrough  실행 흐름이 그 다음의 case 구문으로 계속 진행하게 할 수 있음
// default는 필수로 작성해야되며, 내용이 없는 경우 break 사용해야됨
let temperature2 = 10

switch (temperature2) {
    case 0...49 where temperature1 % 2 == 0:
        print("Cold and even")
        fallthrough
    case 50...79 where temperature1 % 2 == 0:
        print("Warm and even")
        fallthrough
    case 80...110 where temperature1 % 2 == 0:
        print("Hot and even")
        fallthrough
    default:
        break
}
