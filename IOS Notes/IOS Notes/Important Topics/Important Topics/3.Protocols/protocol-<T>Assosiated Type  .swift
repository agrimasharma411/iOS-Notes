/*
 
 protocol Container {
     associatedtype T
     func add(item: T)
 }

 class IntBox: Container {
     private var items: [Int] = []

     func add(item: Int) {
         items.append(item)
         print("Added \(item)")
     }
 }
 
 
 🔹 Output:->
 
 
 let box = IntBox()
 box.add(item: 10)              output-> // Added 10

 */
