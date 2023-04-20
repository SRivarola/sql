USE Fixtute2022;
    
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