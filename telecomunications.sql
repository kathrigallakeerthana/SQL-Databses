CREATE DATABASE TELECOMMUNICATION;
 create table Users
(
userid int Primary Key,
username varchar(20) not null,
password varchar(20) not null,
email varchar(30) not null,
phone int null,
role varchar(30) not null
)
select * from Users
insert into Users values(1,'keerthana','keerthidurga123','keerthana1212@gmail.com',9392955560,'admin')
insert into Users values(2,'hyndavi','hyndavi12','dommarajuhyndavi@gmail.com',945638856,'System Architect')
insert into Users values(3,'deekshitha','deekshitha1349','kdeekshitha1349@gmail.com',738232585,'Service Delivery Manager')
insert into Users values(4,'vivek','vivek1349','nimmalavivek@gmail.com',934661177,'Network  Center Operator')
insert into Users values(5,'vijay','vijay04','vijaysanduru@gmail.com',976584045,'Technical Support Engineer')
insert into Users values(6,'ganesh','ganesh30','nagaganesh@gmail.com',758649046,'Billing  Specialist')
insert into Users values(7,'mahalakshmi','maha143','mahalakshmi@gmail.com',759385036,'Security Manager')
insert into Users values(8,'vishal','vishal34','vishal@gmail.com',937539086,'Supplier Management')
insert into Users values(9,'abhiram','abhiram06','abhiramkatthula@gmail.com',746532910,'Project Manager')
insert into Users values(10,'snehitha','snehitha426','snehitha@gmail.com',945789244,'Quality Assurance Specialist')
insert into Users values(11,'hemalatha','hemalatha06','hemalatha906@gmail.com',850002607,'Capacity Planner')
insert into Users values(12,'sumasindhu','suma123456','sumasindhu@gmail.com',745689022,'Vendor Relationship Manager')
insert into Users values(13,'anilkumar','anilsindhu','anilkumar@gmail.com',765231278,'Data Analyst')
insert into Users values(14,'sandhya','sandhya123','sandhya@gmail.com',733737700,'Regulatory Compliance Officer')
insert into Users values(15,'arunkumar','arun546','arunkumar@gmail.com',744590765,'Customer Relationship Manager')
 create table Customers
(
customer_id int Primary Key,
name varchar(30) not null,
address varchar(30) not null,
city varchar(30) not null,
state varchar(20) not null,
phone int not null,
email varchar(30) not null
)
select * from Customers
insert into Customers values (500,'aravindh','muthukur','nellore','andhrapradesh',896756432,'aravindh@gmail.com')
insert into Customers values (435,'naresh','krishnapatnam','megistic','karnataka',977589045,'naresh@gmail.com')
insert into Customers values (987,'mahesh','dilshuknagar','hyderabad','telangana',854736354,'mahesh@gmail.com')
insert into Customers values (345,'sitha','rajupalem','kohlapur','kashmir',765424569,'sitha@gmail.com')
insert into Customers values (598,'prasanna','rajampeta','vizag','madhyapradesh',857643292,'prasanna@gmail.com')
insert into Customers values (765,'abhinaya','nagpur','hariyana','chandhighar',987643201,'abhinaya@gmail.com')
insert into Customers values (876,'akshaya','tiruvanathnapuarm','munnar','kerala',876542901,'akshaya@gmail.com')
insert into Customers values (234,'manvitha','mayapur','kocchi','goa',987654332,'manvitha@gmail.com')
insert into Customers values (870,'ananaya','tiruvanamali','chennai','tamilnadu',753235790,'ananaya@gmail.com')
insert into Customers values (988,'thaman','mrpalli','srinagar','jammu',890957802,'thaman@gmail.com')
insert into Customers values (863,'suhanth','madhapur','jaipur','rajasthan',733746789,'suhanth@gmail.com')
insert into Customers values (256,'ashok','mamandur','kathmandu','nepal',987612422,'ashok@gmail.com')
insert into Customers values (648,'suhasini','srnagar','ittnagar','himachalpradesh',724589064,'suhasini@gmail.com')
insert into Customers values (768,'valli','gandhiroad','tirupathi','andhrapradesh',876274590,'hemavalli@gmail.com')
insert into Customers values (146,'poojitha','hitechcity','kurnool','telangana',896087655,'poojitha@gmail.com')
 create table Service
 (
service_id  int Primary Key,
service_name varchar(30) not null,
price money not null
)

