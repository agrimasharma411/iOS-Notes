//
//  CaptureList.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//

import Foundation
//What is Capture List?
//Capture list decides how a closure saves external variables — either right now (copy) or later (reference).

                               // Capture by Reference (default)

//var x = 10
//
//let closure = {
//    print(x)
//}
//
//x = 20
//closure()  // Prints 20 because it uses latest value



                             //Capture by Value (using capture list)
//var x = 10
//
//let closure = { [x] in
//    print(x)
//}
//
//x = 20
//closure()  // Prints 10 because value was copied when closure created


//Why use it?
//To fix values when closure is created
//To avoid strong reference cycles in classes ([weak self])

              //How to say in interview:
//“Capture list controls whether closure keeps the current value or updates later. By default, it captures by reference. Using capture list, I can capture by value or use [weak self] to avoid memory leaks.”



                              //✅ 9. Memory & Capture List

class Person {
    var name = "Amit"
    
    lazy var greeting: () -> String = { [weak self] in
        return "Hello, \(self?.name ?? "Guest")"
    }
}
//
//
//
//🗣️ Say in interview:
//“To avoid retain cycles, especially in closures inside classes, I use [weak self] in the capture list.”
