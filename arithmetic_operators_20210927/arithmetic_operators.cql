# Note, create and USE your own keyspace

CREATE TABLE nerd_holidays (
    year_bucket int,
    event_date date,
    id uuid,
    name text,
    PRIMARY KEY (year_bucket, event_date, id)
) WITH CLUSTERING ORDER BY (event_date DESC, id ASC);

CREATE TABLE baseball_stats (
    team text,
    name text,
    atbats int,
    caughtstealing int,
    doubles int,
    games int,
    hitbypitch int,
    hits int,
    homeruns int,
    jersey int,
    runs int,
    runsbattedin int,
    stolenbases int,
    strikeouts int,
    triples int,
    walks int,
    PRIMARY KEY (team, name)
) WITH CLUSTERING ORDER BY (name ASC);

INSERT INTO baseball_stats (team, name, jersey, games, atbats, runs, hits, doubles, triples, homeruns, runsbattedin, strikeouts, walks, hitbypitch, stolenbases, caughtstealing)
VALUES ('Terminators','Avery',4,17,48,34,28,4,0,0,12,3,17,2,28,0);

INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-03-14','Pi Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-03-25','Fall of Sauron',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-05-04','Star Wars Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-05-25','Geek Pride Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-05-25','Towel Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-09-19','Talk Like a Pirate Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-09-22','Hobbit Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-12-21','2112 Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-10-2','Ada Lovelace Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-10-21','Marty McFly Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-11-23','Fibbonacci Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-11-23','Tardis Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-11-30','Computer Security Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-02-07','e Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-01-25','Apple Computer Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-04-05','First Contact Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-04-12','Yuri''s Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-04-12','World Space Party',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-04-30','National Tabletop Day',uuid());
INSERT INTO nerd_holidays (year_bucket, event_date, name, id)
VALUES (2021,'2021-08-12','IBM PC Day',uuid());
