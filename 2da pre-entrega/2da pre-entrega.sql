drop database if exists Fixtute2022;

CREATE DATABASE Fixtute2022;
USE Fixtute2022;

#CREACION DE TABLAS 

CREATE TABLE teams (
    team_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_name varchar(50),
    region_id int,
    group_id int,
    stats_id int
);

CREATE TABLE players (
    player_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    p_name varchar(50),
    p_position varchar(50),
    goals_for int,
    yellow_cards int,
    red_cards int,
    team_id int,
    FOREIGN KEY(team_id) REFERENCES teams(team_id)
);

CREATE TABLE regions (
    region_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    region_name varchar(20)
);

CREATE TABLE stats (
    stats_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_name varchar(50),
    matches_quantity int,
    goals_for int,
    far_instance varchar(50)
);

CREATE TABLE grupos (
    group_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    group_name varchar(1)
);

CREATE TABLE matches (
    match_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    match_date varchar(50),
    match_round varchar(50),
    res_player1 int,
    res_player2 int,
    penalties_p1 int,
    penalties_p2 int,
    id_player1 int,
    id_player2 int,
    FOREIGN KEY(id_player1) REFERENCES teams(team_id),
    FOREIGN KEY(id_player2) REFERENCES teams(team_id)
);

ALTER TABLE teams
ADD CONSTRAINT region_id
FOREIGN KEY (region_id)
REFERENCES regions(region_id);

ALTER TABLE teams
ADD CONSTRAINT group_id
FOREIGN KEY (group_id)
REFERENCES grupos(group_id);

ALTER TABLE teams
ADD CONSTRAINT stats_id
FOREIGN KEY (stats_id)
REFERENCES stats(stats_id);



#INSERCION DE DATOS EN LAS TABLAS

INSERT INTO grupos VALUES 
(null, 'A'),
(null, 'B'),
(null, 'C'),
(null, 'D'),
(null, 'E'),
(null, 'F'),
(null, 'G'),
(null, 'H');

INSERT INTO regions VALUES
(null, 'America'),
(null, 'Africa'),
(null, 'Asia'),
(null, 'Europa'),
(null, 'Oceania');

INSERT INTO stats VALUES
(null, 'Argentina', 7, 15, 'campeón'),
(null, 'Francia', 7, 16, 'finalista'),
(null, 'Croacia', 7, 8, 'tercero'),
(null, 'Marruecos', 7, 6, 'cuarto'),
(null, 'Paises Bajos', 5, 10, 'octavos'),
(null, 'Brasil', 5, 8, 'octavos'),
(null, 'Inglaterra', 5, 13, 'octavos'),
(null, 'Portugal', 5, 12, 'octavos'),
(null, 'Emiratos Arabes Unidos', 4, 3, 'cuartos'),
(null, 'Australia', 4, 4, 'cuartos'),
(null, 'Japón', 4, 5, 'cuartos'),
(null, 'Corea del Sur', 4, 5, 'cuartos'),
(null, 'Polonia', 4, 3, 'cuartos'),
(null, 'España', 4, 9, 'cuartos'),
(null, 'Suiza', 4, 5, 'cuartos'),
(null, 'Senegal', 4, 5, 'cuartos'),
(null, 'Alemania', 3, 6, 'grupos'),
(null, 'Ghana', 3, 5, 'grupos'),
(null, 'Serbia', 3, 5, 'grupos'),
(null, 'Iran', 3, 4, 'grupos'),
(null, 'Camerún', 3, 4, 'grupos'),
(null, 'Ecuador', 3, 4, 'grupos'),
(null, 'Estados Unidos', 3, 3, 'grupos'),
(null, 'Costa Rica', 3, 3, 'grupos'),
(null, 'Canada', 3, 2, 'grupos'),
(null, 'Mexico', 3, 2, 'grupos'),
(null, 'Uruguay', 3, 2, 'grupos'),
(null, 'Túnez', 3, 1, 'grupos'),
(null, 'Qatar', 3, 1, 'grupos'),
(null, 'Bélgica', 3, 1, 'grupos'),
(null, 'Dinamarca', 3, 1, 'grupos'),
(null, 'Gales', 3, 1, 'grupos');

