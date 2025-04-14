CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS continent (
    name TEXT,
    area DECIMAL,
    PRIMARY KEY (name)
);

INSERT INTO continent (name, area) VALUES ('Europe', 10523000);
INSERT INTO continent (name, area) VALUES ('Asia', 44614500);
INSERT INTO continent (name, area) VALUES ('Australia/Oceania', 9000000);
INSERT INTO continent (name, area) VALUES ('Africa', 30221500);
INSERT INTO continent (name, area) VALUES ('North America', 24709000);
INSERT INTO continent (name, area) VALUES ('South America', 17840000);
