DROP FUNCTION get_distance_mi;
DELIMITER //

CREATE FUNCTION get_distance_mi(origin_lat DOUBLE, origin_lon DOUBLE, dest_lat DOUBLE, dest_lon DOUBLE) RETURNS DOUBLE DETERMINISTIC
BEGIN
 RETURN (( 3959 * acos( cos( radians(origin_lat) ) * cos( radians(dest_lat) ) 
   * cos( radians(origin_lon) - radians(dest_lon)) + sin(radians(dest_lat)) 
   * sin( radians(origin_lat)))));
END
//
DELIMITER ;
