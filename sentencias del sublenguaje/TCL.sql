SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;

USE Fixtute2022;


/*
INSERT INTO players (player_id, p_name, p_position, goals_for, yellow_cards, red_cards, team_id)
VALUES
(2000, "Diego Armando Maradona", "Delantero", 23, 4, 0, 1),
(2001, "Gabrial Batistuta", "Delantero", 15, 0, 0, 1), 
(2002, "Ariel Ortega", "Delantero", 12, 5, 2, 1); 
*/
select * from players order by id_vuelo desc;
START TRANSACTION;
DELETE FROM players WHERE player_id = 2000;
DELETE FROM players WHERE player_id = 2001;
DELETE FROM players WHERE player_id = 2002;
SELECT * FROM Fixture2022.players ORDER BY player_id DESC;
#ROLLBACK;
#COMMIT;

select * from regions ORDER BY region_id DESC;
INSERT INTO regions (region_id, region_name) VALUES (11, "Region1");
INSERT INTO regions (region_id, region_name) VALUES (12, "Region2");
INSERT INTO regions (region_id, region_name) VALUES (13, "Region3");
INSERT INTO regions (region_id, region_name) VALUES (14, "Region4");
savepoint lote_1;
INSERT INTO regions (region_id, region_name) VALUES (15, "Region5");
INSERT INTO regions (region_id, region_name) VALUES (16, "Region6");
INSERT INTO regions (region_id, region_name) VALUES (17, "Region7");
INSERT INTO regions (region_id, region_name) VALUES (18, "Region8");
savepoint lote_2;
#RELEASE SAVEPOINT lote_1;