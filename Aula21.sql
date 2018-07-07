USE AdventureWorks2016
GO

--=================================================
-- FORÇANDO A UTILIZAÇÃO DE UM DETERMINADO INDICE
--=================================================

SET STATISTICS TIME ON;

	SELECT
		 [FirstName]
		,[MiddleName]
		,[LastName]
	FROM 
		[AdventureWorks2016].[Person].[Person] WITH( INDEX(PK_Person_BusinessEntityID))