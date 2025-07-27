-- Exploring the data

-- checking for null values
select count(*)
from retail_sales
where age is null
or sale_time is null
or customer_id is null
or gender is null
or total_sale is null


-- ====================================================

-- Q1 write a SQL query to retrieve all columns for sales made on the 9th of November 2023
select *
from retail_sales
where sale_date = "2023-11-09" 

-- Q2 Write a SQL Query to return all columns for all sales made in the month of July, 2023 where category is electronics and quantity is equal to or greater yhan 5
select *
from retail_sales
where category = 'electronics' and quantity >= 3 and sale_date like '2023-07-%'

-- Q3 calculate the total sales for each category
select category, sum(total_sale) as total_sale
from retail_sales
group by category
order by 1 desc

-- Q4 Avg age of customers from the clothing cathegory
select category, avg(age)
from retail_sales
where category = 'clothing'
group by category

-- Q5 Average age of peple in each category
select category, round(avg(age), 0) as Age
from retail_sales
group by category

-- Q6 write a query for all transaction where total_sale is greater than or equal to 1000
select *
from retail_sales
where total_sale >= 1500

-- Q7 Find out the total number of transaction made by each gender
select count(transactions_id), gender
from retail_sales
group by gender 

-- Q8 Total number of each gender that made transactions in each category
select gender, category, count(*)
from retail_sales
group by 2, 1
order by 1

-- Q9 Rank the total number of each gender that made transactions in each category
select gender, category, count(*), rank() over (order by count(*) desc) as ranks
from retail_sales
group by 2, 1

-- Q9 calculate average sale for each month and then find the best selling month in each year
select round(avg(total_sale), 0) Avg_sale, month(sale_date) months, year(sale_date) as years
from retail_sales
group by months, years
order by years, months

-- Q10 Find out top 3 customers based on highest sales 
select customer_id, sum(total_sale) as Total_sales
from retail_sales
group by 1
order by 2 desc
limit 5

-- Q11 Find the number of unique customers that purchased items from each category
select count(distinct customer_id), category
from retail_sales
group by 2

-- Q12 Write a query that creates each shift from sales time and find out the numbers of orders in each created shift (Morning is between the hours of 1 and 12, Afternoon = 12 and 17, Night >17)
select count(transactions_id) as Transactions,
case 
    when hour(sale_time) between 1 and 12 then 'Morning'
    when hour(sale_time) between 12 and 17 then 'Afternoon'
    else 'Night'
end as Shift
from retail_sales
group by shift

-- End of Project