
import Foundation

// 원하는 결과가 나오지 않은 경우 에러를 발생시키고(던지고), 발생시킨 에러를 처리해야함

// 상태값 상수
let connectionOK = true
let connectionSpeed = 31.00
let fileFound = false

// 에러 타입을 선언
enum FileTransferError: Error{
    case noConnection
    case lowBandwidth
    case fileNotFound
}

// 에러를 발생(던짐)시킬 수 있게 throws 사용(결과를 반환 할 수 있음)
// guard 사용하여 해당 부분이 true면 else 내용 실행x
// 에러를 던진 메소드를 호출하는 경우 try 사용
func fileTransfer() throws{
    guard connectionOK else{
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else{
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else{
        throw FileTransferError.fileNotFound
    }
}


// 에러를 던진 메소드를 호출하는 경우 try 외에 do-catch문 사용
// fileTransfer 메서드를 sendFile 메서드 내에서 호출하는 경우
func sendFile() -> String{
    
    // return 되기 전에 실행되는 부분 defer
    defer{
        //removeTmpFiles()
        //closeConnection()
    }
    
    do{
        try fileTransfer()
    } catch FileTransferError.noConnection{
        return "No Network Connection"
    } catch FileTransferError.lowBandwidth{
        return "File Transfer Speed too Low"
    } catch FileTransferError.fileNotFound{
        return "File not Found"
    } catch{  // 반드시 필요하고, 3가지 외의 에러가 발생 시 출력됨
        return "Unknown error"
    }
    
    return "Successful transfer"
}

sendFile()
