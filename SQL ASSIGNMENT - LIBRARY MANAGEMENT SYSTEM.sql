# LIBRARY MANAGEMENT SYSTEM
-- CREATING DATABASE
create database library;
use library;

#CREATING TABLES 
#CREATING TABLE BRANCH
create table Branch ( Branch_no int primary key,
Manager_ID int, Branch_adress varchar (100), 
Contact_no varchar(20));

#CREATING TABLE EMPLOYEE
create table Employee ( Emp_ID int primary key ,
Emp_name varchar(50), Position varchar(50),
Salary decimal(10,2), Branch_no int,
foreign key (branch_no) references branch(branch_no));

#CREATING TABLE BOOKS
create table Books ( ISBN varchar(20) primary key,
Book_Title varchar(50),Category varchar(50), 
Rental_price decimal(10,2), status varchar(5) 
check (status in ('Yes','No')),
Author varchar(100),
Publisher varchar(100)); 


#CREATING TABLE CUSTOMER
create table Customer (Customer_ID int primary key,
Customer_name varchar(100),Customer_adress varchar(100),
Reg_date date);

#CREATING TABLE ISSUE STATUS
create table Issue_status ( Issue_ID int primary key ,
Issued_Customer int, Issued_Book_Name varchar(250),
Issue_date date, ISBN_Book varchar(20),
foreign key (Issued_Customer) references Customer(Customer_ID),
foreign key(ISBN_Book) references Books(ISBN));


#CREATING TABLE RETURN STATUS
create table Return_Status (Return_ID int primary key,
Return_Customer varchar(100), Return_Book_Name varchar(250),
Return_Date date, ISBN_Book2 varchar(20),
foreign key (ISBN_Book2) references Books(ISBN));

#INSERTING VALUES INTO TABLES
#BRANCH TABLE
Insert into Branch (Branch_no, Manager_ID, Branch_adress,
Contact_no) values 
(1, 101, '123 Main St, Leominster', '01234567890'),
(2, 102, '456 High St, Worcester', '02345678901'),
(3, 103, '789 Broad St, Hereford', '03456789012'),
(4, 104, '101 Park Ave, Bromyard', '04567890123'),
(5, 105, '202 Green Lane, Ludlow', '05678901234'),
(6, 106, '303 Elm St, Ross-on-Wye', '06789012345'),
(7, 107, '404 Oak Rd, Kington', '07890123456'),
(8, 108, '505 Pine St, Malvern', '08901234567'),
(9, 109, '606 Birch Ave, Tenbury Wells', '09012345678'),
(10, 110, '707 Cedar Ln, Ledbury', '10123456789');

#EMPLOYEE
insert into Employee ( Emp_ID, Emp_Name, position, salary,
branch_no) values
(1, 'John Doe', 'Manager', 55000.00, 1),
(2, 'Jane Smith', 'Assistant Manager', 45000.00, 2),
(3, 'Alice Johnson', 'Clerk', 30000.00, 3),
(4, 'Bob Brown', 'Technician', 32000.00, 4),
(5, 'Charlie Green', 'Sales Representative', 28000.00, 5),
(6, 'Diana White', 'HR Specialist', 35000.00, 6),
(7, 'Evan Black', 'Accountant', 40000.00, 7),
(8, 'Fiona Blue', 'Marketing Executive', 37000.00, 8),
(9, 'George Silver', 'Customer Service Representative', 29000.00, 9),
(10, 'Hannah Gold', 'IT Support', 33000.00, 10);

#BOOKS
insert into Books (ISBN, Book_title, Category, Rental_Price, 
Status, Author, Publisher) VALUES
('978-3-16-148410-0', 'The Great Adventure', 'Fiction', 
5.50, 'yes', 'John Green', 'Penguin Books'),
('978-1-23-456789-7', 'Science Explained', 'Non-Fiction',
 7.75, 'no', 'Jane Doe', 'HarperCollins'),
('978-0-12-345678-9', 'Cooking 101', 'Cookbook', 6.30, 'yes',
 'Alice Waters', 'Random House'),
('978-4-56-789012-3', 'History of Art', 'Art', 8.90, 'no',
 'Leonard Brown', 'Simon & Schuster'),
('978-5-67-890123-4', 'Travel Guide: Europe', 'Travel', 9.45,
 'yes', 'Emily White', 'Lonely Planet'),
('978-2-34-567890-1', 'Mystery Manor', 'Mystery', 4.80, 
'yes', 'Agatha Christie', 'Macmillan'),
('978-6-78-901234-5', 'Yoga for Beginners', 'Health', 7.10,
 'no', 'Sarah Lee', 'Springer'),
('978-7-89-012345-6', 'Space Odyssey', 'Science Fiction',
 6.75, 'yes', 'Arthur C. Clarke', 'Houghton Mifflin'),
('978-8-90-123456-7', 'Gardening Tips', 'Gardening', 5.90,
 'yes', 'Martha Stewart', 'DK Publishing'),
('978-9-01-234567-8', 'Children\'s Fairy Tales', 'Children',
 3.80, 'no', 'Brothers Grimm', 'Scholastic');
 
 #CUSTOMER
