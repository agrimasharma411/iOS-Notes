/*
 
 
 
           |-------------------------------|
           |                               |
           |   🚀  Push Notification       |
           |                               |
           |-------------------------------|
 
 ---------------------------------------------------------
 Push Notification Flow:->
 
 permission → token → server → APNs → device.
 ---------------------------------------------------------
 
 
 ✅ Shortcut Line ✅ = 4 Step

 1. App permission leta hai →
 2. device token milta hai →
 3. server uss token se APNs ko message bhejta hai →
 4. Apple push karta hai device pe.
 
 ---------------------------------------------------------
 🔹 Step 1: Permission lo user se
 ---------------------------------------------------------
 App launch pe, system se push notifications ki permission maangte hain.

 📌 "Can we send you notifications?" popup dikhata hai.

 ---------------------------------------------------------
 🔹 Step 2: Device Token milega
 ---------------------------------------------------------
 Agar user allow kare, toh device ko Apple Push Notification Service (APNs) se ek unique device token milta hai.
 Uss se FCM token generate hoga. kyunki app me Firebase SDK installed h.

 📌 Ye token server ko diya jaata hai, taaki wo user tak message bhej sake.

 ---------------------------------------------------------
 🔹 Step 3: FCM Token server ko bhejna hota hai
 ---------------------------------------------------------
 App backend ko ye token bhejna padta hai — ye server save karega.

 📌 Backend ko pata hoga kisko message bhejna hai.

 ---------------------------------------------------------
 🔹 Step 4: Server FCM ko request(post) bhejta hai ------------------------------------------------------
 Jab koi event hota hai (e.g., new message), server FCM ko message send karta hai — with token.

 📌 Apple uss token ke base par correct device pe notification bhejta hai.

 ---------------------------------------------------------
 🔹 Step 5: Notification device pe dikhai jaati hai
 ---------------------------------------------------------
 iOS notification ko system tray mein show karta hai — even if app is closed.

 📌 User tap kare toh app open ho sakta hai ya action perform ho sakta hai.

 ---------------------------------------------------------
 🔹 Optional: Local Notification bhi hoti hai
 ---------------------------------------------------------
 Ye device se hi fire hoti hai — bina internet/server ke.

 📌 E.g., Reminder after 10 mins, birthday alert, etc.
 
 
 |--------------------------------------------------------|
 |                                                        |
 |   🚀  Push Notification = Interview Ready Answer       |
 |                                                        |
 |--------------------------------------------------------|
 
 ---------------------------------------------------------
 🔹 Step 1: Permission lo user se
 ---------------------------------------------------------

 App launch par system popup aata hai → "Allow Notifications?"

 ---------------------------------------------------------
 🔹 Step 2: APNs Device Token generate hota hai
 ---------------------------------------------------------

 Agar allow kare → iOS APNs se ek device token banata hai.
 Firebase SDK isse internally use karke FCM Token banata hai.

 ---------------------------------------------------------
 🔹 Step 3: FCM Token server ko bhejna
 ---------------------------------------------------------

 App FCM token backend ko bhej deta hai (API call se).
 Server database me save karta hai user ke saath.

 ---------------------------------------------------------
 🔹 Step 4: Server → FCM → APNs → Device
 ---------------------------------------------------------

 Backend server FCM ko request bhejta hai (token + message).
 FCM us token ko APNs se map karta hai.
 APNs correct iPhone pe notification push kar deta hai.

 ---------------------------------------------------------
 🔹 Step 5: Notification device par show hota hai
 ---------------------------------------------------------

 System tray me dikhai deta hai → user tap kare toh app open ho jata hai / action perform hota hai.
 
 */
