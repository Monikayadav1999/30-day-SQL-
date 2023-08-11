Question : https://leetcode.com/problems/find-customer-referee/?envType=list&envId=e97a9e5m
Level : Easy

SELECT 
      name 
FROM 
    customer
WHERE
     referee_id != 2 OR
     referee_id IS NULL;
