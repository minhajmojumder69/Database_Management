USE programminghero;
CREATE TABLE Student(
	Roll CHAR(4) PRIMARY KEY,
    Name VARCHAR(50),
    Marks DOUBLE
    );
    
INSERT INTO student
(Roll,Name,Marks) VALUES(1,'Minhaj',69);

INSERT INTO student
(Roll,Name,Marks) VALUES(3,'Nafisha',99);

SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET Name = 'Minhaj Mojumder'
WHERE Roll = 1;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO student
(Roll,Name,Marks) VALUES(0004,'Afnan',70);