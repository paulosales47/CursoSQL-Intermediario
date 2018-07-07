--=================================================
-- GROUP BY (VERIFICANDO ITENS DUPLICADOS) 
--=================================================
USE AdventureWorks2016
GO

-- NESTE EXEMPLO É CONSIDERADO DUPLICADO SE A PESSOA POSSUIR O PRIMEIRO E ULTIMO NOME IGUAIS

	SELECT 
		 FirstName
		,LastName
	FROM
		Person.Person
	GROUP BY
		 FirstName
		,LastName
	HAVING
		COUNT(*) >= 2