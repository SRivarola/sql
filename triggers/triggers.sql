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

