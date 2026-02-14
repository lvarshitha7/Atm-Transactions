# 💳 ATM Management System with MYSQL

## 📌 Project Overview
This project is a MySQL-based ATM Management System developed using stored procedures.  
It supports secure banking operations such as deposit, withdrawal, balance inquiry, and transaction logging.

This is an upgraded version of a basic ATM system with proper transaction tracking and logging.

---

## 🚀 Features

- 🔐 PIN Validation
- 💰 Deposit Money
- 💸 Withdraw Money (with balance check)
- 📊 Check Account Balance
- 📝 Transaction Logging
- 📜 View Transaction History
- ⏱ Timestamp-based transaction tracking
- ✅ Status tracking (SUCCESS / FAILED)

---

## 🏗 Database Structure

### 1️⃣ Users Table
- `user_id` (Primary Key)
- `name`
- `pin`
- `balance`

### 2️⃣ Transactions Table
- `txn_id` (Primary Key, AUTO_INCREMENT)
- `user_id` (Foreign Key)
- `txn_type` (DEPOSIT / WITHDRAW / BALANCE_CHECK)
- `amt`
- `balance_after`
- `txn_time` (Auto timestamp)
- `status` (SUCCESS / FAILED)

---

## 🛠 Technologies Used

- MySQL
- Stored Procedures
- Foreign Key Constraints
- Transaction Logging
- Basic Transaction Control

---

### ✅ Version 2 – Advanced ATM (Current Version)
- Transaction logging
- View transaction history
- Timestamp tracking
- Status tracking (SUCCESS / FAILED)
- One-to-Many relationship (Users → Transactions)

---

## 📂 How to Run

1. Create the database:
```sql
CREATE DATABASE atm_db;
USE atm_db;
```

2. Create tables (users & transactions).

3. Create stored procedures.

4. Test using:

```sql
CALL validate_pin(101, 1234);
CALL deposit_money(101, 500);
CALL withdraw_money(101, 200);
CALL check_balance(101);
CALL check_transactions(101);
```

---

## 📊 Example Transaction Output

| txn_type | amt  | balance_after | txn_time           | status  |
|----------|------|---------------|--------------------|---------|
| WITHDRAW | 200  | 5900          | 2026-02-14 10:11   | SUCCESS |
| DEPOSIT  | 300  | 6100          | 2026-02-14 08:55   | SUCCESS |

---

## 🎯 Future Improvements

- Transaction rollback (ACID support)
- Admin summary reports
- User account creation procedure
- PIN encryption
- Daily transaction analytics

---
