CREATE DEFINER=`root`@`localhost` PROCEDURE `get_teams`(IN campo VARCHAR(50), IN orden CHAR(10))
BEGIN
	SET @sql = CONCAT('SELECT * FROM teams ORDER BY ', campo, ' ', orden 
	);
	PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END