DROP FUNCTION get_min_middle;
DELIMITER //
CREATE FUNCTION get_min_middle(m1 DOUBLE, m2 DOUBLE, m3 DOUBLE, m4 DOUBLE) RETURNS DOUBLE DETERMINISTIC
BEGIN
	IF m1 < m2 and m1 < m3 and m1 < m4 then
		return m1;
        end if;
	if m2 < m1 and m2 < m3 and m2 < m4 then
		return m2;
        end if;
	if m3 < m1 and m3 < m2 and m3 < m4 then
		return m3;
        end if;
	if m4 < m1 and m4 < m2 and m4 < m3 then
		return m4;
        end if;	
	return 0;
END
//
DELIMITER ;