SELECT DISTINCT S.date, P.sid
FROM hw2.send P, hw2.records S
WHERE P.rid = S.rid AND S.date = '2017-03-02' AND P.sid IN ( SELECT k.q
				FROM (SELECT DISTINCT G.sid as q
					  FROM hw2.send G, hw2.records H
					  WHERE G.rid = H.rid AND
							H.date = '2017-03-02'
					  ORDER BY H.`pm2.5` DESC
					  LIMIT 10 ) as k)
UNION
SELECT DISTINCT B.date, A.sid
FROM hw2.send A, hw2.records B
WHERE A.rid = B.rid AND B.date = '2017-03-03' AND A.sid IN ( SELECT t.m
				FROM (  SELECT DISTINCT C.sid as m
						FROM hw2.send C, hw2.records D
						WHERE C.rid = D.rid AND
							  D.date = '2017-03-03'
						ORDER BY D.`pm2.5` DESC
						LIMIT 10 ) as t)
UNION
SELECT DISTINCT W.date, V.sid
FROM hw2.send V, hw2.records W
WHERE V.rid = W.rid AND W.date = '2017-03-04' AND V.sid IN ( SELECT u.r
				FROM (SELECT DISTINCT I.sid as r
					  FROM hw2.send I, hw2.records J
					  WHERE I.rid = J.rid AND
							J.date = '2017-03-04'
					  ORDER BY J.`pm2.5` DESC
					  LIMIT 10 ) as u)
UNION
SELECT DISTINCT L.date, K.sid
FROM hw2.send K, hw2.records L
WHERE K.rid = L.rid AND L.date = '2017-03-05' AND K.sid IN ( SELECT p.n
				FROM ( SELECT DISTINCT E.sid as n
					   FROM	hw2.send E, hw2.records F
					   WHERE E.rid = F.rid AND
							 F.date = '2017-03-05'
					   ORDER BY F.`pm2.5` DESC
					   LIMIT 10 ) as p)
