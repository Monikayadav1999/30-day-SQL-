Question : https://leetcode.com/problems/delete-duplicate-emails/?envType=list&envId=e97a9e5m
Level : Easy

DELETE 
      P1
FROM 
      person P1,
      person P2
WHERE 
      P1.email = P2.email
      AND 
      P1.id > P2.id;
