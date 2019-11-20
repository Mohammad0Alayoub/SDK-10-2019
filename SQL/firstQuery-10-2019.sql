

create table Student_Info(
S_Id int primary key ,
S_Name nchar(50) ,
S_BirthDate date ,
S_Email nchar(50),
S_Gender nchar(10)
);

create table S_Course(
C_ID int primary key identity,
C_Name nchar(100),
S_C_ID int )

insert into S_Course values('c++',4589),
('C#',4590),
('sql',4591)

drop table Student_Info

insert into Student_Info values('Kenan Bayrakter','06/12/2015','kenan@company.co','male')

insert into Student_Info values('kemal Bayrakter','06/12/2015','kemal@company.co','male') ,
('Ali Khalil','02/05/2005','ali@kkl.co','male'),
('Ahmad k','01/03/2003','Ahmad@df.co','male')

--

--insert into Student_Info (S_Name,S_BirthDate,S_Email,S_Gender) values ()

select * 
from Student_Info