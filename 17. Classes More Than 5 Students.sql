Question : https://leetcode.com/problems/classes-more-than-5-students/?envType=list&envId=e97a9e5m
Level : Easy

SELECT
      class
FROM
      courses
GROUP BY class
HAVING COUNT(class) >= 5;
