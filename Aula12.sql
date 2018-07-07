Use AdventureWorks2016
GO

--=================================================
-- LIKE
--=================================================

SELECT
	*
FROM
	[HumanResources].[Employee]
WHERE
	JobTitle LIKE '%Manager%'
	