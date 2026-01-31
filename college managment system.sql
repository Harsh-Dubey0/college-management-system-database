use sqlpractice;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

create table Courses (
 course_id int primary key,
 name varchar(255) NOT NULL);
 
 create table teachers(
 teacher_id int auto_increment primary key,
 teacher_name varchar(255)
 );
 
 
INSERT INTO students (name, email) 
VALUES 
('Rohan Sharma', 'rohan@example.com'),
('Anjali Verma', 'anjali@test.com'),
('Vikram Singh', 'vikram@demo.com');
 
 
INSERT INTO Courses (course_id, name) 
VALUES 
(101, 'Introduction to SQL'),
(102, 'Python Programming'); 


INSERT INTO teachers (teacher_name) 
VALUES 
('Prof. Gupta'),
('Dr. Alok'),
('Ms. Iyer');

CREATE TABLE Enrollments (
student_id int,
course_id int,
enrollment_date date,

primary key(student_id,course_id),

foreign key(student_id) references students (student_id),
foreign key(course_id) references courses(course_id)
);


insert into Enrollments  values
(1,101,'2025-10-1'),
(1,102,'2025-10-1'),
(2,101,'2025-10-3');


INSERT INTO Enrollments 
VALUES (999, 101, '2023-10-05');

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    amount DECIMAL(10, 2),
    student_id INT,
    check(amount>0),
    foreign key(student_id) references students(student_id));
 
 
 INSERT INTO Payments (payment_id, amount, student_id) 
VALUES (1, 2500.00, 1);

INSERT INTO Payments 
VALUES (2, -500.00, 1);


INSERT INTO students (name, email) VALUES 
('Rahul Sharma', 'rahul1@example.com'),
('Priya Patel', 'priya2@example.com'),
('Amit Kumar', 'amit3@example.com'),
('Sneha Gupta', 'sneha4@example.com'),
('Arjun Singh', 'arjun5@example.com'),
('Neha Verma', 'neha6@example.com'),
('Karan Malhotra', 'karan7@example.com'),
('Pooja Reddy', 'pooja8@example.com'),
('Vikram Joshi', 'vikram9@example.com'),
('Riya Mehta', 'riya10@example.com'),
('Suresh Raina', 'suresh11@example.com'),
('Kavita Krishnan', 'kavita12@example.com'),
('Manish Tiwari', 'manish13@example.com'),
('Ananya Roy', 'ananya14@example.com'),
('Deepak Chopra', 'deepak15@example.com'),
('Simran Kaur', 'simran16@example.com'),
('Rajeev Shukla', 'rajeev17@example.com'),
('Meera Nair', 'meera18@example.com'),
('Varun Dhawan', 'varun19@example.com'),
('Isha Ambani', 'isha20@example.com');

INSERT INTO Courses (course_id, name) VALUES 
(201, 'Data Structures'),
(202, 'Web Development'),
(203, 'Machine Learning'),
(204, 'Artificial Intelligence'),
(205, 'Cloud Computing'),
(206, 'Cyber Security'),
(207, 'Digital Marketing'),
(208, 'Graphic Design'),
(209, 'Blockchain Basics'),
(210, 'Internet of Things'),
(211, 'Big Data Analytics'),
(212, 'Mobile App Dev'),
(213, 'Game Development'),
(214, 'DevOps Engineering'),
(215, 'Software Testing'),
(216, 'Network Security'),
(217, 'Database Management'),
(218, 'UI/UX Design'),
(219, 'Ethical Hacking'),
(220, 'Robotics');

INSERT INTO teachers (teacher_name) VALUES 
('Prof. HC Verma'),
('Dr. APJ Abdul'),
('Ms. Sudha Murthy'),
('Mr. Sundar P'),
('Mrs. Indira N'),
('Dr. Raghuram R'),
('Prof. Amartya S'),
('Mr. Satya N'),
('Ms. Kalpana C'),
('Dr. Homi B'),
('Prof. CV Raman'),
('Mrs. Sarojini N'),
('Mr. Ratan T'),
('Dr. Vikram S'),
('Ms. Mary K'),
('Prof. Srinivasa R'),
('Mr. Milkha S'),
('Mrs. Lata M'),
('Dr. Zakir H'),
('Prof. Jagdish C');

INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES 
(1, 201, '2023-01-10'),
(2, 202, '2023-01-11'),
(3, 203, '2023-01-12'),
(4, 204, '2023-01-13'),
(5, 205, '2023-01-14'),
(6, 206, '2023-01-15'),
(7, 207, '2023-01-16'),
(8, 208, '2023-01-17'),
(9, 209, '2023-01-18'),
(10, 210, '2023-01-19'),
(11, 211, '2023-01-20'),
(12, 212, '2023-01-21'),
(13, 213, '2023-01-22'),
(14, 214, '2023-01-23'),
(15, 215, '2023-01-24'),
(16, 216, '2023-01-25'),
(17, 217, '2023-01-26'),
(18, 218, '2023-01-27'),
(19, 219, '2023-01-28'),
(20, 220, '2023-01-29');


INSERT INTO Payments (payment_id, amount, student_id) VALUES 
(501, 5000.00, 1),
(502, 4500.50, 2),
(503, 6000.00, 3),
(504, 5500.00, 4),
(505, 3000.00, 5),
(506, 7000.00, 6),
(507, 2500.00, 7),
(508, 8000.00, 8),
(509, 1500.00, 9),
(510, 9000.00, 10),
(511, 3500.00, 11),
(512, 4000.00, 12),
(513, 5000.00, 13),
(514, 4500.00, 14),
(515, 6000.00, 15),
(516, 5500.00, 16),
(517, 3000.00, 17),
(518, 7000.00, 18),
(519, 2500.00, 19),
(520, 8000.00, 20);


-- 1. Students ka data dekhein
SELECT * FROM students;

-- 2. Courses ka data dekhein
SELECT * FROM Courses;

-- 3. Teachers ka data dekhein
SELECT * FROM teachers;

-- 4. Enrollments ka data dekhein
SELECT * FROM Enrollments;

-- 5. Payments ka data dekhein
SELECT * FROM Payments;



create table orders(
orders_id int  auto_increment primary key,
status varchar(50) default "pending",
student_id int,
foreign key (student_id) references students (student_id));


alter table orders add column (
total_amount decimal(10,2),
order_date timestamp default current_timestamp);

ALTER TABLE orders
MODIFY student_id INT AFTER orders_id,
MODIFY order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER student_id,
MODIFY status VARCHAR(50) DEFAULT 'pending' AFTER order_date,
MODIFY total_amount DECIMAL(10, 2) AFTER status;

DESC orders;

ALTER TABLE orders 
ADD COLUMN student_name VARCHAR(255) AFTER student_id;

alter table orders drop column student_name ;

ALTER TABLE orders ADD COLUMN item_name VARCHAR(255) AFTER student_id;

INSERT INTO orders (student_id, item_name, total_amount, status) VALUES 
(1, 'Semester 1 Tuition Fee', 25000.00, 'Completed'),
(2, 'Advanced SQL Book', 850.00, 'Shipped'),
(3, 'Hostel Mess Fee', 3500.00, 'Completed'),
(4, 'Python Course Material', 1200.00, 'Shipped'),
(5, 'Exam Registration', 1500.00, 'Processing'),
(6, 'Library Fine (Late Return)', 50.00, 'Paid'),
(7, 'Laptop Repair Service', 2000.00, 'Completed'),
(8, 'Data Science Workshop', 500.00, 'Cancelled'), 
(9, 'Annual Sports Fee', 1000.00, 'Completed'),
(10, 'Duplicate ID Card', 200.00, 'Delivered');


INSERT INTO orders (student_id, item_name, total_amount) VALUES 
(11, 'Semester 2 Tuition Fee', 25000.00),
(12, 'Web Dev Certification', 3000.00),
(13, 'Bus Transport Fee', 4500.00),
(14, 'C++ Programming Book', 650.00),
(15, 'Re-checking Exam Paper', 500.00),
(16, 'Industrial Visit Charge', 1200.00),
(17, 'Hostel Security Deposit', 5000.00),
(18, 'Machine Learning E-Book', 450.00),
(19, 'Convocation Fee', 2500.00),
(20, 'Lost Book Penalty', 800.00);

select * from orders;


create table DEpartments(
dept_id int primary key,
dept_name varchar (100)
);


create table lab (
lab_id int primary key ,
lab_name varchar (255),
dept_id int,
foreign key (dept_id) references departments(dept_id) on delete cascade);


-- Departments 
INSERT INTO Departments VALUES 
(1, 'Computer Science'),
(2, 'Mechanical Engineering');

-- Labs add ki 
INSERT INTO Lab VALUES 
(101, 'Python Lab', 1),
(102, 'AI Research Lab', 1),
(201, 'Thermodynamics Lab', 2), 
(202, 'Workshop Area', 2);      

SELECT * FROM Lab;
DELETE FROM Departments WHERE dept_id = 2;


