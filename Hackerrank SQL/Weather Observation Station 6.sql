/*
Enter your query here.
*/

SELECT DISTINCT(city)
FROM station
WHERE LEFT(CITY,1) IN ('a','e','i','o','u');