//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// See https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html

// \()

print("result = \(2.0/1.5)")
let name = "Taro"
print("Hello \(name)!")

// Arrays and Dictionaries

var shoppingList = ["catfisi", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

print(shoppingList)
print(shoppingList[3])
print(occupations)
print(occupations["Kaylee"]!)

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

// Control Flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else{
        teamScore += 1
    } }
print(teamScore)

// Optional
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
//var optionalName: String? = "John Appleseed"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, Mr/Ms"
}
print(greeting)

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// switch

let vegetable = "red pepper"
switch vegetable {
    case "celery":
    print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
    print("That would make a good tea sandwitch.")
    case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
    default:
    print("Everything tastes good in soup.")
}

// for-in

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    print("kind=\(kind)")
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("largest=\(largest)")
print("largestKind=\(largestKind)")

// Loop

var n = 2
while n < 100 {
    n = n * 2
    print(n)
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

var total = 0
//for i in 0..<4 {
for i in 0...4 {
    total += i
}
print(total)


// Functions and Closures

func greet(person: String, special: String) -> String {
    return "Hello \(person), today's lunch special is \(special)."
}
print(greet(person: "Bob", special: "Grilled chiken"))

func greet2(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet2("John", on: "Wednesday"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.min)
print(statistics.0)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 1, 2, 3)

func averageOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum / numbers.count
}
averageOf(numbers: 3, 4, 2, 3)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 11, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)


numbers.map({
    (number: Int) -> Int in
    if number % 2 == 0 {
        print("odd number: \(number)")
        return 0;
    }
    let result = 3 * number
    //return result
    print(result)
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)


// Objects and Classes

class Shape {
    
    var numberOfSides = 0
    
    let defaltSuffix = "角形"
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func name(suffix: String?) -> String {
        return "\(numberOfSides)\(suffix ?? defaltSuffix)"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
var defaultName = shape.name(suffix: nil)
var shapeName = shape.name(suffix: "面体")

class NamedShape {
    
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var namedShape = NamedShape(name: "四角形")
namedShape.numberOfSides = 4
namedShape.simpleDescription()

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with side of length \(sideLength)."
    }
}

let test = Square(sideLength: 6, name: "my test square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    func area() -> Double {
        return radius * radius * M_PI
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)"
    }
}

var circle = Circle(radius: 2, name: "my circle")
circle.simpleDescription()
circle.area()

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set(v) {
            sideLength = v / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


// willSet

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)


// working with optional values

var optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
// optionalSquare = nil
let sideLength = optionalSquare?.sideLength


// Enumerations and Structures

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    static let all = [ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king]
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

let three = Rank.three
let threeRawValue = three.rawValue

func getBiggerRank(rank1: Rank, rank2: Rank) -> Rank {
    if rank1.rawValue < rank2.rawValue {
        return rank2
    } else if rank1.rawValue == rank2.rawValue {
        return rank1
    } else {
        return rank1
    }
}

getBiggerRank(rank1: ace, rank2: three)

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    static let all = [spades, hearts, diamonds, clubs]
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartColor = hearts.color()
let spades = Suit.spades
let spadesDescription = spades.simpleDescription()
let spadesColor = spades.color()

enum ServerResponse {
    case result(String, String)
    case failure(String)
    case empty(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese")
let empty = ServerResponse.empty("No response")

// switch success {
// switch failure {
switch empty {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
case let.empty(message):
    print("No response... \(message)")
}

// struct

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func createDeck() -> [Card] {
        var deck: [Card] = []
        for suit in Suit.all {
            for rank in Rank.all {
                deck.append(Card(rank: rank, suit: suit))
            }
        }
        return deck
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

Card.createDeck()


// Protocols and Extensions

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

enum SimpleEnumeration: ExampleProtocol {
    case foo
    case bar
    var simpleDescription: String {
        switch self {
        case .foo:
            return "foo"
        case .bar:
            return "bar"
        }
    }

    mutating func adjust() {
        print("\(self.simpleDescription) is adjusted")
    }
}
var c = SimpleEnumeration.foo
c.adjust()

// extension

extension Int: ExampleProtocol {
    mutating func adjust() {
        self += 42
    }

    var simpleDescription: String {
        return "The number \(self)"
    }

}
print(7.simpleDescription)
var adusted7 = 7;
adusted7.adjust()
print(adusted7.simpleDescription)

extension Double {
    var absoluteValue: Double {
        return abs(self)
    }
}
2.2.absoluteValue
(-1.3).absoluteValue

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
//print(protocolValue.anotherProperty)


// Error Handling

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    } else if printerName == "on fire" {
        throw PrinterError.onFire
    } else if printerName == "out of paper" {
        throw PrinterError.outOfPaper
    }
    return "Job sent"
}

do {
//    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}

do {
//    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
//    let printerResponse = try send(job: 1440, toPrinter: "on fire")
    let printerResponse = try send(job: 1440, toPrinter: "out of paper")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

// defer

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)