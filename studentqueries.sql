create database university;
create table student1(
SID int primary key,
SNAME varchar(30) not null,
DID int not null foreign key references dept(DID),
Mobile varchar(10) null,
Age int null,
gender  char(1) not null check(gender='F'or gender='M'),
Address varchar(30) not null
)
insert into  student1 values(1332,'Keerthi',15,9392955560,19,'F','nellore')
insert into  student1 values(1369,'Kavya',2,8634242424,19,'F','nellore')
insert into  student1 values(1892,'Rizwan',15,null,18,'M','guntur')
insert into  student1 values(1236,'Durga',5,9346970679,20,'M','Tirupathi')
insert into  student1 values(4565,'Anusha',5,null,17,'F','Amaravathi')
insert into  student1 values(6755,'Sravya',2,null,18,'F','nellore')
insert into  student1 values(6765,'Keerthana',2,9966259976,19,'F','Tirupati')
insert into  student1 values(2446,'Abhi',15,null,19,'M','Kurnool')
insert into  student1 values(6897,'Kavitha',16,7842531024,20,'F','Kadapa')
insert into  student1 values(9706,'Padma',33,null,18,'F','Ananthapuram')
insert into  student1 values(6557,'Praveena',33,null,20,'F','hyderabad')
insert into  student1 values(3555,'Swathi',29,null,19,'F','Banglore')
insert into  student1 values(8997,'Reethu',1,8934533455,20,'F','Vishakhapatnam')
insert into  student1 values(5393,'Hyndavi',15,6789563400,19,'F','Kadapa')
insert into  student1 values(0978,'Harsha',12,9067853845,17,'M','nellore')
insert into  student1 values(2456,'Gopi',33,7835675897,19,'M','Tirupati')
insert into  student1 values(9596,'Suma',15,null,18,'F','hyderabad')
insert into  student1 values(8903,'Dharani',3,9392955560,19,'F','East godavari')
insert into  student1 values(6733,'Jyothshna',1,null,20,'F','Srikakulam')
insert into  student1 values(5372,'Bavadesh',16,6899656068,19,'M','Vishakhapatnam')
insert into  student1 values(6869,'Shiva',15,6578765096,18,'M','Kurnool')
insert into  student1 values(6839,'Dharshini',33,8460873895,18,'F','nellore')
insert into  student1 values(8996,'Aravind',29,null,19,'M','Ananthapuram')
insert into  student1 values(6899,'Kaveri',4,null,20,'F','Tirupathi')
insert into  student1 values(6282,'Mounika',15,null,19,'F','Kadapa')
insert into  student1 values(3493,'Deekshitha',15,8945678479,18,'F','Banglore')
insert into  student1 values(7839,'Prasad',2,null,19,'M','Chennai')
insert into  student1 values(3784,'Kalyan',5,6893456068,18,'M','Chennai')
insert into  student1 values(3953,'Siri',1,9398908760,20,'F','nellore')
insert into  student1 values(4738,'Surya',12,9673567806,19,'M','East Godavari')
insert into  student1 values(1356,'Kalyani',1,7823354660,19,'F','nellore')
select * from student1
select SNAME from student1 where DID=15
SELECT sname from student1 where age>=20
select sid,sname from student1 where address='NELLORE' and  mobile is not null
alter table student1 add email varchar(20) null
select count(*) as count_f from student1 where gender='f'
DELETE FROM student1 WHERE AGE=19 AND DID =3
update STUDENT1 set EMAIL='harsha@gmail.com' where Sid=978
update STUDENT1 set EMAIL='durga34@gmail.com' where Sid=1236
update STUDENT1 set EMAIL='keerthi@gmail.com' where Sid=1332
update STUDENT1 set EMAIL='kavya@gmail.com' where Sid=1369
update STUDENT1 set EMAIL='gopi@gmail.com' where Sid=2456
update STUDENT1 set EMAIL='swathi@gmail.com' where Sid=3555
update STUDENT1 set EMAIL='kalyan@gmail.com' where Sid=3784
update STUDENT1 set EMAIL='surya@gmail.com' where Sid=4738
update STUDENT1 set EMAIL='mouni@gmail.com' where Sid=6282
update STUDENT1 set EMAIL='sravya@gmail.com' where Sid=6755
update STUDENT1 set EMAIL='dharshini@gmail.com' where Sid=6839
update STUDENT1 set EMAIL='padma@gmail.com' where Sid=9706
update STUDENT1 set EMAIL='suma@gmail.com' where Sid=9596
select avg(age) as avg_fs from student1
alter table student1 add blodgrop1 VARchar(5) null
update STUDENT1 set blodgrop1=' A+' where Sid=978
update STUDENT1 set blodgrop1=' B+' where Sid=1356
update STUDENT1 set blodgrop1=' AB+' where Sid=1369
update STUDENT1 set blodgrop1=' A-' where Sid=1236
update STUDENT1 set blodgrop1=' B-' where Sid=1892
update STUDENT1 set blodgrop1=' AB+' where Sid=3493
update STUDENT1 set blodgrop1=' A+' where Sid=3555
update STUDENT1 set blodgrop1=' B+' where Sid=2456
update STUDENT1 set blodgrop1=' B+' where Sid=6557
update STUDENT1 set blodgrop1=' O+' where Sid=5393



