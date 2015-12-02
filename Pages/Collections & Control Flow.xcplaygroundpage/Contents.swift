//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//Explicitly defined string array
var places = ["CA", "AZ"]
var names: [String] = ["Jan", "fred", "berkley", "Atom" ]
names.count
names.append("somebody")
names.removeLast()
names[1] = "Greg"
names.append("Jane")

let sortedNames = names.sort() //Does this mutate names or create a new array? Pass by value?
names.sortInPlace()

for name in names {
    print("Hello \(name)")
}

for i in 1...5 {
    print(i * i)
}

var ages = ["John" : 25, "Jane" : 20, "Atom" : 5]
ages["kelly"] = 16
for (name, age) in ages {
    print("\(name), \(age)")
}

//: [Next](@next)
