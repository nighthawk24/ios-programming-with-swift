//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

var names  = ["John", "Jane", "Adam"]
names.count
names.append("Kelly")
names.removeLast()
names[1] = "Jill"
names
names.append("Greg")

let sortedNames = names.sort()

for name in names {
    print("Hello \(name)")
}

for i in 0..<names.count {
    print(names[i])
}

var people = ["John" : 25, "Jane" : 20, "Adam" : 30]
people["Kelly"] = 23

for (name, age) in people {
    print("\(name) is \(age) years old")
}
//: [Next](@next)
