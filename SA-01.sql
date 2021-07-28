CREATE DATABASE Mais_Vida;
USE Mais_Vida;
CREATE TABLE pacientes(
	Codigo INT (5),
    Nome varchar (50),
    Endereco varchar (50),
    Bairro varchar (40),
    Cidade varchar (40),
    Estado varchar (2),
    CEP varchar (9),
    Data_Nasc date
    );
INSERT INTO pacientes
	(Codigo, Nome, Endereco, Bairro, Cidade, Estado, CEP, Data_Nasc) values
    (1, "Wesley", "Canadá 314", "Ipiranga", "Belo Horizonte", "SP", 3110651, "2015-7-12"),
    (2, "Ana", "México 464", "Concórdia", "Contagem", "MG", 3110652, "2002-12-12"),
    (3, "Matheus", "Espanha 565", "Palmares", "Contagem", "SP", 3110653, "1998-11-12"),
    (4, "Flávio", "Uruguai 878", "Cleber", "Contagem", "MG", 3110654, "1999-10-12"),
    (5, "Christian", "Xavier 394", "Da Graça", "Belo Horizonte", "SP", 3110655, "1985-01-12"),
    (6, "Paula", "Luzitana 994", "Amazonas", "Belo Horizonte", "SP", 3110656, "1988-04-12"),
    (7, "Maurício", "Caetes 21", "Jaguatirica", "Belo Horizonte", "MG", 3110657, "1992-06-12"),
    (8, "Rynaldo", "Marcos 34", "FiveM", "Belo Horizonte", "SP", 3110658, "1964-08-12"),
    (9, "Marília", "Ipiranga 222", "Eletro", "Belo Horizonte", "MG", 3110659, "1985-07-12"),
	(10, "Joaquim", "Urandi 304", "Tesla", "Belo Horizonte", "MG", 3110660, "1914-05-12");

DROP TABLE pacientes;
SELECT * FROM pacientes;

SELECT Codigo, Nome, Endereco, Bairro, Cidade, Estado, CEP, Data_Nasc 
FROM pacientes 
WHERE Estado = "MG";

SELECT Codigo, Nome, Endereco, Bairro, Cidade, Estado, CEP, Data_Nasc 
FROM pacientes 
WHERE Estado = "SP";

SELECT Codigo, Nome, Endereco, Bairro, Cidade, Estado, CEP, Data_Nasc 
FROM pacientes 
WHERE Nome LIKE "P%";

SELECT Codigo, Nome, Endereco, Bairro, Cidade, Estado, CEP, Data_Nasc
FROM pacientes
WHERE Cidade = "Contagem" AND Estado = "MG";

SELECT Codigo, Nome, Endereco, Bairro, Cidade, Estado, CEP, Data_Nasc
FROM pacientes
WHERE Data_Nasc <= "1976-01-20";
    
ALTER TABLE pacientes CHANGE Data_Nasc DT_NASC date;

DELETE  FROM pacientes WHERE Estado = "SP";