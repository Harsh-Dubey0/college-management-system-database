# College Management System (MySQL)

## 📌 Project Overview

This project is a **College Management System database** designed using **MySQL**, focusing on **clear relational mapping at column level** (Primary Key → Foreign Key).

The system models **academic, operational, and infrastructure workflows** of a college while keeping the scope **clean and realistic.**

---

## 🎯 Project Scope

### ✅ Included Modules

- Student & course management
- Student–Course enrollment (Many-to-Many)
- Course-wise attendance tracking
- Orders & products (college items/books)
- Departments, teachers, and labs

### ❌ Intentionally Excluded

- Payment / fees module (handled separately in real systems)
- Over-engineered ERP features

> **Design choice:** The schema is kept minimal to avoid unused or redundant tables.

---

## 🧱 Database Tables

### 🎓 Academic Module

- `students`
- `courses`
- `enrollments`
- `attendance`

### 🛒 Operational Module

- `orders`
- `products`

### 🏢 Infrastructure Module

- `departments`
- `teachers`
- `lab`

---

## 🔗 Column-Level Relationships (PK → FK)

| Parent Table | PK Column      | Child Table | FK Column      |
| ------------ | -------------- | ----------- | -------------- |
| students     | student\_id    | enrollments | student\_id    |
| courses      | course\_id     | enrollments | course\_id     |
| enrollments  | enrollment\_id | attendance  | enrollment\_id |
| students     | student\_id    | orders      | student\_id    |
| products     | product\_id    | orders      | product\_id    |
| departments  | department\_id | teachers    | department\_id |
| departments  | department\_id | lab         | department\_id |

---

## 📐 ER Diagram

The ER diagram clearly shows **column-level foreign key mappings**, not just conceptual relationships.

📂 Location:

diagrams/College_Management_System_ER_Diagram_Column_Level.png

---

## ⚙️ Key Database Concepts Used

- Primary Key & Foreign Key constraints
- Many-to-Many relationship using junction table (`enrollments`)
- UNIQUE constraint to prevent duplicate attendance entries
- ENUM for controlled attendance status values
- Cascading deletes for dependent tables

---

## 🧪 Sample Query

```sql
-- Fetch students with their enrolled courses
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
```

---

## 🧠 Design Decisions (Interview Ready)

- Attendance is linked to `enrollments` to ensure only enrolled students have attendance records
- One product per order to keep the schema simple and extendable
- Financial payments excluded to maintain academic focus

---

## 🚀 Future Enhancements

- `order_items` table for multiple products per order
- Python-based CRUD application
- Role-based authentication system

---
