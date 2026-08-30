SELECT * FROM Employees;

INSERT INTO employees
(EmployeeID,EmployeeName,EmployeeSalary,JoiningDate) VALUES(0006,'Minhaj',10000,'2022-03-23');

INSERT INTO employees
(EmployeeID,EmployeeName,EmployeeSalary,JoiningDate) VALUES(0005,'Afnan',30000,'2022-03-23');

SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE EmployeeID = 4;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO employees
(EmployeeID,EmployeeName,EmployeeSalary,JoiningDate) VALUES(0007,'Afnan',30000,'2022-03-23');

SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET EmployeeName = 'Minhaj Mojumder'
WHERE EmployeeID = 6;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO employees
(EmployeeID,EmployeeName,EmployeeSalary,JoiningDate) VALUES(0004,'Afnan',30000,'2022-03-23');

SET SQL_SAFE_UPDATES = 0;
DELETE FROM employees
WHERE EmployeeID = 6;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET EmployeeName = 'Afnan Muiz'
WHERE EmployeeID = 5;
SET SQL_SAFE_UPDATES = 1;