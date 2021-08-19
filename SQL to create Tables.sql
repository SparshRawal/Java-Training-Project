create database JDBC_PROJECT;
use JDBC_PROJECT;

create table user(User_ID int(20) auto_increment primary key,Name varchar(100),Phone_No long,Email varchar(100),Address varchar(100),Reg_Date Date,Password varchar(100),upload_photo long)auto_increment=101;
insert into user(Name,Phone_No,Email,Address,Reg_Date,Password,Upload_Photo) values('Ankit',4578008234,'ankit@gmail.com','noida','21/01/03','ankit','img.jpg');
insert into user(Name,Phone_No,Email,Address,Reg_Date,Password,Upload_Photo) values('Rahul',9586234712,'rahul@gmail.com','banglore','21/03/03','rahul','img1.jpg');
insert into user(Name,Phone_No,Email,Address,Reg_Date,Password,Upload_Photo) values('gouthami',8524379162,'gouthami@gmail.com','anantapur','21/02/03','gouthami','img2.jpg');
insert into user(Name,Phone_No,Email,Address,Reg_Date,Password,Upload_Photo) values('iswarya',9256279162,'iswarya@gmail.com','nellore','21/02/22','iswarya','img3.jpg');
insert into user(Name,Phone_No,Email,Address,Reg_Date,Password,Upload_Photo) values('harshitha',7456279162,'harshitha@gmail.com','vijayawada','20/01/22','harshitha','img4.jpg');
select * from user;
drop table user;


create table contact(User_ID int(20) references user , Name varchar(30), Email varchar(100), Phone_no long, Message varchar(20), contact_id int(20) primary key auto_increment);
insert into contact(User_ID,Name,Email,Phone_no,Message) values (101, 'Ankit', 'ankit@gmail.com', 1234, 'Message');
insert into contact(User_ID,Name,Email,Phone_no,Message) values (102, 'Rahul', 'rahul@gmail.com', 1235, 'Message');
insert into contact(User_ID,Name,Email,Phone_no,Message) values (103, 'Gouthami', 'Gouthami@gmail.com', 1236, 'Message');
insert into contact(User_ID,Name,Email,Phone_no,Message) values (104, 'Ishwarya', 'Ishwarya@gmail.com', 1237, 'Message');
insert into contact(User_ID,Name,Email,Phone_no,Message) values (105, 'Harshitha', 'Harshitha@gmail.com', 1238, 'Message');
select * from contact;
drop table contact;


create table admin ( Admin_ID int(20) primary key, Name varchar(100),Email varchar(100),Password varchar(100));
insert into admin values (1,'rahul','rahul@gmail.com','pass');
insert into admin values (2,'ankit','ankit@gmail.com','pass');
insert into admin values (3,'gowthami','gowthami@gmail.com','pass');
insert into admin values (4,'aishwarya','aishwarya@gmail.com','pass');
insert into admin values (5,'harshitha','harshitha@gmail.com','pass');
Select * from admin;


create table course ( course_id int(20) primary key, c_name varchar(100),c_desp varchar(100), c_fees varchar(100),c_resource varchar(100));
insert into course values (111,'JAVA','Programing language',299, 'video.mp4');
insert into course values (112,'C Programming','Programming language',199, 'cprogram.mp4');
insert into course values (113,'C++ Programming','Programming language',199, 'c++program.mp4');
Select * from course;

create table feedback(user_id int(20) references user,name varchar(100),email varchar(100),f_id int(20) primary key auto_increment,feedback varchar(100));
insert into feedback(user_id,name,email,feedback)values(101,'ankit','ankit@gmail.com','good');
insert into feedback(user_id,name,email,feedback)values(105,'harshitha','harshitha@gmail.com','good');
select * from feedback;
drop table feedback;