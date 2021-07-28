/*1) Crie um banco com seu nome. Ex: db_rubem;*/
create database bruno_DB;
use bruno_DB;

/*2) Crie pelo menos 3 tabelas com no mínimo dois relacionamentos;*/
create table Clientes (
id_cliente int(5) primary key auto_increment,
nome varchar(40),
idade int(3),
email varchar(40)
);

create table Animais (
id_Animais int(5),
nome_Animal varchar(40),
especie_Animal varchar(40),
idade_animal int(3),
raca varchar(40),
sexo varchar(10),
foreign key (id_Animais) references Clientes (id_cliente)
);

create table Veterinarios (
id_Veterinario int(5) primary key,
nome varchar(40),
endereco varchar(40),
idade varchar(40)
);

/*3) Faça o povoamento das tabelas com no mínimo 5 tuplas por tabela.;
*/
insert into Clientes values 
(default, "Bruno", 20, "email02@gmail.com"),
(default, "Gustavo", 25, "email03@gmail.com"),
(default, "Luiz", 30, "email04@gmail.com"),
(default, "Gabriel", 40, "email05@gmail.com"),
(default, "Rafael", 45, "email06@gmail.com");

insert into Animais values
(1, "Alfred", "Cachorro", 14, "Pastor Alemao", "Macho"),
(1, "Marx", "Gato", 5, "Siames", "Macho"),
(2, "Dede", "Cachorro", 10, "Labrador", "Macho"),
(3, "Nani", "Cachorro", 3, "Poodle", "Femea"),
(4, "Nina", "Gato", 8, "Siberiano", "Femea")
;

insert into Veterinarios values
(1, "Matheus", "Castelo Branco", 23),
(2, "Zeca", "Rua Whisky", 32),
(3, "Mauricio", "Três Dedo", 45),
(4, "Elisabet", "Rua Zoro", 25),
(5, "Douglas", "Aguas Claras", 30);

/*4) Elabore 10 necessidades que demandem INSERT, SELECT, UPDATE ou DELETE.

1_Insira um novo cliente.*/

insert into Clientes values 
(default, "Maurício", 17, "email07@gmail.com")
;
/*2_Insira um novo animal.*/

insert into Animais values
(5, "Tufão", "Cachorro", 12, "Pastor Alemao", "Macho")
;

/*3_Insira um novo veterinário.*/
insert into veterinarios values
(6, "Ariel Iceblack", "Campinas", 28)
;

/*4_Some todas as idades dos animais.*/
select sum(idade_animal) from animais;

/*5_Tire a média da idade dos Veterinários.*/
select avg(idade) from veterinarios;

/*6_Ache o maior idade dos clientes.*/
select max(idade) from clientes;

/*7_Atualize o nome de um animal.*/
update animais set nome_animal = Alfred_Alterado;

/*8_Ordene os clientes em ordem alfabética.*/

select nome from clientes order by nome;

/*9_Ache a quantidade de veterinários total. */

select nome, count(*) from veterinarios group by nome;

/*10_Insira um animal ao cliente que não tem animal.*/

insert into animal values
(6, "Math","Gato", 90, "Siberiano", "Macho")
;

select * from clientes; 
select * from animais;
select * from veterinarios;