CREATE DATABASE familia_DB;
USE familia_DB;

DROP TABLE Mae;
DROP TABLE Filho;


CREATE TABLE IF NOT EXISTS Mae (
	id_mae INT (4),
    nome_mae VARCHAR (50),
    PRIMARY KEY (id_mae)
);

INSERT INTO Mae (id_mae, nome_mae) VALUES  
(01, "Tãnia Aparecida dos Santos"),
(02, "Marcia Aparecida Ferreira"),
(03, "Yasmin Parreira")
;



CREATE TABLE IF NOT EXISTS Filho (
	id_filho INT (4),
    nome_filho VARCHAR (50),
    mae_id_mae INT (4),
	PRIMARY KEY (id_filho),
	FOREIGN KEY (mae_id_mae) REFERENCES Mae (id_mae)
);

INSERT INTO Filho (id_filho, nome_filho, mae_id_mae) VALUES
(01, "filho1", 1),
(02, "filho2", 1),
(03, "filho3", 1),
(04, "filho4", 2),
(05, "filho5", 2),
(06, "filho6", 2),
(07, "filho7", 3),
(08, "filho8", 3),
(09, "filho9", 3)
;


SELECT * FROM Mae;
SELECT * FROM Filho;

SELECT nome_filho From Filho;

SELECT nome_filho
FROM Filho
WHERE mae_id_mae = 1;

SELECT nome_filho
FROM Filho
WHERE mae_id_mae = 2;

SELECT nome_filho
FROM Filho
WHERE mae_id_mae = 3;

SELECT nome_mae, nome_filho
FROM Mae
INNER JOIN Filho
ON id_mae = mae_id_mae
;


INSERT INTO Mae (id_mae, nome_mae) VALUES
(04, "Júlia Ebiner"),
(05, "Ariel IceBlack")
;

INSERT INTO Filho (id_filho, nome_filho, mae_id_mae) VALUES
(10, "filho10", NULL),
(11, "filho11", NULL),
(12, "filho12", NULL),
(13, "filho13", NULL)
;

SELECT nome_mae, nome_filho
FROM Mae
LEFT JOIN Filho
ON id_mae = mae_id_mae
;

SELECT nome_mae, nome_filho
FROM Mae
LEFT JOIN Filho
ON id_mae = mae_id_mae
WHERE mae_id_mae IS NULL;

SELECT nome_mae, nome_filho
FROM Mae
RIGHT JOIN Filho
ON id_mae = mae_id_mae;

UPDATE Filho SET mae_id_mae = 4 WHERE id_filho = 10;
UPDATE Filho SET mae_id_mae = 4 WHERE id_filho = 11;
UPDATE Filho SET mae_id_mae = 5 WHERE id_filho = 12;
UPDATE Filho SET mae_id_mae = 5 WHERE id_filho = 13;
