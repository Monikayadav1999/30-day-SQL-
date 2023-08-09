Question : https://leetcode.com/problems/customers-who-never-order/?envType=list&envId=e97a9e5m
Level : Easy

SELECT
      name AS Customers 
FROM 
      customers c 
      LEFT JOIN 
      orders o ON c.id = o.customerId
WHERE customerId IS NULL;