INSERT INTO teams VALUES
(null, 'Argentina', 1, 3, 1),
(null, 'Francia', 4, 4, 2),
(null, 'Croacia', 4, 6, 3),
(null, 'Marruecos', 2, 6, 4),
(null, 'Paises Bajos', 4, 1, 5),
(null, 'Brasil', 1, 7, 6),
(null, 'Inglaterra', 4, 2, 7),
(null, 'Portugal', 4, 8, 8),
(null, 'Emiratos Arabes Unidos', 3, 3, 9),
(null, 'Australia', 5, 4, 10),
(null, 'Japón', 3, 5, 11),
(null, 'Corea del Sur', 3, 8, 12),
(null, 'Polonia', 4, 3, 13),
(null, 'España', 4, 5, 14),
(null, 'Suiza', 4, 7, 15),
(null, 'Senegal', 2, 1, 16),
(null, 'Alemania', 4, 5, 17),
(null, 'Ghana', 2, 8, 18),
(null, 'Serbia', 4, 7, 19),
(null, 'Iran', 3, 2, 20),
(null, 'Camerún', 2, 7, 21),
(null, 'Ecuador', 1, 1, 22),
(null, 'Estados Unidos', 1, 2, 23),
(null, 'Costa Rica', 1, 5, 24),
(null, 'Canada', 1, 6, 25),
(null, 'Mexico', 1, 3, 26),
(null, 'Uruguay', 1, 8, 27),
(null, 'Túnez', 2, 4, 28),
(null, 'Qatar', 3, 1, 29),
(null, 'Bélgica', 4, 6, 30),
(null, 'Dinamarca', 4, 4, 31),
(null, 'Gales', 4, 2, 32);

