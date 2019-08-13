USE T_OpFlix

-- join entre usuario e tipo usuario
SELECT Usuario.Nome, TipoUsuario.*
FROM Usuario
JOIN TipoUsuario
ON Usuario.IdTipo = TipoUsuario.IdTipo;

SELECT FilmeSeries.Titulo, Categoria.*
FROM FilmeSeries
JOIN Categoria
on Categoria.IdCategoria = FilmeSeries.IdCategoria

SELECT FilmeSeries.Titulo, Classificacao.*
FROM FilmeSeries
JOIN Classificacao
on Classificacao.IdClassificacao = FilmeSeries.IdClassificacao

SELECT FilmeSeries.Titulo, Identificacao.*
FROM FilmeSeries
JOIN Identificacao
on Identificacao.IdIdentificacao = FilmeSeries.IdCategoria


