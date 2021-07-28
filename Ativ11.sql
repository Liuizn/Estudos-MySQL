USE familia_db;

SHOW TABLES;

SELECT * FROM Filho;
SELECT * FROM Mae;

UPDATE Mae SET nome_mae = "Elise Bellucci" WHERE id_mae = 5; 

UPDATE Filho SET nome_filho = "filhoAlterado" WHERE id_filho = 5;

DELETE FROM Filho WHERE id_filho = 13;

SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM Mae WHERE id_Mae = 4;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE Mae ADD idade_Mae INT(2);

UPDATE Mae SET idade_Mae = 1 WHERE id_mae = 1;
UPDATE Mae SET idade_Mae = 25 WHERE id_mae = 2;
UPDATE Mae SET idade_Mae = 50 WHERE id_mae = 3;
UPDATE Mae SET idade_Mae = 75 WHERE id_mae = 4;
UPDATE Mae SET idade_Mae = 10 WHERE id_mae = 5;

SELECT AVG (idade_Mae) FROM Mae;

SELECT COUNT(nome_Mae) FROM Mae;

SELECT MAX(idade_Mae) FROM Mae;

SELECT MIN(idade_Mae) FROM Mae;

SELECT SUM(idade_Mae) FROM Mae;

SELECT nome_Mae FROM Mae ORDER BY nome_Mae;
 