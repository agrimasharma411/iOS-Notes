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
 
 |--------------------------------------------------------------|
 |🚀 What causes a memory leak in iOS, and how do you fix it?   |
 |--------------------------------------------------------------|

       Here’s how to answer:----------->>>>>>>>>>>>>>>

 Memory Leak:
 A memory leak occurs when your app retains memory that’s no longer needed and fails to release it. Over time, this leads to increased memory usage, slower performance, and eventually an app crash.

 Common causes in iOS (Swift):
 • Strong reference cycles (retain cycles), especially:
 • Between view controllers and closures
 • Between parent and child objects (e.g., delegates)
 • Closures capturing self strongly
 • Unreleased observers (e.g., NotificationCenter)
 • Timers not invalidated
 • For Core Foundation objects, forgetting to call CFRelease

 How to fix it:
 • Use [weak self] or [unowned self] inside closures for reference types
 • Set delegates as weak if possible
 • Always remove observers in deinit
 • Invalidate timers when done
 • Release Core Foundation objects using CFRelease when manually retained
 • Use Xcode Instruments → Leaks & Allocations to find and fix leaks


 */*
 */
 
