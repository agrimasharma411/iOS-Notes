/*
 
 |-------------------------------|
 |                               |
 |       🚀 Initializer          |
 |                               |
 |-------------------------------|
 
 ✅  Initializer - It is a method that sets initial values for properties of a class or struct. It’s called automatically when we create an instance.
 
 
 ✅ Types of Initializers in Swift (for interview):--->>
 
 -------------------------------------------------------------
 Type                                  Description
 -------------------------------------------------------------
 Designated Initializer     Main initializer that fully sets all                        properties. Used directly.
 -------------------------------------------------------------
 
 Convenience Initializer    Secondary initializer, calls                                designated one using self.init().
 -------------------------------------------------------------
 Failable Initializer       Returns nil if initialization fails                         using init?()
 -------------------------------------------------------------
 Required Initializer      Must be implemented by all subclasses                       using required init()
 -------------------------------------------------------------
 Default Initializer       Auto-generated if all properties have                        default values
 -------------------------------------------------------------
 Memberwise Initializer    Auto-generated for structs, takes                           parameters for all properties
 
 
 
            |---------------------------------|
            |    🚀 Types of Initializers     |
            |---------------------------------|
 
 
 Type             Class/Struct           Used for
 ---------------------------------------------------------------
 1. Designated      ✅ Both          Main initializer that sets                                  all properties
 ---------------------------------------------------------------
 2. Convenience     ✅ Class-only    Extra init that calls                                       another initializer
 ---------------------------------------------------------------
 3. Default         ✅ Both            Auto-created if all                                       properties have defaults
 ---------------------------------------------------------------
 4. Memberwise      ✅ Struct-only     Auto-generated with                                         property parameters
 ---------------------------------------------------------------
 5. Failable(init?) ✅ Both          Returns nil if init fails
 ---------------------------------------------------------------
 6. Required        ✅ Class only    Must be implemented by all                                   subclasses
 ---------------------------------------------------------------
 
 
 

 |--------------------------------------------|
 |🚀 1. Designated Initializer  =  Both       | = Main
 |--------------------------------------------|

                             |
 class Car {                 |    struct Car {
     var model: String       |         var model: String
     init(model: String) {   |         init(model: String) {
         self.model = model  |            self.model = model
     }                       |        }
 }                           |     }
                             |
 
 |--------------------------------------------|
 |🚀 2. Convenience Initializer =  Class only |
 |--------------------------------------------|
 
 class Phone {
     var brand: String
     
     init(brand: String) {              //👈 Designated init
         self.brand = brand
     }

     convenience init() {            //👈 Convenience initializer
        self.init(brand: "iPhone")
     }
 }
 
 
 |--------------------------------------------|
 |🚀 3. Default Initializer =  Both           |
 |--------------------------------------------|
 
 
 class Laptop {            |   struct Laptop {
     var brand = "Dell"    |        var brand = "Dell"
 }                         |   }
                           |
       // 👇 Uses default init auto-generated 👇 //                              |
 let l = Laptop()          |   let l = Laptop()
                           |
 
 
 
 |--------------------------------------------|
 |🚀 4. Memberwise Initializer = Struct only  |
 |--------------------------------------------|
    Auto-created for structs with properties.

 
 struct Book {
     var title: String
     var pages: Int
 }

 let b = Book(title: "Swift", pages: 200)     // 👈 Auto                                                     memberwise
                                                 initializer
 
 |--------------------------------------------|
 |🚀 5. Failable Initializer init? = Both     |
 |--------------------------------------------|
 
 class User {                   |  struct User {
   var age: Int                 |     var age: Int
                                |
    init?(age: Int) {           |      init?(age: Int) {
      if age < 0 {return nil}   |        if age < 0 {return nil}
      self.age = age            |        self.age = age
     }                          |      }
 }                              |  }
 ✅ 6. Required Initializer
 
 |--------------------------------------------|
 |🚀 6. Required Initializer = Class-Only     |
 |--------------------------------------------|
 
 class Animal {
     
     required init() {}        // 👈 Required initializer
 }

 class Dog: Animal {
 
     required init() {          // 👈 Must use required here too
         super.init()
     }
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
