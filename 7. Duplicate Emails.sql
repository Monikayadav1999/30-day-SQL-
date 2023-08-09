Question : https://leetcode.com/problems/duplicate-emails/?envType=list&envId=e97a9e5m
Level : Easy

SELECT 
      email 
FROM 
      person
GROUP BY email 
HAVING COUNT(email) > 1;
