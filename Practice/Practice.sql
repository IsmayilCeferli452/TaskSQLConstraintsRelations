
use Practice

create database Practice


create table Groups(
	[Id] int,
	[Name] nvarchar(50),
)

create table Students(
	[Id] int,
	[Name] nvarchar(50),
	[Surname] nvarchar(50),
	[Age] int,
)

drop table Groups

alter table Students
add [Address] nvarchar(50)

alter table Students
drop column [Address]

EXEC sp_rename Student,Students

EXEC sp_rename 'Students.Lastname',Surname

select * from Students 

select [Age] as 'Students age' from Students where [Age] < 25

insert into Students([Id],[Name],[Surname],[Age])
values  (1,'Ilqar','Siriyev',26),
		(2,'Resad','Agayev',21),
		(3,'Kamran','Muradov',24),
		(4,'Hacixan','Hacixanov',19),
		(5,'Zeyqem','Ashurov',39)


delete from Students where [Id] = 1

insert into Students([Id],[Name],[Surname],[Age])
values  (1,'Ilqar','Siriyev',26)

insert into Students([Id],[Name],[Surname],[Age])
values  (7,'Behruz','Eliyev',37)


update Students
set[Age] = 25
where[Id] = 5

update Students
set[Age] = 39
where[Id] = 5

select COUNT(*) as 'CountOfStudents' from Students

select SUM([Age]) as 'SumOfStudentAges' from Students

select MAX([Age]) as 'MaxAge' from Students

select MIN([Age]) as 'MinAge' from Students

select * from Students where [Id] = 3

select * from Students where [Id] > 3

select Count(*) from Students where [Age] > 25

select * from Students where [Age] > 25 and [Age] < 35

select * from Students where [Age] between 25 and 35

select * from Students where [Name] like '%r%'

select * from Students where [Name] like 'r%'

select * from Students where [Name] like '%r'

select * from Students where [Age] = (select MIN([Age]) from Students)

DECLARE @MinAge int
Set @MinAge = (select MIN([Age]) from Students)
select * from Students where [Age] = @MinAge

select * from Students
order by [Age]
 
select * from Students
order by [Age] desc

select SUBSTRING([Name],1,1) as Sstring from Students

select SUBSTRING((select [Name] from Students where [Id] = 1),1,1) as Sstring

select LEN([Name]) from Students

select LEN([Name]) from Students where [Id] = 1


create table Employees(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50) default 'XXX',
	[Age] int check ([Age] >= 18),
	[Email] nvarchar(50) unique,
)

insert into Employees([Name],[Surname],[Age],[Email])
values ('Ismayil','Ceferli',24,'ismayil123@gmail.com')

insert into Employees([Name],[Surname],[Age],[Email])
values ('Elvin','Ismayilzde',27,'elvin123@gmail.com')

insert into Employees([Name],[Surname],[Age],[Email])
values ('Amin','Ismayilzde',26,'amin123@gmail.com')

select * from Employees