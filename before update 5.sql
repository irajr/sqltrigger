--before update
select * from employee;

--with error update
Update employee Set Emp_id = 12,
Emp_name = 'XYZ',
Emp_sal='5000'
where Emp_id= 1

--without error update
Update employee Set Emp_name='XYZe',Emp_sal=7000 where Emp_id= 2

--after update
select * from employee