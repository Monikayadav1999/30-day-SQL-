Question : https://leetcode.com/problems/nth-highest-salary/?envType=list&envId=e97a9e5m
Level : Medium

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
/*
DECLARE M INT;
SET M = N-1;
RETURN (

SELECT NTH_VALUE(Salary, N) OVER(ORDER BY Salary DESC) AS NthHighestSalary
FROM Employee
GROUP BY Salary
Limit 1 OFFSET M

);
END*/

# OR 

SET N = N-1;
RETURN (
  SELECT DISTINCT salary 
  FROM employee
  ORDER BY salary DESC
  LIMIT 1 OFFSET N
);
END

# OFFSET is use to declare the no. of rows want to skip from the starting of the data before presenting result
