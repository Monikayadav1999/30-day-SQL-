Question : https://leetcode.com/problems/consecutive-numbers/?envType=list&envId=e97a9e5m
Level : Medium

SELECT 
      num AS ConsecutiveNums
FROM
      (
        SELECT 
              LAG(num) OVER() AS previous,
              num,
              LEAD(num) OVER() AS next
        FROM Logs
      ) AS temp
WHERE (previous = num) and (num = next)
GROUP BY num;
