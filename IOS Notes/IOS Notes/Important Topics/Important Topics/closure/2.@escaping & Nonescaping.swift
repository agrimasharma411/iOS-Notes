//
//  @escaping & Nonescaping.swift
//  Digital Notes
//
//  Created by Agrima Sharma on 30/05/25.
//
// import Foundation
/*

                                   ✅ Non-Escaping Closure ( default)

func movie(completion: () -> Void) {
    print("Start 🎬")
    completion()
    print("End 🎞️")
}

movie {                                               //call
    print("🍿 Watching movie now")
}

    🖨️ Output:-
     Start 🎬
    🍿 Watching movie now
     End 🎞️
 
                        Speaking --->>>>>>>>>>>>
 
 
 We created a function called movie that takes a closure as a parameter named completion.
Inside the function, it first prints "Start 🎬", then calls the completion() closure, and finally prints "End 🎞️".

When we call the movie function, we pass a closure that prints "🍿 Watching movie now".
So the closure gets executed in the middle of the function, exactly where completion() is written.

That's why the output appears in order:
 
Start → Watching → End — showing that the closure runs between                        the start and end of the main function.
 
...🧠 Explanation:------->>>>

The closure runs right in the middle of the function.
Everything is in order
Closure does not escape the function.





                 ✅ Escaping Closure

func movie(completion: @escaping () -> Void) {
    print("Start 🎬")

    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        completion()
    }

    print("End 🎞️")
}

movie{
    print("🍿 Movie is starting after some delay...")
}
🖨️ Output:-
Start 🎬
End 🎞️
🍿 Movie is starting after some delay...


....🧠 Explanation:---->>>>

The closure runs after the function is done.
It was stored and called later (after 2 seconds).
So it’s escaping — and needs @escaping.


*/
