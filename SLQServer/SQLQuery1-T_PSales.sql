--criar um banco de dados
CREATE DATABASE T_PSales;

--colocar o banco de dados para funcionar
USE T_PSales

-- DDL -- data definition language

--criar tabela de cursos
CREATE TABLE Cursos
(
	--tipo de dados, pk, fk
	IdCurso		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE
);

--criar tabela de disciplinas
CREATE TABLE Disciplinas
(
	IdDisclina	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(250) NOT NULL
	,IdCurso	INT FOREIGN KEY REFERENCES Cursos (IdCurso)	
);

--Criar tabela de Alunos
CREATE TABLE Alunos
(
	IdAluno		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE
);

--Criar a tabela intermediaria de alunos e cursos(vincular)
CREATE TABLE CusosAlunos
(
	IdCurso		INT FOREIGN KEY REFERENCES Cursos (IdCurso)
	,IdAluno	INT FOREIGN KEY REFERENCES Alunos (IdAluno)
);


-- Inserir Registros
-- inserir em algum local alguma coisa
-- insert into nome_tabela (colunas) values (valores)
INSERT INTO Cursos (Nome) VALUES ('Técnico em Dev. Sistemas');


--Considerar as colunas em ordem
INSERT INTO Cursos VALUES ('Redes');


SELECT IdCurso, Nome
	FROM Cursos;

SELECT *
	FROM Cursos
	WHERE IdCurso = 1;

--atuaçizacao
--Técnico de desenvolvimento de Sistemas
--UpDate tabela set qual_coluna = novo_valor condicao
UPDATE Cursos
	SET Nome = 'Técnico de Desenvolvimento de Sistemas'
	WHERE IdCurso = 1;
 
 INSERT INTO Disciplinas (Nome, IdCurso)
	VALUES				 ('HTML',	1  );

SELECT *
	FROM Disciplinas;

SELECT * FROM Cursos
WHERE IdCurso = 4;

--CRUD (create, read, update, delete)
--	   insert, select, update, delete



