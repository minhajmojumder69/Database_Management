USE Dummydb;

-- Using SELECT
SELECT *   -- to show all the countries
FROM countries;

SELECT *   -- to show all the departments 
FROM departments;

SELECT *    -- to show all the employees
FROM employees;

SELECT first_name  -- only shows the first name
FROM employees;

-- using WHERE and Logical Operating
SELECT *     -- shows only them, their id 60 and salary upto 4k
FROM employees
WHERE department_id = 60 AND salary > 4000;

-- Arithmatic Operatorsse
SELECT 5+4;

SELECT first_name,salary,salary+10000
FROM employees;

SELECT first_name,salary,salary-10000
FROM employees
WHERE salary > 20000;

-- Distinct 
SELECT DISTINCT department_name
FROM departments;

-- Order by
SELECT first_name,salary
FROM employees
ORDER BY salary DESC;

SELECT first_name,salary
FROM employees
ORDER BY salary ASC;

-- Limit
SELECT *
FROM employees 
ORDER BY salary DESC
LIMIT 10,5;

-- Like
SELECT first_name,last_name
FROM employees
WHERE last_name LIKE '%green%';

-- As 
SELECT first_name,salary,salary+10000 AS Increased_Salary
FROM employees