USE dummydb;

-- Step 1
SELECT MAX(salary)   -- Maximum Salary
FROM employees

-- Step 2
SELECT first_name,salary
FROM employees
WHERE salary = (
                SELECT MAX(salary)    -- 2nd Maximum salary
                FROM employees
                WHERE salary < (
                            SELECT MAX(salary)
                            FROM employees
                                )
)   

-- Step 3
SELECT first_name,salary
FROM employees
WHERE salary = (
                SELECT MAX(salary)             -- 3rd Maximum salary
                FROM employees
                WHERE salary < (
                                SELECT MAX(salary)
                                FROM employees
                                WHERE salary < (
                                                SELECT MAX(salary)
                                                FROM employees
                                                )
                                )
)

-- as well finding the 3rd lowest salary
SELECT first_name,salary
FROM employees
WHERE salary = (
                SELECT MIN(salary)             -- 3rd Lowest salary
                FROM employees
                WHERE salary > (
                                SELECT MIN(salary)
                                FROM employees
                                WHERE salary > (
                                                SELECT MIN(salary)
                                                FROM employees
                                                )
                                )
)



-- Step 1
SELECT *               -- ascending by hire_date
FROM employees
ORDER BY hire_date ASC

-- Step 2
SELECT hire_date             -- finding the hire date of Steven
FROM employees
WHERE first_name = 'Steven' AND last_name = 'King'       


-- Step 3
SELECT MIN(hire_date)            -- finding the persons hire date who hired after steven
FROM employees
WHERE hire_date > (
                SELECT hire_date
                FROM employees
                WHERE first_name = 'Steven' AND last_name = 'King'
);

-- Step 4
SELECT *                  -- shows all informations of the person
FROM employees
WHERE hire_date = (
                SELECT MIN(hire_date)
                FROM employees
                WHERE hire_date > (
                                SELECT hire_date
                                FROM employees
                                WHERE first_name = 'Steven' AND last_name = 'Markle'
                                )
);
