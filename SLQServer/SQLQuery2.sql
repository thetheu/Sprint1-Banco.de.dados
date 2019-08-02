USE T_SStop

SELECT *
FROM Estilos

SELECT * FROM Estilos
WHERE IdEstilo = 1

SELECT * FROM Estilos
WHERE Nome = 'Pop'

SELECT * FROM Estilos
WHERE Nome = 'Po'

SELECT * FROM Estilos
WHERE Nome LIKE 'Po%'

SELECT * FROM Estilos
WHERE Nome LIKE '%op'

SELECT * FROM Estilos
WHERE Nome LIKE '%o%'

SELECT Artistas.* , Estilos.*
	FROM Artistas
	LEFT JOIN Estilos
	ON Artistas.IdEstilo = Estilos.IdEstilo

INSERT INTO Artistas (Nome) VALUES ('Helena');

SELECT Artistas.* , Estilos.*
	FROM Artistas
	RIGHT JOIN Estilos
	ON Artistas.IdEstilo = Estilos.IdEstilo

INSERT INTO Estilos (Nome) VALUES ('Funk');

SELECT Artistas.* , Estilos.*
	FROM Artistas
	FULL JOIN Estilos
	ON Artistas.IdEstilo = Estilos.IdEstilo