select *from Service
insert into Service values(23,'Voice Services',450)
insert into Service values(87,'Mobile Services',470)
insert into Service values(09,'Internet Services',350)
insert into Service values(89,'Data Services',457)
insert into Service values(34,'Video Conferencing',876)
insert into Service values(76,'Unified Communications',345)
insert into Service values(041,'Internet Things Connectivity',6573)
insert into Service values(24,'Managed Network Services',734)
insert into Service values(013,'irtual  Network Services',2246)
insert into Service values(65,'Cloud Telephony Services',809)
insert into Service values(76,'Carrier Services',462)
insert into Service values(12,'Content Delivery Services',136)
insert into Service values(58,'Teleconferencing Service',295)
insert into Service values(77,'Voice over IP Services',475)
insert into Service values(39,'Cloud Communications',609)
create table Subscriptions 
(
subscription_id int Primary Key,
customer_id int foreign key references Customers(Customer_id),
service_id int foreign key references Service(service_id),
start_date date not null,
end_date date not null
)
insert into Subscriptions values(70,500,23,'2022/06/03','2023/07/19')
insert into Subscriptions values(71,435,87,'2022/07/29','2023/07/17')
insert into Subscriptions values(98,987,09,'2022/08/07','2023/08/19')
insert into Subscriptions values(44,345,89,'2022/01/22','2023/01/12')
insert into Subscriptions values(65,598,34,'2022/02/03','2023/10/13')
insert into Subscriptions values(13,765,76,'2022/03/24','2023/02/14')
insert into Subscriptions values(54,876,82,'2022/04/09','2023/03/19')
insert into Subscriptions values(34,234,24,'2022/05/13','2023/04/23')
insert into Subscriptions values(45,870,45,'2022/06/03','2023/05/30')
insert into Subscriptions values(56,988,65,'2022/07/23','2023/06/13')
insert into Subscriptions values(24,863,76,'2022/08/03','2023/07/09')
insert into Subscriptions values(20,256,12,'2022/09/26','2023/08/06')
insert into Subscriptions values(76,648,58,'2022/10/18','2023/09/08')
insert into Subscriptions values(84,768,77,'2022/11/16','2023/11/25')
insert into Subscriptions values(32,146,35,'2022/12/30','2023/12/31')

 create table Invoices
(
invoice_id int Primary Key,
customer_id  int foreign key references Customers(Customer_id) ,
invoice_date date not null,
total_amount money not null,
) 

