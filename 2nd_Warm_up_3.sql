--Categorize all purchases into bike vs. non-bike related purchases. How many purchases were there in each group among male customers in 2016?

SELECT 
CASE WHEN Product_Category = 'Bikes' 
      THEN 'Bikes' 
      ELSE 'Non-Bike'
      END AS categories,
COUNT(*) AS category_count
FROM `Prework.sales`
WHERE Year = 2016
AND Customer_Gender = 'M'    
GROUP BY 1;
