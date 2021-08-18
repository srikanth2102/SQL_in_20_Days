-- using all 6 tables
-- finding the names of the mamager
SELECT dept_manager.dept_no,departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
FROM (dept_manager
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no)
INNER JOIN departments
ON departments.dept_no=dept_manager.dept_no;

-- salary of all dept_managers
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, salaries.salary
FROM (dept_manager
INNER JOIN salaries
ON salaries.emp_no=dept_manager.emp_no)
INNER JOIN departments
ON departments.dept_no=dept_manager.dept_no;

-- findind the titles and the dept in which they work
SELECT titles.emp_no, dept_emp.dept_no,departments.dept_name, titles.title
FROM (titles
INNER JOIN dept_emp
ON dept_emp.emp_no = titles.emp_no)
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no;

-- all employees details with their titles and department name
SELECT employees.*, dept_emp.dept_no, departments.dept_name, salaries.salary
FROM ((employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no)
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- number of male managers
SELECT COUNT(dept_manager.emp_no) AS male_managers
FROM dept_manager
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE employees.gender='M';

-- number of female managers
SELECT COUNT(dept_manager.emp_no) AS female_managers
FROM dept_manager
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE employees.gender='F';

-- number of male emp in each department
SELECT dept_emp.dept_no,departments.dept_name, COUNT(employees.gender) AS male_employees
FROM (dept_emp
INNER JOIN employees
ON employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE employees.gender='M'
GROUP BY dept_emp.dept_no; 

-- number of male emp in each department
SELECT dept_emp.dept_no,departments.dept_name, COUNT(employees.gender) AS male_employees
FROM (dept_emp
INNER JOIN employees
ON employees.emp_no = dept_emp.emp_no)
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE employees.gender='F'
GROUP BY dept_emp.dept_no; 

-- average salary of each department
SELECT dept_emp.dept_no,departments.dept_name, AVG(salaries.salary)
FROM (dept_emp
INNER JOIN salaries
ON dept_emp.emp_no = salaries.emp_no)
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
GROUP BY dept_emp.dept_no;