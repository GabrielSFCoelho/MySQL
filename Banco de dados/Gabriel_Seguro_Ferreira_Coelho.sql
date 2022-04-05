/* Apagar DB antiga */
	DROP DATABASE IF EXISTS locadora;

/* Cria nova DB */
	CREATE DATABASE IF NOT EXISTS locadora;
		USE locadora;

/* Tabela */
	CREATE TABLE IF NOT EXISTS filmes (
		id int primary key auto_increment,
			nome varchar(40));

/* Coloca filmes */
	INSERT INTO filmes (nome) VALUES
		("A Hora do Pesadelo"),
		("Bem-Hur"),
		("Como Eu Era antes de Você"),
		("Estrada sem Lei"),
		("Forrest Gump – O Contador de Histórias"),
		("Harry Potter e a Ordem da Fênix"),
		("Intocáveis"),
		("It – A Coisa"),
		("Minha Mãe É uma Peça"),
		("O Iluminado"),
		("O Resgate do Soldado Ryan"),
		("Os Infiltrados"),
		("Vingadores"),
		("Pantera Negra"),
		("Para Todos os Garotos que Já Amei");
		
/* Mudar o nome da tabela */
	ALTER TABLE filmes RENAME TO acervo;

/* Mudar o nome da coluna "nome" */
	ALTER TABLE acervo CHANGE nome titulo varchar(40);

/* add as novas colunas */
	ALTER TABLE acervo ADD (
			genero ENUM(
				"Ação",
				"Aventura",
				"Comédia",
				"Drama",
				"Policial",
				"Romance",
				"Terror"
			) NOT NULL,
    ano year
);

/* Atualiza os filmes anteriores */
	UPDATE acervo SET genero="Terror", ano=1986 WHERE id=1;
	UPDATE acervo SET genero="Aventura", ano=1960 WHERE id=2;
	UPDATE acervo SET genero="Romance", ano=2016 WHERE id=3;
	UPDATE acervo SET genero="Comédia", ano=2014 WHERE id=4;
	UPDATE acervo SET genero="Comédia", ano=1994 WHERE id=5;
	UPDATE acervo SET genero="Aventura", ano=2007 WHERE id=6;
	UPDATE acervo SET genero="Drama", ano=2012 WHERE id=7;
	UPDATE acervo SET genero="Terror", ano=2017 WHERE id=8;
	UPDATE acervo SET genero="Comédia", ano=2013 WHERE id=9;
	UPDATE acervo SET genero="Terror", ano=1980 WHERE id=10;
	UPDATE acervo SET genero="Drama", ano=1998 WHERE id=11;
	UPDATE acervo SET genero="Policial", ano=2006 WHERE id=12;
	UPDATE acervo SET genero="Ação", ano=2012 WHERE id=13;
	UPDATE acervo SET genero="Ação", ano=2018 WHERE id=14;
	UPDATE acervo SET genero="Romance", ano=2018 WHERE id=15;

/* Mudar "Estrada Sem Lei" */
	UPDATE acervo SET genero="Policial", ano=2019 WHERE id=4;

/* Mudar "Vingadores" */
	UPDATE acervo SET titulo="Os Vingadores - The Avengers" WHERE id=13;

/* Apagar "Os Infiltrados" */
	DELETE FROM acervo WHERE id=12;

/* Apagar todos os registros */
	TRUNCATE TABLE acervo;

/* Exclui a tabela */
	DROP TABLE acervo;

/* Exclui o banco de dados */
	DROP DATABASE locadora;








