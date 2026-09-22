# swiggy-sql-analysis
This project analyzes restaurant-level data to uncover trends in pricing, ratings, cuisine popularity, and delivery performance across cities — insights that could help identify high-performing markets and areas needing improvement.
# Dataset
Source: Swiggy Restaurants Dataset – Kaggle
Credit: Dataset created by abhijitdahatonde on Kaggle
Size: ~8,680 restaurants, 10–11 columns
Key fields: ID, Area, City, Restaurant Name, Price, Average Rating, Total Ratings, Food Type, Address, Delivery Time
# Tools Used
MySQL
MySQL Workbench
# Approach
Created a MySQL database (swiggy_analysis) and a restaurants table matching the dataset schema.
Imported the raw CSV using MySQL Workbench's Table Data Import Wizard.
Cleaned the data:
Checked and handled NULL values in ratings and price columns
Removed duplicate restaurant entries
Verified correct data types for numeric columns (price, ratings, delivery time)
Wrote analytical SQL queries to answer key business questions around ratings, pricing, cuisine trends, and delivery performance.
# Business Questions Answered
Which restaurants have the highest ratings and rating counts?
How do average ratings and prices vary by city?
What are the most common food/cuisine types?
Is there a relationship between price tier and delivery time or rating?
Which cities have the fastest average delivery times?

# Repository Structure
Swiggy-SQL-Analysis/
├── data/
│   └── swiggy.csv             
├── sql/
│   └── analysis.sql            
├── screenshots/
│   └── query1.png
|   └── query2.png
|   └── query3.png
|   └── query4.png
|   └── query5.png
└── README.md
# How to Run
Install MySQL and MySQL Workbench.
Create the database and table:
sql
   CREATE DATABASE swiggy_analysis;
   USE swiggy_analysis;

Then run the CREATE TABLE statement found in sql/analysis.sql. 
3. Import data/swiggy.csv into the restaurants table using Workbench's Table Data Import Wizard. 
4. Run the queries in sql/analysis.sql to reproduce the analysis.
