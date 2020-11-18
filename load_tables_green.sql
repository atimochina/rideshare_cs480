USE rideshare;

# January Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/green_tripdata_2014-01.csv' 
INTO TABLE january_green
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 3 ROWS;

# February Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/green_tripdata_2014-02.csv' 
INTO TABLE february_green
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 3 ROWS;

# March Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/green_tripdata_2014-03.csv' 
INTO TABLE march_green
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 3 ROWS;

# April Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/green_tripdata_2014-04.csv' 
INTO TABLE april_green
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 3 ROWS;

# May Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/green_tripdata_2014-05.csv' 
INTO TABLE may_green
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 3 ROWS;

# June Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/green_tripdata_2014-06.csv' 
INTO TABLE june_green
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 3 ROWS;