INSERT INTO players VALUES
(null, 'Franco Armani', 'Arquero', 0, 0, 0, 1),
(null, 'Gerónimo Rulli', 'Arquero', 0, 0, 0, 1),
(null, 'Emiliano Martinez', 'Arquero', 0, 1, 0, 1),
(null, 'Juan Foyth', 'Defensor', 0, 0, 0, 1),
(null, 'Nicolás Tagliafico', 'Defensor', 0, 0, 0, 1),
(null, 'Gonzalo Montiel', 'Defensor', 0, 3, 0, 1),
(null, 'German pezzella', 'Defensor', 0, 1, 0, 1),
(null, 'Marcos Acuña', 'Defensor', 0, 3, 0, 1),
(null, 'Cristian Romero', 'Defensor', 0, 2, 0, 1),
(null, 'Nicolás Otamendi', 'Defensor', 0, 2, 0, 1),
(null, 'Lisandro Martínez', 'Defensor', 0, 1, 0, 1),
(null, 'Nahuel Molina', 'Defensor', 1, 0, 0, 1),
(null, 'Leandro Paredes', 'Central', 0, 2, 0, 1),
(null, 'Thiago Almada', 'Central', 0, 0, 0, 1),
(null, 'Rodrigo de Paul', 'Central', 0, 0, 0, 1),
(null, 'Ángel Di María', 'Central', 1, 0, 0, 1),
(null, 'Exequiel Palacios', 'Central', 0, 0, 0, 1),
(null, 'Alejandro Gómez', 'Central', 0, 0, 0, 1),
(null, 'Alexis Mac Allister', 'Central', 1, 0, 0, 1),
(null, 'Enzo Fernández', 'Central', 1, 1, 0, 1),
(null, 'Julián Álvarez', 'Delantero', 4, 0, 0, 1),
(null, 'Lionel Messi', 'Delantero', 1, 7, 1, 1),
(null, 'Ángel Correa', 'Delantero', 0, 0, 0, 1),
(null, 'Paulo Dybala', 'Delantero', 0, 0, 0, 1),
(null, 'Lautaro Martínez', 'Delantero', 0, 0, 0, 1),
(null, 'Lionel Scaloni', 'Entrenador', 0, 0, 0, 1),
(null, 'Hugo Lloris', 'Arquero', 0, 0, 0, 2),
(null, 'Steve Mandanda', 'Arquero', 0, 0, 0, 2),
(null, 'Alphonse Areola', 'Arquero', 0, 0, 0, 2),
(null, 'Benjamin Pavard', 'Defensor', 0, 0, 0, 2),
(null, 'Axel Disasi', 'Defensor', 0, 0, 0, 2),
(null, 'Raphael Varane', 'Defensor', 0, 0, 0, 2),
(null, 'Jules Koundé', 'Defensor', 0, 1, 0, 2),
(null, 'William Saliba', 'Defensor', 0, 0, 0, 2),
(null, 'Dayot Upamecano', 'Defensor', 0, 0, 0, 2),
(null, 'Lucas Hernández', 'Defensor', 0, 0, 0, 2),
(null, 'Theo Hernández', 'Defensor', 1, 1, 0, 2),
(null, 'Ibrahima Konaté', 'Defensor', 0, 0, 0, 2),
(null, 'Matteo Guendouzi', 'Central', 0, 0, 0, 2),
(null, 'Aurelien Tchouameni', 'Central', 1, 1, 0, 2),
(null, 'Youssouf Fofana', 'Central', 0, 0, 0, 2),
(null, 'Adrien Rabiot', 'Central', 1, 1, 0, 2),
(null, 'Jordan Veretout', 'Central', 0, 0, 0, 2),
(null, 'Eduardo Camavinga', 'Central', 0, 0, 0, 2),
(null, 'Antoine Griezmann', 'Delantero', 0, 1, 0, 2),
(null, 'Olivier Giroud', 'Delantero', 4, 1, 0, 2),
(null, 'Kylian Mbappé', 'Delantero', 8, 0, 0, 2),
(null, 'Ousmane Dembélé', 'Delantero', 0, 1, 0, 2),
(null, 'Randal Kolo Muani', 'Delantero', 1, 0, 0, 2),
(null, 'Kingsley Coman', 'Delantero', 0, 0, 0, 2),
(null, 'Marcus Thuram', 'Delantero', 0, 1, 0, 2),
(null, 'Didier Deschamps', 'Entrenador', 0, 0, 0, 2),
(null, 'Steve Mandanda', 'Arquero', 0, 0, 0, 3),
(null, 'Steve Mandanda', 'Arquero', 0, 0, 0, 3),
(null, 'Steve Mandanda', 'Arquero', 0, 0, 0, 3),
(null, 'Steve Mandanda', 'Defensor', 0, 0, 0, 3)
;

