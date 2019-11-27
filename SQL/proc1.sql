
create procedure spInsertPhoneAndBDateAndAddress
@id int,
@Phone nvarchar(100),
@BDate nchar(50),
@address nchar(100)

as
	begin
		update EmployeeInfo
		set Phone = @Phone ,birthdate = @BDate ,address =@address
		where EmpId = @id
end

spInsertPhoneAndBDateAndAddress 4, '0796852454','06/01/1999','birazil'


spGetFullInfoAboutEmployye