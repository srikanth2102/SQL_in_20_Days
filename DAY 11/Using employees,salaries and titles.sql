-- using both employees and salaries tables
-- viewing the whole employees and salaries table
SELECT *
FROM employees
LEFT OUTER JOIN salaries
on employees.emp_no=salaries.emp_no
UNION
SELECT *
FROM employees
RIGHT OUTER JOIN salaries
on employees.emp_no=salaries.emp_no;

-- employee with the highest salary
SELECT employees.emp_no, employees.first_name, employees.last_name, MAX(salaries.salary)
FROM employees
INNER JOIN salaries
ON employees.emp_no=salaries.emp_no;

-- employee with the lowest salary
SELECT employees.emp_no, employees.first_name, employees.last_name, MIN(salaries.salary)
FROM employees
INNER JOIN salaries
ON employees.emp_no=salaries.emp_no;

-- finding all the titles in the company and their average salary
SELECT titles.title, AVG(salaries.salary)
FROM titles
INNER JOIN salaries
ON titles.emp_no=salaries.emp_no
GROUP BY titles.title
ORDER BY AVG(salaries.salary) DESC;

-- finding average salary of men in all titles
SELECT titles.title, AVG(salaries.salary)
FROM (titles
INNER JOIN salaries
ON titles.emp_no=salaries.emp_no)
INNER JOIN employees
ON employees.emp_no=salaries.emp_no
WHERE employees.gender='M'
GROUP BY titles.title
ORDER BY AVG(salaries.salary) DESC;

-- finding average salary of women in all titles
SELECT titles.title, AVG(salaries.salary)
FROM (titles
INNER JOIN salaries
ON titles.emp_no=salaries.emp_no)
INNER JOIN employees
ON employees.emp_no=salaries.emp_no
WHERE employees.gender='F'
GROUP BY titles.title
ORDER BY AVG(salaries.salary) DESC;

-- finding the current salaries of all the employees
SELECT salaries.emp_no, salaries.salary, MAX(salaries.from_date)
FROM salaries
GROUP BY salaries.emp_no;

-- average salary for each title
SELECT titles.title, AVG(salaries.salary)
FROM titles
INNER JOIN salaries
ON salaries.emp_no = titles.emp_no
GROUP BY titles.title
ORDER BY AVG(salaries.salary) DESC;

-- maximum salary in each title
SELECT titles.title, MAX(salaries.salary)
FROM titles
INNER JOIN salaries
ON salaries.emp_no = titles.emp_no
GROUP BY titles.title
ORDER BY MAX(salaries.salary) DESC;

-- maximum salary in each title
SELECT titles.title, MIN(salaries.salary)
FROM titles
INNER JOIN salaries
ON salaries.emp_no = titles.emp_no
GROUP BY titles.title
ORDER BY MIN(salaries.salary) DESC;