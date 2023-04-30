/*
TABELAS DE ENTIDADE
*/

Create table Centro_Distribuicao (
	cod_centro int identity (1,1),
	nome varchar(50),
	endereco varchar (80),
	telefone char (11),
	email varchar (40),
	PRIMARY KEY (cod_centro)
)

create table Pecas (
	cod_peca int identity (1,1),
	tipo varchar (40),
	medidas varchar (40),
	peso varchar (10),
	preco int,
	PRIMARY KEY (cod_peca)
)

Create table Clientes (
	cnpj char (14) primary key,
	nome varchar (50),
	endereco varchar (80),
	telefone char (11),
	email varchar (40)
)

Create table Fornecedor (
	cnpj char (14) primary key,
	nome varchar (50),
	endereco varchar (80),
	telefone char (11),
	email varchar (40)
)

/*
TABELAS DE RELACIONAMENTO
*/

Create table Estoque (
	cod_peca int,
	cod_centro int,
	quantidade int,
	FOREIGN KEY (cod_peca) REFERENCES Pecas (cod_peca),
	FOREIGN KEY (cod_centro) REFERENCES Centro_Distribuicao (cod_centro),
	PRIMARY KEY (cod_peca, cod_centro)
)

Create table Pedido (
	cnpj_cli char (14),
	cod_peca int,
	quantidade int,
	frete int,
	data_frete date,
	custo int,
	FOREIGN KEY (cnpj_cli) REFERENCES Clientes (cnpj),
	FOREIGN KEY (cod_peca) REFERENCES Pecas (cod_peca),
	PRIMARY KEY (cnpj_cli, cod_peca)
)

Create table Fornecimento (
	cod_peca int,
	cnpj_for char (14),
	quantidade int,
	frete int,
	data_frete date,
	custo int,
	FOREIGN KEY (cnpj_for) REFERENCES Fornecedor (cnpj),
	FOREIGN KEY (cod_peca) REFERENCES Pecas (cod_peca),
	PRIMARY KEY (cnpj_for, cod_peca)
)