insert into Invoices values(111,500,'2022/01/01',2000)
insert into Invoices values(222,435,'2022/02/02',3000)
insert into Invoices values(322,987,'2022/02/03',4000)
insert into Invoices values(465,345,'2022/04/04',5000)
insert into Invoices values(588,598,'2022/05/05',6000)
insert into Invoices values(689,765,'2022/06/06',7000)
insert into Invoices values(789,876,'2022/07/07',8000)
insert into Invoices values(886,234,'2022/08/08',9000)
insert into Invoices values(977,870,'2022/09/09',1000)
insert into Invoices values(110,988,'2022/10/10',1100)
insert into Invoices values(118,863,'2022/11/11',1300)
insert into Invoices values(120,256,'2022/12/12',1200)
insert into Invoices values(138,648,'2022/01/13',1400)
insert into Invoices values(145,768,'2022/02/14',1500)
insert into Invoices values(151,146,'2022/03/15',1600)
insert into Invoices values(152,648,'2022/03/20',1700)
insert into Invoices values(153,234,'2023/06/1',1600)
insert into Invoices values(154,870,'2023/06/1',16000)
 create table Payments
 (
payment_id int Primary Key,
invoice_id  int foreign key references invoices(invoice_id),
payment_date date not null,
amount money not null,
payment_method varchar(30) not null
)
insert into Payments values(011,111,'2005/04/03',500,'online')
insert into Payments values(012,222,'2006/01/02',100,'offline')
insert into Payments values(013,322,'2007/02/01',200,'online')
insert into Payments values(014,465,'2008/03/04',300,'offline')
insert into Payments values(015,588,'2009/05/05',400,'online')
insert into Payments values(016,689,'2010/06/06',600,'offline')
insert into Payments values(017,789,'2011/07/07',700,'online')
insert into Payments values(018,866,'2012/08/08',800,'offline')
insert into Payments values(019,977,'2013/09/09',900,'online')
insert into Payments values(010,110,'2014/10/10',1000,'offline')
insert into Payments values(021,118,'2015/11/11',1100,'online')
insert into Payments values(022,120,'2016/12/12',1200,'offline')
insert into Payments values(023,138,'2017/01/13',1300,'online')
insert into Payments values(024,145,'2018/02/14',1400,'offline')
insert into Payments values(025,151,'2019/03/15',1500,'online')
insert into Payments values(026,111,'2019/03/15',150000,'online')
insert into Payments values(027,111,'2019/03/15',1500,'offline')
 create table Usage
 (
usage_id int Primary Key,
customer_id int foreign key references Customers(Customer_id),
service_id int foreign key references Service(service_id),
call_duration time not null,
text_messages varchar(30) not null
)
insert into Usage values(0987,500,23,'00:5:45','sent 12 messages')
insert into Usage values (1111, 435,87, '00:15:30', 'Sent 10 messages')
insert into Usage values(2222, 987, 09, '01:02:45', 'Sent 20 messages')
insert into Usage values (3333,345,89, '00:45:20', 'Sent 5 messages')
insert into Usage values(4444,598, 34, '00:30:10', 'Sent 15 messages')
insert into Usage values (555,765,76,'01:12:30','Sent 25 messages')
insert into Usage values (7777, 234,24, '00:10:00', 'Sent 12 messages')
insert into Usage values(8888, 870,45, '00:40:45', 'Sent 8 messages')
insert into Usage values (9999, 988,65, '01:05:00', 'Sent 18 messages')
insert into Usage values(1110, 863,76, '00:50:30', 'Sent 9 messages')
insert into Usage values(1122, 256,12, '00:25:20', 'Sent 6 messages')
insert into Usage values(1233, 648,58, '00:35:10', 'Sent 22 messages')
insert into Usage values(1344, 768,77, '01:30:00', 'Sent 16 messages')
insert into Usage values  (1554, 146,35, '00:10:45', 'Sent 7 messages')
insert into Usage values(1666,876,82,'00:15:20','sent 6 messages')
create table Equipment
(
equipment_id int Primary Key,
equipment_name varchar(30) not null,
type varchar(30) not null,
model varchar(30) not null,
status varchar(30) not null
)
select *from Equipment
insert into Equipment values (100, 'Laptop', 'Computer', 'Dell XPS 13', 'Available')
insert into Equipment values (200, 'Printer', 'Peripheral', 'HP LaserJet Pro', 'In Use')
insert into Equipment values (300, 'Projector', 'Audiovisual', 'Epson PowerLite', 'Available')
insert into Equipment values(400, 'Monitor', 'Computer', 'LG UltraGear', 'In Use')
insert into Equipment values(500, 'Keyboard', 'Peripheral', 'Logitech K840', 'Available')
insert into Equipment values(600, 'Mouse', 'Peripheral', 'Razer DeathAdder', 'Available')
insert into Equipment values(700, 'Scanner', 'Peripheral', 'Canon LiDE 400', 'In Use')
insert into Equipment values(800, 'Headphones', 'Audio', 'Sony WH-1000XM4', 'Available')
insert into Equipment values(900, 'Server', 'Computer', 'Dell PowerEdge', 'Available')
insert into Equipment values(106, 'Router', 'Network', 'TP-Link Archer C9', 'Available')
insert into Equipment values(101, 'Switch', 'Network', 'Cisco Catalyst 2960', 'In Use')
insert into Equipment values(102, 'Phone', 'Communication', 'iPhone 12', 'Available')
insert into Equipment values(103, 'Tablet', 'Mobile', 'Samsung Galaxy Tab S7', 'Available')
insert into Equipment values(104, 'Camera', 'Audiovisual', 'Canon EOS R6', 'In Use')
insert into Equipment values(105, 'Smartwatch', 'Wearable', 'Apple Watch Series 6', 'Available')
create table Faults
(
fault_id int Primary Key,
customer_id int foreign key references Customers(Customer_id),
fault_date date not null,
status varchar(50) not null
)
select * from Faults
insert into Faults values(11111, 500, '2023-05-01', 'Reported')
insert into Faults values(22222, 435, '2023-05-02', 'In Progress')
insert into Faults values(33333, 987, '2023-05-03', 'Resolved')
insert into Faults values(44444, 345, '2023-05-04', 'Reported')
insert into Faults values(55555, 598, '2023-05-05', 'In Progress')
insert into Faults values(66666, 765, '2023-05-06', 'Resolved')
insert into Faults values(77777, 876, '2023-05-07', 'Reported')
insert into Faults values(88888,234, '2023-05-08', 'In Progress')
insert into Faults values(99999, 870, '2023-05-09', 'Resolved')
insert into Faults values(100000, 988, '2023-05-10', 'Reported')
insert into Faults values(1111, 863, '2023-05-11', 'In Progress')
insert into Faults values(12222, 256, '2023-05-12', 'Resolved')
insert into Faults values(13333, 648, '2023-05-13', 'Reported')
insert into Faults values(14444, 768, '2023-05-14', 'In Progress')
insert into Faults values(15555, 146, '2023-05-15', 'Resolved')

