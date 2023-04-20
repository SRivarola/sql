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
END