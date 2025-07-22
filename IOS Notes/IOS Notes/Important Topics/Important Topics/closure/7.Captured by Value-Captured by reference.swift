//
//  Captured by Value-Captured by reference.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 20/07/25.
//import Foundation
/*
 
 --------------------------------------------------------------
           ✅ Captured by Value (Int/Struct):
 --------------------------------------------------------------
 var num = 10
 let closure1 = { print(num) }
 num = 20
 closur1()                         // prints 10
 
 --------------------------------------------------------------
           ✅ Captured by Reference (Class):
 --------------------------------------------------------------
 swift
 Copy
 Edit
 class Box { var val = 10 }
 var box = Box()

 let closure1 = { print(box.val) }
 box.val = 20
 closure1()                        //  prints 20
 
 
 */
