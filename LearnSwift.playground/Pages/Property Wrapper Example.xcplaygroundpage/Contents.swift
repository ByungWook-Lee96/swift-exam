import Foundation

// 프로퍼티 래퍼는 재사용을 하기 위해서 사용하는 것, 어노테이션 형태로 사용 가능
struct Address{
    private var cityname: String = ""
    
    var city: String{
        get{ cityname }
        set{ cityname = newValue.uppercased()} // newValue란 set의 파라미터를 안 썼을 때 set의 임시 파라미터라고 생각하면 됨
    }
}

var address = Address()

address.city = "London"
print(address.city)

@propertyWrapper
struct FixCase{
    private(set) var value: String = ""
    
    var wrappedValue: String{
        get{ value }
        set{ value = newValue.uppercased()}
    }
    
    init(wrappedValue initialValue: String){
        self.wrappedValue = initialValue
    }
}

struct Contact{
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var county: String
}

var contact = Contact(name: "John", city: "London", county: "Korea")
print("\(contact.name), \(contact.city), \(contact.county)")

// 프로퍼티 래퍼는 또한 일반형 <T> 같은 것
// 아래의 코드로 다양한 자료형에 적용 가능
@propertyWrapper
struct MinMaxVal<V: Comparable>{
    var value: V
    var max: V
    var min: V
    
    init(wrappedValue: V, min: V, max: V){
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V{
        get{ return value }
        set{
            if newValue > max{
                value = max
            } else if newValue < min{
                value = min
            } else {
                value = newValue
            }
        }
    }
}

// Int 사용
struct Demo{
    @MinMaxVal(min: 100, max: 200) var value: Int = 100
}

var demo = Demo()
demo.value = 150
print(demo.value)

demo.value = 250
print(demo.value)

// String 사용
struct StrDemo{
    @MinMaxVal(min: "Apple", max: "Orange") var value: String = ""
}

var demo1 = StrDemo()
demo1.value = "Banana"
print(demo1.value)  // Banana 출력됨

demo1.value = "Pear"
print(demo1.value)  // Orange 출력됨

// 날짜 사용
struct DateDemo{
    @MinMaxVal(min: Date(), max: Calendar.current.date(byAdding: .month, value: 1, to: Date())! ) var value: Date = Date()
}

var dateDemo = DateDemo()
print(dateDemo.value)  // 현재 날짜 설정됨

dateDemo.value = Calendar.current.date(byAdding: .day, value: 10, to: Date())!  // 10일 후 날짜 설정
print(dateDemo.value)  // 10일 뒤 날짜 출력됨

dateDemo.value = Calendar.current.date(byAdding: .month, value: 2, to: Date())!  // 2달 후 날짜 설정
print(dateDemo.value)  // 최대는 1달임으로 1달뒤가 출력됨
 