select sid,age from student1 where DID=12


select count(*) as count_s from student1 where did!=(select did from dept where dname='csse')

SELECT SID,SNAME,AGE,GENDER,ADDRESS,MOBILE INTO CSSE_STDS
FROM STUDENT1
WHERE DID = (SELECT DID FROM DEPT WHERE DNAME='CSSE')

SELECT *FROM CSSE_STDS

create view   stud_det as
(
     select sid,sname,mobile,age, d.dname, gender 
	 from student1 as s1,dept as d
	 where d.dname='csse' and s1.did=d.did or d.DName='it' and s1.did=d.did
) 
	 select * from stud_det


create table dept
(
DID int primary key,
DName varchar(10) not null unique,
)

select * from dept
insert into dept values(15,'CSSE')
insert into dept values(12,'IT')
insert into dept values(5,'CSE')
insert into dept values(1,'CIVIL')
insert into dept values(2,'EEE')
insert into dept values(4,'ECE')
insert into dept values(3,'MECH')
insert into dept values(33,'AIML')
insert into dept values(29,'CSBS')
insert into dept values(16,'AI')


create table employee
(
EID int primary key,
EName varchar(40) not null,
DID int not null foreign key references dept(DID),
salary money not null,
Gender  char(1) not null check(Gender='F'or Gender='M'),
city varchar(30)  null,
mobile varchar(10) null
)
select * from employee
insert into employee values(3211,'Yugendhar',15,50000,'M','nellore',9467544480)
insert into employee values(3234,'Yogendra Prasad',15,100000,'M','Tirupathi',9567878773)
insert into employee values(6788,'Sudharshan',16,75000,'M','Kurnool',9768876540)
insert into employee values(7943,'Ramu',15,70000,'M','thirupathi ',7786554336)
insert into employee values(5499,'Siva Kumar ',3,85000,'M','guntur',9045674487)
insert into employee values(8499,'Sudheer',1,78000,'M','nellore',9755643346)
insert into employee values(8754,'Ranjitha',5,95000,'F','hyderabad',9899454656)
insert into employee values(7549,'Poojitha',12,64000,'F','Warangal',7842954052)
insert into employee values(7749,'Prathna',12,90000,'F','tirupathi',9045776335)
insert into employee values(4567,'Vikram',12,80000,'F','nellore',7834933442)
insert into employee values(8956,'Preethi',12,75000,'F','tirupathi',6798576467)
ALTER TABLE EMPLOYEE ADD AGE INT  NULL
UPDATE EMPLOYEE SET AGE = 35 WHERE EID=3211
UPDATE EMPLOYEE SET AGE = 36 WHERE EID=3234
UPDATE EMPLOYEE SET AGE = 40 WHERE EID=4567
UPDATE EMPLOYEE SET AGE = 42  WHERE EID=5499
UPDATE EMPLOYEE SET AGE = 38 WHERE EID=6788
UPDATE EMPLOYEE SET AGE = 50 WHERE EID=7549
UPDATE EMPLOYEE SET AGE = 45 WHERE EID=7749
UPDATE EMPLOYEE SET AGE = 34 WHERE EID=7943
UPDATE EMPLOYEE SET AGE = 37 WHERE EID=8499
UPDATE EMPLOYEE SET AGE = 39 WHERE EID=8754
UPDATE EMPLOYEE SET AGE = 38 WHERE EID=8956
select ename,eid
from employee
where salary>40000 and salary<80000
select ename,did
from employee e
where city! ='hyderabad'
select sum(salary) AS COUNT_EMPSAL
from employee 
where did=15
select count(*) as count_em from employee where did=15

select eid,ename
from employee 
where salary>90000 and did=15

alter table employee add doj date null
select * from employee
update employee set doj='1993/03/7' where eid =3211
update employee set doj='1994/06/27' where eid =3234
update employee set doj='2000/04/16' where eid =4677
update employee set doj='2008/12/20' where eid =5499
update employee set doj='2012/08/15' where eid =6055


alter table employee add desgntion varchar(15) null
update employee set desgntion='asst professor' where eid=3211
update employee set desgntion='professor' where eid=8956
update employee set desgntion='assot professor' where eid=5499
update employee set desgntion=' professor' where eid=6055
update employee set desgntion='asst professor' where eid=6788
update employee set desgntion='hod' where eid=7943
update employee set desgntion='asst professor' where eid=7549
update employee set desgntion=' professor' where eid=8754
SELECT * FROM EMPLOYEE

