//: [Previous](@previous)

import Foundation

//: # Functions

















//: ## Functions with Multiple Return Values
//: You can use a tuple type as the return type for a function to return multiple values as part of one compound return value.

func minMax(numArray: [Int]) -> (min: Int, max: Int) {
    var currentMin = numArray[0]
    var currentMax = numArray[0]
    for value in numArray[1..<numArray.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

//let bounds = minMax([8, -6, 2, 109, 3, 71])




//: Optional Tuple Return Type
//     if numArray.isEmpty { return nil }

//: ## Default Parameter Values
//: You can define a *default value* for any parameter in a function by assigning a value to the parameter after that parameter’s type. If a default value is defined, you can omit that parameter when calling the function.

func someFunction(parameterWithDefault: Int = 12) {
    // if no arguments are passed to the function call, value of parameterWithDefault is 12
    print(parameterWithDefault)
}




//: ## Variadic Parameters
//: A variadic parameter accepts zero or more values of a specified type. You use a variadic parameter to specify that the parameter can be passed a varying number of input values when the function is called.

func arithmaticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}




//: [Next](@next)
