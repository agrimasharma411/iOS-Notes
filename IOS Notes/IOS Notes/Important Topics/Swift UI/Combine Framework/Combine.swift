/*
 z
 
 
 
 
 
 ---------------------------------------------------------------
 1. What is the Combine framework in Swift? Why is it used?
 ---------------------------------------------------------------
 Answer:
 Combine is Apple’s reactive programming framework used for handling asynchronous events using Publishers and Subscribers.
 It helps manage tasks like:

 Networking

 UI updates

 State changes
 …in a declarative, clean, and chainable way.

 ---------------------------------------------------------------
 2. What are Publishers and Subscribers in Combine?
 ---------------------------------------------------------------
 Answer:

 Publisher: Emits a stream of values over time (e.g. URLSession.DataTaskPublisher).

 Subscriber: Receives and reacts to those values.

 You subscribe to a publisher to receive, transform, or handle errors.

 ---------------------------------------------------------------
 3. What is @Published and how is it used with Combine?
 ---------------------------------------------------------------
 Answer:
 @Published is a property wrapper used in classes conforming to ObservableObject.
 It makes a property a Publisher, so changes to that property can be observed by Combine pipelines or SwiftUI views.

 
 class ViewModel: ObservableObject {
     @Published var name = "Agrima"
 }
 ---------------------------------------------------------------
 4. How does Combine handle error and completion?
 ---------------------------------------------------------------
 Answer:
 Combine handles errors via .sink(receiveCompletion:receiveValue:).
 Completion has two cases:

 .failure(Error) – stream ends with error.

 .finished – stream ends successfully.

 ---------------------------------------------------------------
 5. What is AnyCancellable in Combine?
 ---------------------------------------------------------------
 Answer:
 When you subscribe to a publisher, Combine returns an AnyCancellable.
 It holds the subscription and can be stored to keep the subscription alive, or cancelled to stop it.

 var cancellables = Set<AnyCancellable>()

 publisher
   .sink { ... }
   .store(in: &cancellables)
 
 ---------------------------------------------------------------
 6. What is the difference between sink and assign in Combine?
 ---------------------------------------------------------------
 Answer:

 sink: Allows custom handling of values and completion.

 assign: Automatically assigns values to a property on an object.

 
 // Using sink
 publisher.sink { value in self.name = value }

 // Using assign
 publisher.assign(to: \.name, on: self)
 ---------------------------------------------------------------
 7. What is map, flatMap, and switchToLatest in Combine?
 ---------------------------------------------------------------
 Answer:
 These are transform operators:

 map: Transforms each value.

 flatMap: Flattens a nested publisher (e.g., API within API).

 switchToLatest: Cancels the previous publisher and subscribes to the latest one.

 ---------------------------------------------------------------
 8. How do you cancel a Combine subscription?
 ---------------------------------------------------------------
 Answer:

 Store the subscription in an AnyCancellable.

 Call .cancel() on it or use .store(in:) with a Set<AnyCancellable>.

 Cancelling is important to avoid memory leaks and unnecessary work.

 ---------------------------------------------------------------
 9. What are backpressure and demand in Combine?
 ---------------------------------------------------------------
 Answer:
 Backpressure means controlling how many values a subscriber wants to receive at a time.
 It's handled using the Subscriber protocol by requesting demand in:

 func receive(_ input: Input) -> Subscribers.Demand
 Usually, Combine manages this for you under the hood.

 ---------------------------------------------------------------
 10. Can you use Combine with URLSession? How?
 ---------------------------------------------------------------
 Answer:
 Yes. Combine provides dataTaskPublisher(for:).

 
 URLSession.shared.dataTaskPublisher(for: url)
     .map(\.data)
     .decode(type: Model.self, decoder: JSONDecoder())
     .sink(receiveCompletion: ..., receiveValue: ...)
 It allows reactive-style networking, decoding, and error handling all in one pipeline.
 ---------------------------------------------------------------
 what is Cancellable ?
 ---------------------------------------------------------------
 👉 Cancellable = a protocol that represents something you can cancel (like a subscription).
 👉 AnyCancellable = the concrete type you usually store.

 Key Points for Interview:

 When you subscribe to a publisher (sink, assign), it returns an AnyCancellable.

 You must store this AnyCancellable (usually in a Set<AnyCancellable>) to keep the subscription alive.

 If not stored → subscription gets canceled immediately.

 When AnyCancellable is deallocated → subscription is automatically cancelled (memory safety).

 ✅ Example:

 var cancellables = Set<AnyCancellable>()

 publisher
     .sink { value in
         print(value)
     }
     .store(in: &cancellables)


 So in short:
 Cancellables are Combine’s way to manage and cancel subscriptions, preventing memory leaks.
 
 */
