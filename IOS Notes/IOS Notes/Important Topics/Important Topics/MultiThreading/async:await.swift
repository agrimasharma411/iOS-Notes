/*
 
 🔁 "Asynchronous" means:->
 The task runs in the background and doesn't block the main thread.
 
            |-----------------------------|
            |        🚀 async / await     |
            |-----------------------------|
 
 
-------------------------------------------------------------
 Swift Concurrency
 ├── ✅ async / await (syntax & keywords)
 ├── ✅ Task { }            → used to start async work
 ├── ✅ TaskGroup           → used for running multiple async
 |                            tasks together
 ├── ✅ Actor               → used for thread-safe data access
 └── ✅ MainActor           → run UI updates safely on main thread
 
 -------------------------------------------------------------
    Question 1. - Can you explain about async / await?
 -------------------------------------------------------------
 We use async/await in multithreading when we want to run tasks asynchronously —
 like API calls, image loading, or long operations — without blocking the main thread.
 
 Earlier we used: GCD block,OperationQueue,Closures/Completion                Handlers which are nested create callback hell
 
 ✅ Solution: async/await -
 ⭐️easier to manage than callbacks.
 ⭐️ Readable like normal code
 ⭐️ Easy to handle errors (try await)
 ⭐️ No nesting — clean step-by-step flow
 ⭐️ Still runs in background — non-blocking
 
 So there is TWO KEY WORDS
 
 ASYNC -  we marks a function "async" that works in the               background and may take time.
 
 AWAIT-   with "await" we pauses the current task and waits for       the result — without blocking the main thread.
 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 func func1() async -> String {
     print("print1: func1 started")
     try? await Task.sleep(nanoseconds: 2 * 1_000_000_000) // simulate delay
     print("print2: func1 finished")
     return "func1 result"
 }

 func func2() {
     Task {
         print("print3: func2 started")
         
         let result = await func1() // yahan wait hoga
         
         print("print4: Got result from func1: \(result)")
         print("print5: func2 ended")
     }
 }
 

 |---------------------|
 | 📋 Output Flow:     |
 |---------------------|
 print3: func2 started
 print1: func1 started
 (wait 2 seconds ⏳)
 print2: func1 finished
 print4: Got result from func1: func1 result
 print5: func2 ended
 
 ---------------------------------------------------------------
 🚀 Question 1. - What is Task in Swift?
 ---------------------------------------------------------------
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
