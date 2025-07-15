//
//  ARC example.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 01/06/25.
//
//MARK: - retain cycle or strong reference cycle
/*
import Foundation

class Person {
   var car : Car?      // (write weak var instead- To break retain cycle )
}

class Car {
    var person : Person?
}

var john = Person()
var toyota = Car()

john.car = toyota
toyota.person = john

/*
                        🔄 The Retain Cycle  or Strong Reference Cycle
 
 Now both john and toyota are holding to each other.
 If we later write john = nil and toyota = nil,
 they won’t be destroyed from memory because they are still pointing to each other — this is called a retain cycle or strong reference cycle.
 
 */*
 */
