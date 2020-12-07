USE rideshare;

#	IF THIS CODE WAS ALREADY RUN, YOU NEED TO DROP THE TABLES FIRST
#	UNCOMMENT THIS IF YOU NEED TO REDO THE QUERIES
/*	
DROP TABLE rideshare.jan_green_one_rider;
DROP TABLE rideshare.jan_green_two_rider;
DROP TABLE rideshare.jan_yellow_one_rider;
DROP TABLE rideshare.jan_yellow_two_rider;

DROP TABLE rideshare.feb_green_one_rider;
DROP TABLE rideshare.feb_green_two_rider;
DROP TABLE rideshare.feb_yellow_one_rider;
DROP TABLE rideshare.feb_yellow_two_rider;
*/

#	IF THIS CODE WAS ALREADY RUN, YOU NEED TO DROP THE TABLES FIRST
#	UNCOMMENT THIS IF YOU NEED TO REDO THE QUERIES
#	USED TO ADD A PRIMARY ID TO OUR ORIGINAL DATABASES

/*
# ALTER TABLE green_1_january ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE green_2_february ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE yellow1_january ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
# ALTER TABLE yellow_2_february ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;
*/

# ---------------- GETTING ALL SINGLE AND DOUBLE RIDERS FOR JANUARY ---------------- 

# SINGLE RIDERS GREEN JANUARY
CREATE TABLE jan_green_one_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.green_1_january 
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 1
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime

ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# DOUBLE RIDERS GREEN JANUARY
CREATE TABLE jan_green_two_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.green_1_january
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 2
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# SINGLE RIDERS YELLOW JANUARY
CREATE TABLE jan_yellow_one_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.yellow_1_january 
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 1
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# DOUBLE RIDERS YELLOW JANUARY
CREATE TABLE jan_yellow_two_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.yellow_1_january
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 2
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# ---------------- GETTING ALL SINGLE AND DOUBLE RIDERS FOR FEBRUARY ---------------- 

# SINGLE RIDERS GREEN FEBRUARY
CREATE TABLE feb_green_one_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.green_2_february
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 1
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# DOUBLE RIDERS GREEN FEBRUARY
CREATE TABLE feb_green_two_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.green_2_february
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 2
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# SINGLE RIDERS YELLOW FEBRUARY
CREATE TABLE feb_yellow_one_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.yellow_2_february
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 1
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;

# DOUBLE RIDERS YELLOW FEBRUARY
CREATE TABLE feb_yellow_two_rider
	SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, 
		dropoff_longitude, dropoff_latitude, passenger_count, trip_distance,
		get_speed(pickup_datetime, dropoff_datetime, trip_distance) AS 'speed'
	FROM rideshare.yellow_2_february
	WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND 
		dropoff_longitude != 0 AND passenger_count = 2
		AND trip_distance > 0 AND pickup_datetime != dropoff_datetime
	ORDER BY pickup_datetime, pickup_latitude, pickup_longitude;


# MERGING THE DATABASES TO ADD YELLOW AND GREEN TAXIS TOGETHER 

# all january single riders from green and yellow taxis
CREATE TABLE jan_single_riders
SELECT * FROM rideshare.jan_green_one_rider
UNION
SELECT * FROM rideshare.jan_yellow_one_rider;

# all january double riders from green and yellow taxis
CREATE TABLE jan_double_riders
SELECT * FROM rideshare.jan_green_two_rider
UNION
SELECT * FROM rideshare.jan_yellow_two_rider;

# all february single riders from green and yellow taxis
CREATE TABLE feb_single_riders
SELECT * FROM rideshare.feb_green_one_rider
UNION
SELECT * FROM rideshare.feb_yellow_one_rider;

# all february double riders from green and yellow taxis
CREATE TABLE feb_double_riders
SELECT * FROM rideshare.feb_green_two_rider
UNION
SELECT * FROM rideshare.feb_yellow_two_rider;
