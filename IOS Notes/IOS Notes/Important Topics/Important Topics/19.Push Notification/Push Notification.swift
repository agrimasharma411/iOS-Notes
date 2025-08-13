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

 📌 Ye token server ko diya jaata hai, taaki wo user tak message bhej sake.

 ---------------------------------------------------------
 🔹 Step 3: Token server ko bhejna hota hai
 ---------------------------------------------------------
 App backend ko ye token bhejna padta hai — ye server save karega.

 📌 Backend ko pata hoga kisko message bhejna hai.

 ---------------------------------------------------------
 🔹 Step 4: Server APNs ko message bhejta hai
 ---------------------------------------------------------
 Jab koi event hota hai (e.g., new message), server APNs ko message send karta hai — with token.

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
 🔹 1. Permission Request
 ---------------------------------------------------------
 When the app launches, I request user permission using UNUserNotificationCenter.
 If the user allows, the system proceeds to register the app for remote notifications.

 ---------------------------------------------------------
 🔹 2. Device Token from APNs
 ---------------------------------------------------------
 After permission is granted, I call
 UIApplication.shared.registerForRemoteNotifications()
 and receive a device token in the didRegisterForRemoteNotificationsWithDeviceToken delegate.

 ---------------------------------------------------------
 🔹 3. Send Token to Server
 ---------------------------------------------------------
 I send this token to the backend server so it can store it for that user.

 ---------------------------------------------------------
 🔹 4. Server Sends to APNs
 ---------------------------------------------------------
 When the server wants to send a message, it uses this token to send the notification to APNs (Apple Push Notification Service).
 
 ---------------------------------------------------------
 🔹 5. APNs Delivers to Device
 ---------------------------------------------------------
 APNs routes the notification to the correct iOS device.
 If the app is in background, the system shows it.
 If the app is in foreground, I handle it manually using:

 
 userNotificationCenter(_:willPresent:withCompletionHandler:)
 ---------------------------------------------------------
 🔸 Bonus:
 ---------------------------------------------------------
 I also enabled the Push Notification capability in Xcode and used App Store provisioning profiles during deployment.


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
