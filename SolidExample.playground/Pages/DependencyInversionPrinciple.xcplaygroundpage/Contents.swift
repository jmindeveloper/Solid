import Foundation
import Darwin

/*
class Handler { // 상위 모듈
    let fileManager = FileManager()
    
    func handler(str: String) {
        fileManager.save(str: str)
    }
}

class FileManager { // 하위 모듈
    func save(str: String) {
        
    }
}
*/

// Handler가 FileManager에 의존하고 있어 재사용이 어렵다

protocol Storage {
    func save(str: String)
}

class Handler {
    let storage: Storage
    
    init(storage: Storage) {
        self.storage = storage
    }
    
    func handler(str: String) {
        storage.save(str: str)
    }
}

class FileManager: Storage {
    func save(str: String) {
        
    }
}

// 프로토콜을 의존하고  실제 구현은 저수준이 맡게 되면서 Handler 사용이 용이해진다
