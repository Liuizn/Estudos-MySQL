use db_ativ13;

select * from colaboradores;

-- 6) Insira mais alguns registros
insert into colaboradores
(nome_colaborador, mes_ano, valor_hora, hora_trabalhada) 
VALUES
("Bruno Henrique Santos",0721, 47.03, 190);

-- 7) Tente excluir um registro 
DELETE from colaboradores
where id_colaborador = 24;

-- 8) Tente atualizar um registro
update colaboradores 
set id_colaborador = 21
where nome_colaborador = "Bruno Henrique Santos";

-- 10) Na conexão com o usuário tente deletar um registro

DELETE from colaboradores
where id_colaborador = 25;

-- 11) Faça mais testes.

update colaboradores 
set id_colaborador = 21
where nome_colaborador = "Bruno Henrique Santos";

insert into colaboradores
(nome_colaborador, mes_ano, valor_hora, hora_trabalhada) 
VALUES
("Marília Pires do Vale Grigolleti", 0721, 90, 200);

update colaboradores
set id_colaborador = 22
where nome_colaborador = "Marília Pires do Vale Grigolleti";








