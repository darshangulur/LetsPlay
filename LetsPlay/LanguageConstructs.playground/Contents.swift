////: Playground - noun: a place where people can play
//
////import UIKit
//
//var str = "Hello, playground"
//print(str)
//
//let count = 4
//print(str + " \(count)")
//
//switch str {
//case "Rama": print("Rama")
//default: print("Default")
//}
//
////print(str, 1...5)
//
//var numbers = [20, 30, 40, 110, 200, 1200]
//let sequence = numbers.makeIterator().suffix(2)
//print(numbers.makeIterator().prefix(2), separator: ", ", terminator: "\n")
//for number in sequence {
//    print(number)
//}
//
//let keyValues = ["Name": "Rama",
//                 "Age": "25"]
//
//for (key, value) in keyValues {
//    print(key, value)
//}
//
//var number = 25
//while number < 100 {
//    number = number * 2
//    print(number)
//}
//
//number = 25
//repeat {
//    number = number * 2
//    print(number)
//} while number < 100
//
//
//func add() -> ((Int, Int) -> Int) {
//    func addSubroutine(a: Int, b: Int) -> Int {
//        return a + b
//    }
//    return addSubroutine
//}
//
//let subroutine = add()
//print(add())
//print(subroutine(2, 88))
//
//var strings = ["20", "30", "\n40", "///50.", "100"]
//var mapped: [Int?] = strings.map { Int($0) }
//print(mapped)
//
//var flatmapped: [Int] = strings.flatMap { Int($0) }
//print(flatmapped)
//
//strings.prefix(2)
//strings.suffix(2)
//strings.distance(from: Int(strings.first ?? "0") ?? 0, to: Int(strings.last ?? "0") ?? 0)
//
//
//let arrayOfIntegerArrays = [[["OneOne", "OneTwo"], ["Two"], ["Three"]], [["Four"], ["Five"], ["Six"]], [["Seven"], ["Eight"], ["Nine"]]]
//print(arrayOfIntegerArrays.map { $0.count })
//print(arrayOfIntegerArrays.flatMap { $0.map { $0.count } })
//
//let arrayOfIntegers = [[1, 2, 3], [4, 5, 6]]
//print(arrayOfIntegers.flatMap { $0.flatMap { $0 == 2 } })
//
//var sideLength: Double = 200
//var perimeter: Double {
//    get { return 3.54 }
//    set { sideLength = newValue * 2.0 }
//}
//
//perimeter = 45
//perimeter
//sideLength
//
//var area: Double = 25.0 {
//    willSet { }
//    didSet { }
//}
//
//struct Area {
//    let length: Double
//    let breadth: Double
//}
//
//let side: Area? = Area(length: 3.0, breadth: 75.0)
//print(side?.breadth ?? 0)
//
//enum BusType: Int {
//    case governmentOwned
//    case privatelyOwned
//}
//
//enum Transportation {
//    case autorickshaw
//    case bus(BusType)
//    case bicycle
//    case car
//}
//
//let transportation: Transportation = .bus(.governmentOwned)
//
//switch transportation {
//case .bus(let busType):
//    print("Bus \(busType)")
//    fallthrough
//case .autorickshaw:
//    print("Auto")
//    fallthrough
//case .car: print("Car")
//default: print("Other")
//}
//
//func travel<T: Sequence>(modeOfTransportation: T) {
//
//}
//
//extension Double {
//    public var absoluteValue: Int {
//        return self.exponent
//    }
//}
//
//let doubleValue = 20.0
//doubleValue.absoluteValue
//
//let booleanValue = true
//if booleanValue {
//    print("Boolean")
//}
//
//func testBoolean() {
//    guard booleanValue else { return }
//    print(booleanValue)
//}
//
//testBoolean()
//
//let (a, b) = (24, true)
//a
//b
//
//let constantOptional: Int?
//constantOptional = 78
//
//class Box {
//    var length: Int!
//    init() {
//        print(length)
//    }
//}
//
//let box = Box()
//
//let dictionary = ["Key": "Value"]
//for (key, value) in dictionary {
//    print(key, value)
//}
//
//func testConstantOptional() {
//    guard let constantOptionalUnwrapped = constantOptional else { return }
//    switch constantOptionalUnwrapped {
//    case 1...20 where constantOptionalUnwrapped % 2 == 0: print("First")
//    case 21...70: print("Second")
//    case 78 where constantOptionalUnwrapped % 5 == 0: print("90")
//    case 78 where constantOptionalUnwrapped == constantOptional: print("9")
//    default: print("Else \(constantOptionalUnwrapped)")
//    }
//}
//
//testConstantOptional()
//
//func testLabelling(string: String, numbers: Int...) -> (a: Int, b: Int) {
//    print(string, numbers)
//    var a = 2
//    first: while a < 70 {
//        a = a * 2
//        print(a)
//        if a == 8 {
//            continue first
//            print("8 is met")
//        }
//    }
//
//    return (a: 1, b: 2)
//}
//
//testLabelling(string: "Aadu aata aadu", numbers: 1, 2, 3).a

