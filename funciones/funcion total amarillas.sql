CREATE DEFINER=`root`@`localhost` FUNCTION `get_yellow_cards`(id INT) RETURNS int
    READS SQL DATA
BEGIN

	DECLARE yellowCards INT;
    
    SET yellowCards = (SELECT SUM(yellow_cards) FROM players WHERE team_id = id);

RETURN yellowCards;
END