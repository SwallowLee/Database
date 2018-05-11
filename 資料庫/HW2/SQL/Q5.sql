SELECT concat((SELECT COUNT(*)
		FROM hw2.sensor
		WHERE org = 'airbox')/COUNT(*)*100, '%')
FROM hw2.sensor