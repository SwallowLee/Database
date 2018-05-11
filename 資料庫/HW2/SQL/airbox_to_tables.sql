insert into hw2.sensor(sid, lat, lon, org)
SELECT DISTINCT C.device_id as sid, C.lat, C.lon, C.org
FROM hw2.airbox C;

insert into hw2.records(date, sid, time, h, temp, pm1, pm10, `pm2.5`)
SELECT DISTINCT B.Date, B.device_id, B.time, B.Humidity, B.Temperature, B.PM1, B.PM10, B.`PM2.5`
FROM hw2.airbox B;

