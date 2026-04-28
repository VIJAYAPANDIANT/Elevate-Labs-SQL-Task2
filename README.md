# 📊 Elevate Labs - SQL Task 2

Welcome to SQL Task 2 of my Elevate Labs internship! This project demonstrates my understanding of advanced SQL table design, focusing on data types, constraints, and structural modifications to maintain data integrity.

## 🎯 Task Objective
The primary goal of this task is to:
- **Define Schema:** Choose appropriate data types (`INT`, `VARCHAR`, `DATE`) for different fields.
- **Apply Constraints:** Implement `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, and `CHECK` constraints to ensure robust data validation.
- **Test Integrity:** Perform valid and invalid data insertions to observe constraint behavior.
- **Modify Structure:** Use `ALTER TABLE` to add, rename, and drop columns dynamically.

## 🛠️ Prerequisites
To successfully run the scripts in this project, ensure you have the following:
- **SQL Server:** MySQL, MariaDB, or any compatible SQL engine.
- **SQL Client:** A command-line interface (CLI) or a graphical tool like MySQL Workbench.

## 🏗️ Database Schema
The project expands upon the `students` table design to enforce strict data rules.

### `students` Table Structure
| Column Name | Data Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| 🔑 `id` | `INT` | `PRIMARY KEY`, `AUTO_INCREMENT`| Unique identifier for each student |
| 👤 `name` | `VARCHAR(50)` | `NOT NULL` | Full name of the student |
| 📧 `email` | `VARCHAR(100)`| `UNIQUE`, `NOT NULL` | Unique email address |
| 📅 `dob` | `DATE` | `NOT NULL` | Date of birth |
| 🔢 `age` | `INT` | `CHECK (age > 0)` | Verified positive age |

## 📖 How to Use
Follow these steps to initialize and test the database:

1. **Start Server:** Ensure your SQL server instance is running.
2. **Connect:** Use your preferred SQL client to connect to the server.
3. **Execute Script:** Open and run the `task2.sql` file.
   ```sql
   source path/to/task2.sql;
   ```
4. **Verify:** Check the output to observe constraint successes and failures, as well as the table alterations.

## 🔍 Key Operations Included
The `task2.sql` script includes several essential SQL operations:

### 1. Table Definition with Constraints
```sql
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE NOT NULL,
    age INT CHECK (age > 0)
);
```

### 2. Testing Constraints (Data Integrity)
```sql
-- Valid Insert
INSERT INTO students (name, email, dob, age) VALUES ('Arun Kumar', 'arun@gmail.com', '2003-05-10', 21);

-- Invalid Insert (Fails UNIQUE constraint on email)
INSERT INTO students (name, email, dob, age) VALUES ('Test User', 'arun@gmail.com', '2000-01-01', 20);
```

### 3. Table Alterations (`ALTER TABLE`)
```sql
-- Add a new column
ALTER TABLE students ADD phone_number VARCHAR(15);

-- Rename a column
ALTER TABLE students RENAME COLUMN phone_number TO mobile_number;

-- Drop a column
ALTER TABLE students DROP COLUMN age;
```

Tip

When running the script, you will intentionally encounter errors during the invalid data insertion phase. These errors prove that your constraints are working properly to protect the database!

Submitted by: Vijayapandian T | Elevate Labs SQL Internship Task 2
