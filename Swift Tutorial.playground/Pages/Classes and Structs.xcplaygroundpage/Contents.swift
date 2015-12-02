//: [Previous](@previous)

import Foundation


//: # Classes And Structures
/*:
## Comparing Classes and Structures

Classes and structures in Swift have many things in common. Both can:
* Define properties, methods, subscript, initializers
* Be extended to expand their functionality beyond a default implementation
* Conform to protocols to provide standard functionality of a certain kind

Classes have additional capabilities that structures do not:
* Inheritance & Type casting
* Deinitializers to free up any resources it has assigned.
* Reference counting allows more than one reference to a class instance.

*/

//Person Class


class Person  {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Employee: Person {
    var role: String
    
    init(firstName: String, lastName: String, role: String) {
        self.role = role
        super.init(firstName: firstName, lastName: lastName)
    }
    
    func printInfo() {
        print("\(firstName) is a \(role)")
    }
}

let emp1 = Employee(firstName: "Karan", lastName: "Shah", role: "Software Engineer")
emp1.printInfo()
emp1.role = "iOS Software Engineer"

let emp2 = emp1
emp2.firstName = "Ryan"
emp2.printInfo()
emp1.printInfo()


























/*:
### Classes Are Reference Types
Reference types are copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used instead.

### Structures and Enumerations Are Value Types
A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function.
*/

struct Gift {
    let name: String
    var value: Int
    var place: String
    
    func description() {
        print(name)
    }
}

var gift1 = Gift(name: "iPhone 6s", value: 700, place: "Apple")
gift1.description()
var gift2 = gift1
gift2.description()
//gift2.name = "iPad"
gift2.description()
gift1.description()


//: [Next](@next)
