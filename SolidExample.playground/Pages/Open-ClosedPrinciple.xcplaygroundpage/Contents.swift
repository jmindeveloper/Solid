import Foundation

/*
struct Zibra {
    let name: String
    let age: Int
}

class Zoo {
    func printAnimalsInformation() {
        let zibras = [
            Zibra(name: "z", age: 3),
            Zibra(name: "zz", age: 2)
        ]
        zibras.forEach { print($0) }
    }
}
*/

/*
 해당 코드에서는 새로운 동물이 추가될때마다
 printAnimalsInformation() 함수를 매번 수정해주어야 한다
 */
/*
struct Zibra {
    let name: String
    let age: Int
}

struct Lion {
    let name: String
    let age: Int
}

class Zoo {
    func printAnimalsInformation() {
        let zibras = [
            Zibra(name: "z", age: 3),
            Zibra(name: "zz", age: 2)
        ]
        zibras.forEach { print($0) }
        
        let lions = [
            Lion(name: "l", age: 4),
            Lion(name: "ll", age: 23)
        ]
        lions.forEach { print($0) }
    }
}
*/
/*
 Zibra 및 Lion을 하나의 프로토콜로 묶으면 Zoo클래스를 변경할 필요가 없다
 */

protocol Animal {
    var name: String { get }
    var age: Int { get }
}

struct Zibra: Animal {
    let name: String
    let age: Int
}

struct Lion: Animal {
    let name: String
    let age: Int
}

class Zoo {
    func printAnimalsInformation() {
        let animals: [Animal] = [
            Zibra(name: "z", age: 3),
            Zibra(name: "zz", age: 2),
            Lion(name: "l", age: 4),
            Lion(name: "ll", age: 23)
        ]
        animals.forEach { print($0) }
    }
}

