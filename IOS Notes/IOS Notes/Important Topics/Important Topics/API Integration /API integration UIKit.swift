/*
 
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
 
 
*/
