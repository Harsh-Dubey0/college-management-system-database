# College Management System (MySQL)

## 📌 Project Overview
This project is a **College Management System database** designed using **MySQL**, focusing on **clear relational mapping at column level (Primary Key → Foreign Key)**.

The system models **academic, operational, and infrastructure workflows** of a college while keeping the scope clean and realistic.

---

## 🎯 Project Scope

### ✅ Included Modules
- Student & course management  
- Student–course enrollment (Many-to-Many)  
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
- students  
- courses  
- enrollments  
- attendance  

### 🛒 Operational Module
- orders  
- products  

### 🏢 Infrastructure Module
- departments  
- teachers  
- lab  

---

## 🔗 Column-Level Relationships (PK → FK)

| Parent Table | PK Column | Child Table | FK Column |
|-------------|----------|-------------|-----------|
| students | student_id | enrollments | student_id |
| courses | course_id | enrollments | course_id |
| enrollments | enrollment_id | attendance | enrollment_id |
| students | student_id | orders | student_id |
| products | product_id | orders | product_id |
| departments | department_id | teachers | department_id |
| departments | department_id | lab | department_id |

---

## 📐 ER Diagram
The ER diagram clearly shows **column-level foreign key mappings**, not just conceptual relationships.

📂 Location:  
`diagrams/College_Management_System_ER_Diagram_Column_Level.png`

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
