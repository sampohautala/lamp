CREATE DATABASE games;
GRANT ALL ON games.* TO games@localhost IDENTIFIED BY 'eef0aih2Ohshieg';
USE games;
CREATE TABLE games (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(1024));
INSERT INTO games(name) VALUES ("Mario");
INSERT INTO games(name) VALUES ("Tekken");
INSERT INTO games(name) VALUES ("Matopeli");
UPDATE games SET name="Slick'n'Slide" WHERE id=3;
DELETE FROM games WHERE name="Tekken";

