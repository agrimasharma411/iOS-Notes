/*
 
 
         Bundle ID          |             App ID
 --------------------------------------------------------------
                            |
        Format:             |         Format:
   com.company.appname      |    TeamID.com.company.appname
                            |
       Example:             |          Example:
  com.facebook.Messenger    | ABC123XYZ9.com.facebook.Messenger
 --------------------------------------------------------------
                            |
       Bundle-Id            |    App ID = Team-ID + Bundle-ID
                            |
  -------------------------------------------------------------
                            |      Team-ID = set by Apple
                            |      BUndle-ID = set by Developer
                            |
                            |
    Set by  Developer       |  Set by ->  Apple + Developer
                            |
 --------------------------------------------------------------
                            |
  Shown in -->              |    Shown in -->
 Xcode project, Info.plist  |    Apple Developer Portal
                            |
 --------------------------------------------------------------
                            |
    Editable in Xcode       |    Fixed once registered
                            |
 --------------------------------------------------------------
                            |
    Purpose                 |           Purpose
                            |
 Used in Xcode              |
 (info Plist)               |   App distribution via App Store
 to identify                |
 the app on a device        |       push Notifications
                            |
                            |       iCloud
                            |
                            |       In-App Purchases
                            |
                            |        Sign in with Apple



 
 
 
 
 
 
 
 
 
 
 
 */
