USE rideshare;
# ---- uncomment line below after first run
DROP TABLE january_green_clean;

CREATE TABLE jan_green_one_rider
SELECT pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
FROM rideshare.january_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 1;

CREATE TABLE jan_green_two_rider
SELECT pickup_datetime, dropoff_datetime, pickup_longitude, pickup_latitude, dropoff_longitude, dropoff_latitude, passenger_count, trip_distance
FROM rideshare.january_green
WHERE pickup_latitude != 0 AND pickup_longitude != 0 AND dropoff_latitude != 0 AND dropoff_longitude != 0 AND passenger_count = 2
ORDER BY pickup_datetime;
