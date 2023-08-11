Question : https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/?envType=list&envId=e97a9e5m
Level : Easy

SELECT
       customer_number 
FROM
       Orders
GROUP BY customer_number 
ORDER BY COUNT(customer_number) DESC
LIMIT 1;

# Using Inner Select
  
SELECT
       customer_number 
FROM(
      SELECT DISTINCT customer_number, 
            COUNT(customer_number) OVER(PARTITION BY customer_number) AS counting 
      FROM
          orders
      ORDER BY counting DESC) AS temp
LIMIT 1
;
