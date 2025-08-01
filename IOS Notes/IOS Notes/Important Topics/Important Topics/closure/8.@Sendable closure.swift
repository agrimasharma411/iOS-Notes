/*
 |★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★|
 |                                               |
 |        🚀  @Sendable detects                  |
 |                                               |
 |★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★|
 
|-------------------------------------------------------------|
| @Sendable: Thread-safe closure detect karne ke liye (safety)|
|-------------------------------------------------------------|
 
 1. If you use a global (shared) variable inside the closure — because it can be accessed from another thread at the same time → this can cause a race condition, and @Sendable helps detect this and gives a warning.

 2. It also checks the logic inside the closure — like heavy loops, large JSON parsing, or other CPU-heavy tasks — and warns if the closure is unsafe to run on background threads.

 3. @Sendable indirectly warns if you're capturing self in a risky way. It prefers you to use [weak self] to avoid unsafe behavior in concurrent code.
 
 
 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
 
         So you can say :-------->>>>>
 
 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

 "@Sendable ensures closure is safe for multithreaded use — no shared state, no unsafe logic, and ideally no unsafe object captures."
 
 
 
 
 
 
 */
