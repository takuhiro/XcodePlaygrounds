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


