-- queries on employees table

-- viewring the whole employee table
SELECT *
FROM employees;

-- employees born after 1955
SELECT *
FROM employees
WHERE YEAR(birth_date)>=1955;

-- emloyees born after 1980
SELECT *
FROM employees
WHERE YEAR(birth_date)>=1980;

-- the reason why no entry is displayed for the above query is that it is a old db.
-- lets now see the youngest person to work in this company

SELECT  emp_no, MAX(birth_date), first_name, last_name
FROM employees;
-- The youngest person to work in this company was born in 1965.
-- This shows how old this database actually is.

-- count of women employees
SELECT COUNT(gender)
FROM employees
WHERE gender='F';

-- count of men employees
SELECT COUNT(gender)
FROM employees
WHERE gender='M';

-- first person to be hired in the company
SELECT MIN(hire_date), emp_no, first_name, last_name
FROM employees;

-- last person to be hired in the company
SELECT MAX(hire_date), emp_no, first_name, last_name
FROM employees;

-- top 10 employees with most experience
SELECT * , YEAR(CURDATE())-YEAR(hire_date) AS experience_in_years
FROM employees
ORDER BY CURDATE()-hire_date DESC
LIMIT 10;

--  top 10 male employees with most experience
SELECT * , YEAR(CURDATE())-YEAR(hire_date) AS experience_in_years
FROM employees
WHERE gender='M'
ORDER BY CURDATE()-hire_date DESC
LIMIT 10;

-- 10 female employees with most experience
SELECT * , YEAR(CURDATE())-YEAR(hire_date) AS experience_in_years
FROM employees
WHERE gender='F'
ORDER BY CURDATE()-hire_date DESC
LIMIT 10;

-- top 10 oldest employees
SELECT *,YEAR(CURDATE())-YEAR(birth_date) AS age
FROM employees
ORDER BY birth_date
LIMIT 10;

-- top 10 youngest employees
SELECT *, YEAR(CURDATE())-YEAR(birth_date) AS age
FROM employees
ORDER BY birth_date DESC
LIMIT 10;