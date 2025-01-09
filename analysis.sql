SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM employees as e
JOIN salaries as s 
	ON e.emp_no=s.emp_no;


SELECT first_name, 
	last_name, 
	hire_date
FROM employees
WHERE hire_date >'1985-12-31' AND hire_date <'1987-1-1'
ORDER BY hire_date;


SELECT d.dept_no, 
	d.dept_name, 
	dm.emp_no, 
	e.last_name, 
	e.first_name
FROM departments as d
INNER JOIN dept_managers as dm 
	ON d.dept_no=dm.dept_no
INNER JOIN employees as e
	ON dm. emp_no=e.emp_no
ORDER BY dept_no;


SELECT e.emp_no,
	e.last_name, 
	e.first_name, 
	d. dept_name
FROM employees as e
INNER JOIN dept_emp
	ON e.emp_no=dept_emp.emp_no
INNER JOIN departments as d
	ON dept_emp.dept_no=d.dept_no
ORDER BY emp_no;


SELECT first_name, 
	last_name, 
	sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY sex;


SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	d. dept_name
FROM employees as e
INNER JOIN dept_emp
	ON e.emp_no=dept_emp.emp_no
INNER JOIN departments as d
	ON dept_emp.dept_no=d.dept_no
WHERE dept_name='Sales'
ORDER BY emp_no;


SELECT e.emp_no, 
	e.last_name, 
	e.first_name, 
	d. dept_name
FROM employees as e
INNER JOIN dept_emp
	ON e.emp_no=dept_emp.emp_no
INNER JOIN departments as d
	ON dept_emp.dept_no=d.dept_no
WHERE dept_name='Sales' OR dept_name ='Development'
ORDER BY emp_no;


SELECT last_name, 
	COUNT (last_name) as frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC;