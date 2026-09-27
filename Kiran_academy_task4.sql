-- =========================================
-- PART A - DATABASE & TABLE CREATION
-- =========================================

-- Task 1: Create a database named banking_db.
CREATE DATABASE banking_db;

-- Task 2: Use/select the banking_db database.
USE banking_db;

-- Task 3: Create a table named accounts.
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
    customer_name VARCHAR(100),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);

-- Task 4: Display the structure of the accounts table.
DESCRIBE accounts;

-- Task 5: Display all tables available inside banking_db.
SHOW TABLES;


-- =========================================
-- PART B - INSERT OPERATIONS
-- =========================================

-- Task 6: Insert Aarav Sharma's account.
INSERT INTO accounts
VALUES (1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-15');

-- Task 7: Insert Priya Patil's account.
INSERT INTO accounts
VALUES (1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20');

-- Task 8: Insert Rohan Joshi's account.
INSERT INTO accounts
VALUES (1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10');

-- Task 9: Insert Sneha Kulkarni's account.
INSERT INTO accounts
VALUES (1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05');

-- Task 10: Insert Vikram Deshmukh's account.
INSERT INTO accounts
VALUES (1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18');

-- Task 11: Insert Neha More's account.
INSERT INTO accounts
VALUES (1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-12');


-- =========================================
-- PART C - DQL / SELECT QUERIES
-- =========================================

-- Task 12: Display all records from accounts.
SELECT * FROM accounts;

-- Task 13: Display only customer_name and account_number.
SELECT customer_name, account_number
FROM accounts;

-- Task 14: Display customer_name, account_type, balance and status.
SELECT customer_name, account_type, balance, status
FROM accounts;

-- Task 15: Display all Savings account holders.
SELECT *
FROM accounts
WHERE account_type = 'Savings';

-- Task 16: Display all customers from Pune.
SELECT *
FROM accounts
WHERE city = 'Pune';

-- Task 17: Display accounts having balance greater than 50000.
SELECT *
FROM accounts
WHERE balance > 50000;

-- Task 18: Display accounts having balance less than or equal to 50000.
SELECT *
FROM accounts
WHERE balance <= 50000;

-- Task 19: Display accounts having balance between 50000 and 200000.
SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 200000;

-- Task 20: Display accounts whose credit_score is greater than or equal to 750.
SELECT *
FROM accounts
WHERE credit_score >= 750;

-- Task 21: Display only Active accounts.
SELECT *
FROM accounts
WHERE status = 'Active';

-- Task 22: Display accounts whose status is Dormant or Closed.
SELECT *
FROM accounts
WHERE status IN ('Dormant', 'Closed');

-- Task 23: Display accounts from Pune AND status = 'Active'.
SELECT *
FROM accounts
WHERE city = 'Pune'
AND status = 'Active';

-- Task 24: Display accounts from Mumbai OR Nashik.
SELECT *
FROM accounts
WHERE city = 'Mumbai'
OR city = 'Nashik';

-- Task 25: Display accounts whose account_type is Savings OR Salary.
SELECT *
FROM accounts
WHERE account_type IN ('Savings', 'Salary');

-- Task 26: Display accounts whose balance is NOT BETWEEN 25000 AND 100000.
SELECT *
FROM accounts
WHERE balance NOT BETWEEN 25000 AND 100000;

-- Task 27: Display accounts whose customer_name starts with 'A'.
SELECT *
FROM accounts
WHERE customer_name LIKE 'A%';

-- Task 28: Display accounts whose customer_name ends with 'a'.
SELECT *
FROM accounts
WHERE customer_name LIKE '%a';

-- Task 29: Display accounts whose branch contains the word 'Road'.
SELECT *
FROM accounts
WHERE branch LIKE '%Road%';

-- Task 30: Display the top 3 accounts having the highest balance using LIMIT.
SELECT *
FROM accounts
ORDER BY balance DESC
LIMIT 3;

-- Task 31: Display the first 5 accounts using LIMIT 5.
SELECT *
FROM accounts
LIMIT 5;

-- Task 32: Display 3 accounts starting from the 4th record using LIMIT 3, 3.
SELECT *
FROM accounts
LIMIT 3, 3;

-- Task 33: Display Active Savings accounts from Pune with balance greater than 50000.
SELECT *
FROM accounts
WHERE status = 'Active'
AND account_type = 'Savings'
AND city = 'Pune'
AND balance > 50000;


-- =========================================
-- PART C - DQL / SELECT QUERIES (CONTINUED)
-- =========================================

-- Task 34: Display accounts from Pune, Mumbai or Nashik having credit_score >= 750.
SELECT *
FROM accounts
WHERE city IN ('Pune', 'Mumbai', 'Nashik')
AND credit_score >= 750;

-- Task 35: Display accounts where balance > 100000 AND credit_score >= 800.
SELECT *
FROM accounts
WHERE balance > 100000
AND credit_score >= 800;

-- Task 36: Display accounts where balance is between 50000 and 150000 OR credit_score > 800.
SELECT *
FROM accounts
WHERE balance BETWEEN 50000 AND 150000
OR credit_score > 800;

-- Task 37: Display accounts whose status is Active AND account_type is NOT Current.
SELECT *
FROM accounts
WHERE status = 'Active'
AND account_type <> 'Current';

-- Task 38: Display accounts whose customer_name contains 'ar'.
SELECT *
FROM accounts
WHERE customer_name LIKE '%ar%';


-- =========================================
-- PART D - UPDATE OPERATIONS
-- =========================================

-- Task 39: Update Aarav Sharma's balance from 85000 to 95000.
UPDATE accounts
SET balance = 95000
WHERE customer_name = 'Aarav Sharma';

-- Task 40: Update Vikram Deshmukh's status from Dormant to Active.
UPDATE accounts
SET status = 'Active'
WHERE customer_name = 'Vikram Deshmukh';

-- Task 41: Update Rohan Joshi's credit_score from 735 to 755.
UPDATE accounts
SET credit_score = 755
WHERE customer_name = 'Rohan Joshi';

-- Task 42: Update Sneha Kulkarni's branch from Nashik Road to College Road.
UPDATE accounts
SET branch = 'College Road'
WHERE customer_name = 'Sneha Kulkarni';

-- Task 43: Update Priya Patil's account_type from Current to Premium Current.
UPDATE accounts
SET account_type = 'Premium Current'
WHERE customer_name = 'Priya Patil';

-- Task 44: Increase the balance of account_id 1006 by 25000.
UPDATE accounts
SET balance = balance + 25000
WHERE account_id = 1006;

-- Task 45: Increase the balance of all Savings accounts by 5000.
UPDATE accounts
SET balance = balance + 5000
WHERE account_type = 'Savings';

-- Task 46: Update all accounts from Pune branch locations to city = 'Pune City'.
UPDATE accounts
SET city = 'Pune City'
WHERE city = 'Pune';

-- Task 47: Increase credit_score by 10 for Active accounts having credit_score below 750.
UPDATE accounts
SET credit_score = credit_score + 10
WHERE status = 'Active'
AND credit_score < 750;

-- Task 48: Change status to Dormant for accounts whose balance is below 20000.
UPDATE accounts
SET status = 'Dormant'
WHERE balance < 20000;


-- =========================================
-- PART E - DELETE OPERATIONS
-- =========================================

-- Task 49: Delete the account whose account_id = 1005.
DELETE FROM accounts
WHERE account_id = 1005;

-- Task 50: Delete the account whose account_number = 'ACC10004'.
DELETE FROM accounts
WHERE account_number = 'ACC10004';

-- Task 51: Delete all accounts having status = 'Closed'.
DELETE FROM accounts
WHERE status = 'Closed';

-- Task 52: Delete accounts whose balance is less than 10000 OR credit_score is less than 600.
DELETE FROM accounts
WHERE balance < 10000
OR credit_score < 600;

-- Task 53: Delete accounts from a selected city where status is Dormant.
-- Example: Delete Dormant accounts from Pune City.
DELETE FROM accounts
WHERE city = 'Pune City'
AND status = 'Dormant';


-- =========================================
-- PART F - ALTER TABLE / DDL PRACTICE
-- =========================================

-- Task 54: Add a new column: email VARCHAR(100).
ALTER TABLE accounts
ADD email VARCHAR(100);

-- Task 55: Add a new column: mobile VARCHAR(15).
ALTER TABLE accounts
ADD mobile VARCHAR(15);

-- Task 56: Change the size of branch to VARCHAR(100).
ALTER TABLE accounts
MODIFY branch VARCHAR(100);

-- Task 57: Rename column customer_name to name.
ALTER TABLE accounts
RENAME COLUMN customer_name TO name;

-- Task 58: Delete the mobile column.
ALTER TABLE accounts
DROP COLUMN mobile;


-- =========================================
-- PART G - TABLE-LEVEL DDL PRACTICE
-- =========================================

-- Task 59: Add a column: account_category VARCHAR(30).
ALTER TABLE accounts
ADD account_category VARCHAR(30);

-- Task 59: Update at least two records.
UPDATE accounts
SET account_category = 'Regular'
WHERE account_id = 1001;

UPDATE accounts
SET account_category = 'Premium'
WHERE account_id = 1002;

-- Task 59: Rename the accounts table to bank_accounts.
RENAME TABLE accounts TO bank_accounts;


-- Task 60: Display the structure of bank_accounts.
DESCRIBE bank_accounts;

-- Task 60: Remove all records using TRUNCATE TABLE.
TRUNCATE TABLE bank_accounts;

-- Task 60: Delete the table using DROP TABLE.
DROP TABLE bank_accounts;
