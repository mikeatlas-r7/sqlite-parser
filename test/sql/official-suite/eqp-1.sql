-- original: eqp.test
-- credit:   http://www.sqlite.org/src/tree?ci=trunk&name=test

CREATE TABLE t1(a INT, b INT, ex TEXT);
  CREATE INDEX i1 ON t1(a);
  CREATE INDEX i2 ON t1(b);
  CREATE TABLE t2(a INT, b INT, ex TEXT);
  CREATE TABLE t3(a INT, b INT, ex TEXT)
;SELECT * FROM t2, t1 WHERE t1.a=1 OR t1.b=2
;SELECT * FROM t2 CROSS JOIN t1 WHERE t1.a=1 OR t1.b=2
;SELECT a FROM t1 ORDER BY a
;SELECT a FROM t1 ORDER BY +a
;SELECT a FROM t1 WHERE a=4
;SELECT DISTINCT count(*) FROM t3 GROUP BY a
;SELECT * FROM t3 JOIN (SELECT 1)
;SELECT * FROM t3 JOIN (SELECT 1 UNION SELECT 2)
;SELECT * FROM t3 JOIN (SELECT 1 EXCEPT SELECT a FROM t3 LIMIT 17)
;SELECT * FROM t3 JOIN (SELECT 1 INTERSECT SELECT a FROM t3 LIMIT 17)
;SELECT * FROM t3 JOIN (SELECT 1 UNION ALL SELECT a FROM t3 LIMIT 17)
;CREATE TABLE t1(x INT, y INT, ex TEXT);

  CREATE TABLE t2(x INT, y INT, ex TEXT);
  CREATE INDEX t2i1 ON t2(x)
;SELECT (SELECT x FROM t1 AS sub) FROM t1
;SELECT * FROM t1 WHERE (SELECT x FROM t1 AS sub)
;SELECT * FROM t1 WHERE (SELECT x FROM t1 AS sub ORDER BY y)
;SELECT * FROM t1 WHERE (SELECT x FROM t2 ORDER BY x)
;SELECT * FROM t1 UNION ALL SELECT * FROM t2
;SELECT * FROM t1 UNION ALL SELECT * FROM t2 ORDER BY 2
;SELECT * FROM t1 UNION SELECT * FROM t2 ORDER BY 2
;SELECT * FROM t1 INTERSECT SELECT * FROM t2 ORDER BY 2
;SELECT * FROM t1 EXCEPT SELECT * FROM t2 ORDER BY 2
;SELECT * FROM t1 UNION ALL SELECT * FROM t2 ORDER BY 1
;SELECT * FROM t1 UNION SELECT * FROM t2 ORDER BY 1
;SELECT * FROM t1 INTERSECT SELECT * FROM t2 ORDER BY 1
;SELECT * FROM t1 EXCEPT SELECT * FROM t2 ORDER BY 1
;SELECT x FROM t1 UNION SELECT x FROM t2
;SELECT x FROM t1 UNION SELECT x FROM t2 UNION SELECT x FROM t1
;SELECT x FROM t1 UNION SELECT x FROM t2 UNION SELECT x FROM t1 ORDER BY 1
;CREATE TABLE t1(a INT, b INT, ex TEXT)
;CREATE INDEX i1 ON t1(a)
;CREATE INDEX i2 ON t1(a, b)
;CREATE TABLE t2(c INT, d INT, ex TEXT)
;CREATE INDEX i3 ON t1(b)
;CREATE INDEX i4 ON t2(c)
;CREATE TABLE t1(a INT, b INT, ex CHAR(100));
  CREATE TABLE t2(a INT, b INT, ex CHAR(100));
  CREATE INDEX i1 ON t2(a)
;INSERT INTO t1(a,b) VALUES(1, 2);
  INSERT INTO t1(a,b) VALUES(3, 4);

  INSERT INTO t2(a,b) VALUES(1, 2);
  INSERT INTO t2(a,b) VALUES(3, 4);
  INSERT INTO t2(a,b) VALUES(5, 6);
 
  ANALYZE
;CREATE TABLE t1(a, b, c, PRIMARY KEY(b, c)) WITHOUT ROWID;
  CREATE TABLE t2(a, b, c);