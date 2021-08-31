/*
Enter your query here.
*/

SELECT DISTINCT(city)
FROM station
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u') AND LEFT(city,1) NOT IN ('a','e','i','o','u');