INSERT INTO matches VALUES
(null, '20/11 - 13hs', 'Primera ronda', 0, 2, 0, 0, 22, 29),
(null, '21/11 - 10hs', 'Primera ronda', 6, 2, 0, 0, 7, 20),
(null, '21/11 - 13hs', 'Primera ronda', 0, 2, 0, 0, 16, 5),
(null, '21/11 - 16hs', 'Primera ronda', 1, 1, 0, 0, 23, 32),
(null, '22/11 - 7hs', 'Primera ronda', 1, 2, 0, 0, 1, 9),
(null, '22/11 - 10hs', 'Primera ronda', 0, 0, 0, 0, 31, 28),
(null, '22/11 - 13hs', 'Primera ronda', 0, 0, 0, 0, 26, 13),
(null, '22/11 - 16hs', 'Primera ronda', 4, 1, 0, 0, 2, 10),
(null, '23/11 - 7hs', 'Primera ronda', 0, 0, 0, 0, 4, 3),
(null, '23/11 - 10hs', 'Primera ronda', 1, 2, 0, 0, 17, 11),
(null, '23/11 - 13hs', 'Primera ronda', 7, 0, 0, 0, 14, 24),
(null, '23/11 - 16hs', 'Primera ronda', 1, 0, 0, 0, 30, 25),
(null, '24/11 - 7hs', 'Primera ronda', 1, 0, 0, 0, 15, 21),
(null, '24/11 - 10hs', 'Primera ronda', 0, 0, 0, 0, 12, 27),
(null, '24/11 - 13hs', 'Primera ronda', 3, 2, 0, 0, 8, 18),
(null, '24/11 - 16hs', 'Primera ronda', 2, 0, 0, 0, 6, 19),
(null, '25/11 - 7hs', 'Segunda ronda', 0, 2, 0, 0, 32, 20),
(null, '25/11 - 10hs', 'Segunda ronda', 1, 3, 0, 0, 29, 16),
(null, '25/11 - 13hs', 'Segunda ronda', 1, 1, 0, 0, 5, 22),
(null, '25/11 - 16hs', 'Segunda ronda', 0, 0, 0, 0, 7, 23),
(null, '26/11 - 7hs', 'Segunda ronda', 0, 1, 0, 0, 28, 10),
(null, '26/11 - 10hs', 'Segunda ronda', 2, 0, 0, 0, 13, 9),
(null, '26/11 - 13hs', 'Segunda ronda', 2, 1, 0, 0, 2, 31),
(null, '26/11 - 16hs', 'Segunda ronda', 2, 0, 0, 0, 1, 26),
(null, '27/11 - 7hs', 'Segunda ronda', 0, 1, 0, 0, 11, 24),
(null, '27/11 - 10hs', 'Segunda ronda', 0, 2, 0, 0, 30, 4),
(null, '27/11 - 13hs', 'Segunda ronda', 4, 1, 0, 0, 3, 25),
(null, '27/11 - 16hs', 'Segunda ronda', 1, 1, 0, 0, 14, 17),
(null, '28/11 - 7hs', 'Segunda ronda', 3, 3, 0, 0, 21, 19),
(null, '28/11 - 10hs', 'Segunda ronda', 2, 3, 0, 0, 12, 18),
(null, '28/11 - 13hs', 'Segunda ronda', 1, 0, 0, 0, 6, 15),
(null, '28/11 - 16hs', 'Segunda ronda', 2, 0, 0, 0, 8, 27),
(null, '29/11 - 7hs', 'Tercera ronda', 2, 0, 0, 0, 5, 29),
(null, '29/11 - 10hs', 'Tercera ronda', 1, 2, 0, 0, 22, 16),
(null, '29/11 - 13hs', 'Tercera ronda', 0, 3, 0, 0, 32, 7),
(null, '29/11 - 16hs', 'Tercera ronda', 0, 1, 0, 0, 20, 23),
(null, '30/11 - 7hs', 'Tercera ronda', 1, 0, 0, 0, 28, 2),
(null, '30/11 - 10hs', 'Tercera ronda', 1, 0, 0, 0, 10, 31),
(null, '30/11 - 13hs', 'Tercera ronda', 0, 2, 0, 0, 13, 1),
(null, '30/11 - 16hs', 'Tercera ronda', 1, 2, 0, 0, 9, 26),
(null, '01/12 - 7hs', 'Tercera ronda', 0, 0, 0, 0, 3, 30),
(null, '01/12 - 10hs', 'Tercera ronda', 1, 2, 0, 0, 25, 4),
(null, '01/12 - 13hs', 'Tercera ronda', 2, 1, 0, 0, 11, 14),
(null, '01/12 - 16hs', 'Tercera ronda', 2, 4, 0, 0, 24, 17),
(null, '02/12 - 7hs', 'Tercera ronda', 2, 1, 0, 0, 12, 8),
(null, '02/12 - 10hs', 'Tercera ronda', 0, 2, 0, 0, 18, 27),
(null, '02/12 - 13hs', 'Tercera ronda', 1, 0, 0, 0, 21, 6),
(null, '02/12 - 16hs', 'Tercera ronda', 2, 3, 0, 0, 19, 15),
(null, '03/12 - 12hs', 'Octavos de final', 3, 1, 0, 0, 5, 23),
(null, '03/12 - 16hs', 'Octavos de final', 2, 1, 0, 0, 1, 10),
(null, '04/12 - 12hs', 'Octavos de final', 3, 1, 0, 0, 2, 13),
(null, '04/12 - 16hs', 'Octavos de final', 3, 0, 0, 0, 7, 16),
(null, '05/12 - 12hs', 'Octavos de final', 1, 1, 1, 3, 11, 3),
(null, '05/12 - 16hs', 'Octavos de final', 4, 1, 0, 0, 6, 12),
(null, '06/12 - 12hs', 'Octavos de final', 0, 0, 3, 0, 4, 14),
(null, '06/12 - 16hs', 'Octavos de final', 6, 1, 0, 0, 8, 15),
(null, '09/12 - 12hs', 'Cuartos de final', 1, 1, 4, 2, 3, 6),
(null, '09/12 - 16hs', 'Cuartos de final', 2, 2, 3, 4, 5, 1),
(null, '10/12 - 12hs', 'Cuartos de final', 1, 0, 0, 0, 4, 8),
(null, '10/12 - 16hs', 'Cuartos de final', 2, 1, 0, 0, 2, 7),
(null, '13/12 - 16hs', 'Semifinal', 0, 3, 0, 0, 3, 1),
(null, '14/12 - 16hs', 'Semifinal', 0, 2, 0, 0, 4, 2),
(null, '17/12 - 12hs', 'Tercer puesto', 1, 2, 0, 0, 4, 3),
(null, '18/12 - 12hs', 'Final', 3, 3, 4, 2, 1, 2)
;

