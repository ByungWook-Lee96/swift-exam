import Foundation

// 딕셔너리 컬렉션, 키-값 형태, String, Int, Double, Bool 데이터 타입만 사용 가능
var bookDict = ["100-432112" : "Wind in the Willows",
                "200-532874" : "Tale of Two Cities",
                "202-546549" : "Sense and Sen",
                "104-109834" : "Shutter Island"]

// 처음부터 자료형 선택 가능
var bookDict1: [String: String] = ["100-432112" : "Wind in the Willows",
                                   "200-532874" : "Tale of Two Cities",
                                   "202-546549" : "Sense and Sen",
                                   "104-109834" : "Shutter Island"]

// 빈 딕셔너리 생성
var myDictionary = [Int: String]()

// 배열 + 배열 zip -> 딕셔너리 탄생
let keys = ["100-432112", "200-532874", "202-546549", "104-109834"]
let values = ["Wind in the Willows", "Tale of Two Cities", "Sense and Sen", "Shutter Island"]

let bookDict2 = Dictionary(uniqueKeysWithValues: zip(keys, values))  // Dictionary(uniqueKeysWithValues: zip(배열1, 배열2)) 형태로 사용

// key 값이 없이 1부터 시작하는 딕셔너리(인덱스 위치는 랜덤으로 됨. 인덱스 별로 안 써서 상관은 없네요)
let bookDict3 = Dictionary(uniqueKeysWithValues: zip(1..., values))

for result in bookDict3{
    print(result.key, result.value)
}

// 딕셔너리 항목 개수
print(bookDict3.count)

// 딕셔너리 항목 접근
print(bookDict1["200-532874"]!)

// 딕셔너리 항목 접근 해당 값이 없는 경우 디폴트 사용
print(bookDict1["999-546547", default: "Book not found"])

// 직접 키를 입력해서 값 변경 가능
bookDict1["200-532874"] = "Sense and Sensibility"

// 값 변경 다른 방법
bookDict1.updateValue("The Ruins", forKey: "200-532874")

for result in bookDict1{
    print(result.key, result.value)
}
print()

// 딕셔너리 항목 추가
bookDict1["300-898871"] = "The Overlook"

// 딕셔너리 항목 삭제 nil 할당 또는 removeValue 사용
bookDict1["300-898871"] = nil
bookDict1.removeValue(forKey: "200-532874")

for result in bookDict1{
    print(result.key, result.value)
}

// 딕셔너리 반복
for (bookid, title) in bookDict1{
    print("Book ID: \(bookid) Title: \(title)")
}
