use mysqltask1;
CREATE TABLE users(student_name varchar(25),student_email varchar(40));
INSERT INTO users VALUES('Nibedita','nibedita@gmail.com');
INSERT INTO users VALUES('Akanksha','akanksha@gmail.com');
INSERT INTO users VALUES('Rohit','rohit@gmail.com');
INSERT INTO users VALUES('Akash','akash@gmail.com');
INSERT INTO users VALUES('shyam','shyam@gmail.com');
select * from users;
  -- codekata
  use mysqltask1;
CREATE TABLE codekata(student_name varchar(25),problem_type text,problem_solved int);
INSERT INTO codekata VALUES('Nibedita','array',5);
INSERT INTO codekata VALUES('Akash','string',4);
INSERT INTO codekata VALUES('Rohit','numbers',7);
INSERT INTO codekata VALUES('shyam','array',8);
INSERT INTO codekata VALUES('Rahul','string',7);
INSERT INTO codekata VALUES('Nibedita','numbers',3);
INSERT INTO codekata VALUES('Rohit','numbers',5);
SELECT SUM(problem_solved) from codekata where problem_type LIKE"numbers";

-- attendance
CREATE TABLE attendance(student_name TEXT ,month text,days_present int);
INSERT INTO attendance VALUES('Akash','Aug',28);
INSERT INTO attendance VALUES('Nibedita','jul',30);
INSERT INTO attendance VALUES('Rohit','jul',26);
INSERT INTO attendance VALUES('Rahul','jul',27);
INSERT INTO attendance VALUES('Akanksha','jul',31);

-- topics
CREATE TABLE topics(student_name text,course text,duration float,mentor_name text);
INSERT INTO topics VALUES('Akash','DBMS',1,'Yushuf');
INSERT INTO topics VALUES('Nibedita','DBMS',1,'Yushuf');
INSERT INTO topics VALUES('Akanksha','OS',1.5,'Ayush');
INSERT INTO topics VALUES('Rahul','ML',2,'Rashika');
INSERT INTO topics VALUES('Akash','ML',2,'Rashika');
INSERT INTO topics VALUES('Rohit','OS',1.5,'Ayush');

-- tasks
CREATE TABLE tasks(student_name varchar(20),course varchar(10),assigned_date date,submission_date date);
INSERT INTO tasks values('Nibedita','DBMS','2021-08-02','2021-08-05');
INSERT INTO tasks values('Akash','DBMS','2021-08-02','2021-08-05');
INSERT INTO tasks values('Akash','ML','2021-08-01','2021-08-04');
INSERT INTO tasks values('Rahul','ML','2021-08-01','2021-08-04');
INSERT INTO tasks values('Rohit','OS','2021-08-05','2021-08-06');
INSERT INTO tasks values('Akanksha','OS','2021-08-05','2021-08-06');

-- company_drives
CREATE TABLE company_drives(student_name varchar(20),student_mobile_no varchar(10),company_name varchar(20));
insert into company_drives values('Akanksha','9078140233','Microsoft');
insert into company_drives values('Nibedita','9777345678','Chubb');
insert into company_drives values('Akanksha','9078140233','Chubb');
insert into company_drives values('Akash','8249299100','Wipro');
insert into company_drives values('Akash','8249299100','Accenture');
insert into company_drives values('Nibedita','9777345678','Accenture'); 

select student_name,count(*) from company_drives group by student_name;

-- mentors
create table mentors(student_name varchar(20),course varchar(20),mentor_name varchar(20));
insert into mentors values('Nibedita','Databse','Raj');
insert into mentors values('Rahul','Database','Raj');
insert into mentors values('Rahul','Unix','Sanjay');
insert into mentors values('Akanksha','Linux','Rudra');
insert into mentors values('Atul','Linux','Rudra');
insert into mentors values('Nikhil','Databse','Raj');
insert into mentors values('Adarsh','Unix','Sanjay');

select distinct mentor_name from mentors;
select mentor_name,count(*) from mentors group by mentor_name;

-- student_activated_courses
CREATE TABLE student_activated_courses(student_name varchar(20),course_id varchar(5),course_name varchar(10),course_status varchar(10));
insert into student_activated_courses values('Nibedita','C101','Java','inactive');
insert into student_activated_courses values('Nibedita','C111','Database','active');
insert into student_activated_courses values('Rahul','C111','Database','active');
insert into student_activated_courses values('Rohit','C108','OS','active');
insert into student_activated_courses values('Rahul','C108','OS','inactive');
insert into student_activated_courses values('Rahul','C109','Unix','active');
insert into student_activated_courses values('Akanksha','C101','Java','active');
select  course_name,count(*) from student_activated_courses where course_status='active'  group by course_name;

-- courses
Create table courses (student_name varchar(10),course_id varchar(10),course_name varchar(5));
insert into courses values('Akanksha','C100','Java');
insert into courses values('Akash','C101','C');
insert into courses values('Nupur','C121','Php');
insert into courses values('Sanon','C112','Java');
insert into courses values('Akash','C121','Php');
insert into courses values('Ayush','C101','C');
