
/*
 |-------------------------------|
 |                               |
 |   🚀    Questions             |
 |                               |
 |-------------------------------|
 
        
 |-------------------------------|
 |                               |
 |   🚀     BASICS               |
 |                               |
 |-------------------------------|
 
 🔁 Basic GCD Concepts (Very Short):
 
 sync → Blocks current thread (waits until task finishes)

 async → Doesn’t block, continues execution

 Serial Queue → Tasks run one by one, in order

 Concurrent Queue → Tasks can run in parallel
 
 --------------------------------------------------------------
 ⛓ Combo behavior (Quick Recap):
 --------------------------------------------------------------
 
 --------------------------------------------------------------
      Type       Blocks?    Order Guaranteed?   Runs in Parallel?
 --------------------------------------------------------------
sync + serial       ✅Yes       ✅ Yes                  ❌ No
sync + concurrent   ✅ Yes      ✅ Yes (due to sync)    ❌ No
async + serial      ❌ No       ✅ Yes                  ❌ No
async + concurrent  ❌ No      ❌ No                   ✅ Yes
 
 

 --------------------------------------------------------------
 Question -1 ► What happened when we use Async with Serail queue and sync with concurrent queue???
 --------------------------------------------------------------
 Async with serial queue    → Tasks run one by one, non-blocking                          (in background,order maintained).
 sync with concurrent queue → Even though the queue is                                    concurrent, sync waits for each                             task to finish before starting the                          next — so tasks run one by one                               (sequentially).
 
 


 */
