--Which product category has the highest number of orders among 31-year olds? Return only the top product category.

SELECT Product_Category,
SUM(Order_Quantity) AS total_qty
FROM `Prework.sales`
WHERE Customer_Age = 31
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;