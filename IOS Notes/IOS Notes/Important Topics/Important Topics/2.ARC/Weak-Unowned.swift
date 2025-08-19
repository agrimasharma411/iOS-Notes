
/*

 
 For Break the retain cycle- we use Weak / Unowned for properties
 |-------------------------------------------------------------|
 |✅ weak var → if object might be nil                             |
 |✅ unowned let → if object won’t be nil,required and always alive|
 |-------------------------------------------------------------|
 
            ❓ Why is weak always optional?
 
 
⭐️⭐️ Because ARC sets weak references to nil when the object is   deallocated.
     Only optionals can hold nil, so weak must be declared as optional.
 
 
 unowned is important-
 ⭐️⭐️ Unowned keep the reference but will not increase the Reference  Count (In this way it prevents from retain cycle when object hold to each other)
 
 USE CASE
❓ Kya hota agar yahan unowned ki jgh weak use karte?

// ❌ Not allowed:
weak let citizen: Citizen? // ❌ compile error — ⭐️ weak must be var ⭐️, not let
Ya agar:

weak var citizen: Citizen? // ✅ allowed but optional
⚠️ Problem:
citizen optional ban jaata hai

Lekin Passport hamesha Citizen ke saath hona chahiye

Agar citizen nil ho gaya → passport.citizen?.id fail karega

🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
//******⭐️⭐️ Use unowned when the reference must always exist and optionality would break the logic.  *******//
🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
class Citizen {
    var passport: Passport?
}

class Passport {
    unowned let citizen: Citizen  // ✅ required, non-optional
    init(citizen: Citizen) {
        self.citizen = citizen
    }
}
*/
