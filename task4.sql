-- Task 2: Data Types, Constraints & Table Design

-- 1. Create Database
CREATE DATABASE task2;
-- Use existing database
USE task2;

-- Drop table if already exists (for clean execution)
DROP TABLE IF EXISTS students;

-- Create students table with constraints
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE NOT NULL,
    age INT CHECK (age > 0)
);

2-- Why Constraints Are Essential (Data Integrity)
Constraint	Purpose
PRIMARY KEY	Ensures unique identification
NOT NULL	Prevents missing important data
UNIQUE	Avoids duplicate entries
CHECK	Validates acceptable values

--Constraints protect the database from incorrect, duplicate, or incomplete data.

--3--Insert Valid Data
INSERT INTO students (name, email, dob, age) VALUES
('Arun Kumar', 'arun@gmail.com', '2003-05-10', 21),
('Priya Sharma', 'priya@gmail.com', '2002-08-15', 22),
('Rahul Verma', 'rahul@gmail.com', '2001-11-20', 23);

--4--Insert Invalid Data (Constraint Failures)
--Duplicate Email (UNIQUE constraint)
INSERT INTO students (name, email, dob, age)
VALUES ('Test User', 'arun@gmail.com', '2000-01-01', 20);


--Error: Duplicate entry for email

--NULL Value (NOT NULL constraint)
INSERT INTO students (name, email, dob, age)
VALUES (NULL, 'test@gmail.com', '2000-01-01', 20);


--Error: Column name cannot be null

--Invalid Age (CHECK constraint)
INSERT INTO students (name, email, dob, age)
VALUES ('Invalid Age', 'invalid@gmail.com', '2000-01-01', -5);


--Error: Check constraint violated

--5. ALTER TABLE – Add New Column
ALTER TABLE students
ADD phone_number VARCHAR(15);

--6--Rename a Column
--MySQL 8+
ALTER TABLE students
RENAME COLUMN phone_number TO mobile_number;

--Older MySQL
ALTER TABLE students
CHANGE phone_number mobile_number VARCHAR(15);

--7. Drop a Column (Understand Consequences)
ALTER TABLE students
DROP COLUMN age;

-- Consequences:

Data is permanently deleted

Cannot be recovered

Queries depending on this column may fail

--8--Documentation: Why Each Constraint Was Chosen
Column	Constraint	Reason
id	    PRIMARY KEY	Unique student identification
name	NOT NULL	Name is mandatory
email	UNIQUE, NOT NULL	Prevent duplicate emails
dob	    NOT NULL	Required personal detail
age	    CHECK	    Prevent invalid age values