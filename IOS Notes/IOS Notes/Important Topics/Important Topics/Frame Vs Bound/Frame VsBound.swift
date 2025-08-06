/*
 
 
 
   Frame                                      Bounds
  --------                                    -------

 The frame rectangle, which            The bounds rectangle,
 describes the view’s location        which describes the
 and size in its                       view’s location and size
 superview’s coordinate                in its own coordinate
 system.                               system.
 

 
 
 ---------------------------------------------------------------
                🖼 Example: Photo Frame on a Wall
 ---------------------------------------------------------------
 🧩 frame = Photo frame ki position wall par
 Frame kaha lagaya hai wall par — left/right/top.

 Size bhi kya hai (e.g. 8x10 inch).

 Yani bahar se view ka position & size.

 🖼 bounds = Photo frame ke andar wali photo
 Frame ke andar photo kitni badi hai (same size ho sakti).

 Agar photo ko andar se thoda move ya zoom karein, to bounds change hota hai.

 Yani andar ka content kaise dikhega.
 
 ------------------------------------------------------------
                🔁 Rotate karne par:
 ------------------------------------------------------------
 ✅ frame change hota hai
 (kyunki view ki position aur shape superview me ghoom gayi)

 ✅ bounds nahi badalta
 (kyunki view ke andar ka area same hi hai, bas ghooma hai)

 -----------------------------------------------------------
                  🧠 Simple way to remember:
 -----------------------------------------------------------
 
 ⭐️ "bounds is area,
 no matter how you rotate,
 area doesn’t change."

 ⭐️ "frame is position in superview,
 rotate karte hi position aur size dono change dikhte hain."
 
 
 
 
 */
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

