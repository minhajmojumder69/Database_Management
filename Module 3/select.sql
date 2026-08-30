USE student;

-- To see all Data of a table
-- Way 1
SELECT Roll,Name,Email,Address,Age
FROM student_table;

--Way 2
SELECT * FROM student_table

-- to see only the Name or any thing
-- Way 1
SELECT Name
FROM student_table

--Way 2
SELECT *
FROM student_table
WHERE Name = 'Mahin';

SELECT Email
FROM student_table
WHERE Roll = 0002