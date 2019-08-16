USE T_OpFlix

SELECT * FROM Categoria 
INSERT INTO Categoria (Nome) VALUES ('A��o') 
								   ,('Horror')
								   ,('Investiga��o')
								   ,('Anima��o');

DELETE FROM Categoria
WHERE IdCategoria = 8

SELECT * FROM TipoUsuario
INSERT INTO TipoUsuario (Tipo) VALUES ('ADMINISTRA��O')
									 ,('CLIENTE');


SELECT * FROM Identificacao
INSERT INTO Identificacao(Nome) VALUES ('Filme')
									  ,('S�rie');


SELECT * FROM Classificacao
INSERT INTO Classificacao (Classificacao) VALUES ('L'), ('10'), ('12'), ('14'), ('16'), ('+18');


SELECT * FROM usuario
INSERT INTO Usuario (Nome, Email, Senha, IdTipo) VALUES ('Erik', 'erik@email.com', '123456', 1)
														,('Cassiana', 'cassiana@email.com', '123456', 1)
														,('Helena', 'helena@email.com', '123456', 2)
														,('Roberto', 'rob@email.com', '3110', 2);
delete Usuario
where IdUsuario = '12'


SELECT * FROM FilmeSeries
INSERT INTO FilmeSeries (Titulo, Sinopse, TempoDuracao, DataLancamento, Veiculo, IdCategoria, IdClassificacao, IdIdentificacao)
	VALUES ('O Rei Le�o', 'O Rei Le�o, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno le�o que idolatra seu pai, o rei Mufasa, � fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irm�o de Mufasa e ex-herdeiro do trono, tem seus pr�prios planos. A batalha pela Pedra do Reino � repleta de trai��o, eventos tr�gicos e drama, o que acaba resultando no ex�lio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba ter� que crescer e voltar para recuperar o que � seu por direito', '118', '18/07/2019', 'Cinema', '1', '1','1')
	,('La Casa De Papel 3 temp', 'Oito habilidosos ladr�es se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da hist�ria e levar com eles mais de 2 bilh�es de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como ref�m, al�m dos agentes da for�a de elite da pol�cia, que far�o de tudo para que a investida dos criminosos fracasse.',	'650', '19/07/2019', 'NetFlix',	'2', '5', '2')
	,('Deuses Americanos', 'Shadow Moon � um ex-vigarista que serve como seguran�a e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que �, na verdade, um dos velhos deuses, e est� na Terra em uma miss�o: reunir for�as para lutar contra as novas entidades.', '620', '30/04/2017', 'Prime Video',	'3', '6', '2')
	,('Toy Story 4', 'Woody sempre teve certeza sobre o seu lugar no mundo e que sua prioridade � cuidar de sua crian�a, seja Andy ou Bonnie. Mas quando Bonnie adiciona um relutante novo brinquedo chamado Garfinho ao seu quarto, uma aventura na estrada ao lado de velhos e novos amigos mostrar� a Woody qu�o grande o mundo pode ser para um brinquedo.', '100',	'20/06/2019', 'Cinema',	'4', '1', '1')

DELETE FilmeSeries  
WHERE IdFS = 1


--Desafios--


--- Incluir uma imagem para cada usu�rio cadastrado;
ALTER TABLE Usuario ADD Foto IMAGE;
SELECT * FROM Usuario
INSERT INTO Usuario (Nome, Email, Senha, IdTipo, Foto) VALUES ('Erik', 'erik@email.com', '123456', 1, 'Foto_1.jpeg')
														,('Cassiana', 'cassiana@email.com', '123456', 1, 'Foto_2.jpeg')
														,('Helena', 'helena@email.com', '123456', 2, 'Foto_3.jpeg')
														,('Roberto', 'rob@email.com', '3110', 2, 'Foto_4.jpeg');


-- Atualizar o usu�rio Helena para administrador;
SELECT * FROM Usuario

UPDATE Usuario
SET IdTipo = 1
WHERE IdUsuario = 17

--- Alterar La Casa De Papel 3 temp para La Casa De Papel - 3� Temporada;
SELECT * FROM FilmeSeries

UPDATE FilmeSeries
SET Titulo = 'La Casa De Papel - 3� Temporada'
WHERE Titulo = 'La Casa De Papel 3 temp'

--- Atualizar data de lan�amento do filme O Rei Le�o para a data de lan�amento da anima��o original, 08/07/1994, e alterar veiculo para VHS;
SELECT * FROM FilmeSeries

UPDATE FilmeSeries
SET DataLancamento = '08/07/1994'
WHERE Titulo = 'O Rei Le�o'

UPDATE FilmeSeries
SET Veiculo = 'VHS'
WHERE TITULO = 'O Rei Le�o'

--- Inserir 3 filmes que est�o atualmente no cinema;
SELECT * FROM FilmeSeries

INSERT INTO FilmeSeries (Titulo, Sinopse, TempoDuracao, DataLancamento, Veiculo, IdCategoria, IdClassificacao, IdIdentificacao)
	VALUES ('Annabelle 3: De Volta Para Casa', 'Os investigadores paranormais Ed e Lorraine Warren mant�m a boneca Annabelle trancada em uma sala de artefatos em sua casa. No entanto, em uma noite terr�vel, Annabelle desperta outros esp�ritos malignos e amea�a a jovem filha do casal e suas amigas.', '106', '26/06/2019', 'Cinema', '2', '4', '1')
		  ,('Homem-Aranha: Longe de Casa', 'Peter Parker est� em uma viagem de duas semanas pela Europa, ao lado de seus amigos de col�gio, quando � surpreendido pela visita de Nick Fury. Convocado para mais uma miss�o her�ica, ele precisa enfrentar v�rios vil�es que surgem em cidades-s�mbolo do continente, como Londres, Paris e Veneza, e tamb�m a apari��o do enigm�tico Mysterio.', '130', '04/07/2019', 'Cinema', '10', '2', '1')
		  ,('Turma Da Monica - La�os', 'Floquinho, o cachorro do Cebolinha, desapereceu. Ele desenvolve um plano infal�vel para resgatar o c�ozinho, mas para isso vai precisar da ajuda de seus fieis amigos: M�nica, Magali e Casc�o. Juntos, eles ir�o enfrentar desafios e viver grandes aventuras para levar Floquinho de volta para casa.', '96', '07/06/2019', 'Cinema', '4', '1', '1')




--- Inserir as categorias: Terror, A��o, Com�dia, Document�rio, Drama e Fic��o Cient�fica.
SELECT * FROM Categoria

INSERT INTO Categoria (Nome) VALUES ('Terror'), ('A��o'), ('Documet�rio'), ('Drama'), ('Fic��o Cient�fica')



