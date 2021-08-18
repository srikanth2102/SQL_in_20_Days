-- titles table

-- viewing the whole table
SELECT *
FROM titles;

-- distinct titles in the company
SELECT title,COUNT(emp_no)
FROM titles 
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- person whos been in the same role for the longest period
SELECT emp_no, YEAR(to_date)-YEAR(from_date)
FROM titles
ORDER BY to_date-from_date DESC;

-- person whos been in the same role for the shortest period
SELECT emp_no, YEAR(to_date)-YEAR(from_date)
FROM titles
ORDER BY to_date-from_date;

-- salaries table

-- viewing the whole table
SELECT *
FROM salaries;

-- employee with the highest salary
SELECT emp_no, MAX(salary)
FROM salaries;

-- employee with the lowest salary
SELECT emp_no, MIN(salary)
FROM salaries;


-- max salary each employee got paid and the duration in which they gpt paid that amount
SELECT emp_no, MAX(salary), from_date, to_date
FROM salaries
GROUP BY emp_no;

-- minimum salary each employee got paid and the duration in which they gpt paid that amount
SELECT emp_no, MIN(salary), from_date, to_date
FROM salaries
GROUP BY emp_no;

-- average salary received by each employee during their overall term
SELECT emp_no, AVG(salary)
FROM salaries
GROUP BY emp_no
ORDER BY AVG(salary) DESC;

-- AVG salary of all the employees in the company
SELECT AVG(salary)
FROM salaries;

-- employees whose salary is above or equal to  average salary
SELECT emp_no, AVG(salary)
FROM salaries
WHERE salary>=(
    SELECT AVG(SALARY)
    FROM salaries)
GROUP BY emp_no
ORDER BY AVG(salary) DESC;

-- employees whose salary is below average 
SELECT emp_no, AVG(salary)
FROM salaries
WHERE salary<(
    SELECT AVG(SALARY)
    FROM salaries)
GROUP BY emp_no
ORDER BY AVG(salary);