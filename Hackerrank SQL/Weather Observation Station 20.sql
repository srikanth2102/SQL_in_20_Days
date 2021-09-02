/*
Enter your query here.
*/

CREATE TEMPORARY TABLE temp_table1
SELECT * FROM station
ORDER BY LAT_N
LIMIT 250;

CREATE TEMPORARY TABLE temp_table2
SELECT * FROM station
ORDER BY LAT_N DESC
LIMIT 250;

SELECT ROUND((MAX(temp_table1.LAT_N)+MIN(temp_table2.LAT_N))/2,4)
FROM temp_table1, temp_table2;