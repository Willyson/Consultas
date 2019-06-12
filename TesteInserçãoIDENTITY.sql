CREATE TABLE TABELA_TESTE 
(
	ID     INT IDENTITY(1, 1),
	DESCRI VARCHAR(20)
)
GO 

--DROP TABLE TABELA_TESTE
--GO


INSERT INTO TABELA_TESTE (DESCRI)	
	VALUES ('TESTE1'), ('TESTE2'), ('TESTE3'), ('TESTE4')
GO 1000


SELECT * FROM TABELA_TESTE

BEGIN TRAN 
ROLLBACK

--BEGIN

SET IDENTITY_INSERT TABELA_TESTE ON
INSERT INTO TABELA_TESTE (ID, DESCRI) VALUES (-1, 'NAO INFORMADO')
INSERT INTO TABELA_TESTE (ID, DESCRI) VALUES (-2, 'NAO CADASTRADO')
INSERT INTO TABELA_TESTE (ID, DESCRI) VALUES (-3, 'NAO SE APLICA')
--END
SET IDENTITY_INSERT TABELA_TESTE OFF

INSERT INTO TABELA_TESTE (DESCRI) 
VALUES ('TESTE1'), ('TESTE2'), ('TESTE3'), ('TESTE4')

