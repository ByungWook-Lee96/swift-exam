import Foundation

// 배열의 기본형
// 가변형(var 사용)
var treeArray = ["Pine", "Oak", "Yew"]

// 불변형(let 사용)
let treeArray1 = ["Pine", "Oak", "Yew"]

// 타입 입력 가능
var treeArray2: [String] = ["Pine", "Oak", "Yew"]

// 빈 배열도 할당 가능
var priceArray = [Float]()

// 배열 길이 + 디폴트 값 설정 가능
var nameArray = [String]((Array)(repeating: "MyString", count: 10))

// 배열 + 배열 가능
let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]

let thirdArray = firstArray + secondArray

// 배열 개수는 count
var treeArray3 = ["Pine", "Oak", "Yew"]
let itemCount = treeArray3.count

// 배열이 비어있는지 확인 isEmpty
if treeArray3.isEmpty{
    print("This array is empty")
} else{
    print("This array is not empty")
}

// 배열 접근은 index
print(treeArray3[1])
print()


treeArray3[1] = "Redwood"

print(treeArray3[1])
print()


// 배열 항목 무작위로 섞기 & 가져오기
let shuffledTrees = treeArray3.shuffled()

let randomTree = treeArray3.randomElement()
print(randomTree!)  // randomTree가 String?임으로 강제 형변환이 필요


// 배열에 항목 추가 append(맨 뒤에 항목 추가됨)
treeArray3.append("Redwood1")
treeArray3 += ["Redwood2"]
treeArray3 += ["Redwood3", "Maple", "Birch"]


// 특정 인덱스에 항목 삽입 insert
treeArray3.insert("Maple", at: 0)
print(treeArray3[0])


// 특정 인덱스 삭제 remove
print(treeArray3[2])
treeArray3.remove(at: 2)
print(treeArray3[2])


// 마지막 인덱스 삭제 removeLast()
print(treeArray3[treeArray3.count-1])
treeArray3.removeLast()
print(treeArray3[treeArray3.count-1])


// 배열 반복
for tree in treeArray3{
    print(tree)
}


// 타입이 혼합된 배열 Any (형 변환 조심)
let mixedArray: [Any] = [1, 2, 35, "Hello"]

for object in mixedArray{
    if type(of: object) is Int.Type{  // type(of: ) 사용 시 자료형.Type으로 비교 가능, 현재는 Int 타입이 아니면 컨티뉴하도록 설계
        print(object as! Int * 10)  // 상위(Any)에서 하위(Int)로 형변환
    }
    else{
        continue
    }
}


