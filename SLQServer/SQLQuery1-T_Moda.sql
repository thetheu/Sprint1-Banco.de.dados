CREATE DATABASE T_Moda

USE T_Moda

CREATE TABLE Marcas
(
	IdMarca		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE 
);

CREATE TABLE Tamanho 
(
	IdTamanho	INT PRIMARY KEY IDENTITY
	,Tamanho	VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Cores
(
	IdCores		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Camisetas 
(
	IdCamisetas		INT PRIMARY KEY IDENTITY
	,IdMarca		INT FOREIGN KEY REFERENCES Marcas (IdMarca)
	,IdCores		INT FOREIGN KEY REFERENCES Cores (IdCores)
	,IdTamanho		INT FOREIGN KEY REFERENCES Tamanho (IdTamanho)
);


SELECT * FROM Cores
INSERT INTO Cores (Nome) VALUES ('Azul')
								,('Preto')
								,('Cinza');



SELECT * FROM Tamanho
INSERT INTO Tamanho (Tamanho) VALUES ('P')
								,('M')
								,('G')
								,('GG');


SELECT * FROM Marcas
INSERT INTO Marcas (Nome) VALUES ('Hering')
								,('Gucci')
								,('Prada');


SELECT * FROM Camisetas
INSERT INTO Camisetas (IdMarca , IdCores , IdTamanho) VALUES ('1' , '2' , '1')
															,('2' , '1' , '2')
															,('3' , '3' , '3')
															,('1' , '3' , '4');


UPDATE Camisetas
SET IdMarca = 3
WHERE IdMarca = 1;

DELETE FROM Camisetas WHERE IdCamisetas = 4;


SELECT Camisetas.*, Marcas.Nome
	FROM Camisetas
	JOIN Marcas
	ON Camisetas.IdMarca = Marcas.IdMarca

SELECT Camisetas.*, Cores.Nome
	FROM Camisetas
	JOIN Cores
	ON Camisetas.IdCores = Cores.IdCores

SELECT Camisetas.*, Tamanho.Tamanho
	FROM Camisetas
	JOIN Tamanho
	ON Camisetas.IdTamanho = Tamanho.IdTamanho

 

