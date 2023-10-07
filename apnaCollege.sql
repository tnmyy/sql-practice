CREATE DATABASE School;

USE School;

CREATE TABLE Student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO Student VALUES (1, "Aayushi", 16);
INSERT INTO Student VALUES (2, "Aditi", 14);
-- INSERT INTO Student VALUES (1, "Aditi", 14);

SELECT * FROM Student;