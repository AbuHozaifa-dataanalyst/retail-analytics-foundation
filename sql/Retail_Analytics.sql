USE Retail_Analytics;
SELECT * FROM Fact_Sales;
SELECT * FROM Dim_Product;
SELECT * FROM Dim_Store;

--Total Revenue Per Store
SELECT
	st.Store_Name,
	SUM(s.Amount) AS Total_Revenue
FROM Fact_Sales s
JOIN Dim_Store st
	ON s.Store_ID = st.Store_ID
GROUP BY st.Store_Name
ORDER BY Total_Revenue DESC;

--Total quantity sold per category.
SELECT
	p.Category,
	SUM(s.Quantity) AS Total_Quantity_Sold
FROM Fact_Sales s
JOIN Dim_Product p
	ON s.Product_ID = p.Product_ID
GROUP BY p.Category

ORDER BY Total_Quantity_Sold DESC;
--this is just practice for branch
