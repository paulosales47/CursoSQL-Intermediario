--=================================================
-- CRIANDO TABELA TEMPORARIA
--=================================================
CREATE TABLE #TEMP_TB(
	 NOME VARCHAR(50) NULL
	,IDADE INT
)

--=================================================
-- INSERT
--=================================================
INSERT INTO #TEMP_TB
(
	 NOME
	,IDADE
)
VALUES
(
	'Paulo Henrique Sales Sampaio'
	,22
)

--=================================================
-- CRIAÇÃO COM INTO
--=================================================
USE AdventureWorks2016
GO

	SELECT
		*
		INTO #TEMP_PERSON
	FROM
		Person.PersonPhone

--=================================================
-- REMOVER TABELAS
--=================================================
DROP TABLE #TEMP_PERSON
DROP TABLE #TEMP_TB