//: [Previous](@previous)

import Foundation

//https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/

var str = "Hello, playground"
print(str)
//How does it know the type? Type inference, alt+click

//Let's decalr some different types of variables and see their types
var color = "blue"
var wholeNumber = 2
var doubleNum = 3.3
//collections, karan will talk about it


//Declare types with Type Annotations
//var whatType
var aNumber: Int = 42

//Create variables on the same line
var first, second: String
var third: Int, fourth: Double

//variables can change
var someNumber: Int
someNumber = 22
someNumber = 25

//Constants cannot change
let constantNumber = 100
//constantNumber = 101
//constantNumber++

//Strongly Typed, must be explicit with types
//Using different types, have to convert
let aDouble = 5.5
//print(aDouble + aNumber)
print(aDouble + Double(aNumber))
print(Int(aDouble) + aNumber)

//Automatically convert types to strings using String interpolation
let age = 36
//print("Ryan is " + age)
print("Ryan is " + String(age))
print("Ryan is \(age)")

//Common types
//: [Next](@next)

