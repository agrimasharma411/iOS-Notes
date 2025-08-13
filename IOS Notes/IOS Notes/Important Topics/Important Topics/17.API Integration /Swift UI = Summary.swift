/*
 
 
 SwiftUI Concept                Purpose / Behavior
 --------------------------------------------------------------
 @State                  A property wrapper to declare local                            state within a view that triggers UI                        updates
 --------------------------------------------------------------
 @Binding                A property wrapper to access and modify                        a @State property from another view
 --------------------------------------------------------------
 @Environment            A property wrapper to access                                  system/environment values (like color                       scheme, locale)
 --------------------------------------------------------------
 ObservableObject        A protocol that a class conforms to so                        SwiftUI can observe its data changes
 --------------------------------------------------------------
 @Published              A property wrapper that notifies                              SwiftUI when the marked property                            changes
 --------------------------------------------------------------
 @StateObject            A property wrapper that creates, owns,                        and observes an ObservableObject                            instance
 --------------------------------------------------------------
 @ObservedObject         A property wrapper used to observe an                         existing ObservableObject passed from                       parent
 --------------------------------------------------------------
 @EnvironmentObject      A property wrapper that accesses a                            shared object injected into the view                        hierarchy
 --------------------------------------------------------------
 
 
 Seeeeee-------->>>
 
 @State       -->>  when you're managing simple local data
 @StateObject -->>  If you're tracking data coming from a                       ViewModel/API
 
 👀 In Context:->
 If you're tracking a counter:
 ✅ Use @State var count = 0

 If you're tracking data coming from a ViewModel/API:
 ✅ Use @StateObject var viewModel = MyViewModel()
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 📘 SwiftUI Concepts vs Real-Life Analogy
 
 SwiftUI Concept                   Real-Life Analogy
 
 --------------------------------------------------------------
 ObservableObject           🏫 School under observation — we’re                         keeping an eye on it
 --------------------------------------------------------------
 @Published                 📒 Attendance book — changes                                (absent/present) are noted &                                reported to UI
 --------------------------------------------------------------
 @StateObject               👨‍🏫 Principal — creates, owns, and                           monitors the school (initializes                            ObservableObject)
 --------------------------------------------------------------
 @ObservedObject            👩‍🏫 Vice Principal — 👀 Child can                            observe or use a value/object passed                        from Parent, but does not own it
 --------------------------------------------------------------
 @State                     📦 Personal locker — view’s own                             local data, if changed → UI updates
 --------------------------------------------------------------
 @Binding                   🧶 Thread to locker — 🔄 Child can                          access and modify a variable that                           belongs to the Parent, but does not                         own it
 --------------------------------------------------------------
 @EnvironmentObject         🌍 Government directive — shared                            object injected from outside,                               accessible globally
 --------------------------------------------------------------
 @Environment               🌤️ Weather info — system values like                        color scheme, locale, etc.
 --------------------------------------------------------------
 
 
 
 
 */