create table Repairs
(
repair_id int Primary Key,
fault_id int foreign key references faults(fault_id),
repair_date date not null,
technician_id int not null,
)
select *from Repairs
insert into Repairs values(091, 11111, '2023-05-01', 201)
insert into Repairs values(092, 22222, '2023-05-02', 202)
insert into Repairs values(093, 33333, '2023-05-03', 203)
insert into Repairs values(094, 44444, '2023-05-04', 204)
insert into Repairs values(095, 55555, '2023-05-05', 205)
insert into Repairs values(096, 66666, '2023-05-06', 206)
insert into Repairs values(097, 77777, '2023-05-07', 207)
insert into Repairs values(098, 88888, '2023-05-08', 208)
insert into Repairs values(099, 99999, '2023-05-09', 209)
insert into Repairs values(0910, 100000, '2023-05-10', 210)
insert into Repairs values(0911, 1111, '2023-05-11', 211)
insert into Repairs values(0912, 12222, '2023-05-12', 212)
insert into Repairs values(0913, 13333, '2023-05-13', 213)
insert into Repairs values(0914, 14444, '2023-05-14', 214)
insert into Repairs values(0915, 15555, '2023-05-15', 215)

create table NetworkNodes
(
node_id int Primary Key,
node_name varchar(30) NOT NULL,
location varchar(30) NOT NULL
)
select * from NetworkNodes
insert into NetworkNodes values (00001, 'Node 1', 'Location 1')
insert into NetworkNodes values (00002, 'Node 2', 'Location 2')
insert into NetworkNodes values (00003, 'Node 3', 'Location 3')
insert into NetworkNodes values (00004, 'Node 4', 'Location 4')
insert into NetworkNodes values (00005, 'Node 5', 'Location 5')
insert into NetworkNodes values (00006, 'Node 6', 'Location 6')
insert into NetworkNodes values (00007, 'Node 7', 'Location 7')
insert into NetworkNodes values (00008, 'Node 8', 'Location 8')
insert into NetworkNodes values (00009, 'Node 9', 'Location 9')
insert into NetworkNodes values (1100000, 'Node 10', 'Location 10')
insert into NetworkNodes values (000011, 'Node 11', 'Location 11')
insert into NetworkNodes values (000012, 'Node 12', 'Location 12')
insert into NetworkNodes values (000013, 'Node 13', 'Location 13')
insert into NetworkNodes values (000014, 'Node 14', 'Location 14')
insert into NetworkNodes values (000015, 'Node 15', 'Location 15')
create table networkoutages
(
outage_id int Primary Key,
node_id int Foreign Key references NetworkNodes(node_id),
outage_start_date date not null,
outage_end_date date not null,
)
-- retireve nodes names and its location  for a specifeied outage ending date
SELECT  s.node_name,s.location
FRom networkoutages as n, NetworkNodes as s
where n.node_id=s.node_id and n.outage_end_date='2023-05-04'
select *  from networkoutages
insert into networkoutages values (1001, 1, '2023-05-01', '2023-05-02')
insert into networkoutages values(2001, 2, '2023-05-03', '2023-05-04')
insert into networkoutages values(3001, 3, '2023-05-05', '2023-05-06')
insert into networkoutages values(4001, 4, '2023-05-07', '2023-05-08')
insert into networkoutages values(5001, 5, '2023-05-09', '2023-05-10')
insert into networkoutages values(60011, 6, '2023-05-11', '2023-05-12')
insert into networkoutages values(7001, 7, '2023-05-13', '2023-05-14')
insert into networkoutages values(8001, 8, '2023-05-15', '2023-05-16')
insert into networkoutages values(9001, 9, '2023-05-17', '2023-05-18')
insert into networkoutages values(10001, 10, '2023-05-19', '2023-05-20')
insert into networkoutages values(10011, 11, '2023-05-21', '2023-05-22')
insert into networkoutages values(10012, 12, '2023-05-23', '2023-05-24')
insert into networkoutages values(10013, 13, '2023-05-25', '2023-05-26')
insert into networkoutages values(10014, 14, '2023-05-27', '2023-05-28')
insert into networkoutages values(10015, 15, '2023-05-29', '2023-05-30')
CREATE table  Reports
(
report_id int Primary Key,
report_name varchar(30) NOT NULL,
report_type varchar(30) NOT NULL,
report_date  date not null
)

