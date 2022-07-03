import Foundation
/*
protocol GestureProtocol {
    func didTap()
    func didSwipe()
    func didLongPressTap()
}

class SomeButton: GestureProtocol {
    func didTap() {
//        logic
    }
    
    func didSwipe() {
        // 사용안함
    }
    
    func didLongPressTap() {
        // 사용안함
    }
}
*/
/*
 didTap 메서드만 사용을 할려고 해도 다른 메서드들을 구현해줘야한다
 */

protocol TapGestureProtocol {
    func didTap()
}

protocol SwipeGestureProtocol {
    func didSwipe()
}

protocol LongPressGestureProtocol {
    func didLongPressTap()
}

class SomeButton: TapGestureProtocol {
    func didTap() {
        // logic
    }
}

// 원하는 프로토콜만 채택하여 구현 가능


print("done")


