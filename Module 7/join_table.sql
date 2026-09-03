USE dummydb;

-- join table without Join_Query
SELECT employees.first_name,departments.department_id
FROM employees, departments
WHERE employees.department_id = departments.department_id;

-- With Join_Query
SELECT employees.first_name, departments.department_name
FROM employees JOIN departments ON employees.department_id = departments.department_id;

SELECT employees.first_name, departments.department_name
FROM employees JOIN departments USING(department_id);         -- its need to match the colums name of both

SELECT *
FROM employees AS emp JOIN employees AS ems ON emp.employee_id = ems.department_id;

SELECT e.first_name, m.first_name
FROM employees AS e
    JOIN employees AS m 
    ON e.manager_id = m.employee_id;

SELECT departments.department_name
FROM departments
    LEFT JOIN employees
    ON departments.department_id = employees.department_id
WHERE employees.department_id IS NULL;
