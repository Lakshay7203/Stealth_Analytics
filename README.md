# ***Stealth Game Analytics Project***

### 

### **1. What this project is about**

### 

##### **I built a small stealth game prototype in Unreal Engine where the player:**

##### 

##### **- Picks up a keycard**

##### **- Activates a console**

##### **- Avoids guard detection**

##### **- Reaches the exit zone**

##### 

##### **The main focus of this project was not just gameplay. I wanted to build a simple analytics pipeline that tracks player behavior and turns gameplay events into useful insights.**

##### 

##### **This project connects my game development background with data analytics by using real gameplay events as data.**

### 

### **---**

### 

### **2. What the game tracks**

### 

##### **Each time the game is played, it logs important gameplay events such as:**

##### 

##### **- Session start**

##### **- Objective completion**

##### **- Guard detection**

##### **- Mission success**

##### **- Mission failure**

##### 

##### **Example of recorded gameplay data:**

##### 

##### **Run\_1,ObjectiveCompleted,KeycardRoom,KeycardPicked**  

##### **Run\_1,GuardDetectedPlayer,DetectionZone,Detected**  

##### **Run\_1,MissionFailed,DetectionZone,Failed**  

### 

### **---**

### 

### **3. How the system works**

### 

##### **I built the project using this pipeline:**

##### 

##### **Unreal Engine → Event Logging → CSV File → MySQL → SQL Analysis → Power BI Dashboard**

##### 

##### **Process:**

##### 

##### **- Unreal Engine logs gameplay events during each run**

##### **- Gameplay data is exported into CSV files**

##### **- CSV data is imported into MySQL**

##### **- SQL queries are used to analyze player behavior**

##### **- Power BI is used to visualize the results in a dashboard**

### 

### **---**

### 

### **4. What I analyzed**

### 

##### **Using SQL and Power BI, I analyzed questions such as:**

##### 

##### **- How many runs were completed?**

##### **- How many missions succeeded vs failed?**

##### **- What was the overall success rate?**

##### **- How often did the guard detect the player?**

##### **- Where did players fail most often?**

##### **- How many objectives were completed?**

##### **- Which gameplay events happened most frequently?**

### 

### **---**

### 

### **5. Power BI Dashboard**

### 

##### **In Version 2 of this project, I added a Power BI dashboard to visualize the gameplay analytics data.**

##### 

##### **The dashboard includes:**

##### 

##### **- Total gameplay runs**

##### **- Successful missions**

##### **- Failed missions**

##### **- Success rate**

##### **- Guard detection count**

##### **- Gameplay events breakdown**

##### **- Failures by area**

##### **- Objective completion count**

##### **- Mission outcomes**

##### 

##### **This helped turn raw gameplay event data into a clear visual report.**

### 

### **---**

### 

### **6. Example insights**

### 

##### **From the analysis, I found that:**

##### 

##### **- Most mission failures happened in the DetectionZone**

##### **- Guard detection was strongly connected to mission failure**

##### **- ObjectiveCompleted was the most frequent gameplay event**

##### **- Some players completed both objectives before failing**

##### **- Successful runs usually had fewer detection events**

### 

### **---**

### 

### **7. Tech used**

### 

##### **- Unreal Engine 5**

##### **- Blueprints and C++**

##### **- CSV data export**

##### **- MySQL**

##### **- SQL**

##### **- Power BI**

##### **- Excel**

### 

### **---**

### 

### **8. What I learned**

### 

##### **Through this project, I learned:**

##### 

##### **- How to connect gameplay systems with data tracking**

##### **- How to structure event-based gameplay data**

##### **- How to export game data into CSV files**

##### **- How to import and analyze data using MySQL**

##### **- How to write SQL queries for gameplay analysis**

##### **- How to build a Power BI dashboard from gameplay data**

##### **- How data can help identify gameplay patterns and difficulty issues**

### 

### **---**

### 

### **9. Why this project matters**

### 

##### **This project shows how game development and data analytics can work together.**

##### 

##### **Instead of only creating a stealth gameplay prototype, I built a system that can:**

##### 

##### **- Track player behavior**

##### **- Identify failure points**

##### **- Measure mission success**

##### **- Analyze objective completion**

##### **- Support data-driven gameplay decisions**

##### 

##### **This project helped me understand how analytics can be used to improve gameplay design and player experience.**

### 

### **---**

### 

### **10. Next steps**

### 

##### **Future improvements may include:**

##### 

##### **- Add more objectives and larger levels**

##### **- Track player movement and pathing**

##### **- Add more enemy/guard behavior data**

##### **- Improve guard AI**

##### **- Add more advanced Power BI visuals**

##### **- Build a larger dataset with more gameplay runs**

