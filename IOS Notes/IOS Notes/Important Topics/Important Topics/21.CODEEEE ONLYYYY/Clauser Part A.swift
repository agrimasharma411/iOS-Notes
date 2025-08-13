//
//  Clauser Part A.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 16/07/25.
//

//import Foundation
/*
 

|---------------------------------------------------------|
|                      Closure Part A                     |
|---------------------------------------------------------|

// MARK: - MARK: - NonEscaping Closure
func nonEscapingClosure(_ completion:(_ name: String) -> Void) {
    print("Before NonEscaping Closure")
    completion("Agrima")
    print("After NonEscaping Closure")
}
nonEscapingClosure { name in
    print(name)
}
// MARK: - Escaping Closure
@MainActor
func escapingClosure(_ completion: @escaping(_ name: String) -> Void) {
    print("Before Escaping Closure")
    DispatchQueue.main.asyncAfter(wallDeadline: .now()+2) {
        completion("Agrima")
    }
    print("After Escaping Closure")
}
escapingClosure { name in
    print(name)
}
// MARK: - Closure with Return Type
func returnTypeClosure(_ completion: (_ name: String) -> String) -> String {
    print("Before Return Type Closure")
    let name = completion("Agrima")
    return name
}
let fullName = returnTypeClosure { name in
    return "Hello \(name)"
}
print("fullName is: \(fullName)")
// MARK: - Return Type as Closure
func returnTypeAsClosure() -> (() -> Void) {
    return {
        print("Hello World!")
    }
}
func returnTypeAsClosure2() -> ((_ name: String) -> String) {
    return { name in
        return "Hello, \(name)"
    }
}
// Usage:
let name = returnTypeAsClosure()
name()
// Usage:
let greetingClosure = returnTypeAsClosure2()
let message = greetingClosure("Agrima")
print(message) // Output: Hello, Agrima
// MARK: - Trailing Closure
func trailingClosure(_ completion: (_ name: String) -> Void) {
    completion("Agrima")
}
trailingClosure { name in
    print("Name is: \(name)")
}
// MARK: - @autoclosure
// @autoclosure wraps the expression in a closure
func autoClosure(_ completion: @autoclosure () -> Bool) {
    let isValid = completion()
    print("isValid is: \(isValid)")
}
autoClosure(2 > 1)





*/
