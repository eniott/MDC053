create database Atividade05_iii;

create table departamento(
	codigo integer not null,
	nome varchar(100) not null,
	primary key(codigo)
);

create table funcionario(
	matricula integer not null,
	nome varchar(100) not null,
	salario decimal(10, 2) not null,
	departamento integer not null,
	gerente integer,
	primary key(matricula),
	foreign key(departamento) references departamento(codigo),
	foreign key(gerente) references funcionario(matricula)
);