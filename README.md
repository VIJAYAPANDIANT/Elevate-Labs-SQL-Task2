# Task 2: SQL Data Types, Constraints & Table Design

This project demonstrates the fundamental concepts of SQL table design, including data types, constraints, and table alterations using MySQL.

## Project Structure
- `task2.sql`: The main SQL script containing all commands for database creation, table design, data insertion, and table modifications.

## Prerequisites
- MySQL Server installed and running.

## Features Covered

### 1. Database and Table Creation
- Creation of a database named `task2`.
- Definition of a `students` table with appropriate data types:
    - `INT AUTO_INCREMENT`: For unique user IDs.
    - `VARCHAR`: For strings like name and email.
    - `DATE`: For date of birth.

### 2. SQL Constraints
Constraints are essential for maintaining data integrity. The following constraints are implemented in the `students` table:
- **PRIMARY KEY**: Uniquely identifies each student.
- **NOT NULL**: Ensures mandatory fields (name, email, dob) are not empty.
- **UNIQUE**: Prevents duplicate email entries.
- **CHECK**: Validates that the age is a positive value.

### 3. Data Integrity Demonstration
The script includes examples of:
- **Valid Insertions**: Successfully adding correct data.
- **Invalid Insertions**: Showing how constraints block incorrect data (duplicate emails, null names, or invalid ages).

### 4. Table Alterations
Demonstrates how to evolve the database schema:
- **Adding a Column**: Adding a `phone_number` field.
- **Renaming a Column**: Using `RENAME COLUMN` (MySQL 8+) or `CHANGE` to rename `phone_number` to `mobile_number`.
- **Dropping a Column**: Permanently removing the `age` column and understanding the consequences of data loss.

## How to Run
1. Open your MySQL terminal or a GUI like MySQL Workbench.
2. Execute the commands in `task2.sql`:
   ```sql
   SOURCE path/to/task2.sql;
   ```
   *Note: Replace `path/to/` with the actual path to the file.*

## Constraint Selection Logic
| Column | Constraint | Reason |
| :--- | :--- | :--- |
| `id` | `PRIMARY KEY` | Unique student identification |
| `name` | `NOT NULL` | Name is mandatory for any record |
| `email` | `UNIQUE, NOT NULL` | Prevents multiple accounts with the same email |
| `dob` | `NOT NULL` | Required personal detail for registration |
| `age` | `CHECK` | Ensures only realistic positive ages are stored |
