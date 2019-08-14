USE T_OpFlix

SELECT Usuario.Nome, TipoUsuario.Tipo
FROM Usuario
JOIN TipoUsuario
ON Usuario.IdTipo = TipoUsuario.IdTipo;

SELECT FilmeSeries.Titulo, Categoria.Nome
FROM FilmeSeries
JOIN Categoria
on Categoria.IdCategoria = FilmeSeries.IdCategoria

SELECT FilmeSeries.Titulo, Classificacao.Classificacao
FROM FilmeSeries
JOIN Classificacao
on Classificacao.IdClassificacao = FilmeSeries.IdClassificacao

SELECT FilmeSeries.Titulo, Identificacao.Nome
FROM FilmeSeries
JOIN Identificacao
ON Identificacao.IdIdentificacao = FilmeSeries.IdIdentificacao


DROP PROCEDURE ChamadaData;

CREATE PROCEDURE ChamadaData
AS
SELECT Titulo, DataLancamento FROM FilmeSeries
GO;

EXEC ChamadaData;


--Desafios

--- Sele��o - trazer todas as categorias, inclusive as que n�o possuem lan�amentos vinculados;
SELECT * FROM Categoria 
SELECT * FROM FilmeSeries

DELETE FilmeSeries
WHERE IdFS = '17'

SELECT FilmeSeries.Titulo, Categoria.Nome
FROM FilmeSeries
RIGHT JOIN Categoria
ON FilmeSeries.IdCategoria = Categoria.IdCategoria

--- Criar um procedimento para listar os filmes dado uma categoria em String do usu�rio; (Listar os filmes da categoria A��o)
SELECT * FROM Categoria

DROP PROCEDURE ListarFilmes;

CREATE PROCEDURE ListarFilmes
AS
SELECT FilmeSeries.Titulo, Categoria.Nome
FROM FilmeSeries
JOIN Categoria
ON FilmeSeries.IdCategoria = Categoria.IdCategoria
AND Categoria.Nome = 'A��o'
GO

EXEC ListarFilmes

--- Criar um procedimento para listar a quantidades de filmes, dada uma categoria por Id; (Listar os filmes da categoria 1 ou o id correspondente da sua tabela).

