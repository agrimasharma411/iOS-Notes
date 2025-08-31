/*
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 Qu-1. How do you create a List in SwiftUI?
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰

 👉 SwiftUI provides a built-in List view to display rows of data in a scrollable table format.

 ➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣
 Example 1: Simple List
 ➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣
 struct ContentView: View {
     let fruits = ["Apple", "Banana", "Mango", "Orange"]

     var body: some View {
         List(fruits, id: \.self) { fruit in
             Text(fruit)
 
         }
     }
 }


 🔹 Here, id: \.self tells SwiftUI each item is uniquely identified by itself.

 ➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣
 Example 2: List with custom rows
 ➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣➣
 
 struct Person: Identifiable {
     let id = UUID()
     let name: String
     let age: Int
 }

 struct ContentView: View {
     let people = [
         Person(name: "Alice", age: 25),
         Person(name: "Bob", age: 30)
     ]

     var body: some View {
         List(people) { person in
             HStack {
                 Text(person.name)
                 Spacer()
                 Text("\(person.age)")
             }
         }
     }
 }


 🔹 If the model conforms to Identifiable, you don’t need to provide id.

 ✅ Key Points:

 List automatically provides scrolling.

 Each row can be a simple Text or a custom view.

 Use .onDelete modifier for swipe-to-delete.
 
 
 
 
 
 
 
 */
