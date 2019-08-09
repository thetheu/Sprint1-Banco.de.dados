CREATE DATABASE T_Livros

USE T_Livros

CREATE TABLE G�nero
(
	IdG�nero	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Autor
(
	IdAutor			INT PRIMARY KEY IDENTITY
	,Nome			VARCHAR(200) NOT NULL UNIQUE
	,Email			VARCHAR(200) NOT NULL UNIQUE
	,Ativo			BIT NOT NULL
	,DataNascimento	DATE NOT NULL
);

CREATE TABLE Livros
(
	IdLivros	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (200) NOT NULL UNIQUE
	,IdG�nero	INT FOREIGN KEY REFERENCES G�nero (IdG�nero)
	,IdAutor	INT FOREIGN KEY REFERENCES Autor (IdAutor)
);


INSERT INTO G�nero (Nome) VALUES ('Romance')
								,('Fic��o')
								,('Aventura');

SELECT * FROM G�nero

INSERT INTO Autor (Nome, Email, DataNascimento, Ativo) VALUES ('Gihh Rocha' ,  'GihhRocha@h.com' , '11-03-1992',  'TRUE')
									  ,('SpeedyRay' , 'SpeedyRay@h.com' , '19-12-1029' , 'TRUE');
									  


SELECT * FROM Autor