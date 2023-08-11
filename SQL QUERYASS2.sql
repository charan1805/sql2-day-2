create database ExerciseDb
use ExerciseDb

create table publisher
(PId int primary key,
Publisher  varchar(155) not null unique
);
insert into publisher values  (1,'charan'),(2,'ammu')
select * from publisher
create table catogery
(CID int primary key,
catogery varchar(50) not null unique
);
insert into catogery (CID,catogery) values (1,'thriller'),(2,'drama'),(3,'comedy')
select * from catogery

create table author
(AID int primary key,
author varchar(150) unique not null
);
insert into author (AID,author) values (001,'shecksphere'),(002,'tolstoy'),(003,'rabindranadh tagore')
select * from author

create table book
(BID int primary key,
Bname nvarchar (200) not null,
Bprice float,
author int foreign key references author,
publisher int foreign key references publisher(PID),
catogery int foreign key references catogery(CID))
insert into Book values(1,'baghavath geeta',899.60,1,1,003),
(2,'nine tail',798.80,1,2,001),
(3,'one piece',999.70,2,1,001),
(4,'narnia',678.09,2,2,002),
(5,'Harry Potter',324.5,3,1,002)
select * from book





