USE AdventureWorks2016
GO

--=================================================
-- CASE
--=================================================

SELECT
	 Name
	,StandardCost
	,CASE
		WHEN StandardCost > 1000 THEN StandardCost * 0.8
		WHEN StandardCost < 500 THEN StandardCost * 1.2
		ELSE StandardCost
	 END AS VALOR_PROMOCAO
FROM
	[Production].[Product]
ORDER
	BY StandardCost