//
//  Depanency Inversion principle.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 15/07/25.
//

//import Foundation
/*
 
   Dependency Inversion Principle states that------->>>>>>>>>>>>>>>>>>>>>
   High-level modules should not depend on low-level modules — both should depend on abstractions (like protocols in Swift).

 For example, I have a protocol called Sender which defines a send() method.

 I also have two low-level classes: EmailSender and SMSSender, and both conform to the Sender protocol.

 Then I create a high-level class called NotificationService.
 This class contains the core business logic, so we want to keep it stable and avoid modifying it frequently.

 Inside this class, I declare a property of type Sender (e.g., alertSender).
 I inject this dependency through the constructor using Dependency Injection.

 The class also has a method called notify() which uses the send() method from the injected sender.

 Now, outside this class, I can create a new class called WhatsAppSender, which also conforms to the Sender protocol.
 -------------------------------------------------------------
 By injecting a WhatsAppSender object into NotificationService, I can reuse the same notify() method without modifying the main class.

 This way, the high-level class depends only on the abstraction, not on specific implementations.
----------------------------------------------------------------
//Code
 
 protocol Sender {
     func send(message: String)
 }

 class EmailSender: Sender {
     func send(message: String) {
         print("📧 Email: \(message)")
     }
 }

 class SMSSender: Sender {
     func send(message: String) {
         print("📱 SMS: \(message)")
     }
 }

 // 🔹 High-level class
 class NotificationService {
     let alertSender: Sender

     init(alertSender: Sender) {
         self.alertSender = alertSender
     }

     func notify(message: String) {
         alertSender.send(message: message)
     }
 }

 // 🔹 WhatsAppSender defined after high-level class
 class WhatsAppSender: Sender {
     func send(message: String) {
         print("💬 WhatsApp: \(message)")
     }
 }

 // 🔹 Usage
 let whatsapp = NotificationService(alertSender: WhatsAppSender())
 whatsapp.notify(message: "Ping from WhatsApp!")
 
 //🧾 Output will be : 💬WhatsApp: Ping from WhatsApp!
 
 */