CREATE TABLE Attendance (
attendance_id INT AUTO_INCREMENT PRIMARY KEY,
student_id int,
course_id int,
attendance_date DATE default (current_date()),
status ENUM('Present', 'Absent', 'Leave') DEFAULT 'Absent',
foreign key (student_id) references students(student_id),
foreign key(course_id) references courses(course_id),
UNIQUE (student_id, course_id, attendance_date)
);


INSERT INTO Attendance (student_id, course_id, attendance_date, status) VALUES 
-- (Course 201 - Data Structures)
(1, 201, '2026-01-20', 'Present'),
(2, 201, '2026-01-20', 'Present'),
(3, 201, '2026-01-20', 'Absent'),  -- Absent
(4, 201, '2026-01-20', 'Present'),
(5, 201, '2026-01-20', 'Leave'),   -- Sick leave
(6, 201, '2026-01-20', 'Present'),
(7, 201, '2026-01-20', 'Present'),
(8, 201, '2026-01-20', 'Absent'),
(9, 201, '2026-01-20', 'Present'),
(10, 201, '2026-01-20', 'Present'),

-- (Course 202 - Web Development)
(1, 202, '2026-01-21', 'Present'),
(2, 202, '2026-01-21', 'Absent'), 
(3, 202, '2026-01-21', 'Present'),
(4, 202, '2026-01-21', 'Present'),
(5, 202, '2026-01-21', 'Present'),
(6, 202, '2026-01-21', 'Leave'),
(7, 202, '2026-01-21', 'Present'),
(8, 202, '2026-01-21', 'Present'),
(9, 202, '2026-01-21', 'Absent'),
(10, 202, '2026-01-21', 'Present');

-- Aaj ki date apne aap aa jayegi
INSERT INTO Attendance (student_id, course_id, status) 
VALUES (2, 201, 'Absent');


create table products (
product_id int,
product_name varbinary(255),
price decimal(10,2)
);
alter table products
add primary key (product_id);

INSERT INTO Products (product_id, product_name, price) VALUES 
(101, 'Python Book', 500.00),
(102, 'College Bag', 1200.00),
(103, 'Scientific Calculator', 850.00),
(104, 'Laptop Sticker', 100.00);


SELECT * FROM Attendance;


SELECT students.name, Courses.name as Subject, Attendance.attendance_date, Attendance.status
FROM Attendance
JOIN students ON Attendance.student_id = students.student_id
JOIN Courses ON Attendance.course_id = Courses.course_id
WHERE Attendance.status = 'Absent';


SELECT s.name, c.name AS subject, a.attendance_date, a.status
FROM Attendance AS a
join students as s on a.student_id= s.student_id
join Courses as c on a.course_id= c.course_id
where a.status="Leave"
;


CREATE TABLE Products (
    product_id INT,           
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

ALTER TABLE Products
ADD PRIMARY KEY (product_id);

INSERT INTO Products (product_id, product_name, price) VALUES 
(101, 'Python Book', 500.00),
(102, 'College Bag', 1200.00),
(103, 'Scientific Calculator', 850.00),
(104, 'Laptop Sticker', 100.00);


alter table orders
add column product_id int after student_id;

alter table orders 
add foreign key(product_id) references products(product_id);


INSERT INTO orders (student_id, total_amount, product_id) 
VALUES (1, 500.00, 101);

-- Output: Error  -> Foreign key constraint fails.
INSERT INTO orders (student_id, total_amount, product_id) 
VALUES (1, 2000.00, 999);
SET SQL_SAFE_UPDATES = 0;
UPDATE orders
SET product_id = CASE
    WHEN item_name LIKE '%Book%' THEN 101
    WHEN item_name LIKE '%Laptop%' THEN 104
    ELSE product_id -- Agar kuch match na ho, to purana value hi rehne do
END
WHERE item_name LIKE '%Book%' OR item_name LIKE '%Laptop%';

alter table orders drop column item_name;

SELECT 
    orders.orders_id,
    students.name AS Student_Name, 
    Products.product_name AS Item, 
    orders.total_amount
FROM orders
JOIN students ON orders.student_id = students.student_id
JOIN Products ON orders.product_id = Products.product_id;

SELECT * FROM orders;

ALTER TABLE orders
MODIFY product_id INT AFTER student_id;


SELECT 
    o.orders_id, 
    s.name AS Student_Name, 
    p.product_name AS Product, 
    o.total_amount, 
    o.status
FROM orders o
LEFT JOIN students s ON o.student_id = s.student_id
LEFT JOIN Products p ON o.product_id = p.product_id;

ALTER TABLE products 
MODIFY product_name VARCHAR(255);

SELECT d.dept_name, l.lab_name
FROM Departments d
JOIN lab l ON d.dept_id = l.dept_id;
