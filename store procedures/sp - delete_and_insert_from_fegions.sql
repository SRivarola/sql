CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_and_insert_from_regions`(IN id INT)
BEGIN
	INSERT INTO regions VALUES (null, 'New Continent');
	DELETE FROM regions
    WHERE region_id = id;
END