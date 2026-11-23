DROP DATABASE IF EXISTS interview_commands_practice;
CREATE DATABASE interview_commands_practice;
USE interview_commands_practice;

SET autocommit = 1;

-- 2. Create table with proper constraints
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(60) NOT NULL,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(40),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    employment_status ENUM('Active', 'Inactive') DEFAULT 'Active',
    phone VARCHAR(15) UNIQUE
) ENGINE = InnoDB;

-- 3. Insert sample records
INSERT INTO employees
    (employee_id, employee_name, department, city, salary, employment_status, phone)
VALUES
    (1, 'Rahul Sharma', 'IT', 'Delhi', 45000.00, 'Active', '9000000001'),
    (2, 'Priya Verma', 'HR', 'Mumbai', 42000.00, 'Active', '9000000002'),
    (3, 'Amit Patel', 'Sales', 'Ahmedabad', 38000.00, 'Inactive', '9000000003'),
    (4, 'Anjali Singh', 'IT', 'Kolkata', 50000.00, 'Active', '9000000004'),
    (5, 'Vijay Kumar', 'Finance', 'Bangalore', 55000.00, 'Active', '9000000005'),
    (6, 'Sanjay Reddy', 'Sales', 'Hyderabad', 36000.00, 'Active', '9000000006'),
    (7, 'Megha Iyer', 'IT', 'Chennai', 48000.00, 'Active', '9000000007'),
    (8, 'Neha Gupta', 'HR', 'Delhi', 32000.00, 'Inactive', '9000000008'),
    (9, 'Arjun Mehta', 'Finance', 'Pune', 52000.00, 'Active', '9000000009'),
    (10, 'Pooja Shah', 'Sales', 'Mumbai', 40000.00, 'Active', '9000000010');
    select * from employees;
    
    
-- QUESTION-1    
   INSERT INTO employees
    (employee_id, employee_name, department, city, salary, employment_status, phone)
VALUES
(11, 'Karan Malhotra', 'IT','Noida', 41000.00,'Active','9000000011');

-- QUESTION-2
     INSERT INTO employees
    (employee_id, employee_name, department, city, salary, employment_status, phone)
VALUES
(12, 'Simran Kaur', 'HR', 'Delhi', 35000.00, 'Active', '9000000012'),
(13, 'Rohan Das', 'Sales', 'Pune', 33000.00, 'Inactive', '9000000013');

-- QUESTION-3
   update employees
   set city = 'Gurgaon',
   salary = 46000.00
   where employee_id = 11;
   
-- QUESTION-4
   UPDATE employees
   set salary = salary*1.10
   where employee_id in (1,4,7);
   
-- QUESTION-5
   delete from employees
   where employee_id in(3,8,13);
   
-- QUESTION-6
   alter table employees
   add column email varchar(100) null;
   
-- QUESTION-7
   alter table employees
   modify column phone varchar(20) null;
   
-- QUESTION-8
   alter table employees
   rename column city to work_city;
   
-- QUESTION-9
   alter table employees
   drop column email;
   
-- QUESTION-10
   RENAME TABLE EMPLOYEES TO STAFF;
   
-- QUESTION-11
   START TRANSACTION;
   
      insert into staff
    (employee_id, employee_name, department, work_city, salary, employment_status, phone)
VALUES
(14, 'Nisha Rao', 'IT', 'Noida', 44000.00, 'Active', '9000000014');

update staff
set salary = 45000.00
where employee_id= 2;

commit;

-- QUESTION-12
	START TRANSACTION;
      update staff 
      set salary= 60000.00
      where employee_id = 5;
    
    delete from staff 
    where employee_id = 6;
    
    ROLLBACK;
    
-- QUESTION-13
    START TRANSACTION;
      update staff 
      set salary= 47000.00
      where employee_id = 14;
      savepoint salary_saved;
      
      update staff
      set work_city = 'Jaipur'
      where employee_id = 14;
      savepoint city_saved;
      
      delete from staff
      where employee_id = 14;
      
      rollback to savepoint city_saved;
      rollback to savepoint salary_saved;
      commit;
      
-- QUESTION-14
   START TRANSACTION;
   truncate table staff;
   rollback;
   
-- QUESTION-15
   DROP TABLE STAFF;   
   
   
    
    
    
    
    
    