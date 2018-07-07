USE AdventureWorks2016
GO

--=================================================
-- RESUMO
--=================================================

-- MÉDIA ARITIMÉTICA: PONTO DE EQUILÍBRIO DE DETERMINADA FREQUÊNCIA OU A CONCENTRAÇÃO DE DADOS DE UMA DISTRIBUIÇÃO

-- DESVIO PADRÃO: DEMONSTRA A REGULARIDADE REFERENTE A UM CONJUNTO DE DADOS DE MODO A APONTAR O GRAU DE OSCILAÇÃO DESTES EM COMPARAÇÃO COM A MÉDIA DOS VALORES DO CONJUNTO

-- Z SCORE: É A MEDIDA DE QUANTOS DESVIOS PADRÃO UM VALOR DE AMOSTRA ESTÁ ACIMA OU ABAIXO DA MÉDIA ARITMÉTICA

--=================================================
-- AVG() MÉDIA ARITIMÉTICA
--=================================================
SELECT AVG(StandardCost) AS MEDIA FROM [Production].[Product]

--=================================================
-- STDEV() DESVIO PADRÃO
--=================================================
SELECT STDEVP(StandardCost) AS DESVIO_PADRAO FROM [Production].[Product]


--=================================================
-- TESTES
--=================================================
CREATE TABLE #TEMP_LISTA_CALCULO(VALOR INT)
INSERT INTO #TEMP_LISTA_CALCULO(VALOR) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10)

SELECT AVG(CAST(VALOR AS FLOAT)) AS MEDIA FROM #TEMP_LISTA_CALCULO --SE A COLUNA FOR DO TIPO INT E NÃO FOR CONVERTIDA É RETORNADO SOMENTE A PARTE INTEIRA
SELECT STDEV(VALOR) AS DESVIO_PADRAO FROM #TEMP_LISTA_CALCULO -- AMOSTRA N-1
SELECT STDEVP(VALOR) AS DESVIO_PADRAO FROM #TEMP_LISTA_CALCULO --POPULAÇÃO N

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








