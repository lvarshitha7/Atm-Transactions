# 💳 ATM Management System (SQL Mini Project)

This repository contains two versions of an ATM Management System built using MySQL stored procedures.

---

# 🔹 Version 1 – Basic ATM (v1 branch)

## 📌 Overview
Version 1 is a basic implementation of ATM operations using stored procedures.

## ✅ Features
- PIN Validation
- Deposit Money
- Withdraw Money
- Check Balance

## 🏗 Structure
- Single `users` table
- No transaction logging
- No history tracking
- Direct balance updates


This version focuses only on core ATM functionality.

---

# 🔹 Version 2 – Advanced ATM (v2 branch)

## 📌 Overview
Version 2 extends the basic ATM system by adding transaction tracking and improved data management.

## ✅ New Features Added
- Transaction Logging
- Transaction History View
- Timestamp-based tracking
- Status tracking (SUCCESS / FAILED)
- Foreign key relationship (Users → Transactions)

## 🏗 Structure
- `users` table
- `transactions` table
- One-to-Many relationship
- Enhanced stored procedures with logging

## 🚀 Improvements Over V1
- Every deposit/withdrawal is recorded
- Full transaction history available
- Better data integrity
- More realistic ATM behavior

---

# 📊 Version Comparison

| Feature | V1 | V2 |
|----------|----|----|
| Deposit | ✅ | ✅ |
| Withdraw | ✅ | ✅ |
| Balance Check | ✅ | ✅ |
| Transaction Logging | ❌ | ✅ |
| Transaction History | ❌ | ✅ |
| Timestamp Tracking | ❌ | ✅ |
| Status Tracking | ❌ | ✅ |

---


# 👩‍💻 Author
Shravya – Computer Science Engineering Student
