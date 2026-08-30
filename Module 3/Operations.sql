USE Student;

CREATE TABLE Marks(
    Roll CHAR(3),
    CSE INT,
    ME INT
);

INSERT INTO marks(Roll,CSE,ME) VALUES ('101',60,70);
INSERT INTO marks(Roll,CSE,ME) VALUES ('102',77,80);
INSERT INTO marks(Roll,CSE,ME) VALUES ('103',71,83);
INSERT INTO marks(Roll,CSE,ME) VALUES ('104',81,73);
INSERT INTO marks(Roll,CSE,ME) VALUES ('105',91,63);

--Arithmatic Operators
SELECT CSE + ME
FROM marks
WHERE Roll = 103; 

SELECT CSE + ME, (CSE+ME)/2
FROM marks
WHERE Roll = 103;

--Comparison Operators
SELECT * FROM marks
WHERE CSE >= 70;

--Logical Operators
SELECT * FROM marks
WHERE CSE < 80 AND ME > 70;

SELECT * FROM marks
WHERE CSE < 80 OR ME > 70;