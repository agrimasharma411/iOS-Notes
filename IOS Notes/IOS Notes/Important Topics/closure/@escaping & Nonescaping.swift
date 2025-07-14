//
//  @escaping & Nonescaping.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//

// import Foundation
//
//                                   ✅ Non-Escaping Closure ( default)
//
//func movie(completion: () -> Void) {
//    print("Start 🎬")
//    completion()
//    print("End 🎞️")
//}
//
//movie {                                               //call
//    print("🍿 Watching movie now")
//}
//
//🖨️ Output:-
//Start 🎬
//🍿 Watching movie now
//End 🎞️
//
//...🧠 Explanation:------->>>>
//
//The closure runs right in the middle of the function.
//Everything is in order
//Closure does not escape the function.
//
//
//
//
//
//                                  ✅ Escaping Closure
//
//func movieAsync(completion: @escaping () -> Void) {
//    print("Start 🎬")
//
//    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//        completion()
//    }
//
//    print("End 🎞️")
//}
//
//movieAsync {
//    print("🍿 Movie is starting after some delay...")
//}
//🖨️ Output:-
//t
//Start 🎬
//End 🎞️
//🍿 Movie is starting after some delay...
//
//
//....🧠 Explanation:---->>>>
//
//The closure runs after the function is done.
//It was stored and called later (after 2 seconds).
//So it’s escaping — and needs @escaping.
//
//
