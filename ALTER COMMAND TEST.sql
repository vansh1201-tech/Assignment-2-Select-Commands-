Drop database if exists DDL_Commands;
create DATABASE DDL_Commands;
use  DDL_Commands;

CREATE TABLE my_table(
id INT,
name VARCHAR(100) Not NULL,
age int NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO my_table (id, name, age) VALUES
(1, 'Rohit', 25),
(2, 'Sachin', 35),
(3, 'Vikas', 28);

-- Create my_table2
-- Create my_table2
CREATE TABLE my_table2(
    id INT,
    description VARCHAR(255) NOT NULL
);

-- Insert data into my_table2
INSERT INTO my_table2 (id, description) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

select * from  my_table;
select * from  my_table2;

-- QUESTION-1
   alter table my_table
   rename column name to full_name;

-- QUESTION-2
   alter table my_table
   modify column age bigint not null;
   
-- QUESTION-3
   alter table my_table
   add column email varchar(100);
   
-- QUESTION-4
   alter table my_table
   add column middle_name varchar(50) after full_name;
   
-- QUESTION-5
   alter table my_table 
   add column EMP_Rank int first;
   
-- QUESTION-6
   alter table my_table
   modify column created_at datetime default current_timestamp;

-- QUESTION-7
   alter table my_table2
   modify column description text not null;

-- QUESTION-8
   alter table my_table
   modify column full_name varchar(100) null;
   
-- QUESTION-9
   alter table my_table
   add primary key (id);
   
-- QUESTION-10
   alter table my_table
   drop column middle_name;
   
-- QUESTION-11
   alter table my_table
   rename column email_address to email;
   
-- QUESTION-12
   alter table my_table
   modify column age bigint null;
   
-- QUESTION-13
   alter table my_table2
   add constraint fk_id foreign key(id) references my_table(id);
   
-- QUESTION-14
   alter table my_table2
   drop foreign key fk_id;
   
-- QUESTION-15
alter table my_table
modify column full_name varchar(200)null;

-- QUESTION-16
   DROP TABLE my_table2;
   
-- QUESTION-17
    alter table my_table2
   drop foreign key fk_id;
   
-- QUESTION-18
   alter table my_table
   drop primary key;
   
-- QUESTION-19
   alter table my_table 
   drop column age;
   
-- QUESTION-20
   DROP DATABASE DDL_COMMANDS;
   
   
   
   
   
   








