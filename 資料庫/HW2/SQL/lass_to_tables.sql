insert into hw2.sensor(sid, lat, lon, org)
SELECT DISTINCT B.device_id as sid, B.lat, B.lon, B.org
FROM hw2.lass B;

insert into hw2.records(date, sid, time, h, temp, pm1, pm10, `pm2.5`)
SELECT DISTINCT C.Date, C.device_id, C.time, C.Humidity, C.Temperature, C.PM1, C.PM10, C.`PM2.5`
FROM hw2.lass C;