func testClosures(closure: (Int, Int) -> Bool) {
    print(closure(2, 3))
    print(closure(3, 3))
    print(closure(4, 3))
}

testClosures(closure: >= )
testClosures { $0 >= $1 }


func nestedFunctions() {
    let number = 10
    func innerFunction() {
        print("Inner Function \(number)")
    }
    innerFunction()
}

nestedFunctions()

enum Direction: String {
    case north = "North face"
    case east
    case west
    case south
}

let direction: Direction = .north
direction.rawValue

let east = Direction(rawValue: "east")
east?.rawValue

protocol Changeable {
    var changeQuotient: Int { get set }
    func change()
}

class Rectangle {
    var perimeter: Double
    let area: Double = 30.0
    private(set) var roundedArea: Int {
        get {
            return 30
        }
        set {
            print("Set value")
        }
    }

    init(perimeter: Double) {
        self.perimeter = perimeter
        print(roundedArea)
        roundedArea = 25
    }

    class func classMethod() {

    }

    subscript() -> Double {
        return 329.0
    }
}

extension Rectangle: Changeable {
    var changeQuotient: Int {
        get {
            return 10
        }
        set {
            print("Setting")
        }
    }
    func change() { }
}

let rectangle = Rectangle(perimeter: 100.0)

struct Area {
    var breadth: Int
    var length: Int {
        return 3
    }

    static func staticMethod() {

    }
}

let area = Area(breadth: 3)
area.length
//area["length"]

extension Area: Changeable {
    var changeQuotient: Int {
        get {
            return 25
        }
        set {
            print("Setting")
        }
    }
    func change() { }
    mutating func mutatingFunc() {
        breadth = 30
    }

}

class TestValueTypes {
    class var value: Int {
        return 100
    }
    var mutatingVar: Int = 200

    func first() {
        let rectangle = Rectangle(perimeter: 1000.0) // class
//        rectangle.roundedArea = 75
        let area = Area(breadth: 78) // struct

        second(rectangle: rectangle, area: area)
        mutatingVar = 300
        Rectangle.classMethod()
    }

    func second(rectangle: Rectangle, area: Area) {
        let rectangleChanged = rectangle
        print("Second \(rectangle.perimeter)")
        rectangleChanged.perimeter = 2000.0
        print("Second changed \(rectangleChanged.perimeter)")
        print("Second changed \(rectangle.perimeter)")
        print(rectangle === rectangleChanged)
        rectangleChanged[]

        var areaChanged = area
        print("Second \(area.breadth)")
        areaChanged.breadth = 93
        print("Second changed \(areaChanged.breadth)")
        print("Second changed \(area.breadth)")
//        print(area === areaChanged)
        Area.staticMethod()
    }
}

let testValueTypes = TestValueTypes()
testValueTypes.first()
TestValueTypes.value

var unShareableArray = [1, 2, 3]

import UIKit
final class LargeCar {
    var color: UIColor = .green
    private(set) var getValue = 340
}

//class SmallCar: LargeCar {
//    override var getValue: Int {
//        get {
//            return 646
//        }
//        set {
//            print("Setting getValue")
//        }
//    }
//
//    override init() {
//        super.init()
//        color = .white
//    }
//
//    func changeColor() {
//        color = .green
//    }
//}

class Building {
    var wall: Int = 30

//    init() {
//        self.wall = 27
//    }

    init?(wall: Int) {
        guard wall < 30 else { self.wall = 10; return }
//        self.init()
        self.wall = wall
    }
}

class Office: Building {
    init?() {
        super.init(wall: 30)
        self.wall = 75
    }
}

Building(wall: 27)

struct Animal {
    var arms: Int
    var legs: Int
}

extension Animal {
    init(arms: Int) {
        self.arms = arms
        self.legs = 2
    }
}

Animal(arms: 4)
Animal(arms: 2, legs: 2)


class Car: NSObject {
    var name: String
    var color: UIColor

    init(name: String, color: UIColor) {
//        print(self.name)
        self.name = name
        self.color = color
        super.init()
        print(self.name)
    }

    convenience init(name: String) {
        self.init(name: name, color: .blue)
        self.name = name
        self.color = .white
    }

