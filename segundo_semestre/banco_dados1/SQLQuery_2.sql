CREATE DATABASE AULA2909

USE AULA2909

-- DROP TABLE FUNCIONARIOS (EXCLUIR E DEPOIS PRECISA RODAR A TABELA NOVAMENTE)

-- CRIAÇÃO DAS TABELAS

CREATE TABLE FUNCIONARIOS (FUNCIONARIOCODIGO INT CONSTRAINT PK_FUNCIONARIO PRIMARY KEY, FUNCIONARIONOME CHAR (20))
ALTER TABLE FUNCIONARIOS ADD DATAADMISSAO DATE 

INSERT FUNCIONARIOS (FUNCIONARIOCODIGO,FUNCIONARIONOME)
VALUES (1234567,'MARCELO')

CREATE TABLE DEPENDENTES (DEPENDENTECODIGO INT, DEPENDENTENOME CHAR(20), FUNCIONARIOCODIGO INT)

INSERT DEPENDENTES (DEPENDENTECODIGO,DEPENDENTENOME,FUNCIONARIOCODIGO)
VALUES (567,'FULANO',1234567)

-- ALTERANDO A TABELA DEPENDENTES                          (CRIANDO A CHAVE ESTRANGEIRA)            REFERENCIANDO - SÓ VAI FUNCIONAR SE "FUNCIONARIO CODIGO FOR ESSCRITO IGUAL"
ALTER TABLE DEPENDENTES ADD CONSTRAINT FK_DEPENDENTE_FUNCIONARIO FOREIGN KEY (FUNCIONARIOCODIGO) REFERENCES FUNCIONARIOS(FUNCIONARIOCODIGO)

ALTER TABLE FUNCIONARIOS ADD CONSTRAINT VALIDAADMISSAO CHECK ([DATAADMISSAO] < GETDATE());

INSERT FUNCIONARIOS (FUNCIONARIOCODIGO,FUNCIONARIONOME,DATAADMISSAO)
VALUES (12345678,'MARCELO','2022-09-30')