CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS countryothername (
    country TEXT,
    othername TEXT,
    PRIMARY KEY (country)
);

INSERT INTO countryothername (country, othername) VALUES ('CZ', 'Czechia');
INSERT INTO countryothername (country, othername) VALUES ('MYA', 'Burma');
INSERT INTO countryothername (country, othername) VALUES ('SD', 'Swaziland');
