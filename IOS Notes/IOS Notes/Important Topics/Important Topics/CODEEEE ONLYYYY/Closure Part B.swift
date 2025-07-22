//
//  Closure Part B.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 16/07/25.
//

//import Foundation
/*
 
 |---------------------------------------------------------|
 |                      Closure Part B                     |
 |---------------------------------------------------------|
 ✅ 1. Write a closure that adds two numbers


 let add: (Int, Int) -> Int = { (a, b) in
     return a + b
 }
 print(add(3, 5))                                                                                                  // Output: 8


 ✅ 2.  Sort an array using a closure


 let numbers = [4, 2, 7, 1, 9]
 let sorted = numbers.sorted { $0 < $1 }
 print(sorted)                                                                                            // Output: [1, 2, 4, 7, 9]


 ✅ 3. (Basic) Pass a closure as a function parameter


 func movie(completion: () -> Void) {
     completion()
 }


 movie {
     print("watching movie")
 }


 ✅ 4.  @autoclosure


 func movie(completion: @autoclosure () -> String) {
     print(completion())
 }


 movie(completion: "🎬 Movie is playing")


 ✅ 5.  Trailing closure
 func movie(completion: () -> Void) {
     completion()
 }


  movie(completion: {                                 // normal call syntax
     print("Hi there!")
 })


  movie {
     print("Hi there!")                                     // Trailing closure syntax
 }



 
 
 */
