USE DB
--Hello World Stored Procedure
create proc HelloWorld
as
begin
print 'Hello Welcome'
end

--executing stored procedure
begin
execute HelloWorld
end


--addition of two numbers
go
create procedure addition(@i int,@j int)
as
begin
declare @sum as int
set @sum=@i+@j
print 'sum of two numbers is :'+convert(varchar(10),@sum)
end
--calling a procedure
go
exec addition 10,20

--finding the greatest of given two numbers
go
create proc greatest(@a as int,@b as int)
as
begin
if(@a>@b)
print 'a is greater'
else
print 'b is greater'
end
--executing greatest
go
exec greatest 10,20

--returning a value from the procedure
go
create procedure returnsum(@i int,@j int,@sum int output)
as
begin
set @sum=@i+@j
end

--calling
go
declare @sum as int
exec returnsum 10,20,@sum output
print 'the sum of two numbers is : '+convert(varchar(5),@sum)

select *from sysobjects where type='U'

--Exception Handling
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  
GO  

create procedure division(@i int,@j int)
as
begin
if @j=0
begin
RAISERROR('Can not divide by zero',10, 1)
    RETURN
  END
  else
  begin
print @i/@j
end
end

exec division 10,0