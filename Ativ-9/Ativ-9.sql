CREATE DATABASE petShop;
SHOW DATABASES;
USE petShop;

DROP TABLE Cliente;
DROP TABLE Animal;

CREATE TABLE Cliente 
(id_Cliente INT(2) PRIMARY KEY,
nome_Cliente VARCHAR(45),
telefone_Cliente VARCHAR(3), 
email_Cliente VARCHAR(45)
);

SELECT * FROM Cliente;
SELECT * FROM Animal;

CREATE TABLE Animal
(id_Animal INT(2),
nome_Animal VARCHAR(45),
especie_Animal VARCHAR(45),
sexo_Animal VARCHAR(1),
nasc_Animal DATE,
morte_Animal DATE,
cliente_id_cliente INT(2),
PRIMARY KEY (id_Animal) 
);

INSERT INTO Cliente (id_Cliente, nome_Cliente, telefone_Cliente, email_Cliente) VALUES
(01, "Ana", 789, "1@gmail.com"),
(02, "Davi", 790, "2@gmail.com"),
(03, "Diogo", 791, "3@gmail.com"),
(04, "Eric", 792, "4@gmail.com"),
(05, "Gabriel", 793, "5@gmail.com"),
(06, "Gustavo", 794, "6@gmail.com"),
(07, "Kayque", 795, "7@gmail.com"),
(08, "Lucas", 796, "8@gmail.com"),
(09, "Luiz", 797, "9@gmail.com"),
(10, "Marcio", 798, "10@gmail.com"),
(11, "Matheus", 799, "11@gmail.com"),
(12, "Rafael", 800, "12@gmail.com")
;

INSERT INTO Animal (id_Animal, nome_Animal, especie_Animal, sexo_Animal) VALUES
(01, "Animal1", "Girafa", "F"),
(02, "Animal2", "Cão", "F"),
(03, "Animal3", "Gato", "F"),
(04, "Animal4", "Girafa", "F"),
(05, "Animal5", "Calopsita", "F"),
(06, "Animal6", "Cão", "F"),
(07, "Animal7", "Cão", "M"),
(08, "Animal8", "Cão", "M"),
(09, "Animal9", "Cão", "M"),
(10, "Animal10", "Cão", "M"),
(11, "Animal11", "Cão", "M"),
(12, "Animal12", "Cão", "M")
;

ALTER TABLE Animal ADD quantidade_patas_Animal INT(2);

ALTER TABLE Animal ADD cor_Animal VARCHAR(10) AFTER especie_Animal;

DESC Animal;
DESC Cliente;

ALTER TABLE Animal CHANGE cor_Animal Observacoes_Animal VARCHAR(20);
ALTER TABLE Cliente CHANGE telefone_Cliente contato_Cliente VARCHAR(18);

SHOW TABLES;

RENAME TABLE Cliente TO Donos;

ALTER TABLE Animal DROP quantidade_patas_Animal;

SELECT * FROM animal;

