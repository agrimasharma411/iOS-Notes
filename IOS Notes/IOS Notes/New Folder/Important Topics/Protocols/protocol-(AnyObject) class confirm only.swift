/*
 
 |---------------------------------------------------|
 |        protocol + AnyObject + weak                |
 |---------------------------------------------------|
 
 protocol Driveable: AnyObject {
     func drive()
 }

 class Car: Driveable {
     func drive() {
         print("Car is driving")
     }

     var person: Person?  // strong reference to Person

     deinit {
         print("Car deallocated")
     }
 }

 class Person {
     weak var car: Driveable?  // weak to avoid retain cycle

     func goForDrive() {
         car?.drive()
     }

     deinit {
         print("Person deallocated")
     }
 }

 // MARK: - Test
 var john: Person? = Person()
 var toyota: Car? = Car()

 john?.car = toyota        // Person → weak → Car
 toyota?.person = john     // Car → strong → Person

 john?.goForDrive()        // Output: Car is driving

 john = nil                // Break strong ref to Person
 toyota = nil              // Break strong ref to Car

 🔁 Output:

 Car is driving
 Person deallocated
 Car deallocated
 */
