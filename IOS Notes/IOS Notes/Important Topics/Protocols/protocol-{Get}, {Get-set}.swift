//
//  Get, Get-set.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 02/06/25.
//

/*
 |---------------------------------------------------|
 |        protocol {get} , {get set}                 |
 |---------------------------------------------------|
 
 // ✅ Protocol with get set and get
 protocol Pen {
     var color: String { get set }   // Read & Write
     var brand: String { get }       // Read-only
 }

 
 // ✅ Class conforming to Pen
 
 
 class GelPen: Pen {
     var color: String = "Blue"      // get & set ✅
     var brand: String = "Cello"     // get only ✅
 }

 
 // ✅ Usage
 
 
 let pen = GelPen()
 print(pen.color)     // Blue
 pen.color = "Black"
 print(pen.color)     // Black
 print(pen.brand)     // Cello
 
 */
