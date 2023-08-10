Question : https://leetcode.com/problems/department-top-three-salaries/?envType=list&envId=e97a9e5m
Level : Hard

# Using CTE

WITH RANKING AS 
(
  SELECT
            e.name, e.salary, e.departmentId,
            d.id, d.name AS Department,
            DENSE_RANK() OVER(PARTITION BY d.id ORDER BY salary DESC) AS ranking
       FROM 
            Employee e JOIN department d
            ON e.departmentId = d.id
) 
SELECT
       Department, 
       name AS Employee , 
       salary AS Salary 
FROM Ranking R1
WHERE ranking < 4;

# Without Using CTE 
  
SELECT
       Department, 
       name AS Employee , 
       salary AS Salary 
FROM (
       SELECT
            e.name, e.salary, e.departmentId,
            d.id, d.name AS Department,
            DENSE_RANK() OVER(PARTITION BY d.id ORDER BY salary DESC) AS ranking
       FROM 
            Employee e JOIN department d
            ON e.departmentId = d.id
      ) AS temp
WHERE ranking < 4;
