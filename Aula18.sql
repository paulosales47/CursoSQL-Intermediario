USE AdventureWorks2016
GO

--=================================================
-- INTRODU��O A INDICES
--=================================================

SET STATISTICS TIME ON

SELECT * INTO #TEMP_DADOS FROM [HumanResources].[Employee]

SELECT * FROM #TEMP_DADOS 

DROP TABLE #TEMP_DADOS