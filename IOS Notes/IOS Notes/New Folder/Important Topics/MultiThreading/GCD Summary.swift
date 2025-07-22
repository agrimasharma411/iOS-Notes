/*
 
 ✅ Top GCD Summary (Short for Interview):
 
 🔹  GCD → Low-level, fast, but limited control
 🔹 GCD = API for managing multithreading in Swift
 🔹 DispatchQueue.main → serial, UI work
 🔹 DispatchQueue.global() → concurrent, background work
 🔹 sync → blocks caller
 🔹 async → doesn’t block, just schedules
 🔹 Never use main.sync from main thread → ❌ deadlock
 🔹 Use main.async for UI updates only
 🔹 Delay task: asyncAfter(deadline:)
 🔹 Create custom queues with label, add .concurrent for parallel
 🔹 QoS sets priority: .userInteractive, .userInitiated, .utility, .background
 🔹 Serial = one-by-one
 🔹 Concurrent = parallel

 
 DispatchQueue.global().async {
                        // Background work (e.g. download, parse)
     let data = "Some heavy result"

     DispatchQueue.main.async {
                                    // UI update
         self.label.text = data
     }
 }
 
 
 
 */
