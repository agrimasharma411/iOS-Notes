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
 
 
*/
