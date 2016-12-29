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