alter table employee add blodgrp VARchar(5) null
update employee set blodgrp='A+' where eid=3211
update employee set blodgrp='B+' where eid=8956
update employee set blodgrp='AB+' where eid=5499
update employee set blodgrp=' AB-' where eid=6055
update employee set blodgrp='O+' where eid=6788
update employee set blodgrp='O+' where eid=7943
update employee set blodgrp='A+' where eid=7549
update employee set blodgrp=' A+' where eid=8754
update employee set blodgrp=' A+' where eid=3234
update employee set blodgrp=' A+' where eid=4567
update employee set blodgrp=' A+' where eid=7749
SELECT * FROM employee

select count(*) as count_em from employee where city='TIRUPATHI'

select avg(salary) as count_salary ,did 
from employee 
group by did

update  employee set salary=95000 from dept as dk 
where desgntion='asst professor' and dk.dname='csse'

select ename,eid
from employee
where   city='tirupathi' or did=(select did from dept where dname='csse')

SELECT ENAME,eid from  employee where salary >=60000 and salary<=100000 and blodgrp='ab+'

alter table  employee alter column doj datetime not null 
select ename
from employee
where   AGE>=30 AND AGE<=40 AND did=(select did from dept where dname='csse')

CREATE view  emp_prfsor as
(
select eid,ename,city,salary,gender,did,mobile
from employee where desgntion='asst professor'
)
select * from emp_prfsor

UPDATE EMPLOYEE SET SALARY=120000 
WHERE eNAME LIKE 'Y%' AND DID=( select did from dept where dname='csse')

UPDATE EMPLOYEE SET DID=15
WHERE DID=( select did from dept where dname='csE')

SELECT ename  from employee where salary=(select max(salary) from employee)
SELECT ename,doj from employee where did=(select did from dept where dname='csse')

SELECT eid,ename ,salary
from employee where salary in
                (
				select salary from employee  
				group by salary having count(*)>1
				)
create table course(
CID int primary key,
coursename varchar(30) not null,
category char(1) null check(category='B' or category='M' or category ='A'),
fee money not null check(fee>=0)
)
select * from course
insert into course values(354,'DBMS','M',3000)
insert into course values(687,'C Programing','A',4500)
insert into course values(658,'C++','B',3560)
insert into course values(657,'Python','B',3390)
insert into course values(806,'HTML','M',3600)
insert into course values(367,'AIML','A',3900)
insert into course values(908,'JAVA','A',3200)
insert into course values(947,'PASCAL','M',3400)
insert into course values(463,'CSS','B',3600)
insert into course values(255,'JAVASCRIPT','B',3800)

 create table enrollment
 (
 CID int not null foreign key references course(CID),
 SID int not null foreign key references student1(SID),
 DOE date not null ,
 grade char(1) not null check(grade='O' or grade='A' or grade='B' or grade ='C')
 )
 select * from enrollment 
 insert into enrollment values(354,6557,'2011/11/20','O')
 insert into enrollment values(687,1369,'2022/06/23','A')
 insert into enrollment values(908,5372,'2022/04/02','C')
 insert into enrollment values(947,6869,'2022/09/16','A')
 insert into enrollment values(354,6899,'2022/08/28','B')
 insert into enrollment values(463,3784,'2022/11/07','O')
 insert into enrollment values(687,3953,'2022/11/09','B')
 insert into enrollment values(255,1332,'2022/09/14','C')
 insert into enrollment values(657,6755,'2022/11/29','A')
 insert into enrollment values(463,1356,'2022/12/24','B')
 insert into enrollment values(947,3784,'2022/12/24','A')
 insert into enrollment values(657,6899,'2022/12/24','O')

 select  e.sid 
 from   enrollment as e ,course as c
 where   e.cid=c.cid and c.coursename ='java' or c.coursename ='dbms' and e.cid=c.cid 

 select count(cid)as count_course,sid
 from enrollment 
 group by sid

 select sname,k.sid
 from student1 as k, enrollment as e,course as l 
 where k.sid=e.sid and l.cid=e.cid and l.category='a'
 create table bookbank
(
 sno int identity(1,1) NOT NULL UNIQUE, 
 BID INT   PRIMARY KEY,
 BName varchar(30) not null, 
 quantity int null
 )
 insert INTO bookbank values(15,'WINGS OF FIRE',25)
 insert INTO bookbank values(12,'the girl with no dreams',6)
 insert INTO bookbank values(13,'believe in yourself',12)
 insert INTO bookbank values(20,'BTS',16)
 insert INTO bookbank values(5,'think and grow rich',4)
 SELECT * FROM BOOKBANK
 SELECT bname,COUNT(bname) 
 FROM bookbank 
 GROUP BY bname 
 ORDER BY count(bname) asc