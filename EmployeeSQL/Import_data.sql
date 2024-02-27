DROP TABLE departments;
CREATE TABLE departments (
    dept_no VARCHAR(255) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES dept_emp(dept_no)
);
SELECT * FROM departments

DROP TABLE titles;
CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
SELECT * FROM titles

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees

DROP TABLE salaries;
CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries

DROP TABLE dept_emp;
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

DROP TABLE dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager