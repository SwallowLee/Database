SELECT TIMESTAMPDIFF(second, MIN(B.time), MAX(B.time))/(COUNT(B.rid)-1)
FROM hw2.send A, hw2.records B
WHERE A.rid = B.rid AND 
	  A.sid = '74DA38A8695C' AND 
	  B.date = '2017-03-02'