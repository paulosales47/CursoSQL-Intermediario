USE AdventureWorks2016
GO

--=================================================
-- FUNCTION COM VALOR DE TABELA
--=================================================
CREATE FUNCTION UDF_FUNCAO_TABELA_FUNCIONARIO(@ID_FUNCIONARIO INT)
RETURNS @TB_FUNCIONARIO TABLE
(
	 NOME_COMPLETO VARCHAR(100)
	,CARGO VARCHAR(50)
	,IDADE INT
)
AS
BEGIN
	
	INSERT INTO @TB_FUNCIONARIO
	(
	 	 NOME_COMPLETO
		,CARGO
		,IDADE
	)
	(
		SELECT
			 CONCAT(PESSOA.FirstName,' ',PESSOA.LastName) AS NOME_COMPLETO
			,CARGO.JobTitle AS CARGO
			,DATEDIFF(YEAR, CARGO.BirthDate, GETDATE()) AS IDADE
		FROM
			[HumanResources].[Employee] CARGO
		INNER JOIN
			[Person].[Person] PESSOA
			ON CARGO.BusinessEntityID = PESSOA.BusinessEntityID
		WHERE
			CARGO.BusinessEntityID = @ID_FUNCIONARIO
	)

	RETURN;
	
END

--=================================================
-- TESTES
--=================================================
GO

SELECT * FROM dbo.UDF_FUNCAO_TABELA_FUNCIONARIO(1)
