//: [Previous](@previous)

import Foundation

//: Variables and Constants in Swift cannot be nil. They must have a value or the compiler will complain.
//:
//: Optionals can be nil.
var animal: String? = nil
animal = "dog"
print(animal)

if animal == nil {
    print("sorry, can't unwra")
} else {
    print(animal!)
}

animal = nil
//animal = "cat"
print(animal?.characters.count)

var newAnimal = animal ?? "rat"
print(newAnimal)

animal = "toad"
if let animal = animal {
    animal
} else {
    print("sorry, can't")
}

var anOptional: String? = "hi"
if let animal = animal, anOptional = anOptional where animal.character.count {

}
//: [Next](@next)

