show databases;

create database escola;

use escola;

show tables;

create table if not exists turmas (
Cod_curso int(5) not null auto_increment,
Curso varchar(10),
Turno varchar(5),
Carga_horaria int(4),
Data_inicio varchar(10),
Data_termino varchar(10),
cod_instrutor_c int(5),
Observacoes varchar(255),
primary key (Cod_curso),
foreign key (cod_instrutor_c) references instrutores (cod_instrutor)
);

insert into turmas
(Cod_curso, Curso, Turno, Carga_horaria, Data_inicio, Data_termino,cod_instrutor_c) values
(default, "c#", "Manhã", 100, "2021-01-10", "2021-01-30", 1),
(default, "Java", "Noite", 100, "2021-01-10", "2021-01-20", 2),
(default, "Front-End", "Noite", 350, "2021-01-10", "2021-04-30",3 ),
(default, "Banco Dados", "Tarde", 400, "2021-01-10", "2021-05-01", 4),
(default, "Requisição", "Manhã", 200, "2021-01-10", "2021-03-20", 5)
;

create table if not exists alunos (
Cod_aluno int(5) auto_increment,
Nome_do_aluno varchar(20),
Endereco varchar(255),
Telefone varchar(14),
Observacoes varchar(255),
cod_curso_c int(5),
primary key (Cod_aluno),
FOREIGN KEY (cod_curso_c) REFERENCES turmas(Cod_curso)
);

insert into alunos
(Cod_aluno, Nome_do_aluno, Endereco, Telefone,cod_curso_c) values
(default, "Luiz", "Rua Itapolis 304 Urandi", "31 99988-7744", 1),
(default, "Marília", "Rua Campo Mourão Urandi", "31 97453-7878", 2),
(default, "Júlia", "Rua Constantino Poletto Graça", "31 97412-6584", 3),
(default, "Maurício", "Rua Sargento Marcelino Beiramar", "31 92584-6545", 4),
(default, "Bruno", "Rua Matapoã Graça", "31 97852-5656", 5),
(default, "Cadu", "Rua Vinte e Cinco de Dezembro Beiramar", "31 98541-7825", 1),
(default, "Rynaldo", "Rua Santa Ceciliana Nox", "31 95623-5686", 2),
(default, "Wesley", "Rua Tropical Nox", "31 98531-3235", 3),
(default, "Hulk", "Rua Zancudo", "31 920210725", 4),
(default, "Nacho", "Rua Mineirão", "31 925072021", 5)
;

create table if not exists instrutores (
Cod_instrutor int(5) auto_increment,
Nome_instrutor varchar(20),
Curso varchar(10),
Turno_instrutor varchar(5),
Observacoes varchar(255),
primary key (Cod_instrutor)
);

insert into instrutores
(Cod_instrutor, Nome_instrutor,  Curso, Turno_instrutor) values 
(default, "Carlos E.","c#", "Manhã"),
(default, "João Paulo", "Java", "Noite"),
(default, "Moacir", "Front-End", "Noite"),
(default, "Maurício", "Banco Dados", "Tarde"),
(default, "Aurélio", "Requisição", "Manhã")
;

show tables;

select * from alunos;
select * from turmas;
select * from instrutores;

-- Quais são os alunos de uma determinada turma e qual o instrutor
select nome_do_aluno, cod_aluno, Nome_instrutor
from alunos inner join turmas on cod_curso_c = cod_curso
inner join instrutores on Cod_instrutor = cod_instrutor_c where cod_curso = 1;

-- Pesquisar um Aluno e mostrar qual é sua turma e seu instrutor da turma
select nome_do_aluno, cod_aluno, turno, nome_instrutor
from alunos inner join turmas on cod_curso_c = cod_curso
inner join instrutores on Cod_instrutor = cod_instrutor_c where cod_aluno = 10;

-- Outras Consultas.

-- Alunos do turno "manhã"
select nome_do_aluno, Curso, turno
from alunos inner join turmas on cod_curso_c = cod_curso 
where turno = "Manhã" order by cod_curso, nome_do_aluno;

-- Alunos do turno "Tarde"
select nome_do_aluno, Curso, turno
from alunos inner join turmas on cod_curso_c = cod_curso 
where turno = "Tarde" order by cod_curso, nome_do_aluno;

-- Alunos do turno "Noite"
select nome_do_aluno, Curso, turno
from alunos inner join turmas on cod_curso_c = cod_curso 
where turno = "Noite" order by cod_curso, nome_do_aluno;

create view AllDates as
select nome_do_aluno, cod_curso, turno, nome_instrutor, data_inicio, data_termino, Telefone
from alunos inner join turmas on cod_curso_c = cod_curso
inner join instrutores on Cod_instrutor = cod_instrutor_c order by Nome_do_Aluno, cod_curso, turno;

select * from ALLDates;

rename table ALLDates to View_Alunos_Turno_Instrutor;

select * from View_Alunos_Turno_Instrutor;