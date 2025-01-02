--Of female customers in the U.S. who purchased bike-related products in 2015, what was the average revenue?

SELECT AVG(Revenue) AS avg_revenue
FROM `Prework.sales`
WHERE Customer_Gender = 'F'
AND Year = 2015
AND Product_Category = 'Bikes';