select * from grupos;
select * from regions;
select * from stats;
select * from teams;
select * from players;
select * from matches;


#CREACION DE VISTAS

CREATE OR REPLACE VIEW vw_argentina AS
	SELECT player_id, p_name, p_position FROM players WHERE team_id = 1;

CREATE OR REPLACE VIEW vw_regiones AS
	SELECT t.team_id, t.team_name, r.region_name 
    FROM teams AS t
    INNER JOIN regions AS r
    ON t.region_id = r.region_id
    ORDER BY t.team_id ASC;

CREATE OR REPLACE VIEW vw_paises_america AS    
	SELECT t.team_id, t.team_name, r.region_name 
	FROM teams AS t
	INNER JOIN regions AS r
	ON t.region_id = r.region_id
	WHERE r.region_name = "America"
	ORDER BY t.team_id ASC;
 
SELECT m.match_id, m.match_date, m.match_round, m.id_player1, m.res_player1, m.id_player2, m.res_player2
	FROM matches AS m
	INNER JOIN teams AS t
	ON m.id_player1 = t.team_id; 
 
CREATE OR REPLACE VIEW vw_matches_argentina AS    
	SELECT m.match_id, m.match_date, m.match_round, t.team_name AS player1, m.res_player1, t2.team_name AS player2, m.res_player2
	FROM matches AS m
	INNER JOIN teams AS t
	ON m.id_player1 = t.team_id
    INNER JOIN teams AS t2
    ON m.id_player2 = t2.team_id
    WHERE t.team_name = "Argentina" OR t2.team_name = "Argentina"
    ORDER BY m.match_id ASC;
    
CREATE OR REPLACE VIEW vw_primeros_cuatro AS
	SELECT stats_id, team_name, far_instance FROM stats WHERE matches_quantity = 7
    ORDER BY stats_id ASC;
    
SELECT * FROM vw_argentina; 
SELECT * FROM vw_regiones;
SELECT * FROM vw_paises_america;
SELECT * FROM vw_matches_argentina;
SELECT * FROM vw_primeros_cuatro;


#CREACION DE FUNCIONES
delimiter //
CREATE DEFINER=`root`@`localhost` FUNCTION `get_most_goals`(id1 INT, id2 INT) RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN

	DECLARE stat1 VARCHAR(50);
    DECLARE stat2 VARCHAR(50);
    DECLARE winner VARCHAR(50);
    
    SET stat1 = (SELECT goals_for FROM stats WHERE stats_id = id1);
    SET stat2 = (SELECT goals_for FROM stats WHERE stats_id = id2);
    
    IF stat1 > stat2 THEN
		SET winner = (SELECT team_name from stats WHERE stats_id = id1);
	ELSE
		SET winner = (SELECT team_name from stats WHERE stats_id = id2);
	END IF;
    
RETURN winner;
END //
 
SELECT get_most_goals(2, 3);

delimiter //
CREATE DEFINER=`root`@`localhost` FUNCTION `get_yellow_cards`(id INT) RETURNS int
    READS SQL DATA
