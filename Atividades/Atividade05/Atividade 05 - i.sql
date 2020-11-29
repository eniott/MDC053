create database Atividade05_i;

create table curso(
	id_curso integer not null,
	nome_curso varchar(100) not null,
	carga_horaria smallint,
	primary key(id_curso)
);

create table professor(
	id_professor integer not null,
	nome_professor varchar(100) not null,
	titulacao_professor char(3),
	primary key(id_professor)
);

create table aluno(
	id_aluno integer not null,
	nome_aluno varchar(100) not null,
	email_aluno varchar(100),
	fone_contato char(14),
	primary key(id_aluno)
);

create table turma(
	id_turma integer not null,
	id_curso integer not null,
	id_professor integer not null,
	id_aluno integer not null,
	data_matricula date not null,
	primary key(id_turma),
	foreign key(id_curso) references curso(id_curso),
	foreign key(id_professor) references professor(id_professor),
	foreign key(id_aluno) references aluno(id_aluno) 
);