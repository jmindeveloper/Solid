import Foundation
/*
class Handler {
    func handle() {
        let data = fetchData()
        let newData = createNewData(data)
        uploadData(newData)
    }
    
    func fetchData() -> Data {
        // fetchData logic
        return Data()
    }
    
    func processingData(_ data: Data) -> Data {
        // processing logic
        return Data()
    }
    
    func uploadData(_ data: Data) {
        // uploadDatalogic
    }
}
*/
 
/*
 해당 클래스는 3가지 일을 한다
 1. Data fetch
 2. fetch한 데이터로 새로운 데이터 만들기
 3. 만든 새로운 데이터를 업로드
 
 이 책임들을 각각 작은 객체로 분리
 */

class Handler {
    let apiHandler: APIHandler
    let processingHandler: ProcessingHandler
    
    init(apiHandler: APIHandler, processingHandler: ProcessingHandler) {
        self.apiHandler = apiHandler
        self.processingHandler = processingHandler
    }
    
    func fetchAndUploadProcessingData() {
        let data = apiHandler.fetchData()
        let processingData = processingHandler.processingData(data)
        apiHandler.uploadData(processingData)
    }
    
}

class APIHandler {
    func fetchData() -> Data {
        // fetch logic
        return Data()
    }
    
    func uploadData(_ data: Data) {
        // upload logic
    }
}

class ProcessingHandler {
    func processingData(_ data: Data) -> Data {
        // processing logic
        return Data()
    }
}



