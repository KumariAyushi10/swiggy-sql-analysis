# swiggy-sql-analysis

This project analyzes restaurant-level data from Swiggy to uncover trends in pricing, ratings, cuisine popularity, and delivery performance across cities. These insights help identify high-performing markets and operational areas needing improvement.

## Dataset

* **Source:** Swiggy Restaurants Dataset (Kaggle) by abhijitdahatonde.
* **Size:** ~8,680 restaurants with 10–11 data columns.
* **Key Fields:** ID, Area, City, Restaurant Name, Price, Average Rating, Total Ratings, Food Type, Address, Delivery Time.

## Tools Used

* MySQL
* MySQL Workbench

## Approach

1. **Database Setup:** Created a MySQL database (`swiggy_analysis`) and a restaurants table matching the dataset schema.
2. **Data Import:** Imported the raw CSV data using MySQL Workbench's Table Data Import Wizard.
3. **Data Cleaning:** 
   * Handled NULL values in the ratings and price columns.
   * Removed duplicate restaurant entries.
   * Verified correct numeric data types for price, ratings, and delivery time.
4. **Analysis:** Wrote targeted SQL queries to extract key business insights.

## Business Questions Answered

* Which restaurants have the highest ratings and rating counts?
* How do average ratings and prices vary across different cities?
* What are the most common food and cuisine types?
* Is there a clear relationship between a restaurant's price tier, delivery time, and rating?
* Which cities feature the fastest average delivery times?

## Repository Structure

```text
├── data/
│   └── swiggy.csv       # Raw restaurant dataset
├── sql/
│   └── analysis.sql     # Database schema and analytical queries
├── screenshots/         # Query output results (query1.png to query5.png)
└── README.md            # Project documentation
```

## How to Run It

1. Install MySQL Server and MySQL Workbench on your local machine.
2. Open MySQL Workbench and create the workspace database:
   ```sql
   CREATE DATABASE swiggy_analysis;
   USE swiggy_analysis;
   ```
3. Open and run the `CREATE TABLE` setup sequence located inside `sql/analysis.sql`.
4. Import the `data/swiggy.csv` file into your new table using the Workbench Table Data Import Wizard.
5. Execute the remaining queries inside `sql/analysis.sql` to explore the analytical findings.


