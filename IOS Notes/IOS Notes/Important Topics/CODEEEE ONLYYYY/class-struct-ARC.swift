//
//  class-struct-ARC.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 15/07/25.
//
/*
 
 |---------------------------------------------------------------------|
 |                   STRUCTURE  VS  CLASS                              |
 |---------------------------------------------------------------------|
 
 
struct CarStruct {
    var name: String
}


var car1 = CarStruct(name: "Tesla")
var car2 = car1                             // ✅ Copy happens here (value type)
car2.name = "BMW"


print(car1.name)                            // Output: Tesla ✅ Not affected
print(car2.name)                             // Output: BMW




class CarClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}


var car3 = CarClass(name: "Tesla")
var car4 = car3                                 // ✅ Reference is shared
car4.name = "BMW"


print(car3.name)                                  // Output: BMW ❗Changed
print(car4.name)                                   // Output: BMW



|---------------------------------------------------------------------|
|                                 ARC                                 |
|---------------------------------------------------------------------|
 
class Person {
    var car : Car?
    deinit{
        print("deinit from memory person class")
    }
    
}


class Car {
   weak var person : Person?
    deinit {
    print("deinit from car class")
    }
    
}
 
var john: Person? = Person()
var toyota: Car?  = Car()
 
john?.car = toyota
toyota?.person = john
 
john = nil
toyota = nil


*/

