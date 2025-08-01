/*
 
 ------------------------------------------------------------
 🔸 if let Example:
 ------------------------------------------------------------

 if let name = optionalName {
     print(name)                //✅ OK—you can use `name` here
 }
 print(name)                   //❌ ERROR—name doesn't exist here
 🔴 name is only alive inside the if block

 ------------------------------------------------------------
 🔹 guard let Example:
 ------------------------------------------------------------
 
 guard let name = optionalName else {
     return
 }

 print(name)              // ✅ OK — you can use `name` here too
 
 ✅ name is usable after the guard block
 Because guard ensures:------>>>>
 “If value not found, return early. If found, continue normally.”
 
 |-------------------------------|
 |                               |
 |   🚀guard let Beauty          |
 |                               |
 |-------------------------------|
 func greetUser(name: String?) {
     guard let name = name else {
         print("No name provided ❌")             // Case 1
         return
     }

     print("Hello, \(name) ✅")                    // Case 2
 }
 
 |-------------------------------|
 |                               |
 |   🚀Explain guard let         |
 |                               |
 |-------------------------------|
 
 🧪 Case 1: Value is nil  : -->>
 --------------------------------
 greetUser(name: nil)
 
 Output:
 No name provided ❌
 
 ➡️ Function exits early — doesn’t print hello

 🧪 Case 2: Value is present : -->>
 ----------------------------------
 
 greetUser(name: "Agrima")
 Output:
 Hello, Agrima ✅
 ➡️ Function continues normally — uses unwrapped name

 
 
 
 
 
 
 
 ✅ So:------>>>>>>>

 nil        →    early exit

 not nil    →     continue & use
 
 
 
 */
