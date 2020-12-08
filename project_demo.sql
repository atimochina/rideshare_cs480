USE rideshare;
# The above function works and is used in full_cleaning_db to add speed component
DROP TABLE ride_one;
CREATE TABLE ride_one
SELECT * FROM jan_green_one_rider LIMIT 1000;

SELECT * FROM ride_one;

DROP TABLE ride_one_combo;
CREATE TABLE ride_one_combo
SELECT r1.ride_id as ride_one_id, r2.ride_id as ride_two_id, TIMESTAMPDIFF(SECOND, r1.pickup_datetime , r2.pickup_datetime) AS time_diff, (r1.speed+r2.speed)/2 as speed,
r1.trip_distance + r2.trip_distance as original_distance,
get_distance_mi (r1.pickup_latitude, r1.pickup_longitude, r2.pickup_latitude, r2.pickup_longitude) AS distance_pickup,
get_distance_mi (r1.pickup_latitude, r1.pickup_longitude, r1.dropoff_latitude, r1.dropoff_longitude) AS middle_o1d1,
get_distance_mi (r1.pickup_latitude, r1.pickup_longitude, r2.dropoff_latitude, r2.dropoff_longitude) AS middle_o1d2,
get_distance_mi (r2.pickup_latitude, r2.pickup_longitude, r1.dropoff_latitude, r1.dropoff_longitude) AS middle_o2d1,
get_distance_mi (r2.pickup_latitude, r2.pickup_longitude, r2.dropoff_latitude, r2.dropoff_longitude) AS middle_o2d2,
get_distance_mi (r1.dropoff_latitude, r1.dropoff_longitude, r2.dropoff_latitude, r2.dropoff_longitude) AS distance_dropoff
FROM jan_green_two_rider r2, ride_one r1
WHERE TIMESTAMPDIFF(SECOND, r1.pickup_datetime , r2.pickup_datetime) > 0 AND TIMESTAMPDIFF(SECOND, r1.pickup_datetime , r2.pickup_datetime) < 5*60;

SELECT * FROM rideshare.ride_one_combo;

drop table ride_combo;
CREATE TABLE ride_combo
SELECT ride_one_id, ride_two_id, speed,
		distance_pickup + distance_dropoff + get_min_middle(middle_o1d1, middle_o1d2, middle_o2d1, middle_o2d2) as total_distance,
        original_distance - (distance_pickup + distance_dropoff + get_min_middle(middle_o1d1, middle_o1d2, middle_o2d1, middle_o2d2)) as distance_savings,
        (original_distance - (distance_pickup + distance_dropoff + get_min_middle(middle_o1d1, middle_o1d2, middle_o2d1, middle_o2d2)))/original_distance*100 as percent_savings
from ride_one_combo
WHERE original_distance - (distance_pickup + distance_dropoff + get_min_middle(middle_o1d1, middle_o1d2, middle_o2d1, middle_o2d2)) > 0;

select * from ride_combo;

drop table ride_combo_two;
create table ride_combo_two
select distinct * 
from ride_combo 
GROUP BY ride_one_id 
HAVING percent_savings = max(percent_savings)
order by ride_one_id, percent_savings DESC;

select distinct * 
from ride_combo_two
GROUP BY ride_two_id
HAVING percent_savings = max(percent_savings);

select avg(percent_savings) from ride_combo_two;
select SUM(distance_savings) from ride_combo_two;

