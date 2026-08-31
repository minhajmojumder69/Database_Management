CREATE DATABASE assignment;
USE assignment;

-- Answering Question 1 & 2
CREATE TABLE student(
    Roll CHAR(3),
    Name VARCHAR(30) NOT NULL,
    Class INT,
    PRIMARY KEY(Roll,Class)
);

INSERT INTO student(Roll,Name,Class) VALUES ('001','Fahim Khan',9);
INSERT INTO student(Roll,Name,Class) VALUES ('002','Mahim Khan',9);
INSERT INTO student(Roll,Name,Class) VALUES ('003','Zubayer Islam',9);
INSERT INTO student(Roll,Name,Class) VALUES ('004','Jannatul Mimi',9);

CREATE TABLE Library(
    Roll CHAR(3),
    BookName VARCHAR(20) PRIMARY KEY,
    Email VARCHAR(30) UNIQUE,
    Phone CHAR(11) NOT NULL,
    FOREIGN KEY(Roll) REFERENCES student(Roll)
);
USE assignment;
INSERT INTO Library(Roll,BookName,Email,Phone) VALUES ('002','NoyonTara','mahi@gmail.com','019********');
INSERT INTO Library(Roll,BookName,Email,Phone) VALUES ('004','Pother Pachalii','mimi@gmail.com','017********');
INSERT INTO Library(Roll,BookName,Email,Phone) VALUES ('002','Odrissho Manob','mahim@gmail.com','019********');

CREATE TABLE Fees( 
    Roll CHAR(3),
    Class INT NOT NULL,
    Total_Fees INT NOT NULL,
    FOREIGN KEY(Roll) REFERENCES student(Roll)
);

USE assignment;
INSERT INTO fees(Roll,Class,Total_Fees) VALUES ('001',9,5550);
INSERT INTO fees(Roll,Class,Total_Fees) VALUES ('002',9,5550);
INSERT INTO fees(Roll,Class,Total_Fees) VALUES ('003',9,5550);
INSERT INTO fees(Roll,Class,Total_Fees) VALUES ('003',9,5550);