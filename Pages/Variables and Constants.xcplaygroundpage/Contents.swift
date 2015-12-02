//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
print(str)
//Type inference

//Note alt click on variable to see type
var color = "blue"
var wholeNumber = 2
var doubleNum = 3.3

//Declare types with Type Annotations
//var whatType
var aNumber: Int = 42
var someNumber: Int
someNumber = 22
someNumber = 25

//Constants
let constantNumber = 100
//constantNumber = 101
//constantNumber++

//Using different types, have to convert
let aDouble = 5.5
//print(aDouble + aNumber)
print(aDouble + Double(aNumber))
print(Int(aDouble) + aNumber)

//String interpolation
let age = 36
//print("Ryan is " + age)
print("Ryan is " + String(age))
print("Ryan is \(age)")

//Common types
//: [Next](@next)

