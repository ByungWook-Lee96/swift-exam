// 클래스 class명은 UpperCamelCase 첫번째 문자도 대문자로 선언
class BankAccount{
    // 저장 프로퍼티
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    // 연산 프로퍼티
    var balanceLessFees: Float{
        get {
            return accountBalance - fees
        }
        set(newBalance){
            accountBalance = newBalance - fees
        }
    }
    
    // 초기화 메서드
    init(number: Int, balance: Float){
        accountNumber = number
        accountBalance = balance
    }
    
    // 소멸자 클래스 인스턴스가 없어지기 전에 해야될 작업을 구현
    deinit{
        
    }
    // 인스턴스 메서드
    func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    // 타입 메서드
    class func getMaxBalance() -> Float{
        return 100000.00
    }
}
// 클래스 인스턴스 선언 및 초기화
var account1: BankAccount = BankAccount(number: 100100100100, balance: 400.54)
// 클래스 인스턴스에서 메서드 호출
account1.displayBalance()

// 프로퍼티 접근(점 표기법)
var balance1 = account1.accountBalance
account1.accountBalance = 6789.98
account1.displayBalance()

// 타입 메서드(class func)은 클래스 인스턴스가 아닌 클래스에서 호출해야 함
var maxAllowed = BankAccount.getMaxBalance()
print(maxAllowed)

// 연산 프로퍼티 사용
var balance2 = account1.balanceLessFees
account1.balanceLessFees = 123123.12
account1.displayBalance()


// 클로저로 초기화 시 최초 접근 시에서만 초기화(lazy) -> 지연 프로퍼티


// self 사용은 필수가 아님 프로퍼티와 동일한 매개변수를 가졌을 때는 필수
class MyClass{
    var myNumber = 10
    
    func addTen(myNumber: Int){
        print(myNumber)  // 함수의 매개변수 값 출력
        print(self.myNumber) // 클래스 프로퍼티 값 출력
    }
}
var myClass1 = MyClass()
myClass1.addTen(myNumber: 12)

// 프로토콜. 프로토콜을 사용 시 프로토콜 안에 있는 프로퍼티와 메서드를 사용해야 함
protocol MessageBuilder{
    
    var name: String{ get }
    func buildMessage() -> String
}

// 위의 프로토콜을 사용하는 예시
class MyProject: MessageBuilder{
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func buildMessage() -> String {
        return "Hello " + name
    }
    
}

var myProject1 = MyProject(name: "Kevin")
print(myProject1.buildMessage())


// 불투명 반환 타입 -> 반환 타입을 유연하게 가능
func doubleFunc1(value: Int) -> some Equatable{
    value * 2
}

func doubleFunc2(value: String) -> some Equatable{
    value + value
}

let intOne = doubleFunc1(value: 10)
let stringOne = doubleFunc2(value: "Hello")

print(intOne)
print(stringOne)
