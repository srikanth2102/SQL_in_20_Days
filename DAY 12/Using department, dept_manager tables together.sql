-- using dept_manager, departments, dept_emp tables
-- viewing dept_manager table
SELECT *
FROM dept_manager;

-- viewing departments
SELECT *
FROM departments;

-- viewing dept_emp
SELECT *
FROM dept_emp;

-- total departments in this company and its manager
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no
FROM departments
INNER JOIN dept_manager
ON dept_manager.dept_no= departments.dept_no;

-- departments and its current managers
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, MAX(from_date)
FROM departments
INNER JOIN dept_manager
ON dept_manager.dept_no= departments.dept_no
GROUP BY departments.dept_no;

-- number of employees in each department
SELECT departments.dept_no, departments.dept_name, COUNT(dept_emp.emp_no) AS employee_count
FROM dept_emp
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
GROUP BY departments.dept_name;

-- employee whos been dept_manager for the longest time
SELECT dept_manager.emp_no, departments.dept_name, MAX(YEAR(to_date)-YEAR(from_date)) AS experience
FROM dept_manager
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
GROUP BY departments.dept_no;

-- there reason why the experience is so high is because for every current manager the to_date is 9999/xx/yy
-- so we have to chance the query
-- employee whos been dept_manager for the longest time
SELECT dept_manager.emp_no, departments.dept_name, MAX(YEAR(to_date)-YEAR(from_date)) AS experience
FROM dept_manager
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE YEAR(to_date)<>9999
GROUP BY departments.dept_no;

-- employee with highest experience in each department
SELECT departments.dept_name ,dept_emp.emp_no, MAX(YEAR(to_date)-YEAR(from_date)) AS experience
FROM dept_emp
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE YEAR(to_date)<>9999
GROUP BY departments.dept_no;