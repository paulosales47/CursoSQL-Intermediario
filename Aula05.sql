USE AdventureWorks2016
GO

--=================================================
-- RESUMO
--=================================================

-- M�DIA ARITIM�TICA: PONTO DE EQUIL�BRIO DE DETERMINADA FREQU�NCIA OU A CONCENTRA��O DE DADOS DE UMA DISTRIBUI��O

-- DESVIO PADR�O: DEMONSTRA A REGULARIDADE REFERENTE A UM CONJUNTO DE DADOS DE MODO A APONTAR O GRAU DE OSCILA��O DESTES EM COMPARA��O COM A M�DIA DOS VALORES DO CONJUNTO

-- Z SCORE: � A MEDIDA DE QUANTOS DESVIOS PADR�O UM VALOR DE AMOSTRA EST� ACIMA OU ABAIXO DA M�DIA ARITM�TICA

--=================================================
-- AVG() M�DIA ARITIM�TICA
--=================================================
SELECT AVG(StandardCost) AS MEDIA FROM [Production].[Product]

--=================================================
-- STDEV() DESVIO PADR�O
--=================================================
SELECT STDEVP(StandardCost) AS DESVIO_PADRAO FROM [Production].[Product]


--=================================================
-- TESTES
--=================================================
CREATE TABLE #TEMP_LISTA_CALCULO(VALOR INT)
INSERT INTO #TEMP_LISTA_CALCULO(VALOR) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10)

SELECT AVG(CAST(VALOR AS FLOAT)) AS MEDIA FROM #TEMP_LISTA_CALCULO --SE A COLUNA FOR DO TIPO INT E N�O FOR CONVERTIDA � RETORNADO SOMENTE A PARTE INTEIRA
SELECT STDEV(VALOR) AS DESVIO_PADRAO FROM #TEMP_LISTA_CALCULO -- AMOSTRA N-1
SELECT STDEVP(VALOR) AS DESVIO_PADRAO FROM #TEMP_LISTA_CALCULO --POPULA��O N

DROP TABLE #TEMP_LISTA_CALCULO

--=================================================
-- Z SCORE
--=================================================

SELECT 
	  Name
	 ,StandardCost
	 ,MEDIA
	 ,DESVIO_PADRAO
	 ,((StandardCost - MEDIA) / DESVIO_PADRAO) AS Z_SCORE
FROM 
	 [Production].[Product]
	,(
		SELECT
			 AVG(StandardCost) AS MEDIA
			,STDEVP(StandardCost) AS DESVIO_PADRAO
		FROM
			[Production].[Product]
	 ) AS CALCULO








