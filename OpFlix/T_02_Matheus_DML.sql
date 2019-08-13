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



SELECT * FROM FilmeSeries
INSERT INTO FilmeSeries (Titulo, Sinopse, TempoDuracao, DataLancamento, Veiculo, IdCategoria, IdClassificacao, IdIdentificacao)
	VALUES ('O Rei Le�o', 'O Rei Le�o, da Disney, dirigido por Jon Favreau, retrata uma jornada pela savana africana, onde nasce o futuro rei da Pedra do Reino, Simba. O pequeno le�o que idolatra seu pai, o rei Mufasa, � fiel ao seu destino de assumir o reinado. Mas nem todos no reino pensam da mesma maneira. Scar, irm�o de Mufasa e ex-herdeiro do trono, tem seus pr�prios planos. A batalha pela Pedra do Reino � repleta de trai��o, eventos tr�gicos e drama, o que acaba resultando no ex�lio de Simba. Com a ajuda de dois novos e inusitados amigos, Simba ter� que crescer e voltar para recuperar o que � seu por direito', '118', '18/07/2019', 'Cinema', '1', '1','1')
	,('La Casa De Papel 3 temp', 'Oito habilidosos ladr�es se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da hist�ria e levar com eles mais de 2 bilh�es de euros. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como ref�m, al�m dos agentes da for�a de elite da pol�cia, que far�o de tudo para que a investida dos criminosos fracasse.',	'650', '19/07/2019', 'NetFlix',	'2', '5', '2')
	,('Deuses Americanos', 'Shadow Moon � um ex-vigarista que serve como seguran�a e companheiro de viagem para o Sr. Wednesday, um homem fraudulento que �, na verdade, um dos velhos deuses, e est� na Terra em uma miss�o: reunir for�as para lutar contra as novas entidades.', '620', '30/04/2017', 'Prime Video',	'3', '6', '2')
	,('Toy Story 4', 'Woody sempre teve certeza sobre o seu lugar no mundo e que sua prioridade � cuidar de sua crian�a, seja Andy ou Bonnie. Mas quando Bonnie adiciona um relutante novo brinquedo chamado Garfinho ao seu quarto, uma aventura na estrada ao lado de velhos e novos amigos mostrar� a Woody qu�o grande o mundo pode ser para um brinquedo.', '100',	'20/06/2019', 'Cinema',	'4', '1', '1')

DELETE FilmeSeries  
WHERE IdFS = 1