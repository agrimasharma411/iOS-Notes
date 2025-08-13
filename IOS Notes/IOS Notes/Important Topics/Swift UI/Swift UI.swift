/*
 
 
 -------------------------------------------------------------
 🔹 1. What is SwiftUI and how is it different from UIKit?
 -------------------------------------------------------------
 🧠 Hinglish (Concept):
 UIKit mein manually har step manage karte hain (button, layout, action). SwiftUI mein sirf UI ka final state batate hain — SwiftUI usko render aur update karta hai.

 🎯 Interview Answer:
 SwiftUI is declarative. We describe the UI and SwiftUI handles updates. UIKit is imperative and needs manual updates.

 🛠 Scenario:
 In UIKit, you add buttons, set frames, then assign actions. In SwiftUI, just declare what the button should do.

 
 -------------------------------------------------------------
 🔹 2. What is @State and when should you use it?
 -------------------------------------------------------------
 🧠 Hinglish:
 View ke andar chhoti, local changing value ko manage karne ke liye @State use karte hain.

 🎯 Answer:
 @State stores local state within a view. When it changes, the view refreshes.

 🛠 Scenario:
 Tap a button to increase a counter — the counter is stored in @State.

 -------------------------------------------------------------
 🔹 3. What is @Binding and why is it needed?
 -------------------------------------------------------------
 🧠 Hinglish:
 Child view ko parent ka state variable update karne dena ho — toh @Binding use karo.

 🎯 Answer:
 @Binding allows two-way data flow from parent to child.

 🛠 Scenario:
 A parent switch passes its value to a child view to toggle on/off from there.
 
 -------------------------------------------------------------
 🔹 4. @ObservedObject, @StateObject, @EnvironmentObject
 -------------------------------------------------------------
 🧠 Hinglish:

 @StateObject: jab ViewModel isi view mein banate ho

 @ObservedObject: jab kisi aur se pass kiya gaya ho

 @EnvironmentObject: jab global level pe shared data ho

 🎯 Answer:
 Use @StateObject to create, @ObservedObject to observe, @EnvironmentObject to share globally.

 🛠 Scenario:
 LoginView owns its ViewModel → @StateObject.
 Child gets the ViewModel → @ObservedObject.
 UserSession shared in whole app → @EnvironmentObject.

 -------------------------------------------------------------
 🔹 5. What is a ViewBuilder?
 -------------------------------------------------------------
 🧠 Hinglish:
 Multiple views ko ek closure ke andar declare karne ke liye ViewBuilder use hota hai.

 🎯 Answer:
 ViewBuilder is a special result builder used to group multiple views declaratively.

 🛠 Scenario:
 A VStack with image, text, and button — ViewBuilder manages them together cleanly.

 -------------------------------------------------------------
 🔹 6. How does navigation work in SwiftUI?
 -------------------------------------------------------------
 🧠 Hinglish:
 NavigationLink ke through hum destination view pe jaate hain.

 🎯 Answer:
 Navigation is handled declaratively using NavigationLink inside a NavigationStack.

 🛠 Scenario:
 Tapping a product opens a product detail screen — declared using NavigationLink.

 -------------------------------------------------------------
 🔹 7. NavigationStack vs NavigationView
 -------------------------------------------------------------
 🧠 Hinglish:
 NavigationView purana hai, NavigationStack latest hai (iOS 16+), better control deta hai.

 🎯 Answer:
 NavigationStack is newer and supports better path-based navigation than NavigationView.

 🛠 Scenario:
 Multiple push/pop routes in an onboarding flow — use NavigationStack.

 -------------------------------------------------------------
 🔹 8. What is LazyVStack?
 -------------------------------------------------------------
 🧠 Hinglish:
 Scroll view mein performance ke liye views ko lazily load karta hai.

 🎯 Answer:
 LazyVStack creates child views only when needed, ideal for scrollable content.

 🛠 Scenario:
 You load 500 news items — only visible ones are created at a time.

 -------------------------------------------------------------
 🔹 9. What is GeometryReader used for?
 -------------------------------------------------------------
 🧠 Hinglish:
 Parent ki width/height jaan ne ke liye use karte hain.

 🎯 Answer:
 GeometryReader gives access to parent view’s size and position.

 🛠 Scenario:
 Two-column layout in landscape, single column in portrait — based on screen width.

 -------------------------------------------------------------
 🔹 10. Conditional Views
 -------------------------------------------------------------
 🧠 Hinglish:
 Simple if-else use karke UI toggle karte hain.

 🎯 Answer:
 Use if or if-else inside the view body to show/hide views conditionally.

 🛠 Scenario:
 User logged in? Show "Welcome". Else show "Please login".

 -------------------------------------------------------------
 🔹 11. How does data flow in SwiftUI?
 -------------------------------------------------------------
 🧠 Hinglish:
 Top to bottom flow hota hai: @State → @Binding → @ObservedObject.

 🎯 Answer:
 Data flows from parent to child using property wrappers. SwiftUI auto-updates UI.

 🛠 Scenario:
 Adding a product updates cart count in nav bar — data flows from model to views.

 -------------------------------------------------------------
 🔹 12. When to use @Published?
 -------------------------------------------------------------
 🧠 Hinglish:
 ViewModel ke variables jo UI ko notify karte hain, unko @Published mark karte hain.

 🎯 Answer:
 Use @Published to notify changes from ViewModel to the view.

 🛠 Scenario:
 Profile data fetched from API — name and photo update live in UI.
 
 -------------------------------------------------------------
 🔹 13. MVVM: SwiftUI vs UIKit
 -------------------------------------------------------------
 🧠 Hinglish:
 SwiftUI mein binding direct hoti hai, UIKit mein delegate ya closures use hote hain.

 🎯 Answer:
 SwiftUI binds directly to ViewModel using wrappers — no boilerplate needed like in UIKit.

 🛠 Scenario:
 TextField auto-updates ViewModel and vice versa — no need for IBOutlet/action setup.

 -------------------------------------------------------------
 🔹 14. Combine + SwiftUI
 -------------------------------------------------------------
 🧠 Hinglish:
 @Published → Combine publisher → SwiftUI auto-subscribe karta hai.

 🎯 Answer:
 Combine enables reactive updates; SwiftUI listens to @Published and updates UI.

 🛠 Scenario:
 User types in search bar → list filters live without extra logic.

 -------------------------------------------------------------
 🔹 15. Animations
 -------------------------------------------------------------
 🧠 Hinglish:
 State change pe view animate karna ho toh withAnimation use karo.

 🎯 Answer:
 Use withAnimation or .animation() to animate changes like toggle or expand.

 🛠 Scenario:
 Button expands to show options — animated using SwiftUI.

 -------------------------------------------------------------
 🔹 16. Manual view refresh
 -------------------------------------------------------------
 🧠 Hinglish:
 State ya Published value change hogi toh view auto-update hoga.

 🎯 Answer:
 Just change the state variable — no manual refresh needed.

 🛠 Scenario:
 Clicking a button increments counter and updates view instantly.

 -------------------------------------------------------------
 🔹 17. Use of .id()
 -------------------------------------------------------------
 🧠 Hinglish:
 List ke har item ko unique identify karne ke liye .id() use hota hai.

 🎯 Answer:
 .id() helps uniquely identify views to avoid diffing issues.

 🛠 Scenario:
 Two todos named "Buy milk" — but different IDs ensure correct updates.

 -------------------------------------------------------------
 🔹 18. Performance Optimization
 -------------------------------------------------------------
 🧠 Hinglish:
 Heavy view ko avoid karo, lazy views use karo, ID sahi lagao.

 🎯 Answer:
 Use LazyVStack, avoid deeply nested views, and use .id() to boost performance.

 🛠 Scenario:
 Long list loads quickly because only visible items are built.

 -------------------------------------------------------------
 🔹 19. What is @Environment?
 -------------------------------------------------------------
 🧠 Hinglish:
 System-level properties (theme, orientation) access karne ke liye use hota hai.

 🎯 Answer:
 @Environment gives access to system values like color scheme or layout.

 🛠 Scenario:
 Use dark/light mode to show different themes dynamically.

 -------------------------------------------------------------
 🔹 20. View lifecycle
 -------------------------------------------------------------
 🧠 Hinglish:
 View appear/disappear hone pe hook karna ho toh .onAppear use karo.

 🎯 Answer:
 Use .onAppear and .onDisappear to handle SwiftUI view lifecycle.

 🛠 Scenario:
 Start a timer when screen appears, stop it when user navigates away.
 
 -------------------------------------------------------------
 21. Opaque Return Type (some View) ????
 -------------------------------------------------------------
 
 some View is called an opaque return type in Swift.
 It tells the compiler that a function or property will return a type conforming to View, but hides the exact type.
 It helps simplify return types, especially when the underlying view is complex or composed.

 Commonly used in SwiftUI's var body: some View.
 
 ❌ Problem is  :-
 The actual return type becomes something like:
 VStack<TupleView<(Text, Button)>> — which is long and messy.
 
 -------------------------------------------------------------
 22. MVVM in SwiftUI — Summary
 -------------------------------------------------------------
 MVVM stands for:

 Model → holds the data (like user, product)

 ViewModel → handles logic & prepares data for view

 View → UI shown to the user

 🎯 SwiftUI-Specific Highlights
 ViewModel is usually a class with @Published properties.

 View observes it using @StateObject or @ObservedObject.

 No delegates or callbacks — just direct binding.

 🛠 Scenario (Real-World):
 You're building a weather app.

 Model: WeatherData (temp, humidity)

 ViewModel: Fetches weather from API and stores it in @Published var data

 View: Shows temperature by binding to viewModel.data.temp

 As soon as data updates, UI updates automatically.
 
 
 
 
 
 
 */
