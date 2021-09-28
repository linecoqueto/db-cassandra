
-- criando keyspace
use lab01;

-- consultas utilizando os operadores aritmeticos

token@cqlsh:lab01> SELECT event_date, name
         ...   FROM nerd_holidays
         ...   WHERE year_bucket=2021
         ...   AND event_date >= '2022-01-01' - 2mo
         ...   AND event_date < '2022-01-01';

 event_date | name
------------+-----------------------
 2021-12-21 |              2112 Day
 2021-11-30 | Computer Security Day
 2021-11-23 |            Tardis Day
 2021-11-23 |        Fibbonacci Day

(4 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 1mo   AND event_date < '2022-01-01';

 event_date | name
------------+----------
 2021-12-21 | 2112 Day

(1 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 2d;
 event_date | name
------------+------

(0 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 10d;

 event_date | name
------------+------

(0 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 10w;

 event_date | name
------------+-----------------------
 2021-12-21 |              2112 Day
 2021-11-30 | Computer Security Day
 2021-11-23 |            Tardis Day
 2021-11-23 |        Fibbonacci Day

(4 rows)

token@cqlsh:lab01> SELECT event_date, name
         ...   FROM nerd_holidays
         ...   WHERE year_bucket=2021
         ...   AND event_date >= '2022-01-01' - 2mo
         ...   AND event_date < '2022-01-01';

 event_date | name
------------+-----------------------
 2021-12-21 |              2112 Day
 2021-11-30 | Computer Security Day
 2021-11-23 |            Tardis Day
 2021-11-23 |        Fibbonacci Day

(4 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 1mo   AND event_date < '2022-01-01';

 event_date | name
------------+----------
 2021-12-21 | 2112 Day

(1 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 2d;
 event_date | name
------------+------

(0 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 10d;

 event_date | name
------------+------

(0 rows)
token@cqlsh:lab01> SELECT event_date, name   FROM nerd_holidays   WHERE year_bucket=2021   AND event_date >= '2022-01-01' - 10w;

 event_date | name
------------+-----------------------
 2021-12-21 |              2112 Day
 2021-11-30 | Computer Security Day
 2021-11-23 |            Tardis Day
 2021-11-23 |        Fibbonacci Day

(4 rows)

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

token@cqlsh:lab01> select * from temperatura where event_time < toTimestamp(now()) - 1y  limit 10  allow filtering ;

 weatherstation_id | event_time                      | temperatura
-------------------+---------------------------------+-------------
          1234ABCD | 2019-04-03 07:05:00.000000+0000 |          10
          1234ABCD | 2019-04-03 07:06:00.000000+0000 |          10
          1234ABCD | 2019-04-03 07:07:00.000000+0000 |          11
          1234ABCD | 2019-04-03 07:08:00.000000+0000 |          11
          1234ABCD | 2019-04-03 07:09:00.000000+0000 |          12
          1234ABCD | 2019-04-03 07:10:00.000000+0000 |          12
          1234ABCD | 2019-04-03 07:11:00.000000+0000 |          12
          1234ABCD | 2019-04-03 07:12:00.000000+0000 |          13
          1234ABCD | 2019-04-03 07:13:00.000000+0000 |          13
          1234ABCD | 2019-04-03 07:14:00.000000+0000 |          13