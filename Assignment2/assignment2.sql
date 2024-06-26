-- Step 1: Create the database
CREATE DATABASE cigitate_1;

-- Step 2: Use the newly created database
USE cigitate_1;

-- Create the students table
CREATE TABLE students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT
);

-- Insert the sample data
INSERT INTO students (ID, Name, Marks) VALUES
(1, 'Alice', 85),
(2, 'Bob', 90),
(3, 'Carol', 75),
(4, 'Dave', 80),
(5, 'Eve', 70),
(6, 'Frank', 95);
-- You are required to write a SQL query to swap the Name and Marks values where Id is odd with even Id. 
-- The Id values must remain unchanged, ensuring that only the Name and Marks values are swapped between these two specific rows.
-- Creating a temporary table to store the swapped values
CREATE TEMPORARY TABLE temp_students AS
SELECT 
    s1.ID AS ID1, s1.Name AS Name1, s1.Marks AS Marks1,
    s2.ID AS ID2, s2.Name AS Name2, s2.Marks AS Marks2
FROM 
    students s1
JOIN 
    students s2 ON s1.ID = s2.ID - 1
WHERE 
    s1.ID % 2 = 1;

--  Updating the students table with the swapped values from the temporary table
UPDATE students s
JOIN temp_students t ON s.ID = t.ID1
SET s.Name = t.Name2, s.Marks = t.Marks2;

UPDATE students s
JOIN temp_students t ON s.ID = t.ID2
SET s.Name = t.Name1, s.Marks = t.Marks1;

--  Droping the temporary table
DROP TEMPORARY TABLE temp_students;

-- Verifying the update
SELECT * FROM students;