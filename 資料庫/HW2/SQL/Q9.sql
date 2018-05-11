SELECT COUNT(B.rid)
FROM hw2.send B, hw2.sensor C
WHERE B.sid = C.sid AND 
      C.lat between 24.781466 AND 24.801441 AND
      C.lon between 120.987374 AND 121.004073