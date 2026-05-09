### **Stealth Game Analytics Project**





1. #### What this project is about



I built a small stealth game in Unreal Engine where the player:



\-Picks up a keycard

\-Activates a console

\-Avoids a guard

\-Reaches the exit



But the main focus wasn’t just the gameplay — it was tracking and analyzing player behavior.



#### 2\. What the game does



Each time I play the game, it logs everything important:



\-When the session starts

\-When objectives are completed

\-When the guard detects the player

\-Whether the mission succeeds or fails



Example of what gets recorded:



Run\_1,ObjectiveCompleted,KeycardRoom,KeycardPicked

Run\_1,GuardDetectedPlayer,DetectionZone,Detected

Run\_1,MissionFailed,DetectionZone,Failed



#### 3\. How the system works



I built a simple pipeline:



\-Game → Event Logging → CSV File → MySQL → SQL Analysis

\-Unreal Engine logs events during gameplay

\-Data is saved as CSV

\-CSV is imported into MySQL

\-SQL is used to analyze player behavior



#### 4\. What I analyzed



Using SQL, I answered questions like:



\-How many players succeed vs fail?

\-Where do players fail the most?

\-How often do guards detect players?

\-How long does it take to complete objectives?

\-Do players fail even after completing objectives?



#### 5\. Example insights



\-Most failures happen in the DetectionZone

\-Players who get detected almost always fail

\-Some objectives take longer to reach than others

\-Successful runs usually have fewer detection events



#### 6\. Tech used



\-Unreal Engine 5 (Blueprints and C++)

\-CSV data export

\-MySQL

\-SQL (data analysis)



#### 7\. What I learned



\-How to connect gameplay systems with data tracking

\-How to structure event-based data

\-How to analyze player behavior using SQL

\-How small gameplay decisions affect player success



#### 8\. Why this project matters



This project shows how game development + data analysis can work together.



Instead of just making a game, I built a system to:



\-understand player behavior

\-find difficulty issues

\-make data-driven decisions



#### 9\. Next steps (if I continue this)



\-Add more objectives and larger levels

\-Track player movement / pathing

\-Build a dashboard (Power BI)

\-Improve guard AI

