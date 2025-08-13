# Retail Sales Data Analysis with SQL
This project involves analyzing a retail sales dataset using SQL to extract meaningful business insights. The dataset includes transaction details such as sale date, customer demographics, product category, quantity, and total sales. The objective is to uncover patterns in sales performance, customer behavior, and product category trends over time.

---
## Dataset Description

The dataset used in this project contains the following columns:

- `transactions_id`: Unique identifier for each transaction  
- `sale_date`: Date of the sale  
- `sale_time`: Time the transaction occurred  
- `customer_id`: Unique identifier for each customer  
- `gender`: Gender of the customer  
- `age`: Age of the customer  
- `category`: Product category (e.g., electronics, clothing)  
- `quantity`: Quantity of items sold  
- `price_per_unit`: Price per unit of item  
- `cogs`: Cost of goods sold  
- `total_sale`: Total amount of the transaction (quantity * price per unit)  

---

## Business Questions Answered

- Are there any missing values in the dataset?
- What were the sales made on the 9th of November 2023?
- What electronics were sold in July 2023 with quantity ≥ 3?
- What is the total sales per product category?
- What is the average age of customers in the clothing category?
- What is the average customer age per category?
- Which transactions had total sales ≥ 1500?
- What is the total number of transactions by gender?
- How many male and female customers bought items in each category?
- Rank gender and category combinations by number of sales
- What is the average monthly sale per year?
- Who are the top 3 highest spending customers?
- How many unique customers bought from each category?
- What time shifts had the most transactions? (Morning, Afternoon, Night)

---

## Tools Used
- Excel (for preliminary data viewing)
- SQL (MySQL)
- MySQL Workbench / DB Browser

---
## 📂 How to Use
1. Clone this repository to your local machine.
2. Open the SQL script file (`retail_sales_analysis.sql`) using your preferred SQL environment.
3. Import the dataset into your database as a table named `retail_sales`.
4. Run each query to view insights and results.

---

##  Key Insights

- Clothing and electronics were top-selling categories.
- Majority of purchases occurred during the Morning shift.
- Male customers made more purchases in electronics.
- November and December had the highest average sales.
- Top customers significantly outspent the average buyer.

---

## Contact

okikiolaanimashaun7@gmail.com
Feel free to reach out for feedback, suggestions, or questions.
