SELECT A.sid, AVG(B.temp)
FROM hw2.send A, hw2.records B
WHERE A.rid = B.rid AND (B.date = '2017-03-04' OR B.date = '2017-03-05')
GROUP BY A.sid