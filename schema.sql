DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;


CREATE TABLE employees (
  emp_no integer NOT NULL,
  birth_date date NOT NULL,
  first_name varchar(20) NOT NULL,
  last_name varchar(20) NOT NULL,
  gender char NOT NULL,
  hire_date date,
  PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer,
  from_date date NOT NULL,
  to_date date NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title varchar(30) NOT NULL,
  from_date date NOT NULL,
  to_date date NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE departments (
  dept_no varchar(30) NOT NULL,
  dept_name varchar(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
   emp_no INTEGER NOT NULL,
   dept_no varchar(30) NOT NULL,
   from_date date NOT NULL,
   to_date date NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
   dept_no varchar(30) NOT NULL,
   emp_no integer NOT NULL,
   from_date date NOT NULL,
   to_date date NOT NULL,
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);