//
//  Depandency Injection.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 15/07/25.
//

//import Foundation
/*
 
 
 Dependency Injection is the technique to provide the actual object to a class, or                   simply, the initialization of a property that conforms to a                    protocol, done via constructor, property, or method                            injection."
  
 
 Dependency Injection is a technique where a class gets the required object (like                        service/helper) from outside, instead of making it itself.
                           It helps keep the code decoupled, reusable, and easy to test.

 ✅ Types of DI:
 1. Constructor Injection – Pass the object while creating the class. ✅ Most common safe   init(sender: Sender) { self.sender = sender }
 OR
     let service = NotificationService(sender: WhatsAppSender()) // inject here
     service.notify(message: "Hello")
    
 2. Property Injection  Set the dependency after the object is created ⚠️ Optional handling   needed   
    let service = NotificationService()   // object created
    service.sender = SMSSender()          // ✅ inject later
    service.notify(message: "Hi via SMS")
  
   
 3. Method Injection – Pass the dependency directly into the method when needed ✅ Useful for one-time use
  
 class NotificationService {
     
     // ✅ Method Injection happens here — sender passed directly into method
 
     func notify(message: String, using sender: Sender) {
         sender.send(message: message)
     }
 }

 // Usage:
 let service = NotificationService()
 service.notify(message: "Ping!", using: WhatsAppSender())  // 🔹 Injection here
 
 
 
 🎯 Final Line:
 So here, I am using Dependency Injection to provide the WhatsAppSender object from outside,
 keeping my class flexible and following clean design principles.


 
 
 */
