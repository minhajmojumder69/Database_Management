USE dummydb;

SELECT first_name,UPPER(first_name)
FROM employees;

SELECT email,LOWER(email)
FROM employees;


-- Group Functions

SELECT MAX(salary)
FROM employees;

SELECT MIN(salary)
FROM employees;

SELECT AVG(salary)
FROM employees;

SELECT COUNT(salary)
FROM employees;

SELECT COUNT(*)
FROM employees;

-- GROUP BY

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id;

-- HAVING

SELECT department_id, MAX(salary)
FROM employees
WHERE department_id != 20
GROUP BY department_id
HAVING MAX(salary) > 5000;

-- Alter table query

ALTER TABLE employees
add files CHAR(9);   -- adding a comul

ALTER TABLE employees
DROP COlUMN files;  -- deleting a comul

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(50);

SELECT *
FROM employees;