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

