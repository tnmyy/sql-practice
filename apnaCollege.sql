
	SET SQL_SAFE_UPDATES = 0;
	-- SET SQL_SAFE_UPDATES = 1;

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

	-- 1 Total Marks

	SELECT Name, 
		   SUM(Hindi + English + Maths + Science + SocialScience + IT) AS TotalMarks
	FROM halfYearly
	GROUP BY Name;

	-- 2 Find Total Payment

	CREATE DATABASE IF NOT EXISTS Company;
	USE Company;

	CREATE TABLE IF NOT EXISTS PaymentTable
	(
		id INT,
		customer VARCHAR(50),
		modeOfPayment VARCHAR (20),
		city VARCHAR (40),
		PRIMARY KEY (id)
	);

	INSERT INTO PaymentTable
	(id, customer, modeOfPayment, city)
	VALUES
	(101, 'Naman Bhatt', 'Netbanking', 'Bhatt Land'),
	(102, 'Jay Joshi', 'Debit Card', 'Jaipur'),
	(103, 'Siddharth Vedik', 'Credit Card', 'Uganda'),
	(104, 'Tanmay Upreti', 'UPI', 'Titan'),
	(105, 'Vaibhav Joshi', 'Netbanking', 'Wakanda'),
	(106, 'Naman Bhatt', 'Netbanking', 'Bhatt Land'),
	(107, 'Jay Joshi', 'Debit Card', 'Jaipur'),
	(108, 'Siddharth Vedik', 'Credit Card', 'Uganda'),
	(109, 'Tanmay Upreti', 'UPI', 'Titan'),
	(110, 'Vaibhav Joshi', 'Netbanking', 'Wakanda');

	SELECT modeOfPayment, COUNT(id)
	FROM PaymentTable
	GROUP BY modeOfPayment
	ORDER BY modeOfPayment DESC;

	-- HAVING Clause

	CREATE DATABASE IF NOT EXISTS Students;
	USE Students;

	CREATE TABLE IF NOT EXISTS stu
	(
		rollNo INT(2) PRIMARY KEY,
		name VARCHAR(50),
		marks FLOAT,
		grade VARCHAR(1),
		city VARCHAR(30)
	);

	INSERT INTO stu
	(rollNo, name, marks, grade, city)
	VALUES
	(1, 'Tanmay', 88, 'B', 'Delhi'),
	(2, 'Vaibhav', 87.75, 'B', 'Mumbai'),
	(3, 'Sweta', 83.25, 'B', 'Noida'),
	(4, 'Manav', 71.5, 'C', 'Pune'),
	(5, 'Jatin', 19, 'E', 'Delhi'),
	(6, 'Priyanshi Kapri', 91, 'A', 'Delhi'),
	(7, 'Aditya', 55.75, 'D', 'Mumbai'),
	(8, 'Jay', 47.25, 'D', 'Noida'),
	(9, 'Manas', 33.25, 'D', 'Pune');

	SELECT city, COUNT(rollNo)
	FROM stu
	GROUP BY city
	HAVING MAX(marks)>80; -- On every group

	-- Standard ORDER

	-- SELECT
	-- FROM 
	-- WHERE
	-- GROUP BY
	-- HAVING 
	-- ORDER BY 

	SELECT city, COUNT(rollNo)
	FROM stu
	WHERE grade = "B"
	GROUP BY city
	HAVING MAX(marks)>80
	ORDER BY city DESC;

	-- TABLE Related Queries

	-- UPDATE

	-- UPDATE
	-- SET
	-- WHERE


	SELECT * FROM stu
	ORDER BY grade;

	UPDATE stu
	SET marks = 89.50
	WHERE rollNo = 1;

	UPDATE stu
	SET grade = 'A'
	WHERE marks BETWEEN 80 AND 100;

	UPDATE stu
	SET grade = 'B'
	WHERE marks BETWEEN 60 AND 80;

	UPDATE stu
	SET grade = 'C'
	WHERE marks BETWEEN 50 AND 60;

	UPDATE stu
	SET marks = marks + 1;

	-- DELETE

	-- DELETE FROM stu, DELTES Whole Table

	DELETE FROM stu
	WHERE marks < 30;

	SELECT * FROM stu
	ORDER BY grade;

	-- FOREIGN KEY

	USE School;

	CREATE TABLE IF NOT EXISTS subject -- PARENT TABLE
	(
		id INT PRIMARY KEY,
		name VARCHAR(50)
	);

	CREATE TABLE IF NOT EXISTS teachers -- CHILD TABLE
	(
		id INT PRIMARY KEY,
		name VARCHAR(50),
		subject_id INT,
		FOREIGN KEY (subject_id) REFERENCES subject(id)
	);

	INSERT INTO subject 
	(id, name)
	VALUES
	(101, 'Physics'),
	(102, 'Chemistry'),
	(103, 'Biology'),
	(104, 'Mathematics'),
	(105, 'English'),
	(106, 'Hindi'),
	(107, 'Computer Science'),
	(108, 'Social Science');
	SELECT * FROM subject;

	INSERT INTO teachers 
	(id, name, subject_id)
	VALUES
	(101, 'Mr. Pushkar Kholiya', 101),
	(102, 'Mrs. Deepti Bhatt', 105),
	(103, 'Ms. Suman Chand', 102),
	(104, 'Mrs. Kamla Pal', 104),
	(105, 'Ms. Bhawna Bhatt', 106),
	(106, 'Mr. Pushkar Kholiya', 104),
	(107, 'Mrs. Meena Joshi', 108),
	(108, 'Mrs. Vandana Bisht', 108),
	(109, 'Mr. Bhuwan Chandra Joshi', 104),
	(110, 'Mr. Prafulla Gyala', 107),
	(111, 'Mr. Himashu Bagauli', 105),
	(112, 'Mrs. Chitra Joshi',106),
	(113, 'Mrs. Sunita Mahar', 104),
	(114, 'Ms. Suman Chand', 101);

	SELECT * FROM teachers
	ORDER BY subject_id;

	-- Cascading for FOREIGN KEY (Subject name changes => Teachers' subject will change too, If subject deleted => then Teacher(s) deleted too.)

	CREATE TABLE IF NOT EXISTS department -- PARENT TABLE
	(
		id INT PRIMARY KEY,
		name VARCHAR(50)
	);

	CREATE TABLE IF NOT EXISTS teacher -- CHILD TABLE
	(
		id INT PRIMARY KEY,
		name VARCHAR(50),
		department_id INT,
		FOREIGN KEY (department_id) REFERENCES department(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	);

	INSERT INTO department 
	(id, name)
	VALUES
	(101, 'Physics'),
	(102, 'Chemistry'),
	(103, 'Biology'),
	(104, 'Mathematics'),
	(105, 'English'),
	(106, 'Hindi'),
	(107, 'Computer Science'),
	(108, 'Social Science');
	SELECT * FROM department;

	INSERT INTO teacher 
	(id, name, department_id)
	VALUES
	(101, 'Mr. Pushkar Kholiya', 101),
	(102, 'Mrs. Deepti Bhatt', 105),
	(103, 'Ms. Suman Chand', 102),
	(104, 'Mrs. Kamla Pal', 104),
	(105, 'Ms. Bhawna Bhatt', 106),
	(106, 'Mr. Pushkar Kholiya', 104),
	(107, 'Mrs. Meena Joshi', 108),
	(108, 'Mrs. Vandana Bisht', 108),
	(109, 'Mr. Bhuwan Chandra Joshi', 104),
	(110, 'Mr. Prafulla Gyala', 107),
	(111, 'Mr. Himashu Bagauli', 105),
	(112, 'Mrs. Chitra Joshi',106),
	(113, 'Mrs. Sunita Mahar', 104),
	(114, 'Ms. Suman Chand', 101);
	SELECT * FROM teacher
	ORDER BY department_id ASC;

	UPDATE department
	SET id = 402
	WHERE id = 107;
	SELECT * FROM teacher;

	-- ALTER (to change schema)

	USE School;

	CREATE TABLE IF NOT EXISTS marks
	(
		subject VARCHAR(50),
		marks INT(2),
		grade VARCHAR(2)
	);

	INSERT INTO marks
	(subject, score, grade)
	VALUES
	('Hindi', 65, 'B'),
	('English', 66, 'B'),
	('Mathematics', 70, 'B'),
	('Science', 69, 'B'),
	('Social Science', 76, 'A'),
	('Information Technology', 50, 'A');

	SELECT * FROM marks;

	ALTER TABLE marks
	ADD COLUMN teacher VARCHAR(50);
	SELECT * FROM marks;

	ALTER TABLE marks
	DROP COLUMN teacher;
	SELECT * FROM marks;

	ALTER TABLE marks
	RENAME TO tnmy;
	SELECT * FROM tnmy;

	ALTER TABLE tnmy
	RENAME TO marks;
	SELECT * FROM marks;

	ALTER TABLE marks
	CHANGE COLUMN marks score VARCHAR(50);
	SELECT * FROM marks;

	ALTER TABLE marks
	MODIFY COLUMN grade VARCHAR(1);
	SELECT * FROM marks;

	ALTER TABLE marks
	DROP COLUMN grade;
	SELECT * FROM marks;

--  TRUNCATE TABLE

TRUNCATE TABLE marks;
SELECT * FROM marks;

ALTER TABLE marks
ADD COLUMN grade VARCHAR(50);




