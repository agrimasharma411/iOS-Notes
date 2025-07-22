/*
 In Swift, a struct is a value type, and value types are usually created on the stack - but can structs be allocated on the heap?

 Yes! While structs are value types, Swift can allocate them on the heap in certain scenarios. Here are the most common cases:

 -----------------------
 scenarios->
 -----------------------
 
 • Captured by escaping closures

 • Stored inside a class

 • Used as a protocol type (existential container)

 • Exceeds the existential container size: Small structs may fit inline, but large ones get boxed on the heap.

 • Copy-on-write value types: Swift structs like Array, Dictionary, and String manage their storage on the heap for performance.
 
 
 ⭐️ classes are stack-allocated? (Hint: never 😉)
 
 */
