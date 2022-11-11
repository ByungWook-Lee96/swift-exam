
// 함수 예시
func sayHello(){
    print("Hello")
}

sayHello()

// 매개변수가 있는 함수
func buildMessageFor(name: String, count: Int) -> String {
    return "\(name), you are cusmoter number \(count)"
}

print(buildMessageFor(name: "ChulSu", count: 7))

// 단일 표현식인 경우 return 생략 가능
func buildMessageFor1(name: String, count: Int) -> String {
    "\(name), you are cusmoter number \(count)"
}

// 반환된 결과값을 사용하지 않는 경우 _ 사용
_ = buildMessageFor(name: "John", count: 6)

// 지역 매개변수명 사용(기본적으로 name, count가 지역 매개변수)
func buildMessageFor2(name: String, count: Int) -> String {
    return "\(name), you are cusmoter number \(count)"
}

let message = buildMessageFor2(name: "ChulSu", count: 7)
print(message)

// 사용할 때 지역 매개변수도 생략하는 방법(동일한 함수명이여도 매개변수에 다른 함수가 작동함) _ 언더바 공백 입력 후 변수명 작성해야 함

func buildMessageFor2(_ name: String,_ count: Int) -> String {
    return "\(name), you are cusmoter number \(count)"
}

let message1 = buildMessageFor2("ChulSu", 8)
print(message1)

// 외부 매개변수 사용
func buildMessageFor2(userName name: String,userCount count: Int) -> String {
    return "\(name), you are cusmoter number \(count)"
}

let message2 = buildMessageFor2(userName: "ChulSu", userCount: 9)
print(message2)

// 디폴트 매개변수 사용(다른 매개변수는 _사용 불가)
func buildMessageFor2(_ name: String = "Customer", count: Int) -> String {
    return "\(name), you are cusmoter number \(count)"
}

let message3 = buildMessageFor2(count: 10)
print(message3)

// 여러개의 결과값을 반환
func sizeConverter(_ length: Float) -> (yards: Float, centimeters: Float, meters: Float){
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    
    return (yards, centimeters, meters)
}

let lengthTuple = sizeConverter(20)

print(lengthTuple.yards)
print(lengthTuple.centimeters)
print(lengthTuple.meters)

// 가변 매개변수
func displayStrings(_ strings: String...){
    for string in strings{
        print(string)
    }
}

displayStrings("one", "two", "three", "four")

// 변수 매개변수(like 얕은 복사)
var myValue = 10

func doubleValue(_ value: Int) -> Int {
    var value = value
    value += value
    return value
}

print("Before function call myValue = \(myValue)")

print("doubleValue call return \(doubleValue(myValue))")

print("After function call myValue = \(myValue)")

// 입출력 매개변수(like 깊은 복사)
var myValue1 = 10

func doubleValue(_ value: inout Int) -> Int {
    value += value
    return value
}

print("Before function call myValue = \(myValue1)")

print("doubleValue call return \(doubleValue(&myValue1))")

print("After function call myValue = \(myValue1)")

// 매개변수인 함수
func inchesToFeet(_ inches: Float) -> Float{
    return inches * 0.0833333
}

func inchesToYards(_ inches: Float) -> Float{
    return inches * 0.0277778
}

let toFeet = inchesToFeet
let toYards = inchesToYards
let result = toFeet(10)
print(result)

func outputConversion(_ converterFunc: (Float) -> Float, value: Float){ // 함수의 데이터 타입이 (Float) -> Float 임으로 해당 형태로 매개변수를 받음(해당 함수는 반환값이 없음)
    let result = converterFunc(value)
    
    print("Result of conversion is \(result)")
}

outputConversion(toYards, value: 10) // 야드로 변환
outputConversion(toFeet, value: 10) // 피트로 변환

func decideFunction(_ feet: Bool) -> (Float) -> Float{ // 함수의 데이터 타입을 반환함(return이 함수)
    if feet {
        return toFeet
    } else {
        return toYards
    }
}

print(decideFunction(true)(100)) // true 값이 된 함수에 100을 넣은 경우

// 클로저 표현식(함수명 없이 바로 사용), 비동기 메서드 호출에 대한 완료 핸들러를 선언할 때 종종 사용

let sayHi = { print("Hi") }
sayHi()

let multiply = {(_ val1: Int, _ val2: Int) -> Int in
    return val1 * val2
}
let resultMulti = multiply(20,30)
print(resultMulti)

// 클로저, 함수나 클로저 표현식과 같은 독립적인 코드 블록과 코드 불록 주변에 있는 하나 이상의 변수가 결합된 것. 아래의 예시에서 functionB는 counter 변수에 의존하여 functionA는 클로저를 반환
func functionA() -> () -> Int{
    var counter = 0
    
    func functionB() -> Int{
        return counter + 10
    }
    return functionB
}

let myClosure = functionA()
let resultClosure = myClosure()
print(resultClosure)
