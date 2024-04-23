Select first_name, last_name, sex
from employees;

select salary 
from  salaries;

SELECT first_name, last_name, employees.hiredate
FROM employees
WHERE employees.hiredate BETWEEN '1986-01-01' AND '1986-12-31';

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = dm.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;