select * from Reports
insert into Reports values(1002, 'Sales Report', 'Financial', '2023-05-01')
insert into Reports values(2002, 'Marketing Campaign Report', 'Marketing', '2023-05-02')
insert into Reports values(3002, 'Inventory Report', 'Operations', '2023-05-03')
insert into Reports values(4002, 'Customer Satisfaction Survey', 'Customer Service', '2023-05-04')
insert into Reports values(5002, 'Website Analytics Report', 'Digital Marketing', '2023-05-05')
insert into Reports values(6002, 'Quarterly Financial Report', 'Financial', '2023-05-06')
insert into Reports values(7002, 'Product Performance Report', 'Operations', '2023-05-07')
insert into Reports values(8002, 'Employee Performance Evaluation', 'Human Resources', '2023-05-08')
insert into Reports values(90022, 'Market Research Report', 'Marketing', '2023-05-09')
insert into Reports values(10002, 'Quality Assurance Audit Report', 'Operations', '2023-05-10')
insert into Reports values(11002, 'Social Media Engagement Report', 'Digital Marketing', '2023-05-11')
insert into Reports values(12002, 'Annual Budget Report', 'Financial', '2023-05-12')
insert into Reports values(13022, 'Training Evaluation Report', 'Human Resources', '2023-05-13')
insert into Reports values(14002, 'Competitor Analysis Report', 'Marketing', '2023-05-14')
insert into Reports values(15002, 'Production Efficiency Report', 'Operations', '2023-05-15')

CREATE TABLE LogEntries
(
log_entry_id int primary Key,
timestamp time not null,
userid  int foreign key references users(userid)
)
select *from LogEntries
insert into LogEntries values(9929, '09:15:23', 2)
insert into LogEntries values(9939, '10:00:45', 3)
insert into LogEntries values(9949, '10:45:10', 4)
insert into LogEntries values(9959, '11:30:32', 5)
insert into LogEntries values(9969, '12:15:55', 6)
insert into LogEntries values(9979, '13:00:17', 7)
insert into LogEntries values(9989, '13:45:40', 8)
insert into LogEntries values (9999, '14:30:03', 9)
insert into LogEntries values(99109, '15:15:25', 10)
insert into LogEntries values(99119, '16:00:48', 11)
insert into LogEntries values(99129, '16:45:10', 12)
insert into LogEntries values(99139, '17:30:33', 13)
insert into LogEntries values(99149, '18:15:56', 14)
insert into LogEntries values(99159, '19:00:18', 15)

--1.Select customers from a specific city:
SELECT name,city,phone,email
FROM Customers
WHERE city = 'nellore';

--2.Calculate the total amount of a specific invoice
SELECT invoice_id, SUM(total_amount) AS total_amount
FROM Invoices
WHERE invoice_id = 111
GROUP BY invoice_id;

--3.Retrieve the customer name, invoice date, and total amount for all paid invoices
SELECT c.name, i.invoice_date, i.total_amount
FROM Customers c
INNER JOIN Invoices i ON c.customer_id = i.customer_id
WHERE i.invoice_id IN (
    SELECT p.invoice_id
    FROM Payments p
);


--4.RETRIEVE the details of the customer who has long call duration usage
SELECT c.name,C.phone,C.address
FROM Customers c
INNER JOIN Usage u ON c.customer_id = u.customer_id
WHERE u.call_duration = (
    SELECT MAX(call_duration)
    FROM Usage
)

--5.Retrieve the customer name, fault date, and status for all open faults in a specific city
SELECT c.name, f.fault_date, f.status
FROM Customers c
INNER JOIN Faults f ON c.customer_id = f.customer_id
WHERE f.status = 'in progress'
AND c.city = 'kocchi';

--6.Retrieve the count of customers whose city starts with 'N'
SELECT COUNT(*) AS total_customers
FROM Customers
WHERE city LIKE '%N%';

--7.Retrieve the average price of all services
SELECT AVG(price) AS average_price
FROM Service;


--8.Retrieve the customer names and the count of their subscriptions
SELECT c.name, COUNT(s.subscription_id) AS total_subscriptions
FROM Customers c
LEFT JOIN Subscriptions s ON c.customer_id = s.customer_id
GROUP BY c.name;

