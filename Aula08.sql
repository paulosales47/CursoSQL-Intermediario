USE AdventureWorks2016
GO

--=================================================
-- VARIÁVEIS
--=================================================
DECLARE @PRECO DECIMAL(7,2)

SET @PRECO = 
(
	SELECT TOP 1
		StandardCost
	FROM
		[Production].[Product]
)
