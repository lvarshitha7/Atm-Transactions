# 🏧 ATM Management System – SQL Mini Project

A beginner-friendly ATM Management System implemented using SQL.  
This project demonstrates how basic banking operations can be handled using database tables and stored procedures.

---

## 📌 Project Overview

This project simulates the working of an ATM system using SQL.  
It is designed as a mini project to understand database concepts like tables, procedures, and transaction flow.

The project is versioned to show gradual improvement and learning progress.

---

## 🛠️ Technologies Used

- MySQL
- SQL Stored Procedures
- Conditional Statements (IF)
- Basic Transaction Logic

## ✅ Version 1 – Basic ATM System (v1.0.0)

### 🔹 Description
This version contains the core ATM functionalities implemented using SQL stored procedures.

### 🔹 Features
- Account balance table
- Deposit money procedure
- Withdraw money procedure
- Balance check procedure
- Simple and easy-to-understand SQL logic

---

## 🗄️ Tables Used

### Users Table
- Stores user id , name and balance

---

## ⚙️ Stored Procedures

### 1. Deposit Money
- Adds the deposited amount to the account balance
- Shows status as "Deposited successfully or not"

### 2. Withdraw Money
- Deducts amount if sufficient balance is available
- Marks transaction as SUCCESS or FAILED

### 3. Balance Check
- Displays current balance of the account

### 4. Validate pin
- for user validating pin

---

## ▶️ How to Run the Project

1. Open MySQL Workbench
2. Create a database:
   CREATE DATABASE atm_db;
   USE atm_db;

3. Run database.sql to create tables
4. Run operations.sql to create stored procedures

5. Example calls:
   CALL deposit_money(101, 500);
   CALL withdraw_money(101, 200);
   CALL check_balance(101);

---
