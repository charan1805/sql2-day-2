create database Phase2Db
use Phase2Db
--unique: not duplicate,you can write null in unique column but once
--we can write multiple unique per table
create table Emps
(Id int primary key,
Fname nvarchar(50) not null,
lname nvarchar(50)not null,
mobile varchar(10) unique,
email nvarchar(100) unique,
)
insert into Emps values (1,'Sam', 'dicosta', '999999999', 'sam@yahoo.com')
insert into Emps(Id,Fname,lname,email,mobile) values (2,'charan', 'raj', 'cherry@yahoo.com', '96i968i63')
insert into Emps(Id,Fname,lname,email,mobile) values (3, 'kiran', 'raj', 'kiran@yahoo.com' , '999889898')

select * from Emps
 
 drop table Emps
 --check

 create table Emps
(Id int primary key,
Fname nvarchar(50) not null,
lname nvarchar(50)not null,
Salary float check (Salary>=10000 or Salary<=900000)
)
insert into Emps values (1,'Sam', 'dicosta', 40000)
insert into Emps values (2,'charan', 'raj', 60000)
insert into Emps values (3,'ammu', 'raj',34000)
-- The Insert statement conflicted with the CHECK constraint "CK__Emps__Salary__31EC6D26.
-- tHE CONFLICT IN  database "Phase2Db", table "dbo.Emps", column 'Salary'.

 create table Employees
(Id int primary key,
Fname nvarchar(50) not null,
lname nvarchar(50)not null,
Mobile varchar(10) not null unique check (Mobile like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)
insert into Employees values (1,'charan', 'raj', '999999999')
insert into Employees values (2,'Sam', 'dicosta', '999999979')
-- The INSERT statement conflicted with the CHECK constraint "CK___Employee__Mobbile__
-- The conflict occured in database "Phase2db",table "dbo.Employee,
drop table Employed

create table Employed
(Id int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Mobile varchar(10)not null unique check(Mobile like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
City nvarchar(50)default 'Delhi'
)
insert into Employed(ID,Fname,Lname,Mobile) values(1,'charan','raj','8907645789')
insert into Employed(ID,Fname,Lname,Mobile,City) values(2,'Sindhu','sunki','6788543289','Noida')
select*from Employed

--identity
--identity (seed , increment)
--default seed =1, increment =1
create table Customer
(CId int identity,
CName nvarchar(50) not null,
CCity nvarchar(50) not null)
insert into Customer values ('Raj','Delhi')
insert into Customer values ('sree','andra')
insert into Customer values ('charan','chennai')
select * from Customer
--primary key,not null
create database Phase2Db
use Phase2Db
--unique: not duplicate,you can write null in unique column but once
--we can write multiple unique per table
create table Emps
(Id int primary key,
Fname nvarchar(50) not null,
lname nvarchar(50)not null,
mobile varchar(10)not null unique,
email nvarchar(100) not null unique
)
insert into Emps values(1,'kalpana','bolli','7896255243','kalpana@gmail.com')
insert into Emps (Id,Fname,lname,email,mobile)values(2,'Sindhu','Sunki','Mirror@gmail.com','6765432980')
insert into Emps (Id,Fname,lname,email,mobile)values(3,'Charan','Eluru','brother@gmail.com','9865544670')
select *from Emps
-----------------------------------------------------------------------------------------------------------------
---check
drop table Emps

create table Emps
(Id int primary key,
Fname nvarchar(50) not null,
lname nvarchar(50)not null,
Salary float check(Salary>=10000)
)
insert into Emps values(1,'kalpana','bolli',40000)
insert into Emps values(2,'Sindhu','Sunki',80000)
insert into Emps values(3,'charan','Eluru',89000)
--The INSERT statement conflicated with the CHECK constraint "CK_Emps_Salary_31DE2D6".
--The conflict occured in database "Phase2Db",table "dbo.Emps",column'Salary'.

--pattern check using check

create table Employee
(Id int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Mobile varchar(10) not null unique check(Mobile like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)
insert into Employee values(1,'kalpana','bolli','7896255243')
insert into Employee values(2,'Sindhu','Sunki','2546788191')
select *from Employee
--The INSERT statement conflicated with the CHECK constraint "CK_Employee_Mobile_15BCFA0A"
--The conflict occured in database "Phase2Db",table "dbo.Employee",column'Mobile'.

drop table Employee
create table Employee
(Id int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Mobile varchar(10)not null unique check(Mobile like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
City nvarchar(50)default 'Delhi'
)
insert into Employee(ID,Fname,Lname,Mobile) values(1,'kalpana','bolli','8907645789')
insert into Employee(ID,Fname,Lname,Mobile,City) values(2,'Sindhu','sunki','6788543289','Noida')
select*from Employee
--identity
--identity(Seed,increment)
--default Seed=1,increment=1
create table Customer
(CId int identity,
CName nvarchar(50)not null,
CCity nvarchar(50)not null)
insert into Customer values('kalpana','Delhi')
insert into Customer values('Sindhu','Hyderabad')
insert into Customer values('Charan','Noida')
select *from Customer
--------------------------------------------------------

create table Customer
(CId int identity(5,2),
CName nvarchar(50)not null,
CCity nvarchar(50)not null)
insert into Customer values('kalpana','Delhi')
insert into Customer values('Sindhu','Hyderabad')
insert into Customer values('Charan','Noida')
select *from Customer
-------------------------------------------------------------------------create table Customer
drop table Customer
create table Customer
(CId int identity(1000,1),
CName nvarchar(50)not null,
CCity nvarchar(50)not null)
insert into Customer values('kalpana','Delhi')
insert into Customer values('Sindhu','Hyderabad')
insert into Customer values('Charan','Noida')
--------------------------------------------
--reference
-----------------------------------------------
create table Student
(SId int primary key,
Sname nvarchar(50) not null,
SAge int)
insert into Student values(1,'kalpana',12)
insert into Student values(2,'sindhu',13)
insert into Student values(3,'charan',14)
select *from Student

create table Category
(CID int primary key,
CName nvarchar(50) unique ,
insert into Category values (1,'Clothing')
insert into Category values (2,'Electronics')
insert into Category values (3,'grooming')

create table product
(PId int primary key identity,
Pname nvarchar(50) not null,
Category int foreign key references Category)
insert into product values ('T-shirt',1)
insert into product values ('shirt',1)
insert into product values ('hoodies',1)
insert into product values ('face wash',1)

insert into product values ('Bag',5)
-- the insert statement conflicted with the foreign key constraint "FK__product
-- the conflicgts occured in data base "Phase2DB", table "dbo.Category, column
select * from Category
select * from product

select * from product,Category where Category.CId=Product.Category
select product.PId,product.Pname,Category.CID,Category,CName from product ,Category where Category.Cid=product.Category
select p.PId,p.Pname,c.CId,c.CName from product as p,Category as c where c.CId=p.Category





