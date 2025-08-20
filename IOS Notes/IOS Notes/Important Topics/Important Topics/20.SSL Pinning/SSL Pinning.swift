/*
 
 
 
 -------------------------------------------------------------
 🔐 What is SSL?
 -------------------------------------------------------------
 SSL = Secure Sockets Layer
 🟢 It encrypts data sent between your app and the server.
 ✅ Ensures privacy (no one can read your API data).

 Example:

 Without SSL: Anyone can see your password in plain text. ❌

 With SSL (HTTPS): Data is encrypted. 🔒✅

 -------------------------------------------------------------
 ❓ Why is SSL not enough?
 -------------------------------------------------------------
 Your app trusts any "trusted" server by default.
 But what if a hacker sets up a fake server with a valid certificate?

 ➡️ SSL Pinning comes to protect against this.

 -------------------------------------------------------------
 📌 What is SSL Pinning?
 -------------------------------------------------------------
 SSL Pinning = Manually checking that you are talking to your real server only.

 Instead of trusting all valid certificates,
 👉 you trust only your server’s certificate.

 -------------------------------------------------------------
 📍 When is it needed?
 -------------------------------------------------------------
 Situation                            SSL Pinning Needed?
 
 1.Login screen, payment API,         ✅ Yes, highly recommended
 user data
 2.Public APIs (like news, weather)     ❌ Not necessary
 3.or App Store approval               🚫 Not compulsory
 4.For banking or secure apps         ✅ Compulsory in many cases

 -------------------------------------------------------------
 🔧 What do we do in SSL Pinning?
 -------------------------------------------------------------
                      High-level idea:
                   ----------------------
 
 App will:

 1. Connect to server
 2. Get its SSL certificate
 3. Compare it with a certificate stored inside your app
 4. If match → allow, proceed further
 5. If not match → block the connection

 🪜 Easy Steps in SSL Pinning (Simple Points)
 
 1.Get your server’s .cer file (SSL certificate)
 2.Add this .cer file to your app (bundle)
 3.In code, when making API calls:
 4.Check the certificate received from server
 5.Compare with your local .cer

 If same → OK ✅
 If different → Reject ❌


 
 */
