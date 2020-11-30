USE rideshare;

DROP TABLE january_yellow;
DROP TABLE february_yellow;
DROP TABLE march_yellow;
DROP TABLE april_yellow;
DROP TABLE may_yellow;
DROP TABLE june_yellow;

/* use this to comment out chunks of code*/

CREATE TABLE january_yellow (
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL, 
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    rate_code INT NOT NULL,
	store_and_fwd_flag VARCHAR(255) NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
	payment_type VARCHAR(255) NOT NULL, 
    fare_amount DOUBLE NOT NULL,
    surcharge DOUBLE NOT NULL, 
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
	tolls_amount DOUBLE NOT NULL, 
    total_amount DOUBLE NOT NULL
);
CREATE TABLE february_yellow (
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    rate_code INT NOT NULL,
	store_and_fwd_flag VARCHAR(255) NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
	payment_type VARCHAR(255) NOT NULL, 
    fare_amount DOUBLE NOT NULL,
    surcharge DOUBLE NOT NULL, 
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
	tolls_amount DOUBLE NOT NULL, 
    total_amount DOUBLE NOT NULL
);
CREATE TABLE march_yellow (
	vendor_id VARCHAR(255) NOT NULL,
	pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    rate_code INT NOT NULL,
	store_and_fwd_flag VARCHAR(255) NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
	payment_type VARCHAR(255) NOT NULL, 
    fare_amount DOUBLE NOT NULL,
    surcharge DOUBLE NOT NULL, 
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
	tolls_amount DOUBLE NOT NULL, 
    total_amount DOUBLE NOT NULL
);
CREATE TABLE april_yellow (
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    rate_code INT NOT NULL,
	store_and_fwd_flag VARCHAR(255) NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
	payment_type VARCHAR(255) NOT NULL, 
    fare_amount DOUBLE NOT NULL,
    surcharge DOUBLE NOT NULL, 
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
	tolls_amount DOUBLE NOT NULL, 
    total_amount DOUBLE NOT NULL
);
CREATE TABLE may_yellow (
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    rate_code INT NOT NULL,
	store_and_fwd_flag VARCHAR(255) NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
	payment_type VARCHAR(255) NOT NULL, 
    fare_amount DOUBLE NOT NULL,
    surcharge DOUBLE NOT NULL, 
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
	tolls_amount DOUBLE NOT NULL, 
    total_amount DOUBLE NOT NULL
);
CREATE TABLE june_yellow (
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    rate_code INT NOT NULL,
	store_and_fwd_flag VARCHAR(255) NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
	payment_type VARCHAR(255) NOT NULL, 
    fare_amount DOUBLE NOT NULL,
    surcharge DOUBLE NOT NULL, 
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
	tolls_amount DOUBLE NOT NULL, 
    total_amount DOUBLE NOT NULL
);