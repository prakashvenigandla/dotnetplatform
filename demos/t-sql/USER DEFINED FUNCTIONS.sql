
--1)SCALAR  FUNCTION
--TO GET THE TOTAL SAL OF AN EMPLOYEE
create FUNCTION GET_TOTALSAL(@EMPNO INT)
RETURNS MONEY
AS
BEGIN
DECLARE @SAL MONEY,@COMM MONEY,@TOTALSAL MONEY
SELECT @SAL=SAL,@COMM=Comm FROM emp
WHERE id=@EMPNO
SET @TOTALSAL=@SAL+ISNULL(@COMM,0)
RETURN @TOTALSAL
END

--CALLING A SCALAR FUNCTION
SELECT DBO.GET_TOTALSAL(1001)

--2)INLINE TABLE VALUED FUNCTION
--TO GET THE INFO ALL EMPLOYEES OF A DEPT
CREATE FUNCTION GET_DATA(@DEPTNO INT)
RETURNS TABLE
AS
RETURN
(SELECT *FROM EMP WHERE deptid=@DEPTNO)

--CALLING AN INLINE TABLE VALUED FUNCTION
SELECT * FROM dbo.GET_DATA(30)

--3)MULTI STATEMENT TABLE VALUED FUNCTION
--FUNCTION WHICH GIVES TOTAL SAL AND ANNUAL SAL OF A 
--GIVEN EMPLOYEE
CREATE FUNCTION GET_TOTALSAL_ANNSAL(@EMPNO INT)
RETURNS @MYTABLE TABLE(EMPNO INT,TSAL MONEY,ANNSAL MONEY)
AS
BEGIN
DECLARE @SAL MONEY,@COMM MONEY,@TOTSAL MONEY,@ANNUSAL MONEY
SELECT @SAL=SAL,@COMM=COMM FROM EMP
WHERE id=@EMPNO
SET @TOTSAL=@SAL+ISNULL(@COMM,0)
SET @ANNUSAL=@TOTSAL*12
INSERT INTO @MYTABLE VALUES(@EMPNO,@TOTSAL,@ANNUSAL)
RETURN
END
--CALLING MULTI STATEMENT TABLE VALUED FUNCTION
SELECT *FROM dbo.GET_TOTALSAL_ANNSAL(1005)

--reference
https://docs.microsoft.com/en-us/sql/relational-databases/user-defined-functions/user-defined-functions?view=sql-server-ver15
https://docs.microsoft.com/en-us/sql/relational-databases/user-defined-functions/create-user-defined-functions-database-engine?view=sql-server-ver15
