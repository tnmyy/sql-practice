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











