USE rideshare;

# add the rider_id column
ALTER TABLE green_2_february ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;

# get the single riders
CREATE TABLE jan_green_one_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
FROM rideshare.green_1_january
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 1
AND trip_distance > 0;

# get the double riders
CREATE TABLE jan_green_two_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
FROM rideshare.green_1_january
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 2
AND trip_distance > 0;

# repeat for each database
ALTER TABLE green_2_february ADD ride_id INT AUTO_INCREMENT PRIMARY KEY;

CREATE TABLE feb_green_one_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
FROM rideshare.green_2_february
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 1
AND trip_distance > 0;

CREATE TABLE feb_green_two_rider
SELECT ride_id, pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
FROM rideshare.green_2_february
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 2
AND trip_distance > 0;


