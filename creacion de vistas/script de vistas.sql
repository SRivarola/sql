USE Fixtute2022;

CREATE OR REPLACE VIEW vw_argentina AS
	SELECT player_id, p_name, p_position FROM players WHERE team_id = 1;

CREATE OR REPLACE VIEW vw_regiones AS
	SELECT t.team_id, t.team_name, r.region_name 
    FROM teams AS t
    INNER JOIN regions AS r
    ON t.region_id = r.region_id;

CREATE OR REPLACE VIEW vw_paises_america AS    
	SELECT t.team_id, t.team_name, r.region_name 
	FROM teams AS t
	INNER JOIN regions AS r
	ON t.region_id = r.region_id
	WHERE r.region_name = "America";
 
CREATE OR REPLACE VIEW vw_argentina_matches AS    
	SELECT m.match_id, m.match_date, m.match_round, m.id_player1 AS player1, m.res_player1, m.id_player2 AS player2, m.res_player2
	FROM matches AS m
    WHERE m.id_player1 = 1 OR m.id_player2 = 1;
    
CREATE OR REPLACE VIEW vw_primeros_cuatro AS
	SELECT stats_id, team_name, far_instance FROM stats WHERE matches_quantity = 7;
    
SELECT * FROM vw_argentina; 
SELECT * FROM vw_regiones;
SELECT * FROM vw_paises_america;
SELECT * FROM vw_argentina_matches;
SELECT * FROM vw_primeros_cuatro;