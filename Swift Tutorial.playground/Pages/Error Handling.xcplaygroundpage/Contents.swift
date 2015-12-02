//: [Previous](@previous)
import Foundation


enum Errors: ErrorType {
    case BadError
    case CriticalError
}


func doSomethingGood() throws {
    throw Errors.BadError
}

do {
    try doSomethingGood()
} catch Errors.BadError {
  print("delicious")
} catch Errors.CriticalError {
    
}//: [Next](@next)
