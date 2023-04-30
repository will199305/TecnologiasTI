/*
TABELAS DE ENTIDADE
*/

Create table Centro_Distribuicao (
	cod_centro int identity (1,1),
	nome varchar(50),
	endereco varchar (80),
	telefone char (11),
	email varchar (40),
	
)

create table Pecas (
	cod_peca int identity (1,1),
	tipo varchar (40),
	medidas varchar (40),
	peso varchar (10),
	preco int,
	
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
	
)

Create table Pedido (
	cnpj_cli char (14),
	cod_peca int,
	quantidade int,
	frete int,
	data_frete date,
	custo int,
	
)

Create table Fornecimento (
	cod_peca int,
	cnpj_for char (14),
	quantidade int,
	frete int,
	data_frete date,
	custo int,
	
)