USE rideshare;

/* Drop statements for tables. If reruning the script uncomment */

DROP TABLE rideshare.jan_green_one_rider;
DROP TABLE rideshare.jan_green_two_rider;
/*
DROP TABLE rideshare.feb_green_one_rider;
DROP TABLE rideshare.feb_green_two_rider;
DROP TABLE rideshare.mar_green_one_rider;
DROP TABLE rideshare.mar_green_two_rider;
*/
# add the ride_id column - do once - uncomment/ comment your section below based on your
# main table names

# one set of table names- reem
# ALTER TABLE green_1_january ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE green_2_february ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE green_3_march ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;

# other set of table names -angy, eldin?
# ALTER TABLE january_green ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE february_green ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE march_green ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;

# same thing uncomment/ comment your FROM statement based on your table names
# get the single riders
CREATE TABLE jan_green_one_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
# FROM rideshare.green_1_january 
FROM rideshare.january_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 1
AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# get the double riders
CREATE TABLE jan_green_two_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
# FROM rideshare.green_1_january
FROM rideshare.january_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 2
AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

CREATE TABLE feb_green_one_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
# FROM rideshare.green_2_january
FROM rideshare.february_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 1
AND trip_distance > 0 AND pickup_datetime != dropoff_datetime;

CREATE TABLE feb_green_two_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
# FROM rideshare.green_2_january
FROM rideshare.february_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 2
AND trip_distance > 0 AND pickup_datetime != dropoff_datetime;

CREATE TABLE mar_green_one_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
# FROM rideshare.march_3_january
FROM rideshare.march_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 1
AND trip_distance > 0 AND pickup_datetime != dropoff_datetime;

CREATE TABLE mar_green_two_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
# FROM rideshare.march_3_january
FROM rideshare.march_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 2
AND trip_distance > 0 AND pickup_datetime != dropoff_datetime;

