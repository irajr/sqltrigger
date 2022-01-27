--insted of update
CREATE TRIGGER trgUpdateEmployee
on employee
INSTEAD OF UPDATE
as 
Begin
DECLARE @emp_Id int; 
DECLARE @empName varchar(100);
DECLARE @empSal int;

--logical table
select @emp_Id=Emp_id  ,@empName=Emp_name,@empSal=Emp_sal from inserted;

	IF Update(Emp_id)
	BEGIN
		Raiserror('emp_id cant changes statement terminated ok.',16,1);
	END
	ELSE
	BEGIN
		Update employee
		set Emp_name = @empName,
		@empSal=@empSal
		where emp_Id= @emp_Id
	END
End