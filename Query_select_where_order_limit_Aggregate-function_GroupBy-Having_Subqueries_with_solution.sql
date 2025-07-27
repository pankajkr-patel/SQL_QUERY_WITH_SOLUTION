-- Write a query to select all records from the employees table.
SELECT * FROM employees;

-- Get the names of all employees whose salary is greater than 50,000.
SELECT first_name, salary FROM employees
WHERE salary > 50000;

-- List all employees who joined after '2020-01-01'.
SELECT * FROM employees
WHERE joining_date > '2020-01-01';

-- Show the top 5 highest-paid employees.
SELECT * FROM employees 
ORDER BY salary DESC
LIMIT 5;

-- Retrieve the 3 most recently hired employees.
SELECT * FROM employees
ORDER BY joining_date DESC
LIMIT 3;


-- Count the total number of employees.
SELECT COUNT(*) FROM employees

-- Find the average salary.
SELECT AVG(salary) FROM employees;

-- Get the maximum and minimum salary from the employees table.
SELECT  MAX(salary) AS max_salary , MIN(salary) AS min_salary FROM employees;

-- Find the total salary paid in each department.
SELECT department , SUM(salary) AS total_salary FROM employees
GROUP BY department;

-- List departments having more than 5 employe
SELECT department, COUNT(*) AS total_employee FROM employees
GROUP BY department
HAVING COUNT(*)>3;


-- Find employees who earn more than the average salary.
SELECT * FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;



-- Get the names of employees who work in the same department as ‘Amit’.
SELECT first_name, department FROM employees
WHERE department = (
SELECT department FROM employees
WHERE first_name = 'Amit'
);

-- Find employees earning more than the average salary.
SELECT first_name, department, salary 
	FROM employees
	WHERE salary > (
	SELECT AVG(salary) 
FROM employees);

-- Find the department name with the highest total salary.
SELECT department,SUM(salary) AS total_salary FROM employees 
GROUP BY department;
LIMIT 1;


SELECT department FROM employees 
WHERE department =(SUM(salary)  FROM employees
GROUP BY department)
ORDER BY SUM(salary) DESC;


SELECT * FROM employees;
