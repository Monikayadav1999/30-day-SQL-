Question : https://leetcode.com/problems/employees-earning-more-than-their-managers/?envType=list&envId=e97a9e5m
Level : Easy

SELECT 
      e.name AS Employee 
FROM 
      employee e join employee e1 
      ON
      e.managerId = e1.id
WHERE e.salary > e1.salary;

# Using Self Join Concept 
