CREATE DATABASE myfirstdb
GO

ALTER proc ForCreateTable
AS
BEGIN
	create table employee
	(
	  Emp_id int IDENTITY(1,1) PRIMARY KEY,
	  Emp_name varchar(50),
	  Emp_sal varchar(MAX),
	  dept_id int
	)
	CREATE TABLE depts
	(
		dept_id int IDENTITY(1,1) PRIMARY KEY,
		dept_name varchar(50)
	)
	CREATE TABLE hr_employee
	(
	  Emp_id int IDENTITY(1,1) PRIMARY KEY,
	  Emp_name varchar(50),
	  Emp_sal varchar(MAX),
	  dept_id int
	)
	CREATE TABLE act_employee
	(
	  Emp_id int IDENTITY(1,1) PRIMARY KEY,
	  Emp_name varchar(50),
	  Emp_sal varchar(MAX),
	  dept_id int
	)
END
GO


insert into depts values ('HR'),('Account'),('IT'),('Sales'),('Admin')

ALTER proc ForShowTable
AS 
BEGIN
	SELECT * from depts
	SELECT * from employee
	SELECT * from hr_employee
	SELECT * from act_employee
END

ForCreateTable
ForShowTable



