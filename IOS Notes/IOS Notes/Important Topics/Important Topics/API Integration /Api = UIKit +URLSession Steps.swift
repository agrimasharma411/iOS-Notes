/*
 
 
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
