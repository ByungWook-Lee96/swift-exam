// 상속
// 기존 BankAccount 클래스를 상속함
class BankAccount{

    var accountBalance: Float = 0
    var accountNumber: Int = 0
    
    init(number: Int, balance: Float){
        accountNumber = number
        accountBalance = balance
    }

    func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }

}

// BankAccount 상속하여 저축계좌 클래스 생성(SavingsAccount)
class SavingsAccount: BankAccount{
    
    var interestRate: Float
    
    // 초기화도 super 받아서 가능(단, 새로운 매개변수 먼저 초기화 후 super 사용)
    init(number: Int, balance: Float, rate: Float){
        interestRate = rate
        super.init(number: number, balance: balance)
    }
    
    func calculateInterser() -> Float{
        return interestRate * accountBalance
    }
    
    // 오버라이드. 조건: 부모 클래스 메서드와 매개변수 타입 일치, 반환타입 일치
    override func displayBalance() {
        super.displayBalance()
        print("Prevailing interest rate is \(interestRate)")
    }
    
}
var savings1 = SavingsAccount(number: 123123123, balance: 5000, rate: 10)
print(savings1.calculateInterser())
savings1.displayBalance()


// extension 아래의 예시는 표준 Double 익스텐션 클래스
// extension은 기존 클래스에 확장을 한다고 생각하면 됨
extension Double{
    
    var squared: Double{
        return self * self
    }
    
    var cubed: Double{
        return self * self * self
    }
}

let myValue: Double = 3.0
print(myValue.squared)

print(3.0.squared)
print(9.0.cubed)

// 기존 SavingsAccount 클래스에 확장
extension SavingsAccount{
    
    func printInterest(){
        print("Interest rate is \(interestRate)")
    }
    
}

var savings2 = SavingsAccount(number: 123123123, balance: 5000, rate: 10)
print(savings2.printInterest())
