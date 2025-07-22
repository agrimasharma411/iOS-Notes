/*
 ------------------------------------------------------------
 🧵 NSOperationQueue – Short Notes for Interview
 ------------------------------------------------------------
                   What is it?
 ------------------------------------------------------------
 NSOperationQueue is a higher-level abstraction over GCD, used                   to manage the execution of asynchronous                     tasks using Operation objects.
 ------------------------------------------------------------
 ✅ Key Points:--->>>
 ------------------------------------------------------------
 Uses Operation (or BlockOperation) to represent tasks.

 Supports dependencies between operations.

 Automatically handles threading (runs in background).

 Allows cancellation, priorities, and concurrent execution control.

 Good for complex task management (e.g., image download, parsing, UI update).
 ------------------------------------------------------------
 🧩 Common Use:--->>>
 ------------------------------------------------------------
 
 let queue = OperationQueue()

 let op1 = BlockOperation {
     print("Task 1")
 }

 let op2 = BlockOperation {
     print("Task 2")
 }

 // Set dependency: op2 runs after op1
 op2.addDependency(op1)

 queue.addOperations([op1, op2], waitUntilFinished: false)
 ------------------------------------------------------------
 📌 Extra Features:
 ------------------------------------------------------------
 maxConcurrentOperationCount → limit parallel tasks.

 isSuspended → pause/resume the queue.

 cancelAllOperations() → cancel all queued tasks.
 */