    convenience init(color: UIColor) {
        self.init(name: "Default", color: color)
        self.name = "Default"
        self.color = color

    }
}

extension Car {


}

let car = Car(name: "", color: .blue)
let bolero = Car(name: "Bolero")


class ChairCar: Car {
    var onTime: Bool = {
//        self.id = 1
        return true
    }()
    lazy var position: Int = {
        self.id = 1
        return 3
    }()
    var id: Int = 2

    init(id: Int) {
        super.init(name: "Default", color: .blue)
        super.color = .red
        self.id = id
    }

    override init(name: String, color: UIColor) {
        super.init(name: name, color: color)
        self.id = 2
    }

    convenience init(name: String) {
        self.init(name: name, color: .blue)
    }

    func prepareInt() -> Int {
        return 2
    }
}

class ChairCarExample {
    weak var weakOptionalCar: ChairCar?
    weak var weakCar = ChairCar(id: 2)
    unowned var unownedCar = ChairCar(id: 2)
    unowned let unownedConstantCar = ChairCar(id: 2)
//    unowned let unownedOptionalCar: ChairCar? = ChairCar(id: 2)
}

let implicitlyUnwrappedOptional: Int!
implicitlyUnwrappedOptional = 3
print(implicitlyUnwrappedOptional)

class Country {
    let name: String
    var city: City!
    init(name: String, city: City) {
        self.name = name
        self.city = City(country: self)
    }
}

class City {
    var country: Country
    private lazy var closure: () -> String = { [unowned self] in
        print(self.country)
        return ""
    }
    init(country: Country) {
        self.country = country
    }

    class func classFunc() { }

    static func staticFunc() { }
}

City.classFunc()
City.staticFunc()

enum Rank: Int {
    case one = 1, two, three, four
    case five, six

    var value: Int {
        set {
            print("Values set")
        }
        get {
            return 1
        }
    }
    mutating func mutateProperty() {
        self.value = 1
    }
}

Rank.one.rawValue
Rank.five.rawValue

extension Rank {
    mutating func mutatePropertyInExtension() {
        self.value = 3
    }
}
//extension RankOne: Rank { } // enum

extension City {

}
//extension Bangalore: City { } // class

extension Area { }
//extension SquareArea: Area { } // struct

protocol Areable { }
struct SquareArea { }
extension SquareArea: Areable { }

extension Double {
    var metres: Double { return self * 1000 }
    static var staticVariable: Int = 2000

    func testMethodInExtension() {

    }

    static func testStaticMethodInExtension() {

    }
}

let distanceInKm: Double = 20.0
let distanceInMetres: Double = distanceInKm.metres
Double.staticVariable

@objc protocol Singable {
    var shruthi: String { get set }
    var tala: String { get }
    @objc optional func singASong()
    @objc optional func singAlong()
}

protocol Playable {
    var instrument: String { get }
    static func playInstrument(instrument: String)
    mutating func modifySelf()
}

class Singer: Playable {
    var instrument: String = ""
    static func playInstrument(instrument: String) {

    }

    class func makePlay() {

    }

    func modifySelf() {

    }
}

extension Singer: Singable {
    var shruthi: String {
        get { return "" }
        set { print("Shruthi is set") }
    }

    var tala: String {
        get { return "" }
        set { print("Instrument is playable") }
    }

    // Optional conformance
    func singASong() {
        
    }
    
//    func singAlong() {
//        
//    }
}

let singer = Singer()
singer.singASong()
//singer.singAlong()

struct SmallSinger {
    var instrument: String = ""
    static func playInstrument(instrument: String) {

    }

    mutating func modifySelf() {

    }
}

extension SmallSinger: Playable { }

let smallSinger = SmallSinger()
let singerPoints = 100
//if smallSinger is Singable { print("smallSinger could sing") }
//if smallSinger is Playable { print("smallSinger could Play") }

func swapValues<T: Equatable & Codable, U: Equatable>(a: inout T, b: inout T, c: U) -> U /*where T: Equatable*/ {
    let t: T = b
    b = a
    a = t
    return c
}

var a = 3
var b = 100
swapValues(a: &a, b: &b, c: 20)
a
b

a == b
a < b
a > b

protocol Aliasable {
    associatedtype T
    func item(index: Int) -> T
}

struct Stack<T>: Aliasable {
//    typealias ItemInChain = Int
    var array = [T]()
    func item(index: Int) -> T {
        return array[index]
    }
}

protocol Container {
    associatedtype ItemType
    var count: Int { get }
}

extension Array: Container {
    typealias ItemType = Int
    
    public var numberOfItems: Int {
        return 9
    }
}

let intArray = [Int]()
intArray.numberOfItems





















