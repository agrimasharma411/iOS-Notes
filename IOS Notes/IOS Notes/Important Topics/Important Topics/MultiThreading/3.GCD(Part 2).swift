/*
        
 
       |-------------------------------|
       |                               |
       |   🚀   Dispatch Group         |
       |                               |
       |-------------------------------|
       |-------------------------------|
       |                               |
       |   🚀 What is DispatchGroup?   |
       |                               |
       |-------------------------------|

 DispatchGroup is useful when we want to run many tasks at the same time, and tells us when all tasks are done.
 
 ---------------------------------------------------------------
 Qu-1   You're calling 3 APIs in parallel, and you want to          update the UI only when all are done —How will you do?
 ---------------------------------------------------------------
 Ans-1  DispatchGroup helps with that!
 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 let group = DispatchGroup()

 group.enter()
 DispatchQueue.global().async {
     print(" Task 1 done")
     group.leave()
 }

 group.enter()
 DispatchQueue.global().async {
     print(" Task 2 done")
     group.leave()
 }

 group.notify(queue: .main) {
     print(" All tasks completed")
 }
 
 🔁 Output:
 Task 1 done
 Task 2 done
 All tasks completed
 
---------------------------------------------------------------
Qu-2  Can we use DispatchGroup without enter/leave?
--------------------------------------------------------------
 ✅Yes✅ — if you're using DispatchQueue.async(group:):

 let group = DispatchGroup()

 DispatchQueue.global().async(group: group) {
     print("Task 1")
 }

 DispatchQueue.global().async(group: group) {
     print("Task 2")
 }

 group.notify(queue: .main) {
     print("All Done")
 }
 --------------------------------------------------------------
 
 Note :-
 
 Use .enter()/ .leave()   =   when delayed task like api call
 without it               =   when simple task with no delay
                              
 
          |-----------------------------------|
          |                                   |
          |    🚀 What is DispatchSemaphore?  |
          |                                   |
          |-----------------------------------|

 
 Ans- DispatchSemaphore is used to limit how many threads or      tasks run at the same time.
 🔁 Example Use Case: -->
 ----------------------
 You're uploading 5 images, but you want only 2 uploads to happen at once.
 Semaphore will pause extra uploads until slots are free.

 DispatchSemaphore lets you limit concurrency —->
 --------------------------------------------
 you use->
 
 .wait()   ------>>>    to pause extra tasks,
 .signal() ------>>     to continue the next.

 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 let semaphore = DispatchSemaphore(value: 2)

 for i in 1...5 {
   DispatchQueue.global().async {
     semaphore.wait()               //wait if 2 already running
      print(" Starting task \(i)")
      sleep(2)
      print(" Done" task \(i)")
      semaphore.signal()                 // mark task as done
     }
 }
  Starting task 1
  Starting task 2
  Done task 1
  Done task 2
  Starting task 3
  Starting task 4
 ...
 
 Only 2 tasks run together, even though 5 were launched.

 Note-
 It’s not like both tasks must finish before the 3rd one starts.
 Even if any one task finishes, the 3rd task will start immediately.

 
          |-----------------------------------|
          |                                   |
          |    🚀 What is DispatchWorkItem?  |
          |                                   |
          |-----------------------------------|

 DispatchWorkItem is block of code where we can store in a variable,
 and then execute, cancel, or check its status.
 |----------------|
 |📦 Why use it?  |
 |----------------|
 Normal DispatchQueue.async {} runs immediately and can’t be controlled.

 But DispatchWorkItem lets you:

 ✅ Cancel before it runs

 ✅ Check if it’s cancelled

 ✅ Run the same task again

 ✅ Use it in notify chains
 
 |------------------|
 |     👇 Code      |
 |------------------|
 
 var work: DispatchWorkItem!

 work = DispatchWorkItem {
     if work.isCancelled { return }
     print("🚀 Task running")
 }
 DispatchQueue.global().async(execute: work)
 
 
 
 --------------------------------------------------------------
 
 

 |----------------------|
 |  🚀 Interview Q&A    |
 |----------------------|
 
 --------------------------------------------------------------
 🔹 Q1. Why not just use DispatchQueue.async?
 --------------------------------------------------------------
 Because DispatchQueue.async runs immediately.
 You can’t cancel it or reuse it.
 But DispatchWorkItem gives you more control.
 
 --------------------------------------------------------------
 🔹 Q2. Can I cancel a WorkItem after adding it?
 --------------------------------------------------------------
  — you can call .cancel() before it runs.
 But you must check .isCancelled inside the work item.


 work.cancel()
 
 --------------------------------------------------------------
 🔹 Q4. Can I run a work item multiple times?
 --------------------------------------------------------------
 ✅Yes✅
 
 let work = DispatchWorkItem { print("Hello") }
 work.perform()
 work.perform()
 It will print twice ✅

REAL WORLD EXAMPLE
 Example 1: User taps a button, but you want to cancel a task if they change their mind quickly
 |------------------|
 |     👇 Code      |
 |------------------|
 var delayedDownload: DispatchWorkItem!

 // When user taps "Download"
 delayedDownload = DispatchWorkItem {
     print("⬇️ Download started")
 }

 DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: delayedDownload)

 // If user taps "Cancel" within 1 sec
 delayedDownload.cancel()
 print("❌ User cancelled, so download didn't start")
 
 |------------------------|
 |     👇 Explanation     |
 |------------------------|
 DispatchWorkItem is useful when you want to run a task after some delay,
 but still want the option to cancel it before it runs.

 For example, if a user taps "Download", you plan to start downloading after 2 seconds.
 But if they tap "Cancel" in 1 second, you can call .cancel() on the work item —
 so the task won’t run at all.

 It gives more control than normal async code.
*/
