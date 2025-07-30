/*
 ------------------------------------------------------------
                 🚀 NSOperationQueue
 ------------------------------------------------------------
 
 NSOperationQueue = GCD + extra features (like priority, cancel,                dependency)

 
            |-------------------------------|
            |                               |
            |   🚀        Basics            |
            |                               |
            |-------------------------------|
 
 
1.[Operation] (Base Class)
       ⬇
2.[BlockOperation] (Subclass - Real Task)
       
3.[OperationQueue]  (Saperate class as Manager - Runs the task)
 
 |------------------|
 | Explanation 🚀   |
 |------------------|
 
⭐️1. Operation is the base class OR blue print . (can't create    obj of it)
⭐️2. BlockOperation is a subclass used to define actual           tasks.(can create a obj of it)
⭐️3. OperationQueue is used to schedule and run those operations  in background.
⭐️4. We create BlockOperation objects and add them to             OperationQueue.
 
 
 |------------------|
 |  👇 Common Flow  |
 |------------------|
 

 let task = BlockOperation {        // Step 1: Create a task
  print("Running in background")
 }


 let queue = OperationQueue()      // Step 2: Create a queue

 
 queue.addOperation(task)          // Step 3: Add task to queue
 
                                🧠 Result: Task starts in                background.
 
 
 Note - Object name could be "task" OR could be "operation" as      well. means craete object -> task OR operation (Of             BlockOperation ) is a same thing.
       

 ----------------------------------------------------------
         🚀 Core NSOperationQueue Interview Questions
 ----------------------------------------------------------

 1.What is NSOperationQueue? How is it different from GCD?
 2.What is BlockOperation?
 3.How to cancel an operation?
 4.How to add dependency between operations?
 5.How to pause/resume an NSOperationQueue?
 6.NSOperationQueue vs DispatchQueue — when to use what?
 7.Can NSOperation run concurrently?
 8.How to create custom NSOperation (subclass)?
 9.How to check if an operation is finished, executing, or cancelled?
 10.Is NSOperationQueue thread-safe?

 ------------------------------------------------------------
🚀 Qu.1 What is NSOperationQueue? How is it different from GCD?
 ------------------------------------------------------------
 
 NSOperationQueue gives GCD - like concurrency but adds power:
 Cancel, pause, dependencies, and better control.
 
 Use GCD            ->>   for simple tasks.
 Use OperationQueue ->>   When you need more control — like                           cancel, pause, or dependencies.
 ------------------------------------------------------------
 🚀 Qu.2 What is BlockOperation?
 ------------------------------------------------------------
 
 BlockOperation is a subclass of Operation that allows you to execute one or more blocks of code concurrently.
 

 🧠 Note:-
 ---------------------------------------------------------------
1. Multiple blocks inside           | Run in parallel (no order)
   BlockOperation                   |
 ---------------------------------------------------------------
2. Multiple operations + dependency | Run in custom serial order
 ---------------------------------------------------------------
3. Single block with multiple steps | Runs serially
 ---------------------------------------------------------------
 
 
 ✅ 1. Multiple blocks in one BlockOperation (parallel)

 let op = BlockOperation()
 op.addExecutionBlock { print("🍎 Block 1") }
 op.addExecutionBlock { print("🍌 Block 2") }

 OperationQueue().addOperation(op)
 
 // Output order not guaranteed (can run in parallel)
 
 ✅ 2. Multiple operations with dependency (serial)

 let op1 = BlockOperation { print("🔴 First") }
 let op2 = BlockOperation { print("🟡 Second") }
 op2.addDependency(op1)

 OperationQueue().addOperations([op1, op2], waitUntilFinished: false)
 
 // Output will always be: 🔴 First
                           🟡 Second
 
 ✅ 3. Single block with steps inside (serial)

 let op = BlockOperation {
     print("🍕 Step 1")
     print("🍔 Step 2")
 }

 OperationQueue().addOperation(op)
 
 // Output will be serial, same thread: 🍕 Step 1
                                        🍔 Step 2
 
 
 ------------------------------------------------------------
 🚀 Qu.3 How to cancel an operation?
 ------------------------------------------------------------
 
 If we want to cancel a task, then we first check .isCancelled inside the task.
 If it's true, we return early and stop the work.
 To make this work, we have to call .cancel() from outside — which marks the task as cancelled.
 
 Note:-When you call .cancel() on the operation — then .isCancelled becomes true.
 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 let task = BlockOperation {
     if task.isCancelled { return }
 
     print("🚀 Task running")
 }

 task.cancel()
 OperationQueue().addOperation(task)
 
 ------------------------------------------------------------
 🚀 Q4. How to add dependency between operations?
 ------------------------------------------------------------
 
 If we want one operation to run after another,
    we can use .addDependency().
    This makes sure the second operation waits for the
    first one to finish before starting.

 |------------------|
 |     👇 Code      |
 |------------------|
 
 let op1 = BlockOperation {
     print("🔴 First Task")
 }

 let op2 = BlockOperation {
     print("🟡 Second Task")
 }

 op2.addDependency(op1) // op2 will run after op1

 let queue = OperationQueue()
 queue.addOperations([op1, op2], waitUntilFinished: false)
 
 
 🧠 Note:- waitUntilFinished: false)  MEANS ->> No need to wait
   
 Let say if true -->> waitUntilFinished: true)
 Then-->>
 |------------------|
 |     👇 Code      |
 |------------------|
 
 queue.addOperations([op1, op2], waitUntilFinished: true)
 print("All done")
 
 
    when op1 and op2 both finish then only  print(" All done") will execute.

 ------------------------------------------------------------
 🚀  Q5. How to pause and resume an OperationQueue?
 ------------------------------------------------------------
 
 We can pause an OperationQueue by setting its .isSuspended property to true.
 To resume it again, we set .isSuspended back to false.

 |------------------|
 |     👇 Code      |
 |------------------|
 
 let queue = OperationQueue()

 let task = BlockOperation {
     print(" Task running")
 }

 queue.addOperation(task)

 queue.isSuspended = true   // ⏸ Pause the queue
 // queue.isSuspended = false  → ▶️ Resume the queue
 
 ------------------------------------------------------------
 🚀  Q6. OperationQueue vs DispatchQueue — When to use what?
 ------------------------------------------------------------
 Both are used for background tasks,
 but OperationQueue gives more control — like cancelling, dependencies, priorities, and state.

 DispatchQueue (GCD) is lighter and simpler, good for short tasks where you don’t need control.

 🔍 Key Differences (Simple Table):
 ----------------------------------------------------------------
 Feature              DispatchQueue              OperationQueue
 ----------------------------------------------------------------
 Cancel task?         ❌ Not possible          ✅ Yes (cancel())
 ----------------------------------------------------------------
 Add dependencies?    ❌ No              ✅ Yes (addDependency())
 ----------------------------------------------------------------
 Task state tracking? ❌ No          ✅ (isCancelled, isFinished)
 ----------------------------------------------------------------
 Priority?            ⚠️ Limited (QoS)        ✅ (queuePriority)
 ----------------------------------------------------------------
 Simpler?             ✅ Yes                   ⚠️ A bit heavier
 ----------------------------------------------------------------
 
 ----------------------------------------------------------------
 🚀  Q7. Can NSOperation (Operation) run concurrently?
 ----------------------------------------------------------------
 By default, operations run one at a time in the order the queue decides.
 But yes, operations can run concurrently if the queue allows it.
 🔸❓ When do they run concurrently?❓
 If OperationQueue has multiple operations
 And its maxConcurrentOperationCount > 1 (default is unlimited)
 Then it runs operations in parallel, depending on system resources.
 |------------------|
 |     👇 Code      |
 |------------------|
 let op1 = BlockOperation { print("🚀 Task 1") }
 let op2 = BlockOperation { print("🚀 Task 2") }

 let queue = OperationQueue()
 queue.maxConcurrentOperationCount = 2  // allow concurrency

 queue.addOperations([op1, op2], waitUntilFinished: false)
 ----------------------------------------------------------------
 🚀  Q8. How to create a custom NSOperation (subclass)?
 ----------------------------------------------------------------
 Custom operation is useful when we need to pass data, reuse logic, or track task state more precisely.
 BlockOperation is fine for simple one-time closures.

 🔸❓Why can't we do this with BlockOperation?❓
 In BlockOperation, it's harder to pass data like a name directly into the closure,
 especially when you want to reuse the logic or run the same operation with different inputs.
 |------------------|
 |     👇 Code      |
 |------------------|
 🔧 ✅ Custom Operation Example with Input:

 class GreetOperation: Operation {
     let name: String

     init(name: String) {
         self.name = name
     }

     override func main() {
         if isCancelled { return }
         print("👋 Hello, \(name)")
     }
 }

 let queue = OperationQueue()
 queue.addOperation(GreetOperation(name: "Agrima"))
 ----------------------------------------------------------------
 🚀  Q9. How to check if an operation is finished, executing, or cancelled?
 ----------------------------------------------------------------
 Every Operation has 3 important properties:

 .isExecuting → true when the task is running

 .isFinished → true when the task is done

 .isCancelled → true if .cancel() was called

 You can use these to track the current state of any operation.
 ----------------------------------------------------------------
 🚀  Q10. Is OperationQueue thread-safe?
 ----------------------------------------------------------------
 Yes, OperationQueue is thread-safe.
 That means we can add or cancel operations from multiple threads at the same time,
 and it will handle everything safely without crashing.


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */

