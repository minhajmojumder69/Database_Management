CREATE DATABASE phitron_mid;
USE phitron_mid;

CREATE TABLE Employees
(
    Employee_Id INT PRIMARY KEY,
    First_name VARCHAR(30) NOT NULL,
    Last_name VARCHAR(30) NOT NULL,
    Date_of_Birth DATE,
    Department_ID INT,
    Salary INT
);

CREATE TABLE Projects
(
    Project_ID INT PRIMARY KEY,
    Project_Name VARCHAR(50) NOT NULL,
    Start_Date DATE,
    End_Date DATE,
    Budget INT
);

CREATE TABLE Employee_Projects
(
    Employee_ID INT,
    Project_ID INT,
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_Id),
    FOREIGN KEY (Project_ID) REFERENCES Projects(Project_ID)
);


-- Primary_key: Primary key means its have a unique data of a objects. like "Roll = 10", Heres Roll is a object and 10 is a data of this objects.
-- and this same data will be stored at once, Theres no chance to store same data two or multiple time. Thats means two students Roll number cant be same.
-- Foreign Key: Foreign keys data merged from it parent table. It is used to establish a structural link or relationship between the two tables

-- Self Join: Its means Joing two colums from same table.
USE dummydb;
SELECT emp1.first_name,emp2.first_name,emp1.manager_id
FROM employees AS emp1
    JOIN employees AS emp2
    ON emp1.manager_id = emp2.manager_id;


SELECT COUNT(employees.department_id) ,departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
GROUP BY departments.department_name;

