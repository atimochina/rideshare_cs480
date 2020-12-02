DROP FUNCTION get_speed;
DELIMITER //

CREATE FUNCTION get_speed(pu_date DATETIME, do_date DATETIME, distance DOUBLE) RETURNS DOUBLE DETERMINISTIC
BEGIN
	RETURN(distance/TIMESTAMPDIFF(SECOND,pu_date,do_date));
END
//
DELIMITER ;