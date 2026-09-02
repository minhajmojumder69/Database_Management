USE dummydb;

-- find the 2nd maximun salary 
SELECT DISTINCT salary , first_name
FROM employees
ORDER BY salary DESC
LIMIT 1,1;

-- using subquary
SELECT *
FROM employees
WHERE salary = (SELECT DISTINCT salary
                FROM employees
                ORDER BY salary DESC
                LIMIT 1,1);

                

SELECT MAX(salary)   -- find max salary
FROM employees;

SELECT MAX(salary)   -- 2nd max salary
FROM employees
WHERE salary < (SELECT MAX(salary)
                FROM employees
                );

-- ADV SUBQUERY
SELECT *                -- 2nd max salary holders
FROM employees
WHERE salary = (
                SELECT MAX(salary)
                FROM employees
                WHERE salary < (SELECT MAX(salary)
                                FROM employees
                                )
                );

SELECT *
FROM employees AS emp
WHERE salary > (
                SELECT salary
                FROM employees AS mgr
                WHERE emp.manager_id = mgr.employee_id
                )


SELECT *
FROM employees AS emp
WHERE job_id = (
                SELECT job_id
                FROM employees AS mgr
                WHERE emp.manager_id = mgr.employee_id
                )