insert into Customer (Customer_Id, Customer_name, 
Customer_adress, Reg_date) values
(1, 'Michael Johnson', '12 Rose St, Leominster', '2023-01-15'),
(2, 'Laura Mitchell', '34 Oak Ave, Worcester', '2023-02-20'),
(3, 'Kevin Lee', '56 Maple Rd, Hereford', '2023-03-05'),
(4, 'Samantha Green', '78 Pine St, Bromyard', '2023-04-10'),
(5, 'David Brown', '90 Birch Ln, Ludlow', '2023-05-25'),
(6, 'Emily White', '23 Cedar St, Ross-on-Wye', '2023-06-15'),
(7, 'Daniel Black', '45 Elm Ave, Kington', '2023-07-30'),
(8, 'Sarah Blue', '67 Fir St, Malvern', '2023-08-10'),
(9, 'James Silver', '89 Willow Rd, Tenbury Wells', '2023-09-05'),
(10, 'Hannah Gold', '101 Poplar Ln, Ledbury', '2023-10-20');

 #ISSUE STATUS
insert into Issue_Status (Issue_Id, Issued_customer, 
Issued_book_name, Issue_date, Isbn_book) values
(1, 1, 'The Great Adventure', '2024-01-10', '978-3-16-148410-0'),
(2, 2, 'Science Explained', '2024-01-15', '978-1-23-456789-7'),
(3, 3, 'Cooking 101', '2024-01-20', '978-0-12-345678-9'),
(4, 4, 'History of Art', '2024-02-01', '978-4-56-789012-3'),
(5, 5, 'Travel Guide: Europe', '2024-02-05', '978-5-67-890123-4'),
(6, 6, 'Mystery Manor', '2024-02-10', '978-2-34-567890-1'),
(7, 7, 'Yoga for Beginners', '2024-02-15', '978-6-78-901234-5'),
(8, 8, 'Space Odyssey', '2024-03-01', '978-7-89-012345-6'),
(9, 9, 'Gardening Tips', '2024-03-05', '978-8-90-123456-7'),
(10, 10, 'Children\'s Fairy Tales', '2024-03-10', '978-9-01-234567-8');

#RETURN STATUS
insert into Return_Status (Return_Id, Return_customer, Return_book_name,
 Return_date, Isbn_book2) VALUES
(1, 1, 'The Great Adventure', '2024-02-15', '978-3-16-148410-0'),
(2, 2, 'Science Explained', '2024-02-20', '978-1-23-456789-7'),
(3, 3, 'Cooking 101', '2024-02-25', '978-0-12-345678-9'),
(4, 4, 'History of Art', '2024-03-01', '978-4-56-789012-3'),
(5, 5, 'Travel Guide: Europe', '2024-03-05', '978-5-67-890123-4'),
(6, 6, 'Mystery Manor', '2024-03-10', '978-2-34-567890-1'),
(7, 7, 'Yoga for Beginners', '2024-03-15', '978-6-78-901234-5'),
(8, 8, 'Space Odyssey', '2024-03-20', '978-7-89-012345-6'),
(9, 9, 'Gardening Tips', '2024-04-01', '978-8-90-123456-7'),
(10, 10, 'Children\'s Fairy Tales', '2024-04-05', '978-9-01-234567-8');

#DISPLAY ALL THE TABLES
SELECT * FROM Branch;
SELECT * FROM Employee;
SELECT * FROM Books;
SELECT * FROM Customer;
SELECT * FROM Issue_Status;
SELECT * FROM Return_Status;

#QUERIES
-- 1.Retrieving details of available books 
select Book_title, Category, Rental_Price
from Books
where Status = 'yes';

-- 2.Employee name and their salaries in desc order
select Emp_name, Salary
from Employee
order by Salary desc;

-- 3.Book title and correpondent customers
select Books.Book_title, Customer.Customer_name
from Issue_Status
join Books on Issue_Status.Isbn_book = Books.ISBN
join Customer on Issue_Status.Issued_customer = Customer.Customer_Id;

-- 4. Total count in each category
select Category, COUNT(*) as Total_Books
from Books
group by Category;

-- 5. Employee name and position whose salary above 50000
select Emp_name, Position
from Employee
where Salary > 50000;

-- 6. Registered before 2022-01-01 and not issued any books
select Customer_name
from Customer
where Reg_date < '2022-01-01'
and Customer_Id not in (select Issued_customer from Issue_Status);

-- 7. Branch numbers and count of employees in each branch
select Branch_no, COUNT(*) as Total_Employees
from Employee
group by  Branch_no;

-- 8. Customers who issued books in june 2023
select Customer.Customer_name
from Issue_Status
join Customer on Issue_Status.Issued_customer = Customer.Customer_Id
where Issue_date between '2023-06-01' and '2023-06-30';

-- 9. retrieve book title containing history
select Book_title
from Books
where Book_title like '%History%';

-- 10. Branch  number and count of employees having more than 5 employees for a brach
select Branch_no, count(*) as Total_Employees
from Employee
group by Branch_no
having count(*) > 5;

-- 11. Name and branch adress of employees who manages the branch
select Employee.Emp_name, Branch.Branch_adress
from Employee
join Branch on Employee.Branch_no = Branch.Branch_no
where Employee.Position like '%Manager%';

-- 12. Names of customers issued books with rental price greater than 25
select Customer.Customer_name
from Issue_Status
join Books on Issue_Status.Isbn_book = Books.ISBN
join Customer on Issue_Status.Issued_customer = Customer.Customer_Id
where Books.Rental_Price > 25;













