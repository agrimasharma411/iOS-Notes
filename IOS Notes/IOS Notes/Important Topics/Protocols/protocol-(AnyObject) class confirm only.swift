//
//  protocol (AnyObject) class confirm only.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 19/07/25.
//
//import Foundation
/*
 
 |---------------------------------------------------|
 |        protocol + AnyObject + weak                |
 |---------------------------------------------------|
 
 protocol Pen: AnyObject {
     func write()
 }

 class GelPen: Pen {
     func write() {
         print("GelPen writing")
     }
 }

 class Holder {
     weak var pen: Pen?
 }

 var holder = Holder()
 var pen: GelPen? = GelPen()

 holder.pen = pen
 holder.pen?.write()  // Output: GelPen writing

 pen = nil
 holder.pen?.write()  // No output — pen is nil
 
 
 */
