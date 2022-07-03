import Foundation
/*
class Rectangle {
    var width: Int = 0
    var length: Int = 0
    
    func area() -> Int {
        return width * length
    }
}

class Square: Rectangle {
    override var width: Int {
        didSet {
            length = width
        }
    }
}

func printArea(rectangle: Rectangle) {
    rectangle.width = 2
    rectangle.length = 5
    print(rectangle.area())
}

let rectangle = Rectangle()
printArea(rectangle: rectangle) // 10

let square = Square()
printArea(rectangle: square) // 10
*/

/*
 하위 클래스로 상위 클래스의 넓이를 구할 수 없다
 */

protocol Polygon {
    var area: Int { get }
}

class Rectangle: Polygon {

    private let width: Int
    private let length: Int

    init(width: Int, length: Int) {
        self.width = width
        self.length = length
    }

    var area: Int {
        return width * length
    }
}

class Square: Polygon {

    private let side: Int

    init(side: Int) {
        self.side = side
    }

    var area: Int {
        return side * 2
    }
}

func printArea(of polygon: Polygon) {
    print(polygon.area)
}

let rectangle = Rectangle(width: 2, length: 5)
printArea(of: rectangle) // 10

let square = Square(side: 2)
printArea(of: square) // 4