--9.Retrieve the customer names and the earliest fault date for each customer
SELECT c.name, MIN(fault_date) AS earliest_fault_date
FROM Customers c
INNER JOIN Faults f ON c.customer_id = f.customer_id
GROUP BY c.name;


--10.Retrieve the service names and the average price of services with a price higher than the average price of all services
SELECT service_name, (
  SELECT AVG(price)
  FROM Service
) AS average_price
FROM Service
WHERE price > (
  SELECT AVG(price)
  FROM Service
);

--11.Retrieve the customer names and the number of invoices paid by each customer

SELECT c.name, (
  SELECT COUNT(*)
  FROM Invoices i
  WHERE i.customer_id = c.customer_id
) AS total_invoices
FROM Customers c;

--12.Retrieve the customer names and the total number of subscriptions for customers who have active faults
SELECT c.name, (
  SELECT COUNT(*)
  FROM Subscriptions s
  WHERE s.customer_id = c.customer_id
) AS total_subscriptions
FROM Customers c
WHERE EXISTS (
  SELECT 1
  FROM Faults f
  WHERE f.customer_id = c.customer_id
    AND f.status = 'reported'
);

--13.Retrieve the customer names who have not made any payments and their total number of subscriptions
SELECT name, (
  SELECT COUNT(*)
  FROM Subscriptions
  WHERE customer_id = Customers.customer_id
) AS total_subscriptions
FROM Customers
WHERE customer_id NOT IN (
  SELECT invoice_id
  FROM Payments
);


--14.Retrieve the names of customers who have made payments greater than the average payment amount
SELECT name
FROM Customers
WHERE customer_id IN (
  SELECT customer_id
  FROM Payments
  WHERE amount > (SELECT AVG(amount) FROM Payments)
);


--15.Retrieve the usernames of users who have subscribed to a specific service
SELECT username
FROM Users
WHERE userid IN (
  SELECT customer_id
  FROM Subscriptions
  WHERE service_id = (SELECT service_id FROM Service WHERE service_name = 'video conferencing')
);

--16.Retrieve the service names and their total number of subscriptions, 
--only including services with more than 1 subscriptions,
--ordered by the number of subscriptions in descending order
SELECT service_name, COUNT(*) AS total_subscriptions
FROM Subscriptions
JOIN Service ON Subscriptions.service_id = Service.service_id
GROUP BY service_name
HAVING COUNT(*) > 1
ORDER BY total_subscriptions DESC;

--17.Retrieve the customer names and their average invoice amount, only including customers with an average invoice amount greater than $200, ordered by the average invoice amount in descending order
SELECT name, AVG(total_amount) AS average_invoice_amount
FROM Customers
JOIN Invoices ON Customers.customer_id = Invoices.customer_id
GROUP BY name
HAVING AVG(total_amount) > 200
ORDER BY average_invoice_amount DESC;

--18.Retrieve the service names and the total number of customers subscribed to each service, ordered by the total number of customers in descending order
SELECT service_name, COUNT(DISTINCT customer_id) AS total_customers
FROM Service
JOIN Subscriptions ON Service.service_id = Subscriptions.service_id
GROUP BY service_name
ORDER BY total_customers DESC;


--19.Retrieve the service names and their average prices, only including services with an average price greater than $50, ordered by the average price in descending orde
SELECT service_name, AVG(price) AS average_price
FROM Service
GROUP BY service_name
HAVING AVG(price) > 50
ORDER BY average_price DESC;


--20.Retrieve the customer names and their corresponding service names for all subscriptions
SELECT Customers.name, Service.service_name
FROM Customers
JOIN Subscriptions ON Customers.customer_id = Subscriptions.customer_id
JOIN Service ON Subscriptions.service_id = Service.service_id;

--21.Retrieve the customer names and their corresponding invoice dates for all invoices
SELECT Customers.name, Invoices.invoice_date
FROM Customers
JOIN Invoices ON Customers.customer_id = Invoices.customer_id;

--22.Retrieve the customer names, their corresponding fault dates, and the status of faults for all faults
SELECT Customers.name, Faults.fault_date, Faults.status
FROM Customers
JOIN Faults ON Customers.customer_id = Faults.customer_id;

--23.Retrieve the customer names and their corresponding repair dates for all repairs
SELECT Customers.name, Repairs.repair_date
FROM Customers
JOIN Faults ON Customers.customer_id = Faults.customer_id
JOIN Repairs ON Faults.fault_id = Repairs.fault_id;


