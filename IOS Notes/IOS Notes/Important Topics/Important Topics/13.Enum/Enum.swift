/*
 
 
 
 |-------------------------------|
 |                               |
 |   🚀        Enum              |
 |                               |
 |-------------------------------|
 
 
 
 
 ✅ What is enum in Swift?
 
 enum is   a value type used to define a group of related values       in a type-safe way. It can also have associated             values, raw values, and can include methods and             computed properties.
                
 
 
 
 ✅ Example 1: Simple Enum
 
 enum Direction {
     case north, south, east, west
 }
 ----------------------------------------------------------
 
 ✅ Example 2: Raw Values
 
 enum Status: Int {
     case success = 1
     case failure = 0
 }
 
 ----------------------------------------------------------
 
 
 ✅ Example 3: Associated Values

 enum Media {
     case photo(String)
     case video(String, Int)
 }
 
 ----------------------------------------------------------
 
 
 ✅ Example 4: With Method
 
 enum Direction {
     case north, south
     func move() {
         print("Moving \(self)")
     }
 }
 
 ----------------------------------------------------------
 
 
 ✅ Example 5: With Property
 
 enum Status: Int {
     case success = 1
     case failure = 0

     var message: String {
         self == .success ? "Success" : "Failure"
     }
 }
 ----------------------------------------------------------
 ✅ Key Points for Interviews
 ----------------------------------------------------------

 Type-safe alternative to constants.

 Can have raw values (default values).

 Can have associated values (extra info with each case).

 Can contain methods and even computed properties.
 
 
 */
