/*
Enter your query here.
*/

SELECT ROUND(LONG_W,4) 
FROM station
WHERE LAT_N >38.7880
ORDER BY LAT_N
LIMIT 1;
