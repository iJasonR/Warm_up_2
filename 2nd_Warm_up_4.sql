--Among people who purchased socks or caps (use sub_category),
-- what was the average profit earned per country per year,
-- ordered by highest average profit to lowest average profit?

SELECT Country, Year, AVG(profit) AS avg_profit
FROM `Prework.sales`
WHERE Sub_Category IN ('Socks', 'Caps')
GROUP BY 1,2
ORDER BY 3 DESC;