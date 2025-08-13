/*
 ----------------------------------------------------------
             🧵 What is Multithreading?
 ----------------------------------------------------------
 
 Multithreading is the technique of executing multiple tasks at             the same time. like background task is also                  going on and same time UI is also responsive.
 
 ----------------------------------------------------------
 Multithreading
 ├── GCD
 │   ├── DispatchQueue ✅
 │   ├── Serial vs Concurrent ✅
 │   ├── QoS ✅
 │   ├── Delayed Task ✅
 │   ├── Custom Queue ✅
 │   ├── DispatchGroup ❌
 │   ├── Semaphore ❌
 │   └── WorkItem ❌
 ├── OperationQueue ✅
 │   ├── BlockOperation ✅
 │   ├── Cancel/Dependency ✅
 │   ├── CustomOperation ✅
 ├── Swift Concurrency
 │   ├── async/await ✅
 │   ├── Task {} ❌
 │   ├── TaskGroup ❌
 │   ├── Actor ❌
 │   └── MainActor ❌
 --------------------------------------------------------------
 
 🧵 ✅ TOP 3 Multithreading Systems in Swift:
 

1.GCD             -->>            Low-level, powerful, C-based
2.OperationQueue  -->>          Object-oriented wrapper over GCD
3.Swift Concurrency(async/await) -->> Modern,Swift-native,safe
 
 ---------------------------------------------------------------
 🚀Main Concepts:-->>
 
 ✅ Main Thread       –  For UI updates.
 ✅ Background Thread –  For heavy tasks (eg.network call).
 ✅ GCD               –  Most common way to manage threads.
 ✅ NSOperationQueue  –  Another way, more configurable.
 
 ----------------------------------------------------------
               Two Prerequisites:-
 ----------------------------------------------------------
 
 1. 🔄 Main vs Background Thread
 
     ✅ Main Thread: Runs UI updates. Must not block it.

     ✅ Background Thread: Used for heavy tasks like downloading, file read/write.

 2. 🔄 Why async?
 
          Async lets a task run without blocking the main thread.
          After finishing, it can return to the main thread for UI update.

 Example:->

 
 DispatchQueue.global().async {
 
                  // Background task (e.g. download image)

     DispatchQueue.main.async {
 
                  // Update UI with downloaded image
     }
 }
 
 
 
 */
