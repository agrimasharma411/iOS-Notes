/*
 
         |-------------------------------|
         |                               |
         |   🚀       FireBase           |
         |                               |
         |-------------------------------|
 
--------------------------------------------------------------
Q1: What is Firebase and why use it?
--------------------------------------------------------------

1️⃣ Short interview-style answer

Firebase is a Backend-as-a-Service (BaaS) platform by Google. It offers ready-to-use backend services like authentication, database, file storage, push notifications, analytics, etc., so we can focus on app development without managing our own server.

2️⃣ Extra detail

Firebase helps in rapid development — no need to write backend APIs from scratch.

Automatically scales as user base grows.

Provides real-time database options.

Tight integration with iOS and Swift.

3️⃣ Example (previous project)

In my last project, we used Firebase Authentication for login/signup, Firestore to store user profiles, and Cloud Messaging for push notifications. This avoided the need to maintain our own backend and reduced development time significantly.

4️⃣ Hinglish version

Firebase ek Google ka platform hai jo backend ka kaam ready-made de deta hai — jaise login system, database, file upload, push notification. Matlab mujhe server banane ka tension nahi lena padta, sirf app ka front-end banana hota hai. Jaise maine apne ek project me user ka data store karne ke liye Firestore use kiya aur login ke liye Firebase Auth. Sab kaam mast smooth ho gaya.
 
 --------------------------------------------------------------
 Q2: Difference between Firestore and Realtime Database
 --------------------------------------------------------------
 1️⃣ Short interview-style answer

 Both are NoSQL cloud databases by Firebase. Realtime Database is older, stores data as a big JSON tree, and is optimized for simple real-time syncing. Firestore is newer, stores data in collections and documents, supports richer queries, and scales better.

 2️⃣ Extra detail

 Feature    Realtime Database    Firestore
 Data Model    JSON tree    Collection → Documents
 Query Power    Limited    Advanced queries & filtering
 Scaling    Single large DB    Better horizontal scaling
 Offline Support    Yes (basic)    Yes (better, automatic caching)
 Pricing    Based on data usage    Based on reads/writes/storage

 Firestore is generally the recommended choice for new projects.

 Realtime Database is still good for ultra-low latency needs.

 3️⃣ Example (previous project)

 In one of my projects, we started with Realtime Database for a live chat feature because of its low-latency updates. Later, for profile and post storage, we used Firestore since it allowed more structured queries like filtering posts by category.

 4️⃣ Hinglish version

 Dono hi Firebase ke NoSQL database hain. Realtime Database pura JSON me data rakhta hai aur real-time update dena easy hota hai, lekin queries simple hoti hain. Firestore thoda modern hai, data “collections” aur “documents” me rakhta hai, queries powerful hoti hain, aur scaling easy hota hai. Simple words me — chat ke liye Realtime DB, complex data ke liye Firestore.
 
 --------------------------------------------------------------
 Q3: How to integrate Firebase in an iOS app?
 --------------------------------------------------------------

 1️⃣ Short interview-style answer

 To integrate Firebase in an iOS app, we first add the project in the Firebase Console, download the GoogleService-Info.plist file, add the Firebase SDK (via Swift Package Manager or CocoaPods), and then initialize Firebase in the AppDelegate with FirebaseApp.configure().

 2️⃣ Extra detail (step-by-step)

 Go to Firebase Console → create a new project.

 Add iOS app → register bundle ID.

 Download GoogleService-Info.plist → add it into Xcode project.

 Add Firebase SDK →

 Swift Package Manager (preferred): https://github.com/firebase/firebase-ios-sdk

 Or CocoaPods: pod 'Firebase/Core'

 Initialize Firebase in AppDelegate:

 import FirebaseCore

 @main
 class AppDelegate: UIResponder, UIApplicationDelegate {
     func application(_ application: UIApplication,
                      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         FirebaseApp.configure()
         return true
     }
 }


 Now add services as per need: FirebaseAuth, Firestore, Messaging, etc.

 3️⃣ Example (previous project)

 In my last project, we integrated Firebase using Swift Package Manager. After adding the GoogleService-Info.plist, we called FirebaseApp.configure() in AppDelegate. Then we used Firebase Auth for login and Firestore for storing user data.

 4️⃣ Hinglish version

 Firebase ko iOS app me integrate karne ke liye pehle Firebase Console me project banao, fir apni iOS app register karo. Uske baad ek GoogleService-Info.plist file milegi, usko Xcode project me daal do. Fir SDK add karo (SPM ya CocoaPods se). AppDelegate me FirebaseApp.configure() call karo. Bas, ab tum Firebase ke alag-alag services jaise Auth, Firestore use kar sakte ho.
 
 --------------------------------------------------------------
 Q4: How does Firebase Authentication work?
 --------------------------------------------------------------

 1️⃣ Short interview-style answer

 Firebase Authentication provides backend services to handle user login and signup. It supports email/password login, social providers like Google, Facebook, Apple, and even phone number login. The SDK manages tokens and session handling for us.

 2️⃣ Extra detail

 When a user signs in, Firebase issues an ID Token and Refresh Token.

 The app uses the ID Token to authenticate requests.

 The token refreshes automatically, so you don’t have to manage sessions manually.

 Supports methods:

 Email/Password

 Phone number

 Google, Facebook, Twitter, Apple Sign-In

 Anonymous login

 3️⃣ Example (previous project)

 In my last project, we used Firebase Authentication with email and password for user login. Once the user logged in, Firebase gave us a unique UID which we stored in Firestore along with profile details. We also enabled “Continue with Google” for easier signup.

 4️⃣ Hinglish version

 Firebase Auth basically login/signup ka backend handle karta hai. Tumhe apna server banane ki zarurat nahi hoti. Ye alag-alag tarike support karta hai jaise email-password, Google, Facebook, Apple sign in. Jab user login karta hai to Firebase ek token deta hai jisse app ko pata chalta hai ki ye user authenticated hai. Mere project me maine email-password auth use kiya tha aur Google sign-in bhi enable kiya tha.
 
 --------------------------------------------------------------
 Q5: How to store and retrieve data from Firestore?
 --------------------------------------------------------------

 1️⃣ Short interview-style answer

 Firestore stores data in collections and documents. Each collection contains documents, and each document holds key-value pairs. To store, we use setData() or addDocument(), and to retrieve, we use getDocument() or getDocuments().
 
*/
