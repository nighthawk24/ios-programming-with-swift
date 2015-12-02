//: Playground - noun: a place where people can play

import UIKit

//Type inference
var str = "Hello, playground"

print(str)

let constantNumber = 40
//constantNumber = 30

let implicitInteger = 100
//Type annotation
let explicitInteger: Int = 200

//Converting is explicit
//let implicitDouble = 4.4 + explicitInteger
let implicitDouble = 4.4 + Double(explicitInteger)

//String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal
var name = "Ryan"
print("My name is \(name), nice to meet you.")

let numberOfApples = 2
let numberOfBananas = 5

print("I have \(numberOfApples + numberOfBananas) pieces of delicious fruit");

var emptyString = ""
var anotherEmptyStrnig = String()


//Basic Operators
/*

=
+, -, *, /
%
++, -- (postfix or prefix)
-, + (-3 or +3)
*=, /=, %=, +=, -=, &&=, ||=
<, <=, >, >=, ==, !=
?:

??
...
..<	
!, &&, ||

*/

1...5
1..<5

//Optionals
var opt: String?
print(opt ?? "nil")
opt = "Not nil now"
print(opt ?? "nil")
//Unwrap optional
let maybeAnInt = Int("Nope, I'm not")
if maybeAnInt != nil {
    maybeAnInt!
}
let definitelyAnInt = Int("5")
if definitelyAnInt != nil {
    print(definitelyAnInt)
    print( definitelyAnInt!)
}

if let num = definitelyAnInt {
    print(num)
}

//Implicitly Unwrapped Optional, mostly for initializers where value is present after assignment
var money: Double! = 2.2
print(money) // don't have to unwrap

//Errors

enum Errors: ErrorType {
    case BadError
    case CriticalError
}

func dosomething() throws -> String{
//    return "hi"
    throw Errors.BadError
}

do {
    try dosomething()
} catch Errors.BadError {
    print("Yum")
}

//Convert to optional
var nilIfError = try? dosomething()

//disable error propagation if you KNOW it won't error. BE VERY CAREFUL, runtime exception will be thrown if errors
//nilIfError = try! dosomething()

//cleanup, runs just before code execution leaves the current block

func work() -> Int {
    var variable = 1
    if true {
        print("Open a file")
        defer {
            variable = 27
        }
        print(variable++)
        print(variable++)
    }
    return variable
}

let number = work()

//Conditionals

func gu(animal: String) -> String {
    guard animal == "dog" else {
        return "no"
    }
    return "yes"
}

print(" \(gu("dog"))  \(gu("cat"))")

