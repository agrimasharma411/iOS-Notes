//
//  CaptureList.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//
/*
 


What is Capture List?
 A capture list in Swift is used inside closures to control how external variables (like self) are captured.

 By default, closures capture strongly, which can create retain cycles.

 We use [weak self] or [unowned self] in a capture list to avoid memory leaks by telling the closure to hold a weak or unowned reference.

                  

 class Cap {
     var action: (() -> Void)?

     func wear() {
         action = { [weak self] in
             print("Wearing cap \(self!)") // ✅ self captured weakly
         }
     }

     deinit {
         print("Cap deallocated")
     }
 }

 
 var myCap: Cap? = Cap()
 myCap?.wear()
 myCap?.action?()
 myCap = nil              // ✅ "Cap deallocated" will print (no                                retain cycle)
 
 
*/
