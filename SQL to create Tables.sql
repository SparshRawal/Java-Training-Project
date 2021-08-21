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


create table admin ( Admin_ID int(20) primary key auto_increment, Name varchar(100),Email varchar(100),Password varchar(100))auto_increment=901;
insert into admin(Name,Email,Password) values ('rahul','rahul@gmail.com','pass');
insert into admin(Name,Email,Password) values ('ankit','ankit@gmail.com','pass');
insert into admin(Name,Email,Password) values ('gowthami','gowthami@gmail.com','pass');
insert into admin(Name,Email,Password) values ('aishwarya','aishwarya@gmail.com','pass');
insert into admin(Name,Email,Password) values ('harshitha','harshitha@gmail.com','pass');
Select * from admin;
drop table admin;

select Admin_ID,Name,Email from admin where Admin_ID=902 and Email='ankit@gmail.com' and Password="pass" limit 1;

create table course ( course_id int(20) primary key auto_increment, c_name varchar(100),c_desp varchar(100), c_fees varchar(100),c_resource varchar(100))auto_increment=111;
insert into course(c_name,c_desp,c_fees,c_resource) values ('JAVA','Programing language',299, 'video.mp4');
insert into course(c_name,c_desp,c_fees,c_resource) values ('C Programming','Programming language',199, 'cprogram.mp4');
insert into course(c_name,c_desp,c_fees,c_resource) values ('C++ Programming','Programming language',199, 'c++program.mp4');
select c_name,c_desp,c_fees,c_resource from course where course_id=111;
Select * from course;
drop table course;

create table feedback(user_id int(20) references user,name varchar(100),email varchar(100),f_id int(20) primary key auto_increment,feedback varchar(100));
insert into feedback(user_id,name,email,feedback)values(101,'ankit','ankit@gmail.com','good');
insert into feedback(user_id,name,email,feedback)values(105,'harshitha','harshitha@gmail.com','good');
select * from feedback;
drop table feedback;

create table user_course_connector(id int(20) primary key auto_increment,User_ID int(20) references user,Course_ID int(20) references course,constraint uid_cid unique(User_ID,Course_ID));
insert into user_course_connector(User_ID,Course_ID) values(106,111);
insert into user_course_connector(User_ID,Course_ID) values(106,112);
insert into user_course_connector(User_ID,Course_ID) values(102,111);
insert into user_course_connector(User_ID,Course_ID) values(102,112) ;
drop table user_course_connector;
select * from user_course_connector;
 select user.User_ID,user.Email,course.c_name 
 from user,course,user_course_connector
 where user.User_ID = user_course_connector.User_ID
 and course.course_id = user_course_connector.Course_ID
 and user.User_ID=106;

select User_ID,Name,Phone_No,Email,Address,Reg_Date,Upload_Photo from user where Email="ankit@gmail.com" and Password="ankit" limit 1;