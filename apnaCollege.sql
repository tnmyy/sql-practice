CREATE DATABASE School;
CREATE DATABASE IF NOT EXISTS School;
USE School;

CREATE TABLE Student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO Student VALUES (1, "Aayushi", 16);
INSERT INTO Student VALUES (2, "Aditi", 14);
-- INSERT INTO Student VALUES (1, "Aditi", 14); gives error b/c id is special

SELECT * FROM Student;
INSERT INTO Student VALUES (39, "Tanmay", 15);
SELECT * FROM Student;

CREATE DATABASE IF NOT EXISTS College;
DROP DATABASE IF EXISTS Collage;
DROP DATABASE Collage;
DROP DATABASE IF EXISTS College;

SHOW DATABASES;

USE School;
SHOW TABLES;

-- Table related queries

DROP TABLE Student;

CREATE TABLE Student(
	rollNo INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO Student
(rollNo, name)
VALUES
(38, 'Sweta Bora'),
(39, 'Tanmay Upreti'),
(40, 'Vaibhav Joshi');


SELECT * FROM Student;

INSERT INTO Student VALUES (37, 'Sourav Mehta');

-- Ques 1;

CREATE DATABASE IF NOT EXISTS XYZ;
USE XYZ;

CREATE TABLE IF NOT EXISTS Employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

INSERT INTO Employee
(id, name, salary)
VALUES
(1, 'Adam', 25000),
(2, 'Bob', 30000),
(3, 'Caesy', 40000);

SELECT * FROM Employee;

-- Keys

USE XYZ;

CREATE TABLE IF NOT EXISTS temp1(
	id INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO temp1 VALUES (11);
INSERT INTO temp1 VALUES (11);
INSERT INTO temp1 VALUES (10);
INSERT INTO temp1 VALUES (15);

SELECT * FROM temp1;

USE XYZ;

-- Constraints 

CREATE TABLE IF NOT EXISTS temp2(
	id INT,
    name VARCHAR(50),
    age INT NOT NULL,
    PRIMARY KEY (id, name)
);

INSERT INTO temp2 VALUES (1, 'Aayushi', 16);

SELECT * FROM temp2;

INSERT INTO temp2
(id, name, age)
VALUES
(2, 'Aditi', 15),
(1, 'Aayushi', 16);

SELECT * FROM temp2;

-- Default

CREATE DATABASE IF NOT EXISTS Company;

USE Company;

CREATE TABLE IF NOT EXISTS office(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT DEFAULT 30000
);


INSERT INTO office (id, name) VALUES (1, 'Jay');
INSERT INTO office
(id, name, salary)
VALUES
(2, 'Naman', 31000),
(3, 'Manas', 250);

SELECT * FROM office;

-- Sample 2

CREATE DATABASE IF NOT EXISTS class;
USE class;


CREATE TABLE IF NOT EXISTS student(
	rollNo INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR (50)
);

INSERT INTO student
(rollNo, name, marks, grade, city)
VALUES
(101, 'Anil', 85, 'B', 'Delhi'),
(102, 'Amit', 45, 'D', 'Pune'),
(103, 'Bhumika', 80, 'B', 'Lucknow'),
(104, 'Dhurv', 55, 'D', 'Mumbai'),
(105, 'Laxmi', 90, 'A', 'Mumbai');

-- SELECT Command
-- SELECT col_1, col_2 FROM table_name;

SELECT name, marks FROM student;

SELECT name FROM student;

SELECT DISTINCT city FROM student; -- Unique

-- WHERE Clause(rule)

SELECT *
FROM student
WHERE marks >= 80;


SELECT *
FROM student
WHERE marks <= 50;

SELECT *
FROM student
WHERE grade = 'B';

-- Operators

-- AND
SELECT *
FROM student
WHERE marks > 80 
AND city = 'Mumbai';

SELECT *
FROM student
WHERE marks > 80 
AND city != 'Mumbai';
-- IF 20 marks added then, it would be more than 100
SELECT *
FROM student
WHERE marks+20>100;

-- OR
SELECT *
FROM student
WHERE marks > 80 
OR city = 'Mumbai';

-- BETWEEN
SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90; -- both inclusive

-- IN
SELECT *
FROM student
WHERE city IN ('Mumbai', 'Delhi','Pune', 'Pithoragarh');

-- NOT IN
SELECT *
FROM student
WHERE city NOT IN ('Mumbai', 'Delhi','Pune');

-- LIMIT Clause

SELECT * FROM student LIMIT 3; -- gives only first 3 students

SELECT *
FROM student
WHERE marks>=50
LIMIT 3;

-- ORDER BY Clause

SELECT *
FROM student 
ORDER BY name ASC; -- names in ascending order

SELECT *
FROM student 
ORDER BY city DESC; -- city's names in descending order

SELECT *
FROM student 
ORDER BY marks DESC
LIMIT 3; -- marks in descending order (TOP 3 Students)

-- Aggregate (to collect) Functions (they returns only a single value i.e. a single cell of table)

-- MAX()
SELECT MAX(marks) FROM student;

-- MIN()
SELECT MIN(marks) FROM student;

-- AVG()
SELECT AVG(marks) FROM student;

-- SUM()
SELECT SUM(marks) FROM student;

-- COUNT()
SELECT COUNT(rollNo) FROM student;  -- total number of roll numbers

-- GROUP BY CLAUSE

SELECT city, COUNT(name)
FROM student
GROUP BY city;

SELECT grade, COUNT(name)
FROM student
GROUP BY grade;

SELECT city, AVG(marks)
FROM student
GROUP BY city;

-- Pracitce Questions

-- 1
CREATE DATABASE IF NOT EXISTS tenth;
USE tenth;

CREATE TABLE IF NOT EXISTS halfYearly
(
	Name VARCHAR(50),
    Hindi INT(2),
    English INT(2),
    Maths INT(2),
    Science INT(2),
    SocialScience INT(2),
    IT INT(2),
    PRIMARY KEY(Name)
);

INSERT INTO halfYearly
(Name, Hindi, English, Maths, Science, SocialScience, IT)
VALUES
('Tanmay', 65, 66, 70, 69, 76, 50),
('Vaibhav', 67, 61, 75, 71, 73, 48),
('Sweta', 69, 66, 54, 68, 75, 49),
('Manav', 63, 58, 42, 61, 76, 42);


