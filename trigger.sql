--INSTED OF INSERT Trigger
CREATE trigger trgAddEmplyee
on employee
INSTEAD OF INSERT
as BEGIN
--two local variable
Declare @dept_Id int;
Declare @emp_Id int;

--logical table(take dept id and assign it to a local variable)
select @dept_Id= dept_id from inserted;

--now this(above) dept if we will check with department table
IF NOT EXISTS(Select dept_id from depts where dept_Id = @dept_Id)
BEGIN
Raiserror('Invalid  department id. satement Terminataned Ok' , 16,1); 
return
END

	Insert into employee(Emp_id,Emp_name,Emp_sal,dept_id )
		select Emp_id,Emp_name,Emp_sal,dept_id  from inserted
		Set @emp_Id = SCOPE_IDENTITY();

IF @dept_Id = 1
BEGIN
	insert into hr_employee(Emp_id,Emp_name,Emp_sal,dept_id)
	select @emp_Id,Emp_name,Emp_sal,dept_id from inserted
END

IF @dept_Id = 2
BEGIN
	insert into act_employee(Emp_id,Emp_name,Emp_sal,dept_id)
	select @emp_Id,Emp_name,Emp_sal,dept_id from inserted
END


END