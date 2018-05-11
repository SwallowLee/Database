create table IF NOT EXISTS sensor(
	sid	TEXT,
    lat	double,
    lon	double,
    org VARCHAR(10)
);

create table IF NOT EXISTS send(
	sid	TEXT,
	rid	TEXT
);

create table IF NOT EXISTS records(
	rid  INT NOT NULL AUTO_INCREMENT,
    sid	 TEXT,
    date TEXT,
    time TEXT,
    h	 TEXT,
    temp TEXT,
    pm1  TEXT,
    pm10 TEXT,
    `pm2.5` TEXT,
	PRIMARY KEY ( rid )
);

ALTER TABLE hw2.records DROP COLUMN sid