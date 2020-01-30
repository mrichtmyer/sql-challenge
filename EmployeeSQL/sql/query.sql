-- Queries!

-- 1. List the following details of each employee: employee number, last name, first name, gender and salary
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e inner join salaries s on e.emp_no = s.emp_no

-- 2. List employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1986-12-31'

-- 3. List the manager of each department with the following info:
-- department number, department name, the manager's employee number,
-- last name, first name, and start and end employment dates
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager m INNER JOIN departments d on m.dept_no = d.dept_no
INNER JOIN employees e on m.emp_no = e.emp_no

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and deparment name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e INNER JOIN dept_emp on e.emp_no = dept_emp.emp_no
INNER JOIN departments d on d.dept_no = dept_emp.dept_no

-- 5. List all employees whose first name is "Hercules" and last names begin with "B"
SELECT first_name, last_name FROM employees
WHERE first_name = 'Hercules' AND SUBSTRING(last_name,1,1) = 'B'

-- 6. List all employees in Sales department. Include:
-- employee number, last name, first name and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e INNER JOIN dept_emp on e.emp_no = dept_emp.emp_no
INNER JOIN departments d on d.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'

-- 7. List all employees in the Sales and Development departments including their:
-- employee number, last name, first name and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e INNER JOIN dept_emp on e.emp_no = dept_emp.emp_no
INNER JOIN departments d on d.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- 8. In descending order, list the frequency count of employee last names, i.e. 
-- how many employees share each last name
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;