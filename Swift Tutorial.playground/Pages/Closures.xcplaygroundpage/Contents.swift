//: [Previous](@previous)

import Foundation

//: # Closures
/*:
## Closure Expression Syntax

Closure expression syntax has the following general form:

{ (parameters) -> return type in
statements
}

*/
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversed = names.sort { (s1, s2) in s1 > s2 }

print(reversed)










/*:
## Shorthand Argument Names

Swift automatically provides shorthand argument names to inline closures, which can be used to refer to the values of the closure’s arguments by the names `$0`, `$1`, `$2`, and so on.

If you use these shorthand argument names within your closure expression, you can omit the closure’s argument list from its definition, and the number and type of the shorthand argument names will be inferred from the expected function type. The `in` keyword can also be omitted, because the closure expression is made up entirely of its body:

*/


var anotherRev = names.sort { $0.characters.count > $1.characters.count }
print(anotherRev)

var rev2 = names.sort(>)
print(rev2)



/*:
## Trailing Closures

A trailing closure is a closure expression that is written outside of (and *after*) the parentheses of the function call it supports

If you use these shorthand argument names within your closure expression, you can omit the closure’s argument list from its definition, and the number and type of the shorthand argument names will be inferred from the expected function type. The `in` keyword can also be omitted, because the closure expression is made up entirely of its body:

func someFunctionThatTakesAClosure(closure: () -> Void) {
// function body goes here
}

// here's how you call this function without using a trailing closure:

someFunctionThatTakesAClosure({
// closure's body goes here
})

// here's how you call this function with a trailing closure instead:

someFunctionThatTakesAClosure() {
// trailing closure's body goes here
}

*/




//: [Next](@next)
