//: [Previous](@previous)

import Foundation

//var string: String = nil
var str: String? = nil
str = "Hello"
print(str)
print(str!) //crash if nil


//exclamation means developer is taking responsability for it being nil. nil can cause the crash, I know what i'm guranteeing that it won't be nil.
//Main reason we have them is allows the compiler to help you, Int("what") example

//Optionals

var opt: String?
//optional chaining, safety

print(opt?.characters)

print(str?.characters.count)
print(str!.characters.count)
opt?.characters.count
//opt!.characters.count //force unwrapping

var notNil = "nope, not nil"
//notNil = opt
notNil = opt ?? "nil"


//Unwrap optional
if opt != nil {
    print(opt!)
}

//Optional Binding
opt = "cow" //comment this out to see what happens
if let opt = opt, str = str { //They both have to be non optional, so FirstName and LastName
    print("Hi again \(opt)")
} else {
    print("no values")
}
//Add where
if let opt = opt where opt.characters.count > 5 {
    //cheking if name > 5
}

//: [Next](@next)

