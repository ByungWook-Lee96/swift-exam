// struct 와 class는 비슷함, 구조체는 멀티 스레드 코드 사용할 때 안정적 하지만 상속 또는 데이터 캡슐화, 소멸될 때 리소스 확보를 위해서는 class 사용해야됨
// struct는 값 타입
struct SampleStruct{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

let myStruct1 = SampleStruct(name: "Mark")
var myStruct2 = myStruct1 // 값이 참조가 아닌 복사가 됨
myStruct2.name = "David"

print(myStruct1.name)  // Mark 출력됨
print(myStruct2.name)  // David 출력됨

// class 참조 타입
class SampleClass{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name)  // David 출력됨
print(myClass2.name)  // David 출력됨
