select user from mysql.user;
select user, host from mysql.user;

SHOW DATABASES;

-- 1) Crie um banco com uma tabela
create database db_ativ13;
use db_ativ13;
show tables;

drop table colaboradores;
create table if not exists colaboradores (
	id_colaborador INT(5) NOT NULL AUTO_INCREMENT,
    mes_ano INT(4),
    nome_colaborador VARCHAR(50),
    valor_hora DECIMAL(5,2),
    hora_trabalhada INT(5),
    PRIMARY KEY (id_colaborador, mes_ano)
);

-- 2) Faça o povoamento dessa tabela
INSERT INTO colaboradores
( nome_colaborador, mes_ano, valor_hora, hora_trabalhada) VALUES
    ( "Carlos Henrique", 0721, 47.03, 180), 
    ( "Gabriel Assunção", 0721, 47.03, 180),
    ( "Ivan Souza", 0721, 47.03, 90),
    ( "Lucas Alves", 0721, 47.03, 90),
    ( "Luiz Fernando", 0721, 47.03, 180),
    ( "Rafael Felisbino", 0721, 47.03, 180),
    ( "Stella Oliveira", 0721, 47.03, 180),
    ( "Thales Silva", 0721, 47.03, 180),
    ( "Vinicius Gabriel", 0721, 47.03, 90),
    ( "Ana Claudia", 0721, 47.03, 180),
    ( "Bruno Henrique", 0721, 47.03, 180),
    ( "Diogo Oishi", 0721, 47.03, 90),
    ( "Eric Ricardo", 0721, 47.03, 90),
    ( "Gabriel Vieira", 0721, 47.03, 90),
    ( "Gustavo Roberto", 0721, 47.03, 180),
    ( "Kayque Lucas", 0721, 47.03, 90),
    ( "Luiz Gabriel", 0721, 47.03, 180),
    ( "Marcio Alves", 0721, 47.03, 90),
    ( "Matheus Oliveira", 0721, 47.03, 90),
    ( "Rafael Archanjo", 0721, 47.03, 90)
;

select * from colaboradores;

-- 3) Crie um usuário 
create user 'pagamento'@'localhost' identified by '123';

-- 4) Dê permissão para INSERT
grant INSERT
on db_ativ13.colaboradores
to pagamento@localhost; 

flush privileges;

-- 9) Dê permissão de Delete para o usuário
grant SELECT, DELETE
on db_ativ13.colaboradores
to pagamento@localhost;

flush privileges;

-- 11) Faça mais testes.
grant UPDATE
on db_ativ13.colaboradores
to pagamento@localhost;

flush privileges;