INSERT INTO hw2.send(sid, rid)
SELECT DISTINCT R.sid, R.rid
FROM hw2.records R
