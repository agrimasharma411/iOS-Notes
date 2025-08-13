/*
 
 UITableView         |          UICollectionView
 ------------------------------------------------------------
                     |
                     |
  Single-column,     |         Grid,custom layout
 vertical scrolling  |
 ------------------------------------------------------------
 One cell per row    |         Multiple items per row possible
 -------------------------------------------------------------
                     |
  Lists, chat        |          Grids, photo gallery,
                     |
 ----------------------------------------------------------
 Limited layout      |        Highly customizable using
                     |        flexibility
 ----------------------------------------------------------
 
 
           |-------------------------------|
           |      🚀 TableView Delegate    |
           |-------------------------------|
 
|-------------------------|
|The UITableViewDelegate  |   =     used to handle
|is a protocol            |         user interactions and
|-------------------------|         control the
                                    1. appearance
                                    2. behavior of a UITableView.
 
 
 
 It helps manage things like --->>   row selection,
                                     height,
                                     editing.

 
 📦 Common Delegate Methods: --->>
 ----------------------------------------------------------
 Method              |       Purpose
 ----------------------------------------------------------
 didSelectRowAt      |     Called when a cell is tapped
 heightForRowAt      |      Set custom row height
 willDisplay cell    |     Modify cell before it appears
 editActionsForRowAt |     Add swipe actions (e.g., delete)

 
 
           |-------------------------------|
           |                               |
           |   🚀 TableView Data Source    |
           |                               |
           |-------------------------------|
 
 
 ✅ What is compulsory?
 
 Only the UITableViewDataSource methods are required:

 --------------------------------------------------------------
 Required DataSource Method  |             Purpose
 ---------------------------------------------------------------
 numberOfRowsInSection       | Tells how many rows to show
                             |
 cellForRowAt                | Provides the cell to display
 ----------------------------------------------------------------
 
 
 
 
 
 
 
 
 
 
 
 */
