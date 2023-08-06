Question : https://leetcode.com/problems/rank-scores/?envType=list&envId=e97a9e5m
Level : Medium

SELECT 
      score,
      DENSE_RANK() OVER(ORDER BY score DESC ) AS 'rank'
FROM scores;

# rank or RANK is keyword in MySQL so can't use that as name so for that use (' ') single quotes to write name
