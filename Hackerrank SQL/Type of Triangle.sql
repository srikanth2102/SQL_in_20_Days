/*
Enter your query here.
*/
SELECT CASE
WHEN (A+B<=C) OR (A+C<=B) OR (B+C<=A) THEN 'Not A Triangle'
WHEN A=B AND B=C THEN 'Equilateral'
WHEN (A=B AND B<>C) OR (A=C AND A<>B) OR (B=C AND B<>A) THEN 'Isosceles'
WHEN A<>B AND B<>C AND C<>A THEN 'Scalene'
END AS triange_type
FROM triangles;
