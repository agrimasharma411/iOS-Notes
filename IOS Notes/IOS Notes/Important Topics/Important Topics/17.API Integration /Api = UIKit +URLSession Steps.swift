/*
        High Level Idea:-
 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
 ★                  ✅ Required Swift Files                     ★
 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
 
 
 MVVM          File Name                  Role
---------------------------------------------------------------
 
Model       Product.swift           Model file from json
----------------------------------------------------------------
Service    ProductService.swift     API fetch logic (URLSession                                     code) = API Caller
----------------------------------------------------------------
ViewModel   ProductViewModel.swift    service se data fetch
----------------------------------------------------------------
View        ViewController.swift      data show karega                                              (UITableView)
----------------------------------------------------------------
 
 
 
★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
  ✅ High-Level API Integration Flow in Swift (UIKit /SwiftUI )
★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
 
 
 ----------------------------------------------------------------
 🔹 Step 1: Model File
 ----------------------------------------------------------------
 ✅ JSON structure dekh ke struct banao
 📄 Example: Product.swift → struct Product, struct Rating, enum Category, etc.

 
 ----------------------------------------------------------------
 🔹 Step 2: Service File (API caller)
 ----------------------------------------------------------------
 ✅ Network call logic yahan hota hai
 📄 Example: ProductService.swift → URLSession.shared.dataTask, decode, etc.

 
 ----------------------------------------------------------------
 🔹 Step 3: ViewModel File (Data manager)
 ----------------------------------------------------------------
 ✅ API se jo data aaya, usko view ke liye store aur prepare karta hai
 📄 Example: ProductViewModel.swift → @Published var products = [Product]()

 
 ----------------------------------------------------------------
 🔹 Step 4: ViewController / SwiftUI View
 ----------------------------------------------------------------
 ✅ UI me data dikhana
 📄 Example: ViewController.swift ya ContentView.swift
 
 
 
     ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
     ★                 SWIFT UI                    ★
     ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
 
 ProductService.swift    →    Only network call handle

 ProductViewModel.swift  →   Service se data leke @Published                               variable me store karta hai

 ViewController.swift    →      ViewModel observe karta hai
 
 

 |-------------------------------|
 |                               |
 |   🚀 Explanation:--           |
 |                               |
 |-------------------------------|
 
 
 ----------------------------------------------------------------
 1. JSON → Model (Struct)
 ----------------------------------------------------------------
 📦 JSON data ko Swift struct me convert kiya

 Real API ka data mostly JSON format me hota hai

 Us JSON ke structure ke according hum Swift me Codable struct banate hain

 Taaki decode kar sakein aur Swift object me use kar sakein

 ----------------------------------------------------------------
 2. Service Layer → API Call + Decoding
 ----------------------------------------------------------------
 🌐 Yeh layer sirf networking ka kaam karti hai

 URLSession use karke API call ki

 JSON data receive hua, usse decode kiya model me

 Agar error aayi to handle bhi kiya

 Result closure ke through data ya error pass kiya

 ----------------------------------------------------------------
 3. ViewModel → Logic + Data Store
 ----------------------------------------------------------------
 🧠 ViewModel logic handle karta hai, UI se data separate rakhta hai

 ViewModel me ek array hota hai jisme API se aaya hua data store hota hai

 Service class ko call karke data fetch karta hai

 Fetched data ko apne array me store karta hai

 ViewController ko batata hai jab data ready ho

 ----------------------------------------------------------------
 4. ViewController → Show Data in UI
 ----------------------------------------------------------------
 🖥 Ye sirf user interface ko handle karta hai

 ViewModel se data fetch karta hai

 TableView me dikhaata hai (like title, price, etc.)

 ViewController khud data nahi lata, bas dikhaata hai


 
 */
