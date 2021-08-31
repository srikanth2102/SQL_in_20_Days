/*
Enter your query here.
*/

SELECT DISTINCT(city)
FROM station
WHERE id % 2 = 0;