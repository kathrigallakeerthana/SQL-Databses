create database movie_det;
create table customer
(
cid int primary key,
cname varchar(30) not null,
cmobile varchar(10) not null,
age int null,
crating int not null check(crating >=0 and crating<=10)
)

insert into customer values(102,'keerthi','9233553205',20,8)
insert into customer values(103,'Kavya','6938388234',22,9)
insert into customer values(104,'shiva','9894689363',22,10)
insert into customer values(105,'hari','8794638372',30,6)
insert into customer values(112,'Deekshi','9044938345',27,9)
insert into customer values(212,'Hyndavi','8028592643',28,5)
insert into customer values(416,'Suma','8396332233',25,8)
insert into customer values(512,'Kalyan','9075378596',23,7)
insert into customer values(708,'Dharani','9698496493',21,4)
insert into customer values(902,'Keerthana','8994658335',38,10)
insert into customer values(476,'Sravya','8907599335',28,6)
insert into customer values(812,'dharshini','9886074894',18,7)
insert into customer values(985,'Aravind','8084398504',20,9)
insert into customer values(100,'Durga','6794764939',29,8)
insert into customer values(145,'Prasad','8037583734',23,7)
insert into customer values(678,'Surya','6357936994',32,9)
insert into customer values(856,'prashanth','8996599364',30,8)
insert into customer values(612,'mounika','6879365937',21,4)
insert into customer values(894,'harshi','9879937753',27,10)
insert into customer values(312,'Swathi','7975993555',19,9)
insert into customer values(182,'Arjun','8592499560',17,6)
insert into customer values(801,'sree','8574924694',29,8)
insert into customer values(645,'Abhi','6284834628',25,9)
insert into customer values(709,'Gopi','8349264939',20,7)
insert into customer values(680,'shankar','8996646780',19,6)
insert into customer values(089,'Madhu','9785879564',28,5)
insert into customer values(356,'Mayank','6795864778',23,10)
insert into customer values(798,'Kiran','9908985768',32,8)
insert into customer values(083,'Ram','7966476850',18,9)
insert into customer values(567,'Priya','8774658540',23,7)

select * from customer

create table movie
(
mid int primary key,
mname varchar(30) not null,
mlanguage varchar(30) not null,
mrating int not null check(mrating>=0 and mrating<=10)
) 
insert into movie values(230,'july','telugu',10)
insert into movie values(231,'dhoom 3','hindi',9)
insert into movie values(232,'a beautiful mind','english',6)
insert into movie values(234,'the villainess','korea',9)
insert into movie values(256,'vikaram','tamil',7)
insert into movie values(245,'beast','tamil',8)
insert into movie values(281,'train to busan','korea',7)
insert into movie values(326,'the dark knight','english',9)
insert into movie values(412,'padmavat','hindi',8)
insert into movie values(678,'kushi','telugu',10)
insert into movie values(567,'don','tamil',7)
insert into movie values(477,'the great battle','korea',8)
insert into movie values(364,'momento','english',7)
insert into movie values(676,'dangal','hindi',9)
insert into movie values(457,'jelsa','telugu',10)
 insert into movie values(613,'SIMHA','telugu',8)

select * from movie

create table reserve
(
   cid int not null foreign key references customer(cid),
   mid int not null foreign key references movie(mID),
   rdate date not null
   )

  insert into reserve values(612,230,'2022/06/09')
  insert into reserve values(894,231,'2022/7/20')
  insert into reserve values(312,232,'2022/04/19')
  insert into reserve values(182,256,'2022/12/01')
  insert into reserve values(801,245,'2022/08/04')
  insert into reserve values(645,281,'2022/03/18')
  insert into reserve values(709,326,'2022/01/17')
  insert into reserve values(680,678,'2022/11/21')
  insert into reserve values(102,567,'2022/10/20')
  insert into reserve values(856,364,'2022/4/10')
  insert into reserve values(708,457,'2022/05/11')
  insert into reserve values(104,230,'2022/11/29')
  insert into reserve values(416,281,'2022/12/16')
  insert into reserve values(902,567,'2022/07/13')
  insert into reserve values(100,676,'2022/09/14')
  insert into reserve values(678,457,'2022/08/26')
  insert into reserve values(856,281,'2022/09/20')
  insert into reserve values(145,234,'2022/06/2')
  insert into reserve values(105,567,'2022/04/1')
  insert into reserve values(102,678,'2022/03/14')
  insert into reserve values(678,281,'2022/01/26')
  insert into reserve values(212,326,'2022/12/21')
  insert into reserve values(112,412,'2022/11/22')
  insert into reserve values(902,364,'2022/09/23')
  insert into reserve values(709,245,'2022/02/16')
  insert into reserve values(105,567,'2022/02/26')
  insert into reserve values(985,364,'2022/06/17')
  insert into reserve values(212,676,'2022/04/27')
  insert into reserve values(902,230,'2022/07/13')
  insert into  reserve values(512,245,'2022/07/13')
 
 select * from reserve

 select mname  from movie
 where mlanguage='TELUGU' AND mrating in
 (
 SELECT min(mrating) from movie where   mrating in 
   ( 
   select distinct top 2 mrating from movie WHERE mlanguage='TELUGU' order by mrating desc
   )
 ) 


 SELECT mrating, AVG(mrating)
FROM movie
GROUP BY mrating
HAVING COUNT(mrating) >= 2
--ORDER BY mrating

select c.cname
from customer as c,movie as m,reserve as r
where c.cname like '___%h' and c.cid=r.cid and r.mid=m.mid and m.mlanguage='korea'


select c.cname 
from customer as c,movie as m,reserve as r
where m.mname='train to busan' and c.cid=r.cid and r.mid =m.mid and age>=30 and age<=50

SELECT  DISTINCT C.cname ,m.mid
FROM Customer C, Reserve R, Movie M 
WHERE C.cid = R.cid AND R.mid = M.mid AND (M.mname = 'momento' or M.mname = 'july')

select avg(age) as avg_age
from customer as c ,movie as m,reserve as r
where m.mlanguage='telugu' and C.cid = R.cid AND R.mid = M.mid
--select cname,mname
--from movie m,customer c,reserve r
--where m.mlanguage='korea' and r.cid=c.cid and r.mid=m.mid
select 
SELECT AVG(crating) as crting_avg
FROM customer,movie m
WHERE m.mid IN (SELECT mid
                   FROM movie
                   WHERE mlanguage = 'English')
SELECT COUNT(c.cid) as count_cid 
from customer as c ,movie as m,reserve as r
where m.mlanguage='telugu' and AGE BETWEEN 20 AND 30 AND m.Mrating IN (7,10) and C.cid = R.cid AND R.mid = M.mid 

select cname 
from customer as c,reserve as r,movie as m
where  C.cid = R.cid AND R.mid = M.mid and m.mname='july' and rdate='2022/06/09'

select count(*) as count_mvie
from movie
where mrating<8 and mlanguage<>'english' 

create view  telugu_movies as
 select c.cid,r.rdate ,m.mrating
 from  customer c,reserve r, movie m
 where m.mlanguage='telugu' and C.cid = R.cid AND R.mid = M.mid

 select * from telugu_movies

 



