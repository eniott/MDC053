create database Atividade05_ii;

create table pessoa(
	id integer not null,
	nome varchar(100) not null,
	primary key(id)
);

create table fisica(
	id integer not null,
	sexo char(1),
	cpf char(11) not null,
	primary key(id),
	foreign key(id) references pessoa(id)
);

create table juridica(
	id integer not null,
	cnpj char(11) not null,
	primary key(id),
	foreign key(id) references pessoa(id)
);

create table endereco(
	id integer not null,
	logradouro varchar(100),
	numero integer default 0,
	cep char(9) not null,
	cidade varchar(30),
	uf char(2) not null,
	primary key(id),
	foreign key(id) references pessoa(id)
);