-- departments table
-- viewing the whole data of departements table
SELECT * 
FROM departments;

-- dept_manager table
-- viewing the whole dept_manager table
SELECT *
FROM dept_manager;

-- finding the current manager for all departments
SELECT emp_no, dept_no, MAX(from_date)
FROM dept_manager
GROUP BY dept_no;

-- finding the first manager for all departemnets
SELECT emp_no, dept_no, MIN(from_date)
FROM dept_manager
GROUP BY dept_no;

-- number of managers each department had
SELECT dept_no, COUNT(emp_no)
FROM dept_manager
GROUP BY dept_no;

-- the employee whos been the manager for the longest period
SELECT dept_no, emp_no, MAX(YEAR(to_date)-YEAR(from_date))
FROM dept_manager
GROUP BY dept_no;
-- from the results we can see that, the number of years is so big.
-- This is because for every current manager they have mentioned the to_date as 9999/xx/yy.

SELECT dept_no, emp_no, MAX(YEAR(to_date)-YEAR(from_date))
FROM dept_manager
WHERE YEAR(to_date)<>9999
GROUP BY dept_no;

-- dept_emp table
-- viewing the whole table
SELECT *
FROM dept_emp;

-- number of employees in each dept.
SELECT dept_no, COUNT(emp_no)
FROM dept_emp
GROUP BY dept_no
ORDER BY COUNT(emp_no) DESC;