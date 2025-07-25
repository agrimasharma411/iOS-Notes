/*
 
 
 ✅ What is Module?
 🧠 Simple Rule:
 Whatever you import = is a Separate modu
 ---------------------------------------------------------
 Module Type                Example
 ----------------------------------------------------------
 Your Main App            Your main iOS project
 Third-party-Framework    Alamofire, Firebase, Kingfisher
 Swift Package            A custom Swift Package / SPM
 Apple Frameworks         Foundation, UIKit, AVKit, etc.
 Custom Framework         A framework you build yourself
 Unit Test Target         Even test targets are treated as                            separate modules
 ----------------------------------------------------------
 
 |-------------------------------|
 |                               |
 |     🚀 Access Modifiier       |
 |                               |
 |-------------------------------|
 
 
 📌 Key Differences
 Modifier  Same-File Same-Module Other-Module Overridable-Outside
 open          ✅       ✅           ✅               ✅
 public        ✅       ✅           ✅               ❌
 internal      ✅       ✅           ❌               ❌
 fileprivate   ✅       ❌           ❌               ❌
 private       ❌       ❌           ❌               ❌

 
 
 
 -------------------------------------------------------------
 1. open = ✅ Usable and overridable outside the module.
 --------------------------------------------------------------

 open class Animal {
     open func speak() {}
 }
 
 --------------------------------------------------------------
 2. public = ✅ Usable outside the module ❌ but cannot override            outside.
 --------------------------------------------------------------
 
 public class Car {
     public func drive() {}
 }
 
 --------------------------------------------------------------
 3. internal (Default) = ✅ Usable only within the same                                  module/project.
 --------------------------------------------------------------

 class Bike {
     func ride() {}
 }
 
 --------------------------------------------------------------
 4. fileprivate = ✅ Usable only within the same file.
 --------------------------------------------------------------

 fileprivate class Dog {
     func bark() {}
 }
 
 --------------------------------------------------------------
 5. private = ✅ Usable only within the same scope/block.
 --------------------------------------------------------------

 class House {
     private var secret = "hidden"
 }
-------------------------------------------------------------
 🔍 Common Interview Follow-ups Question
 -------------------------------------------------------------
 Qu-1 private vs fileprivate

 Qu-2 Default access level? → internal

 Qu-3 Can a public method be overridden outside? ❌

 Qu-4 Best access level for SDK APIs? → public or open

 Qu-5 Can you reduce access level below member’s type? ❌
 
 Qu-6 Can extensions access private members? ✅Yes if same scope
 
 Ans-6 ---->>>
🔸 Only if the extension is in the same file and same type.
🔸 private now means "same declaration scope", not just file.

      here we are talking about "Test" if we creating extension of Test, that it is the same scope

 
class Test {
    private var x = 10
}
extension Test {
    func show() {
        print(x) //               ✅ OK if same file
    }
}
 
 
 
 
 
 
 
 
 
 */
