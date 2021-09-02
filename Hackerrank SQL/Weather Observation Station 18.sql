/*
Enter your query here.
*/

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MAX(LONG_W)-MIN(LONG_W)),4)
FROM station;