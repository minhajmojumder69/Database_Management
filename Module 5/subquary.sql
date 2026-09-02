USE dummydb;

SELECT *
FROM employees
WHERE employee_id = 144;

-- SELECT *
FROM employees
WHERE salary < (SELECT salary
                FROM employees
                WHERE employee_id = 144);


-- How takes the Maximum salay
SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary)
                FROM employees);


SELECT *
FROM departments
WHERE department_name = 'Marketing'


-- Avarege salary of Marketing department
SELECT AVG(salary)
FROM employees
WHERE department_id = (SELECT department_id
                    FROM departments
                    WHERE department_name = 'Marketing');


-- how many peoples in IT department
SELECT COUNT(*)
FROM employees
WHERE department_id = (SELECT department_id
                    FROM departments
                    WHERE department_name = 'IT');


-- Sum of programmers salary
SELECT SUM(salary)
FROM employees
WHERE job_id = (SELECT job_id
                    FROM jobs
                    WHERE job_title = 'Programmer');