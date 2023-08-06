Question Link: https://leetcode.com/problems/combine-two-tables/?envType=list&envId=e97a9e5m
Level : Easy
      
SELECT 
      P.lastName, 
      P.firstName, 
      A.city, 
      A.state
FROM 
      Person P LEFT JOIN Address A 
      ON
      P.personID = A.personID;
