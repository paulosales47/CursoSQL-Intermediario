USE AdventureWorks2016
GO

--=================================================
-- FUNCTION
--=================================================
CREATE FUNCTION UDF_CALCULA_IDADE(@ID_FUNCIONARIO INT)
RETURNS INT
AS
BEGIN
	
	RETURN
	(
		SELECT 
			DATEDIFF(YEAR, BirthDate, GETDATE())
		FROM 
			[HumanResources].[Employee]
		WHERE
			BusinessEntityID = @ID_FUNCIONARIO
	)
END

GO

--=================================================
-- TESTES
--=================================================
SELECT dbo.UDF_CALCULA_IDADE(2)

SELECT 
	 dbo.UDF_CALCULA_IDADE(BusinessEntityID) AS IDADE
	,*
FROM
	[HumanResources].[Employee]