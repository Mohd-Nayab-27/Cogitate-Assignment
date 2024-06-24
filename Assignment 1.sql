-- Creating the database cogitate
CREATE DATABASE cogitate;

-- Use the cogitate database
USE cogitate;
-- Creating the Students table
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

-- Creating the Friends table
CREATE TABLE Friends (
    ID INT PRIMARY KEY,
    Friend_ID INT
);

-- Creating the Packages table
CREATE TABLE Packages (
    ID INT PRIMARY KEY,
    Salary DECIMAL(10, 2)
);
-- Inserting data into the Students table
INSERT INTO Students (ID, Name) VALUES
(1, 'Ashley'),
(2, 'Samantha'),
(3, 'Julia'),
(4, 'Scarlet');

-- Inserting data into the Friends table
INSERT INTO Friends (ID, Friend_ID) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 1);

-- Inserting data into the Packages table
INSERT INTO Packages (ID, Salary) VALUES
(1, 15.2),
(2, 10.06),
(3, 11.55),
(4, 12.12);

-- Write a query to output the names of those students whose friends got offered a higher salary than them.
-- Names must be ordered by the salary amount offered to the best friends. It is guaranteed that neither of the two students got the same salary offer.
SELECT s.Name
FROM Students s
JOIN Friends f ON s.ID = f.ID                -- Join to get each student's friend
JOIN Packages p1 ON s.ID = p1.ID             -- Join to get student's salary
JOIN Packages p2 ON f.Friend_ID = p2.ID      -- Join to get friend's salary
WHERE p2.Salary > p1.Salary                  -- Filter where friend's salary is higher
ORDER BY p2.Salary;                          -- Order the results by the friends' salary
