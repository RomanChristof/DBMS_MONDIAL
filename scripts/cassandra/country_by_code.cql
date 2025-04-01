CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS country_by_code (
    code TEXT PRIMARY KEY,
    name TEXT,
    capital TEXT,
    province TEXT,
    area DECIMAL,
    population DECIMAL
);


INSERT INTO country_by_code (code, name, capital, province, area, population)
VALUES ('AL', 'Albania', 'Tirana', 'Albania', 28750, 2821977);

INSERT INTO country_by_code (code, name, capital, province, area, population)
VALUES ('DE', 'Germany', 'Berlin', 'Berlin', 357022, 83166711);

