Use AdventureWorks2016
GO

--=================================================
-- CURSOR
--=================================================

DECLARE  @PRIMEIRO_NOME VARCHAR(50)
	    ,@NOME_DO_MEIO VARCHAR(50)
		,@ULTIMO_NOME VARCHAR(50)


--DECLARA CURSOR
DECLARE CUR CURSOR 
	FOR SELECT
			 FirstName
			,MiddleName
			,LastName
		FROM
			[Person].[Person]

--ABRINDO CURSOR
OPEN CUR


FETCH NEXT FROM CUR
INTO @PRIMEIRO_NOME
	,@NOME_DO_MEIO
	,@ULTIMO_NOME

WHILE @@FETCH_STATUS = 0
BEGIN
	
	SELECT CONCAT(@PRIMEIRO_NOME, ' ', @NOME_DO_MEIO, ' ', @ULTIMO_NOME)

	FETCH NEXT FROM CUR
	INTO @PRIMEIRO_NOME
		,@NOME_DO_MEIO
		,@ULTIMO_NOME
END

--FECHANDO E DESALOCANDO CURSOR
CLOSE CUR;
DEALLOCATE CUR;




