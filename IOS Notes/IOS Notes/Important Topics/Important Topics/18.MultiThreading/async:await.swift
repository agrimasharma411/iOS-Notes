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
 └── ✅ MainActor           → run UI updates safely on main                               thread
 
 -------------------------------------------------------------
    Question 1. - Can you explain about async / await?
 -------------------------------------------------------------
 We use async/await in multithreading when we want to run tasks asynchronously —
 like API calls, image loading, or long operations — without blocking the main thread.
 
 Earlier we used: GCD block,OperationQueue,Closures/Completion                Handlers which are nested create callback hell
 
 |-----------------------------------------------------------|
 |     why we need async await/ when already have gcd/OQ     |
 |-----------------------------------------------------------|
 
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
 
 Task is used in Swift Concurrency when we want to start async work — like calling an API or running background logic — without blocking the main thread.

 For example, if we’re in a non-async context like a button tap, and we need to run async code, we use Task {} to start it. It lets us write await code inside even from sync places."
 
IN Short--> "Task {} is an async container that lets you use await even inside a regular (non-async) function."
 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 func getMessage() async -> String {
     return "🌞 Good Morning!"
 }

 func showMessage() {
     Task {
         let result = await getMessage()
         print(msg)
     }
 }
 ---------------------------------------------------------------
 🚀 Question 2. -  What is TaskGroup in Swift?
 ---------------------------------------------------------------
 TaskGroup lets you run multiple async tasks in parallel, and wait for all of them to finish.
 
 func fetchAll() async {
     await withTaskGroup(of: String.self) { group in
         group.addTask { return "🍎 Apple" }
         group.addTask { return "🍌 Banana" }
         group.addTask { return "🍇 Grape" }

         for await fruit in group {
             print("Got:", fruit)
         }
     }
 }

 ✅ All tasks run in parallel
 ✅ You collect results one-by-one
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
                   actor in very easy way
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 🤖 Actor kya hota hai?
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 
 ⭐️ class jaise hi hota hai
 ⭐️ Lekin ye multi-threading me safe hota hai
 ⭐️ Aap jab concurrent code likhte ho, to data race na ho, isliye use hota hai

 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 🔒 Kyu use karte hain?
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 
 Jab multiple threads ek hi variable ko access karte hain, to crash ho sakta hai

 actor is problem ko khud handle karta hai (aapko lock ya queue lagane ki zarurat nahi)

 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 🧱 Syntax kaise hota hai?
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 actor Counter {
     var value = 0

     func increment() {
         value += 1
     }
 }
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 ⚙️ Kaise call karte hain?
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 let counter = Counter()
 await counter.increment() ✅
 📌 await lagta hai kyunki actor async safe access deta hai

 ❌ Direct property access allowed nahi hai
 
 print(await counter.value) ✅
 print(counter.value) ❌  // Error
 
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 📦 Use kab karein?
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 
 ⭐️ Jab shared data ho aur app multi-threaded ho
 ⭐️ Jaise: API call karte waqt data update karna, background tasks ke beech sync

 Bss yaad rakho:
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 🧠 "actor = class + thread safety (auto)"
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰



 ---------------------------------------------------------------
 🚀 Question 3. -  What is Actor in Swift?
 ---------------------------------------------------------------
 An actor is like a class, but it protects its data from race conditions.
 Only one task can access its data at a time → thread-safe by default.
 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 actor Counter {
     var value = 100

     func increase() { value += 1 }
     func decrease() { value -= 1 }
     func get() -> Int { value }
 }

 let counter = Counter()

 Task { await counter.increase() }
 Task { await counter.decrease() }
 Task {
     let result = await counter.get()
     print("✅ Final:", result)
 }
 |-------------------------|
 |     👇 Explanation      |
 |-------------------------|
 “Counter is is an actor, and it stores a value that multiple tasks can access.”
 I run two tasks: one increases the value, one decreases it.
 Even though both tasks run at the same time, the actor ensures only one accesses the value at a time.
 So there's no data corruption — and the final value is always consistent.”

 -------------------------------------------------------------
    Question 3. - What is MainActor?
 -------------------------------------------------------------
 MainActor ensures that code runs on the main (UI) thread.
 Used when you want to update UI from background async code.
 |-------------------------|
 |     👇  Example 1 :     |
 |-------------------------|
 
 
 @MainActor
 class ViewModel {
     func updateUI() {
         print("✅ Running on main thread")
     }
 }
 |-------------------------|
 |     👇  Example 2 :     | = OR inside a function:
 |-------------------------|
 

 
 Task {
     let data = await fetchData()
     await MainActor.run {
         self.label.text = data
     }
 }
 
 
 Feature                class                  actor
 Thread safety        ❌ Not safe           ✅ Built-in safe
 Multi-thread access  ❌ Unsafe             ✅ Safe (isolated)
 Inheritance          ✅ Yes                ❌ No
 Use case             Normal objects        Safe shared data
 Performance          ⚡️ Faster             🛡️ Safer, but slower
 
 
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
                |-------------------------------|
                |      🧠 Why use MainActor?    |
                |-------------------------------|
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰

 
 Swift async code usually runs in the background, but UI must update only on main thread.
 MainActor.run helps you safely switch to main thread.

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
