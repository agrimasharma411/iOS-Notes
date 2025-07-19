//
//  Trailing Closure.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//
//import Foundation
/*

                      ✅ Normal Closure Syntax:
You write the closure inside the parentheses as a parameter.

func movie(completion: () -> Void) {
    completion()
}

 movie(completion: {
    print("Hi there!")  // 👈 Closure written INSIDE ()
})
👉 This is called Normal Closure Syntax.
 
 */




                        //✅ Trailing Closure Syntax:
/*


You write the closure outside the parentheses if it's the last (or only) parameter.


 movie {
    print("Hi there!")  // 👈 Closure written OUTSIDE ()
}
👉 This is called Trailing Closure Syntax.

💡 Shortcut Rule:
If closure is last parameter → you can use trailing closure.
If closure is not last → you must use normal syntax.


*/

//---------------------------------------------------------//
/* If two parameter and last parameter is closure -
 Then  how railing closure is look like
//----------------------------------------------------------//
 
 func downloadData(from url: String, completion: () -> Void) {
     print("Downloading from \(url)")
     completion()
 }
 
 ✅ Normal Call:

 downloadData(from: "https://example.com", completion: {
     print("Download complete")
 })
 
 
 ✅ Trailing Closure:

 downloadData(from: "https://example.com") {
     print("Download complete")
 }
 
 
 */
