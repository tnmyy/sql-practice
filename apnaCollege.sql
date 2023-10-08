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





