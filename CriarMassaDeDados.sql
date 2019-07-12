USE master 
GO 

/*

	PROCEDURE PARA CRIAR MASSA DE DADOS ALEATORIOS 
	
*/


DECLARE 
	--@DB  VARCHAR(100) = 'ERP_DB',
	@SQL VARCHAR(MAX) 


-- ===================================================
-- = Pegar todas as tabelas e marcar com pai ou filha 
-- ===================================================

USE ERP_DB 
GO 

SELECT * 
FROM sys.tables TABELA 
INNER JOIN sys.columns COLUNA


