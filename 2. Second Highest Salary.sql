Question : https://leetcode.com/problems/nth-highest-salary/?envType=list&envId=e97a9e5m
Level : Medium
  
SELECT ( 
        SELECT NTH_VALUE(Salary, 2) OVER(ORDER BY Salary DESC) AS SecondHighestSalary
        FROM Employee
        GROUP BY Salary
        LIMIT 1 OFFSET 1 ) AS SecondHighestSalary;

# NTH_VALUE() is Window Ranking Function 
# Topic Link : https://www.mysqltutorial.org/mysql-window-functions/mysql-nth_value-function/
