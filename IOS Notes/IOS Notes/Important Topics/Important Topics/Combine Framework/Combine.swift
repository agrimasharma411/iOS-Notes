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
 
 */