--24.Retrieve the customer names, their corresponding service names, and the total amount of each invoice
SELECT Customers.name, Service.service_name, Invoices.total_amount
FROM Customers
JOIN Subscriptions ON Customers.customer_id = Subscriptions.customer_id
JOIN Service ON Subscriptions.service_id = Service.service_id
JOIN Invoices ON Customers.customer_id = Invoices.customer_id;


--25.Retrieve the customer names and their corresponding payment dates for all customers who have made payments
SELECT Customers.name, Payments.payment_date
FROM Customers
LEFT JOIN Invoices ON Customers.customer_id = Invoices.customer_id
LEFT JOIN Payments ON Invoices.invoice_id = Payments.invoice_id;


--26.Retrieve the customer names  for all customers who have subscriptions and usages
SELECT Customers.name
FROM Customers
LEFT JOIN Subscriptions ON Customers.customer_id = Subscriptions.customer_id
LEFT JOIN Usage ON Customers.customer_id = Usage.customer_id
WHERE Subscriptions.subscription_id IS NOT NULL AND Usage.usage_id IS NOT NULL;

--27.Retrieve the customer names and their corresponding invoice dates for all customers who have invoices and payments:

SELECT Customers.name, Invoices.invoice_date
FROM Customers
LEFT JOIN Invoices ON Customers.customer_id = Invoices.customer_id
LEFT JOIN Payments ON Invoices.invoice_id = Payments.invoice_id
WHERE Invoices.invoice_id IS NOT NULL AND Payments.payment_id IS NOT NULL;


--28.Retrieve the customer name, address, and city for all customers who have an active subscription
SELECT c.name, c.address, c.city
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Subscriptions s
    WHERE s.customer_id = c.customer_id
    AND s.end_date >= GETDATE()
);

--29.Retrieve the customer name, invoice date, and total amount for all invoices that were issued in the current month
SELECT c.name, i.invoice_date, i.total_amount
FROM Customers c
INNER JOIN Invoices i ON c.customer_id = i.customer_id
WHERE MONTH(i.invoice_date) = MONTH(GETDATE())
AND YEAR(i.invoice_date) = YEAR(GETDATE());

--30.Retrieve the customer name, service name, and call duration for all usage records for a specific customer
SELECT c.name, s.service_name, u.call_duration
FROM Customers c
INNER JOIN Usage u ON c.customer_id = u.customer_id
INNER JOIN Service s ON u.service_id = s.service_id
WHERE c.customer_id = 598;

--31.Retrieve the customer name and the count of total faults for each customer
SELECT c.name, COUNT(f.fault_id) AS total_faults
FROM Customers c
LEFT JOIN Faults f ON c.customer_id = f.customer_id
GROUP BY c.name;

--32.Retrieve the service names and the maximum price for services with a price greater than $100:
SELECT service_name, MAX(price) AS max_price
FROM Service
WHERE price > 800 
group by service_name ;



--33.Retrieve the customer names and their corresponding call durations for all customers who have usages and faults
SELECT Customers.name, Usage.call_duration
FROM Customers
LEFT JOIN Usage ON Customers.customer_id = Usage.customer_id
LEFT JOIN Faults ON Customers.customer_id = Faults.customer_id
WHERE Usage.usage_id IS NOT NULL AND Faults.fault_id IS NOT NULL;

--34.Retrieve the customers who have subscriptions for services with a price lesser than the average price
SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Subscriptions
    WHERE service_id IN (
        SELECT service_id
        FROM Service
        WHERE price < (
            SELECT AVG(price)
            FROM Service
        )
    )
);
--35.Retrieve the customers who have faults and their corresponding repair dates
SELECT Customers.name, (
    SELECT repair_date
    FROM Repairs
    WHERE fault_id IN (
        SELECT fault_id
        FROM Faults
        WHERE customer_id = Customers.customer_id
    )
) AS repair_date
FROM Customers
WHERE EXISTS (
    SELECT 1
    FROM Faults
    WHERE customer_id = Customers.customer_id
);
--36.Retrieve the customers who have usages and their corresponding service names

SELECT Customers.name, (
    SELECT service_name
    FROM Service
    WHERE service_id IN (
        SELECT service_id
        FROM Usage
        WHERE customer_id = Customers.customer_id
    )
) AS service_name
FROM Customers
WHERE EXISTS (
    SELECT 1
    FROM Usage
    WHERE customer_id = Customers.customer_id
);