BEGIN

	DECLARE yellowCards INT;
    
    SET yellowCards = (SELECT SUM(yellow_cards) FROM players WHERE team_id = id);

RETURN yellowCards;
END //

SELECT get_yellow_cards(2);


#CREACION DE STORE PROCEDURES
delitimer //
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_and_insert_from_regions`(IN id INT)
BEGIN
	INSERT INTO regions VALUES (null, 'New Continent');
	DELETE FROM regions
    WHERE region_id = id;
END //

-- CALL delete_and_insert_from_regions(1);

delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_teams`(IN campo VARCHAR(50), IN orden CHAR(10))
BEGIN
	SET @sql = CONCAT('SELECT * FROM teams ORDER BY ', campo, ' ', orden);
	PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

CALL get_teams('team_name', 'asc');

#Creamos la tabla logs_teams para ir guardando los registros de inserción
-- DROP TABLE IF NOT EXISTS IF EXISTS logs_teams;
CREATE TABLE IF NOT EXISTS logs_teams (
    team_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_name varchar(50),
    region_id int,
    group_id int,
    stats_id int,
	usuario varchar(200),
	hora varchar(10),
	fecha varchar(10)
);

/*
 Creamos un trigger que va tomando los nuevos registros en la tabla teams y los almacena
 en la tabla log_teams
*/
-- DROP TRIGGER IF EXISTS new_team;
CREATE TRIGGER new_team
after INSERT ON teams
FOR EACH ROW
INSERT INTO logs_teams VALUES (NEW.team_id, NEW.team_name, NEW.region_id, NEW.group_id, NEW.stats_id, user(), current_time(), current_date());

-- INSERT INTO teams (team_name, region_id, group_id, stats_id) VALUES ("Nuevo Equipo", 3, 3, 2);


/*
Creamos un trigger que va tomando las actualizaciones de registros en la tabla teams y los actualiza
en la tabla log_teams
 */
DROP TRIGGER IF EXISTS actualizar_team;
CREATE TRIGGER actualizar_team
before UPDATE ON teams
FOR EACH ROW
UPDATE logs_teams
SET team_name = NEW.team_name, region_id = NEW.region_id, usuario = user(), hora = current_time(), fecha = current_date()
WHERE team_id  = OLD.team_id;

-- UPDATE teams SET team_name = 'Nuevo Pais' WHERE team_id = 10;

-- select team_id, team_name from teams


DROP TABLE IF EXISTS logs_players;
CREATE TABLE IF NOT EXISTS logs_players (
    player_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    p_name varchar(50),
    p_position varchar(50),
    goals_for int,
    yellow_cards int,
    red_cards int,
    team_id int,
	usuario varchar(200),
	hora varchar(10),
	fecha varchar(10),
    FOREIGN KEY(team_id) REFERENCES teams(team_id)
);

/*
 Creamos un trigger que va tomando los nuevos registros en la tabla players y los almacena
 en la tabla logs_players
*/
DROP TRIGGER IF EXISTS new_player;
CREATE TRIGGER new_player
after INSERT ON players
FOR EACH ROW
INSERT INTO logs_players VALUES (NEW.player_id, NEW.p_name, NEW.p_position, New.goals_for, NEW.yellow_cards, NEW.red_cards, NEW.team_id, USER(), current_time(), current_date());

-- INSERT INTO players (p_name, p_position, goals_for, yellow_cards, red_cards, team_id) VALUES ("Luis Alberto Carlos", "Delantero", 3, 2, 1, 1);


/*
Creamos un trigger que va tomando las actualizaciones de registros en la tabla players y los actualiza
en la tabla logs_players
 */
DROP TRIGGER IF EXISTS actualizar_player;
CREATE TRIGGER actualizar_player
before UPDATE ON players
FOR EACH ROW
UPDATE logs_players
SET p_name= NEW.p_name, p_position = NEW.p_position, goals_for = NEW.goals_for, yellow_cards = NEW.yellow_cards, red_cards = NEW.red_cards, team_id = NEW.team_id, usuario = USER(), hora = current_time(), fecha = current_date()
WHERE player_id = OLD.player_id;

-- UPDATE players SET p_name = 'Carlitos' WHERE player_id = 11;



