Question : https://leetcode.com/problems/rising-temperature/?envType=list&envId=e97a9e5m
Level : Easy

# Using CTE
  
WITH CTE AS
(
  SELECT 
        id, 
        recordDate,
        LAG(recordDate) OVER() AS recordDatePrevious,
        LAG(temperature) OVER() AS TemperaturePrevious,
        temperature
  FROM 
        weather
  ORDER BY recordDate
)
SELECT
      id
FROM 
      CTE c1
WHERE 
      TemperaturePrevious < temperature
      AND
      DATEDIFF(recordDate, recordDatePrevious) = 1;

# Using Self Join

SELECT
      w2.id
FROM 
      weather w1, weather w2
WHERE
      w1.temperature < w2.temperature
      AND
      DATEDIFF(w2.recordDate, w1.recordDate) = 1;


