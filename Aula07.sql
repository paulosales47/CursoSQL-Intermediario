USE AdventureWorks2016
GO

--=================================================
-- RANK()
--=================================================

SELECT
	 Name
	,StandardCost
	,RANK() OVER(ORDER BY StandardCost DESC) AS POSICAO
FROM
	[Production].[Product]


--=================================================
-- TESTES
--=================================================
SELECT
	 Name
	,StandardCost
	,POSICAO
FROM
	 (
		SELECT
			 Name
			,StandardCost
			,RANK() OVER(ORDER BY StandardCost DESC) AS POSICAO
		FROM
			[Production].[Product]
	 ) AS RANKEAMENTO
WHERE
	POSICAO BETWEEN 80 AND 100


--=================================================
-- TESTES - RANKEAMENTO POR DATA
--=================================================
SELECT
	 FirstName
	,ModifiedDate
	,RANK() OVER(ORDER BY ModifiedDate) AS POSICAO
FROM
	[Person].[Person]
