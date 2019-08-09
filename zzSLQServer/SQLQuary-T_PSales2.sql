USE T_PSales

SELECT * FROM Cursos 

SELECT * FROM Disciplinas

	SELECT Cursos.* , Disciplinas.*
	FROM Cursos
	FULL JOIN Disciplinas
	ON Cursos.idCurso = Disciplinas.IdCurso 

