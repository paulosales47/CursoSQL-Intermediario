USE AdventureWorks2016
GO

--=================================================
-- VARI�VEIS
--=================================================
DECLARE @PRECO DECIMAL(7,2)

SET @PRECO = 
(
	SELECT TOP 1
		StandardCost
	FROM
		[Production].[Product]
)
