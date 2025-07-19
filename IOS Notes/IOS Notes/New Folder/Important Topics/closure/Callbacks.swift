//
//  Callbacks.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//
/*
 

import Foundation
 
 |----------------------------------------------------------|
 |                       Callback                           |
 |----------------------------------------------------------|
 
 A callback is  a closure that is passed into a function as a               parameter, and when a particular task is                    completed then it will run.
 
 
 
 func downloadData(completion: () -> Void) {
     print("Downloading...")
     completion()  // ✅ callback runs
 }

 downloadData {
     print("Download complete!")  // ✅ callback body
 }
 
 
 
 
        🔹 Common situations where callback is needed:
|---------------------------------------------------------------|
|      Situation            |      Why callback is used?        |
|---------------------------------------------------------------|
|✅ Network calls           |  After API response, update UI    |
|✅ Animation complete      |  Do something after animation ends|
|✅ Saving to database/file |  Show message after saving done   |
|✅ User actions            |  Run custom code after button tap |
|✅ Timers / Delayed work   |  Run code after few seconds       |
|---------------------------------------------------------------|
 

 |------------------------------------------------|
 |             no param no return                 |
 |------------------------------------------------|
 
func movie(completion:()->Void) {
   
    completion()

}

movie{
    print("hey hi i am the statement of closure")
}
 |------------------------------------------------|
 |               give param no return             |
 |------------------------------------------------|


func movie (completion:(Int)-> Void){
    
    Completion(10)
   
}

movie { rate in 
    print ("IMBD Score:- \(rate)"
)}
 |------------------------------------------------|
 |              give param get return (A)         |
 |------------------------------------------------|

func movie(completion: (String) -> String) {

let reply = completion("Good movie")
print("Reply: \(reply)")

}

movie { review in
print("Results: \(review)")
return "Thanks"
}
 
 |------------------------------------------------|
 |              give param get return (B)         |
 |------------------------------------------------|

func calculate(a:Int, b:Int, operation:(Int,Int)->Int) {
    let result = operation(a,b)
    print("Answer is \(result)")
}
calculate (a:5,b:3) {(x,y) in
    return x+y
}


*/
