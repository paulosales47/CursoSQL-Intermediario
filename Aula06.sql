--=================================================
-- Z SCORE - UTILIZANDO OVER()
--=================================================
SELECT
	 Name
	,AVG(StandardCost) OVER() AS MEDIA
	,STDEVP(StandardCost) OVER() AS DESVIO_PADRAO
	,((StandardCost - AVG(StandardCost) OVER()) / STDEVP(StandardCost) OVER()) AS Z_SCORE
FROM
	[Production].[Product]
