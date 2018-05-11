SELECT rid
FROM hw2.records
WHERE date = '2017-03-03' AND `pm2.5` = (SELECT MAX(`pm2.5`)
										FROM hw2.records
										WHERE date = '2017-03-03')