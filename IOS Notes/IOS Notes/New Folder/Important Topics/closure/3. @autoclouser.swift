
/*
          //1.✅ Regular Closure Version
 

func movie(action: () -> String) {
    print("Start")
    print(action())  // Call the closure manually
    print("End")
}

movie {
    return "

Movie is playing"
}
🔹 Here, we pass a closure using { return ... }.




                                  2. ✅ Autoclosure Version (Cleaner)

func movie(action: @autoclosure () -> String) {

    print(action())          // Still called like before
   
}

movie(action: "🎬 Movie is playing")
 
 
🔹 Now, we just pass a plain string, no {} or return. Swift wraps it automatically as a closure.

🧾 Output for Both Same:

Start
🎬 Movie is playing
End
                
                
                                 🧠 How to say in Interview:
“In the first version, I passed a regular closure using {}. In the second version, I used @autoclosure, which let me pass a simple expression directly. Swift wraps it for delayed execution, keeping the code clean.”


*/
