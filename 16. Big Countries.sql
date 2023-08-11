Question : https://leetcode.com/problems/big-countries/?envType=list&envId=e97a9e5m
Level : Easy

SELECT
       name, population, area
FROM
       world
WHERE
       area >= 3000000 OR population >= 25000000;
