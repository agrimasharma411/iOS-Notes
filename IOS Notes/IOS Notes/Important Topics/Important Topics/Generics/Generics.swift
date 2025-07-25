
/*
 
 |-------------------------------|
 |                               |
 |       🚀  Generics            |
 |                               |
 |-------------------------------|
     
 
    Generic       =   Write Reusuable code that works with any                 data type.
   🧠Think like   =    Reusable + Type-Safe
 
Generics allow us =   to write reusable and type-safe code that                     works with any data type.We use them in                      functions, structs, classes — like in                        Array<T>, Dictionary<K,V>, or custom APIs                    to avoid duplication and ensure                              compile-time safety.
 
 -----------------------------
 ✅ In Method ->
 ------------------------------
 func show<T>(item: T) {
     print(item)
 }

 show(item: 10)         // Int
 show(item: "Hello")    // String
 
 ------------------------------
  ✅ In Struct ->
 ------------------------------
 
 struct Box<T> {
     var value: T
 }

 let intBox = Box(value: 5)
 let strBox = Box(value: "Hi")
 
 ----------------------------------------------------
 Qu -1 Can we use multiple generic types? - YES ✅
 ----------------------------------------------------
 
 func swapTwo<T, U>(a: T, b: U) {
     print(a, b)
 }
 
 ----------------------------------------------------
 ✅ 9. Can protocols be generic?
 ----------------------------------------------------
 ❌ Protocols themselves can't be generic
 ✅ But they can use associatedtype
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
