USE dummydb;

WITH tmp AS
(
    SELECT *
    FROM employees
    LIMIT 5
)

SELECT *
FROM tmp;

WITH abgit AS 
(
    SELECT AVG(salary) AS SAl1
    FROM employees
),
maxmkt AS
(
    SELECT MAX(salary) AS SAL2
    FROM employees
)

SELECT *
FROM employees
WHERE salary > (
                    SELECT SAL1 FROM abgit
                ) AND 
                    (
                        SELECT SAL2 FROM maxmkt
                    );