--37.Retrieve the customers who have usages for services with names containing the letter 'a'
SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Usage
    WHERE service_id IN (
        SELECT service_id
        FROM Service
        WHERE service_name LIKE '%a%'
    )
);

--38.Retrieve the customers who have faults and their corresponding fault dates for which the status is 'Resolved'
SELECT Customers.name, (
    SELECT fault_date
    FROM Faults
    WHERE customer_id = Customers.customer_id
        AND status = 'Resolved'
) AS fault_date
FROM Customers
WHERE EXISTS (
    SELECT 1
    FROM Faults
    WHERE customer_id = Customers.customer_id
        AND status = 'Resolved'
);


--39.Retrieve the customers who have subscriptions for services with names starting with 'T'

SELECT *
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Subscriptions
    WHERE service_id IN (
        SELECT service_id
        FROM Service
        WHERE service_name LIKE 'T%'
    )
);

--40.Retrieve the average price of services for each customer
SELECT customer_id, AVG(price) AS average_price
FROM Subscriptions
INNER JOIN Service ON Subscriptions.service_id = Service.service_id
GROUP BY customer_id;

--41.Retrieve the average fault status for each customer

SELECT customer_id, AVG(CASE WHEN status = 'Open' THEN 1 ELSE 0 END) AS average_fault_status
FROM Faults
GROUP BY customer_id;

--42.Retrieve the average number of usages for each customer
SELECT customer_id, AVG(usage_count) AS average_usage_count
FROM (
    SELECT customer_id, COUNT(*) AS usage_count
    FROM Usage
    GROUP BY customer_id, service_id
) AS subquery
GROUP BY customer_id;

--Retrieve the average price of services for each city
SELECT city, AVG(price) AS average_price
FROM Customers
INNER JOIN Subscriptions ON Customers.customer_id = Subscriptions.customer_id
INNER JOIN Service ON Subscriptions.service_id = Service.service_id
GROUP BY city;


--43.Retrieve the customers who have made the highest payment
SELECT  name, MAX(total_payment) AS highest_payment
FROM (
    SELECT i.customer_id, SUM(amount) AS total_payment
    FROM Payments as p,Invoices as i
	where p.invoice_id=i.invoice_id
    GROUP BY customer_id
) AS subquery
INNER JOIN Customers ON subquery.customer_id = Customers.customer_id
GROUP BY  name
HAVING MAX(total_payment) > 1000;

--44.Retrieve the customers who have the highest invoice amount of top 3

SELECT  top 3 name, MAX(total_amount) AS highest_invoice_amount
FROM (
    SELECT customer_id, SUM(total_amount) AS total_amount
    FROM Invoices
    GROUP BY customer_id
) AS subquery
INNER JOIN Customers ON subquery.customer_id = Customers.customer_id
GROUP BY  name;


--45.Retrieve the customers who have made payments using more than one payment method
SELECT customer_id, name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM (
        SELECT i.customer_id, COUNT(DISTINCT payment_method) AS num_payment_methods
        FROM Payments p, Invoices i
		where p.invoice_id=i.invoice_id
        GROUP BY customer_id
    ) AS subquery
    WHERE num_payment_methods >1
);

--46.Retrieve the customers who have made the highest payment using the 'online' payment method

SELECT top 2 i.customer_id, name, MAX(amount) AS highest_payment
FROM Payments p ,Invoices i
INNER JOIN Customers ON i.customer_id = Customers.customer_id
WHERE payment_method = 'online' and p.invoice_id=i.invoice_id
GROUP BY i.customer_id, name
order by highest_payment desc;


--50. retireve nodes names and its location  for a specifeied outage ending date
SELECT  s.node_name,s.location
FRom networkoutages as n, NetworkNodes as s
where n.node_id=s.node_id and n.outage_end_date='2023-05-04'


--47.Retrieve the customers who have subscribed to all available services
--no body is output

SELECT customer_id, name
FROM Customers
WHERE NOT EXISTS (
    SELECT service_id
    FROM Service
    WHERE NOT EXISTS (
        SELECT *
        FROM Subscriptions
        WHERE Customers.customer_id = Subscriptions.customer_id
          AND Service.service_id = Subscriptions.service_id
    )
);

--48.Retrieve the maximum call duration for each customer
SELECT customer_id, MAX(call_duration) AS max_call_duration
FROM Usage
GROUP BY customer_id;

--49.retrieve the user details whose time stam is greater than 10 hrs
select u.userid,u.username,u.role,l.timestamp
from Users u,LogEntries as l
where u.userid=l.userid and l.timestamp>'10:00'
select * from LogEntries


