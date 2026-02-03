-- Calculate total revenue per store
SELECT Store, SUM(Revenue) AS Total_Revenue
FROM sample_sales
GROUP BY Store;
