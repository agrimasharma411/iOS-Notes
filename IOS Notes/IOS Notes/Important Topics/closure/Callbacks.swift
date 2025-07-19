//
//  Callbacks.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//
/*
 

import Foundation
 
---------------------------2. closure as callback -
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
