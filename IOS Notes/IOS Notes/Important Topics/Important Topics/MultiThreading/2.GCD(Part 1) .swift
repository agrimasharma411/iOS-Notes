/*
 
 ----------------------------------------------------------
            🚀 GCD ( GRAND CENTRAL DISPATCH )(Apple’s API )
 ----------------------------------------------------------
 
 ----------------------------------------------------------
             🚀 Core GCD Questions (Swift)
 ----------------------------------------------------------
 1..What is GCD?
 2.Main queue vs global queue?
 3.Understand, global()., main, sync, async all together?
 4.How to perform background task and update UI?
 5.Difference between async and sync in GCD?
 6.When does deadlock happen in GCD?
 7.What is the difference between serial and concurrent
   queue in GCD?
 8. What is QoS (Quality of Service) in GCD?
 9. How to delay a task in GCD?
 10.What happens if UI is updated on a background thread?

 ----------------------------------------------------------
 1.What is GCD?
 ----------------------------------------------------------
 
 With the help of GCD,   we manage multithreading.It allows
                         us to run tasks in the background and update UI on the main thread using dispatch queues.
 
 
 ----------------------------------------------------------
 2.Main queue vs global queue?
 ----------------------------------------------------------
 
 Queue          main Queue               global() Queue
                   👇                        👇
 Thread           Main                    Background
 Type            Serial                   Concurrent
 Use Case        UI updates               Heavy/background work
 
 
 🧠 Simple Formula:
 🔸 Shared Data + Multiple Threads =
 🔒 sync inside serial queue = ✅ Thread-safe
 
 ----------------------------------------------------------
  3.Understand, global()., main, sync, async all together?
 ----------------------------------------------------------
 

 1️⃣ DispatchQueue.global().async {}
 Use case: You’re downloading an image from the internet.
 🔹 It runs in the background, so your UI stays smooth and usable while the image downloads.

 2️⃣ DispatchQueue.main.async {}
 Use case: After the image finishes downloading, you want to display it on screen.
 🔹 You switch to the main thread to update the image view safely (UI work must be on main thread).

 3️⃣ DispatchQueue.global().sync {}
 Use case: You're doing a quick background calculation but need the result immediately.
 🔹 So you send the task to a background thread but wait (block) until it’s finished to continue. It leads UI lack because UI updation is waiting for this calculation.
     for small calculation it is ok . but for heavy task. No way

 4️⃣ DispatchQueue.main.sync {}
 ❌ Use case: You’re already on the main thread and try to force a task on the main thread synchronously.
 🔹 This causes a deadlock because the thread waits for itself — and ends up stuck forever.
    Main thread is waiting for itself = Deadlock = App freeze.


 Code            |   Safe Use For
                 |
 global().async  |    Heavy work
 main.async      |    UI updates
 global().sync   |     Rare, immediate result from background
 main.sync       |    ❌ Deadlock if on main thread
 
 ------------------------------------------------------------
   Q4: How to perform background task and update UI in Swift?
 ------------------------------------------------------------
 We use DispatchQueue.global().async -> for background work,
 and DispatchQueue.main.async -> to update UI.
 
 🔧 Code Example:
 
 DispatchQueue.global().async {
     // Background work (e.g. download, parse)
     let data = "Some heavy result"

     DispatchQueue.main.async {
         // UI update
         self.label.text = data
     }
 }
 ✅ Output Flow:
 🔹 Background thread handles time-taking work
 🔹 Once done → Only thenMain thread updates UI safely
 
 ✅ Summary Points:
 global().async {} → runs background task in concurrent thread

 main.async {} → updates UI safely on main thread

 Closures: Both {} blocks are closures (code blocks passed to be executed later)

 Dependency: UI update runs only after background work finishes, because it’s inside the first closure

 Thread-safe UI: Always update UI inside DispatchQueue.main.async {}
 
 
 
 
 ------------------------------------------------------------
  Q5. Difference between sync and async in GCD?
 ------------------------------------------------------------
 sync blocks the caller thread until the task is finished.
 ➤ Used when you need the result immediately before moving on.

 async schedules the task and returns immediately.
 ➤ Used when you want to run something in background without blocking.

 🧠 Easy Way to Remember:->
 sync →        "Wait here, finish this, then go ahead"
 async →       "Just schedule and continue"

 ------------------------------------------------------------
 Q6. When does deadlock happen in GCD?
 ------------------------------------------------------------
 Deadlock occurs when main.sync {} is called from main thread —
 It causes the app to freeze permanently.
 
 1. ✅ Main thread waiting for a task that needs main thread
    main.async { main.sync { } } = deadlock
 2. ✅  Nested sync on same serial queue
    queue.sync {queue.sync {} }  = deadlock
 
 🧠 Rule:->

 🔒 If a queue is already executing a task, don’t call .sync {} on that same queue from within — it will wait for itself → deadlock.
 ------------------------------------------------------------
Qu.7  What is the difference between serial and concurrent
      queue in GCD?
 ------------------------------------------------------------
     Serial queue      =    one-by-one
     Concurrent queue  =    multiple tasks run in parallel
 
 
 
 🔁 Serial Queue->
    ⭐️ Runs one task at a time, in order
    ⭐️ Used for thread safety, or when order matters
 
 let serial = DispatchQueue(label: "serial")
 
 
 
 🔀 Concurrent Queue
     ⭐️ Starts multiple tasks at the same time, finishes in any order
     ⭐️ Good for performance / background processing
 
 let concurrent = DispatchQueue(label: "concurrent", attributes: .concurrent)
 -----------------------------------------------
 Q8. What is QoS (Quality of Service) in GCD?
 ------------------------------------------------
 
 QoS (Quality of Service) defines the priority of a task —
 It tells the system how urgent a task is.
 
 🔢 Common QoS Levels (from high to low):
 
      QoS                    Used For
 .userInteractive    UI events (e.g. scroll, tap)
 .userInitiated      User-triggered tasks (e.g. button tap
 .utility            Long tasks(e.g. downloads,data load )
 .background         Low-priority work (e.g. sync, prefetch)
 
 -----------------------------------------------------
    Q9. How to delay a task in GCD?
 -----------------------------------------------------
   Use asyncAfter(deadline:) to run a task after a delay. without blocking any thread.
 
 
   DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
     print("Run after 2 seconds")
}
 -----------------------------------------------------
 ✅ Q10. What happens if UI is updated on a background thread?
 -----------------------------------------------------
 
 Updating UI from a background thread is unsafe and can cause crashes, glitches, or unexpected behavior.
 
 Why?
 UIKit is not thread-safe

 UI updates must happen on main thread only
 
 
 ❌ Wrong Example:
 
 DispatchQueue.global().async {
     self.label.text = "Hello" // ❌ crash/glitch
 }
 ✅ Correct Way:

 DispatchQueue.main.async {
     self.label.text = "Hello" // ✅ safe
 }

 
 UI should always be updated on DispatchQueue.main —
 Updating from background thread can crash the app.
 
 
 
 
 */
