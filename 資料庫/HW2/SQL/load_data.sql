LOAD DATA LOCAL INFILE 'D:\AirBox.csv' 
IGNORE
INTO TABLE hw2.`airbox` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'D:\LASS.csv'  
IGNORE
INTO TABLE hw2.`lass` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'D:\MAPS.csv'  
IGNORE
INTO TABLE hw2.`maps` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
