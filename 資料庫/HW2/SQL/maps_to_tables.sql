insert into hw2.sensor(sid, lat, lon, org)
SELECT DISTINCT A.device_id as sid, A.lat, A.lon, A.org
FROM hw2.maps A;

insert into hw2.records(date, sid, time, h, temp, pm1, pm10, `pm2.5`)
SELECT DISTINCT C.Date, C.device_id, C.time, C.Humidity, C.Temperature, C.PM1, C.PM10, C.`PM2.5`
FROM hw2.maps C;
