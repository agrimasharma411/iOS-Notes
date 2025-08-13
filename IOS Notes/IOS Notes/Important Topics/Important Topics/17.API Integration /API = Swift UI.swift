/*
 -------------------------------------------------------
 ✅ 1. Model (Same in both)
 -------------------------------------------------------
 
 ✔️ UIKit & SwiftUI both use a Codable model to map JSON.

 
 -------------------------------------------------------
 ✅ 2. Service Class (Same in both)
 -------------------------------------------------------
 ✔️ A ProductService.swift class calls the API using URLSession.

 
 -------------------------------------------------------
 ✅ 3. ViewModel (Slightly Different)
 -------------------------------------------------------
 
 🀰🀰🀰🀰🀰🀰🀰
 UIKit:------------->>>>>>>>>>>>>
 🀰🀰🀰🀰🀰🀰🀰
 
 Just a normal class.

 var products: [ProductElement] = []

 Used completion closure to inform ViewController.
 
 🀰🀰🀰🀰🀰🀰🀰
 SwiftUI:------------->>>>>>>>>>>>>
 🀰🀰🀰🀰🀰🀰🀰
 class ProductViewModel: ObservableObject

 Uses @Published var products = [] to auto-update the UI.

 No need for completion handler in view.

 -------------------------------------------------------
 ✅ 4. View / UI Layer (Major Difference)
 -------------------------------------------------------
 
 🀰🀰🀰🀰🀰🀰🀰
 UIKit:------------->>>>>>>>>>>>>
 🀰🀰🀰🀰🀰🀰🀰
 Uses UIViewController and UITableView.

 Data manually reloaded using tableView.reloadData().

 Needs delegation (UITableViewDataSource, etc.).

 🀰🀰🀰🀰🀰🀰🀰
 SwiftUI:------------->>>>>>>>>>>>>
 🀰🀰🀰🀰🀰🀰🀰
 Uses ContentView with List.

 Automatically updates when @Published changes.

 Cleaner, declarative syntax.
 
 -------------------------------------------------------
 ✅ 5. Triggering API Call
 -------------------------------------------------------
 
 🀰🀰🀰🀰🀰🀰🀰
 UIKit:------------->>>>>>>>>>>>>
 🀰🀰🀰🀰🀰🀰🀰
 viewModel.loadProducts {
    self.tableView.reloadData()
 }
 
 🀰🀰🀰🀰🀰🀰🀰
 SwiftUI:------------->>>>>>>>>>>>>
 🀰🀰🀰🀰🀰🀰🀰
 
 .onAppear {
    viewModel.loadProducts()
 }

 
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰
 ✅ Ye kya kya karta hai? (Remember)
 
 @StateObject  →  ViewModel se data bind karta hai
 ------------

 List          → TableView ki tarah data show karta hai
 ------------

 .onAppear     → View load hote hi API call kar deta hai
 ------------
 
 🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰🀰


 ----------------------------------------------------------
 ✅ Step 1: Model
 ----------------------------------------------------------
 Created model from JSON using Codable

 Example:

 struct ProductElement: Codable, Identifiable {
     let id: Int
     let title: String
     let price: Double
 }
 ----------------------------------------------------------
 ✅ Step 2: Service Layer
 ----------------------------------------------------------
 Created ProductService class

 Used URLSession to fetch data

 Used completion: @escaping closure to return the result

 Used do-try-catch + JSONDecoder

 ----------------------------------------------------------
 ✅ Step 3: ViewModel
 ----------------------------------------------------------
 Created ProductViewModel (ObservableObject)

 Called service class

 Stored decoded products in @Published var products: [ProductElement]

 Now comes:

 ----------------------------------------------------------
 ✅  Step 4: SwiftUI View
 ----------------------------------------------------------
 Show    -> data using List or ForEach

 Use     -> .onAppear to call loadProducts()


 ✅ Step 4 starts now: Show API data in SwiftUI UI
 
     @StateObject se ViewModel connect karenge
 
 Example--->
 
 struct ContentView: View {
     @StateObject private var viewModel = ProductViewModel()
     
     var body: some View {
         List(viewModel.products, id: \.id) { product in
             VStack(alignment: .leading) {
                 Text(product.title)
                     .font(.headline)
                 Text("₹\(product.price)")
                     .font(.subheadline)
             }
         }
         .onAppear {
             viewModel.loadProducts()
         }
     }
 }
 
 ✅ Ye kya kya karta hai?
 @StateObject → ViewModel se data bind karta hai

 List → TableView ki tarah data show karta hai

 .onAppear → View load hote hi API call kar deta hai

At Last------>>>>
 
 #Preview {
     ContentView()
 }






 
 








 
*/
