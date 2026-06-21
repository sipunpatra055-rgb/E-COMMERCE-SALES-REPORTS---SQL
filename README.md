## 📊 E-Commerce Sales & Customer Analysis (SQL)
## Project Overview
This repository contains a foundational SQL portfolio project demonstrating database design, data manipulation, and Exploratory Data Analysis (EDA) for a simulated e-commerce environment. The project involves creating a relational database from scratch, populating it with realistic business data, and writing SQL queries to extract actionable business insights regarding customer behavior and product sales.

## Database Schema
The database consists of three normalized tables:
** customers: Stores customer demographics and acquisition dates.
** products: Contains product catalog details, categories, and pricing.
** orders: The central fact table tracking transaction history, linking customers to the products they purchased.

## Key Business Questions Answered
Through this project, I used SQL to solve the following business problems:
**Geographic Segmentation: Filtered the customer base to identify regional market penetration (e.g., isolating the US market).
** Sales Volume Tracking: Aggregated transaction data to calculate the total lifetime order volume.
** Product Pricing Analysis: Sorted and analyzed the product catalog to identify high-ticket items.
Transaction Mapping: Utilized multi-table JOIN operations to create a comprehensive view of sales, connecting specific customers to their purchased products.
** Customer Retention Analysis: Leveraged GROUP BY and HAVING clauses to identify repeat customers who have placed multiple orders, highlighting high-value accounts.

## Technical Skills Demonstrated

** DDL & DML: CREATE TABLE, INSERT INTO (Schema creation and data ingestion)
** Joins: INNER JOIN (Relational data mapping)
** Aggregation: COUNT, GROUP BY (Summarizing data)
** Filtering: WHERE, HAVING (Isolating specific data subsets)
** Sorting: ORDER BY (Ranking results)
