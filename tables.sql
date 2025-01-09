CREATE TABLE departments (
  dept_no VARCHAR(30) Primary key,
  dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM departments;

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

SELECT * FROM titles;

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR (30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(5),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

CREATE TABLE dept_emp(
  emp_no INTEGER,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_managers(
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_managers;

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * from salaries;