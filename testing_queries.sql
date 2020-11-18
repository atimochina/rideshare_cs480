# Filter out passengers only keep 1 or 2
CREATE TABLE testing_table AS
SELECT * 
FROM april_green
WHERE passenger_count = 1 ;

SELECT * 
FROM testing_table;
