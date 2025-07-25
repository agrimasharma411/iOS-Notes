/*
 
 
 |-------------------------------|
 |                               |
 |   🚀        Singlton          |
 |                               |
 |-------------------------------|
 
 
 class English {
 static let shared = English()
 
  private init() {}
    
    func speak(){
       print("hi i am writing english")
   }
  

 }
 English.shared.speak()
 
 -----------------------------------------------------------
 
 Note-
 ✅ static let shared ensures only one instance
 ✅ private init() prevents outside initialization
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
