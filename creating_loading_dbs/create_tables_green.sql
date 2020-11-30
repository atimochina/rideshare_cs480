USE rideshare;

DROP TABLE january_green;
DROP TABLE february_green;
DROP TABLE march_green;
DROP TABLE april_green;
DROP TABLE may_green;
DROP TABLE june_green;

CREATE TABLE january_green(
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL, 
    store_and_fwd_flag VARCHAR(255) NOT NULL, 
    rate_code INT NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    fare_amount DOUBLE NOT NULL,
    extra DOUBLE NOT NULL,
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
    tolls_amount DOUBLE NOT NULL,
    hail_fee DOUBLE NOT NULL,
    total_amount DOUBLE NOT NULL,    
    payment_type VARCHAR(255) NOT NULL, 
    trip_type DOUBLE NOT NULL 
);

CREATE TABLE february_green(
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    store_and_fwd_flag VARCHAR(255) NOT NULL, 
    rate_code INT NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    fare_amount DOUBLE NOT NULL,
    extra DOUBLE NOT NULL,
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
    tolls_amount DOUBLE NOT NULL,
    hail_fee DOUBLE NOT NULL,
    total_amount DOUBLE NOT NULL,    
    payment_type VARCHAR(255) NOT NULL, 
    trip_type DOUBLE NOT NULL 
);

CREATE TABLE march_green(
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    store_and_fwd_flag VARCHAR(255) NOT NULL, 
    rate_code INT NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    fare_amount DOUBLE NOT NULL,
    extra DOUBLE NOT NULL,
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
    tolls_amount DOUBLE NOT NULL,
    hail_fee DOUBLE NOT NULL,
    total_amount DOUBLE NOT NULL,    
    payment_type VARCHAR(255) NOT NULL, 
    trip_type DOUBLE NOT NULL 
);

CREATE TABLE april_green(
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    store_and_fwd_flag VARCHAR(255) NOT NULL, 
    rate_code INT NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    fare_amount DOUBLE NOT NULL,
    extra DOUBLE NOT NULL,
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
    tolls_amount DOUBLE NOT NULL,
    hail_fee DOUBLE NOT NULL,
    total_amount DOUBLE NOT NULL,    
    payment_type VARCHAR(255) NOT NULL, 
    trip_type DOUBLE NOT NULL 
);

CREATE TABLE may_green(
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    store_and_fwd_flag VARCHAR(255) NOT NULL, 
    rate_code INT NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    fare_amount DOUBLE NOT NULL,
    extra DOUBLE NOT NULL,
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
    tolls_amount DOUBLE NOT NULL,
    hail_fee DOUBLE NOT NULL,
    total_amount DOUBLE NOT NULL,    
    payment_type VARCHAR(255) NOT NULL, 
    trip_type DOUBLE NOT NULL 
);

CREATE TABLE june_green(
	vendor_id VARCHAR(255) NOT NULL,
    pickup_datetime DATETIME NOT NULL,
    dropoff_datetime DATETIME NOT NULL,  
    store_and_fwd_flag VARCHAR(255) NOT NULL, 
    rate_code INT NOT NULL,
    pickup_longitude DOUBLE NOT NULL, 
    pickup_latitude DOUBLE NOT NULL, 
    dropoff_longitude DOUBLE NOT NULL, 
    dropoff_latitude DOUBLE NOT NULL,
    passenger_count INT NOT NULL,
    trip_distance DOUBLE NOT NULL,
    fare_amount DOUBLE NOT NULL,
    extra DOUBLE NOT NULL,
    mta_tax DOUBLE NOT NULL, 
    tip_amount DOUBLE NOT NULL,
    tolls_amount DOUBLE NOT NULL,
    hail_fee DOUBLE NOT NULL,
    total_amount DOUBLE NOT NULL,    
    payment_type VARCHAR(255) NOT NULL, 
    trip_type DOUBLE NOT NULL 
);