--For male customers who purchased the AWC Logo Cap (use product), use a window function to order the purchase dates from oldest to most recent within each gender.

SELECT Customer_Gender, 
Product, 
ROW_NUMBER() OVER (PARTITION BY customer_gender ORDER BY Date ASC ) AS ranking
from `Prework.sales`
WHERE customer_gender = 'M' 
AND product = 'AWC Logo Cap';