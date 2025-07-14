//
//  Optional Chaining.swift
//  IOS Notes
//
//  Created by Agrima Sharma on 11/07/25.
//

//import Foundation

/*
                        🚀 OPTIONAL CHAINING
 
 class Dog {
     var name: String
     init(name: String) {
         self.name = name
     }
 }

 class Owner {
     var dog: Dog?
 }

 class House {
     var owner: Owner?
 }
 
 
 
 let house = House()
 house.owner = Owner()
 house.owner?.dog = Dog(name: "Bruno")
 
 
 🚀Explanation---------------------->>>>>>
 
 ➡️ Creates a new object named house from the House class.

 This is an instance of the House class.

 At this moment, house.owner is nil by default, because we haven't assigned anything to it yet.

 Why? Because in the class definition:

 class House {
     var owner: Owner?  // optional, so default is nil
 }
 🔹 Line 2:

 house.owner = Owner()
 ➡️ We’re now assigning a new Owner object to the owner property of house.

 So now, house.owner is not nil

 But house.owner?.dog is still nil (we haven’t assigned the dog yet)

 🔹 Line 3:

 house.owner?.dog = Dog(name: "Bruno")
 ➡️ This line uses optional chaining (?.) to safely assign a new Dog object to the dog property of the owner.

 Since house.owner is not nil, Swift allows setting dog to a new Dog(name: "Bruno")

 If house.owner were nil, this line would silently do nothing, avoiding a crash
 
 
 
 */
