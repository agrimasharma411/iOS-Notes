/*
 ------------------------------------------------------
                 🚀Defer Keyword🚀
 ------------------------------------------------------
 
 Defer---->>  In a function, when we write defer, it runs at the          very end, after all other code of function just             before the current scope you can say."
 
 Defer---->> More defer -->> Executes in Reverse order
 
 
 ----------------------------------------------------------
 Example -1  Simple multiple  Defer
 ----------------------------------------------------------
 
 func test() {
 
     print(1)
     
                 defer {
                          print(2)
                        }
           
     print(3)
     
                defer {
                           print(4)
                       }
          
      print(5)
 }
 test()
 
 
 OUTPUT--->>>  1,3,5,4,2
 
 ------------------------------------------------------
 Example -2 Simple multiple NESTED defer
 ------------------------------------------------------
 
 func test() {
     print(1)
     
     defer {
       print(2)
      
                   defer {
                          print(3)
                         }
       print(4)
     }
     
     print(5)
    
 }

 test()

 OUTPUT---->>> 1,5,2,4,3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */
