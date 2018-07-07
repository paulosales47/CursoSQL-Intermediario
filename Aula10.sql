USE AdventureWorks2016
GO

--=================================================
-- IF...ELSE
--=================================================

DECLARE @VALOR INT = 10

IF(@VALOR = 10)
BEGIN
	PRINT 'VALOR IGUAL A 10'
END

ELSE
BEGIN
	PRINT 'VALOR DIFERENTE DE 10'
END