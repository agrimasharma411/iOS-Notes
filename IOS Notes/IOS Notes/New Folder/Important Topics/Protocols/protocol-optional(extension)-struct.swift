//
//  Optional Methods.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 03/06/25.
//
/*
 |---------------------------------------------------|
 |        protocol-optional(extension)-struct only   |
 |---------------------------------------------------|
  Note:- 📚 Making protocol Optional in Structure (Only via extension possible)
 
 
  protocol Pen {
      func write()
      func open()
      func close()
      func refill()
      func draw()
  }

  // 📚 Extension provides default implementation for these 2
 
 
  extension Pen {
      func write() {
          print("Default Write")
      }
      func open() {
          print("Default Open")
      }
  }

  // 📚 Struct conforms to Pen :-> ✅ MUST implement the 3 remaining methods, 2 Methods optional now
 
 
  struct GelPen: Pen {
      
      func close() {
          print("Close Gel Pen")
      }

      func refill() {
          print("Refill Gel Pen")
      }

      func draw() {
          print("Drawing with Gel Pen")
      }
  }

  let order = GelPen()
 order.write()
 order.close()
 order.open()
 order.refill()
 order.draw()





*/
