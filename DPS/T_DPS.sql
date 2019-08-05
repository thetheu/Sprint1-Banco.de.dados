CREATE DATABASE T_DPS

USE T_DPS

CREATE TABLE Departamento
(
	IdDepartamento		INT PRIMARY KEY IDENTITY
	,Nome				VARCHAR(200) NOT NULL UNIQUE 
);

CREATE TABLE Habilidades
(
	IdHab		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE 
);

CREATE TABLE Funcionario
(
	IdFuncionario	INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(200) NOT NULL UNIQUE
	,Email			VARCHAR(200) NOT NULL UNIQUE
	,DataNasc		DATE NOT NULL
	,IdDepartamento		INT FOREIGN KEY REFERENCES Departamento (IdDepartamento)
	,Salário		MONEY		
);

CREATE TABLE HabilidadeFuncionario
(
	IdFuncionario	INT FOREIGN KEY REFERENCES Funcionario(IdFuncionario)
	,IdHab			INT FOREIGN KEY REFERENCES Habilidades(IdHab)
);


INSERT INTO	Departamento (Nome) VALUES ('RH')
									  ,('ADM')
									  ,('Finanças');
SELECT * FROM Departamento

INSERT INTO Habilidades (Nome) VALUES ('Comunicação')
									 ,('Lideranças')
									 ,('Empatia');
SELECT * FROM Habilidades

INSERT INTO Funcionario (Nome, Email, DataNasc, IdDepartamento, Salário) VALUES ('Giih', 'Gihh@g.com', '28-07-2002', '1', '5,000.75')
																				,('Rayy', 'Raay@h.com', '01-04-2003', '2', '15,000.13')
																				,('Tiagadoo', 'Tia@h.com', '27-01-2003', '3', '7,500.50')
SELECT *FROM Funcionario
