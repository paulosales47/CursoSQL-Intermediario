-- DATA E HORA
SELECT GETDATE()

-- SOMENTE HORA
SELECT CAST(GETDATE() AS DATE)

--=================================================
-- DATEDIFF()
--=================================================
-- DIFERENÇA ENTRE DATAS (EM DIAS)
SELECT DATEDIFF(DAY, '1996-06-20', GETDATE())

-- DIFERENÇA ENTRE DATAS (EM MESES)
SELECT DATEDIFF(MONTH, '1996-06-20', GETDATE())

-- DIFERENÇA ENTRE DATAS (EM ANOS)
SELECT DATEDIFF(YEAR, '1996-06-20', GETDATE())

--=================================================
-- DATEADD()
--=================================================
--SOMAR OU SUBTRAIR DATAS (SOMA DIA)
SELECT DATEADD(DAY, 1, GETDATE())

--SOMAR OU SUBTRAIR DATAS (SUBTRAIR DIA)
SELECT DATEADD(DAY, -1, GETDATE())

--SOMAR OU SUBTRAIR DATAS (SOMAR ANO)
SELECT DATEADD(YEAR, 1, GETDATE())

-- SELECIONAR PARTE DA DATA (NUMERO DA SEMANA)
SELECT DATEPART(WEEK, '1996-06-20')

--=================================================
-- DATEPART()
--=================================================
-- SELECIONAR PARTE DA DATA (DIA DA SEMANA)
SELECT DATEPART(WEEKDAY, '1996-06-20')

-- SELECIONAR PARTE DA DATA (DIA DO ANO)
SELECT DATEPART(DAYOFYEAR, '1996-06-20')

-- SELECIONAR PARTE DA DATA (DIA DO ANO)
SELECT DATEPART(DAYOFYEAR, '1996-06-20')

--=================================================
-- BETWEEN()
--=================================================
USE AdventureWorks2016
GO

-- SELECIONAR PERIODOS (2012 E 2013)
SELECT * FROM Person.Person WHERE ModifiedDate BETWEEN CAST('2012-01-01' AS DATE) AND CAST('2013-12-31' AS DATE)

-- MESMO RESULTADO UTILIZANDO DATEPART E IN
SELECT * FROM Person.Person WHERE DATEPART(YEAR, ModifiedDate) IN (2012,2013)


--=================================================
-- FORMAT()
--=================================================
SELECT FORMAT(CAST(GETDATE() AS DATE), 'dd/MM/yyyy')

SELECT FORMAT(CAST(GETDATE() AS DATE), 'dd-MM-yyyy')

--FIXAR PARTES DA DATA
SELECT FORMAT(CAST(GETDATE() AS DATE), 'dd-MM-2000')