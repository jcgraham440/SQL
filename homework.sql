-- Homework q #1
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

-- Homework q #2
select first_name, last_name, hire_date, EXTRACT(YEAR from hire_date) AS Hire_year
from employees
WHERE EXTRACT(YEAR from hire_date) = 1986;

-- Homework q #3
-- department number, department name, the manager's employee number, last name, first name, 
-- and start and end employment dates.
select d.dept_no as "Department Number", d.dept_name as "Department Name", 
       e.emp_no as "Manager Emp Number", e.last_name as "Manager LastName", 
       e.first_name as "Manager FirstName", dm.from_date as "Start Date", dm.to_date as "End Date"
from departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON e.emp_no = dm.emp_no;

-- Homework q #4 
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp AS de
LEFT JOIN employees AS e
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON d.dept_no = de.dept_no
order by de.emp_no;

-- Homework q #5
Select * from employees AS e
WHERE e.first_name = 'Hercules' AND
e.last_name LIKE 'B%';

-- Homework q #6
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON (de.emp_no = e.emp_no)
LEFT JOIN departments d
ON (d.dept_no = de.dept_no)
WHERE d.dept_name = 'Sales';

-- Homework q #7
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON (de.emp_no = e.emp_no)
LEFT JOIN departments d
ON (d.dept_no = de.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- Homework q #8
SELECT employees.last_name, 
  COUNT(employees.last_name) as name_counts
FROM employees
GROUP BY employees.last_name
ORDER BY name_counts DESC;


