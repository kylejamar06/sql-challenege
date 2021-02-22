SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no=s.emp_no

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date >= '01-JAN-1986' AND hire_date <= '31-DEC-1986';

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager m ON d.dept_no = m.dept_no
JOIN employees e ON m.emp_no = e.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp x ON e.emp_no = x.emp_no
JOIN departments d ON x.dept_no = d.dept_no;

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE first_name = 'Hercules' AND
last_name LIKE 'B%';

SELECT e.emp_no, e. last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp x ON e.emp_no = x.emp_no
JOIN departments d ON x.dept_no = d.dept_no
WHERE dept_name = 'Sales';

SELECT e.emp_no, e. last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp x ON e.emp_no = x.emp_no
JOIN departments d ON x.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR
dept_name = 'Production';

SELECT last_name, COUNT(emp_no)
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC;
