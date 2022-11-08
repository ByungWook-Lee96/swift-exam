
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
