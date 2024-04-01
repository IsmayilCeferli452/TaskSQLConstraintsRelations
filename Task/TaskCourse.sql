
create table Students(
	[Id] int primary key identity(1,1),
	[FullName] nvarchar(100) not null,
	[Age] int check ([Age] >= 18),
	[Address] nvarchar(100) default 'XXX'
)

create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(100) not null,
	[Surname] nvarchar(100) default 'XXX',
	[Age] int check ([Age] between 18 and 70),
	[Email] nvarchar(100) unique default 'XXX'
)

insert into Teachers([Name],[Surname],[Age],[Email])
values('Cavid','Bashirov','30','cavid123gmail.com'),
	  ('Hesen','Hesenov','44','hesen123gmail.com'),
	  ('Ismayil','Ceferli','24','ismayil123gmail.com')

insert into Students([FullName],[Age],[Address])
values('Resad Agayev','21','Neftciler'),
	  ('Behruz Eliyev','37','28 May'),
	  ('Nurlan Umudov','22','Hovsan')

select * from Teachers

select * from Students

select COUNT(*) from Students

select [Name],[Surname] from Teachers where [Age] > 20 

select * from Teachers where [Email] like '%c%'




