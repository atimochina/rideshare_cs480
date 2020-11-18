USE rideshare;
# https://medium.com/@AviGoom/how-to-import-a-csv-file-into-a-mysql-database-ef8860878a68
/* use this to comment out chunks of code*/

# January Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/yellow_tripdata_2014-01.csv' 
INTO TABLE january_yellow
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 2 ROWS;

# February Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/yellow_tripdata_2014-02.csv' 
INTO TABLE february_yellow
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 2 ROWS;

# March Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/yellow_tripdata_2014-03.csv' 
INTO TABLE march_yellow
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 2 ROWS;

# April Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/yellow_tripdata_2014-04.csv' 
INTO TABLE april_yellow
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 2 ROWS;

# May Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/yellow_tripdata_2014-05.csv' 
INTO TABLE may_yellow
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 2 ROWS;

# June Data
LOAD DATA LOCAL INFILE 'C:/Users/angyt/Desktop/FALL 2020/CS 480/Rideshare/yellow_tripdata_2014-06.csv' 
INTO TABLE june_yellow
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\n' 
IGNORE 2 ROWS;