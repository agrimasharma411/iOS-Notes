//
//  protocol-optional-(@objc)class.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 19/07/25.
//
//import Foundation

/*
 
 
 |---------------------------------------------------|
 |        protocol-optional(@objc)-class only        |
 |---------------------------------------------------|
 Note:- 📚 Making protocol Optional in classes (Only via @objc possible)
 Note:- 📚 Restrict protocol for class :- then confirm with Anyobject

 
 
 @objc protocol Pen {
     func close()         // Required ❗
     func refill()        // Required ❗

     @objc optional func write()   // Optional ✅
     @objc optional func open()    // Optional ✅
 }

 // MARK: - Class conforming to Pen
 
 class GelPen: NSObject, Pen {
     func close() {
         print("GelPen closed")
     }

     func refill() {
         print("Refilled GelPen")
     }

     func write() {
         print("Writing with GelPen 🖊️")
     }

     // ❌ Skipped `open()` → no error, it's optional
 }

 // MARK: - Usage
 let pen: Pen = GelPen()

 pen.close()      // ✅ Required → must be implemented
 pen.refill()     // ✅ Required → must be implemented
 pen.write?()     // ✅ Optional → check with ?
 pen.open?()      // ✅ Optional → not implemented, safely ignored
 
 
 */
