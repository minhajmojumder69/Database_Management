CREATE DATABASE student;

-- CONSTRIANTS
USE student;
CREATE TABLE student_table
(
    Roll CHAR(4) PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE,
    Address VARCHAR(200),
    Age INT CHECK(Age>10)
);

INSERT INTO student_table(Roll,Name,Email,Address,Age) VALUES ('0001','Minhaj','minhaj12@gmail.com','Dhaka,Bangladesh',12)
INSERT INTO student_table(Roll,Name,Email,Address,Age) VALUES ('0002','Zakir','minhaj22@gmail.com','Dhaka,Bangladesh',12)
INSERT INTO student_table(Roll,Name,Email,Age) VALUES ('0003','Mahin','minhaj32@gmail.com',12)

CREATE TABLE Library
(
    BookName VARCHAR(50) PRIMARY KEY,
    Roll CHAR(4),
    FOREIGN KEY (Roll) REFERENCES student_table(Roll)
);


--COMPOSITE PRIMARY KEY
CREATE TABLE Course
(
    CourseName VARCHAR(10),
    University VARCHAR(20),
    Credit INT,
    PRIMARY KEY(CourseName,University)
);

INSERT INTO course(CourseName,University,Credit) VALUES ('CSE101','BUET',3)
INSERT INTO course(CourseName,University,Credit) VALUES ('CSE103','DU',4)
INSERT INTO course(CourseName,University,Credit) VALUES ('CSE101','DIU',3)
INSERT INTO course(CourseName,University,Credit) VALUES ('CSE101','DIU',4)  -- It will not insert.
