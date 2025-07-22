/*
 
 --------------------------------------------------------
                   Depandency Inversion
 --------------------------------------------------------
 // Abstraction
 protocol Sender {
     func send(message: String)
 }

 // Low-level class
 class EmailSender: Sender {
     func send(message: String) {
         print("📧 \(message)")
     }
 }

 // High-level class
 class NotificationService {
     let sender: Sender   // depends on protocol
     init(sender: Sender) {
         self.sender = sender   // DI via constructor
     }
     func notify(message: String) {
         sender.send(message: message)
     }
 }
 -----------------------------------------------------------
           // dependency Injection and call
 -----------------------------------------------------------
 let service = NotificationService(sender: EmailSender())
 service.notify(message: "Interview at 10 AM")
 
 */
