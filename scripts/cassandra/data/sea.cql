CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS sea (
    name TEXT,
    area DECIMAL,
    depth DECIMAL,
    PRIMARY KEY (name)
);

INSERT INTO sea (name, area, depth) VALUES ('Atlantic Ocean', 0, 9219);
INSERT INTO sea (name, area, depth) VALUES ('Mediterranean Sea', 2500000, 5267);
INSERT INTO sea (name, area, depth) VALUES ('Black Sea', 436000, 2211);
INSERT INTO sea (name, area, depth) VALUES ('Marmara Sea', 11350, 1355);
INSERT INTO sea (name, area, depth) VALUES ('Sea of Azov', 37600, 100);
INSERT INTO sea (name, area, depth) VALUES ('The Channel', 75000, 175);
INSERT INTO sea (name, area, depth) VALUES ('Irish Sea', 46000, 272);
INSERT INTO sea (name, area, depth) VALUES ('North Sea', 575000, 200);
INSERT INTO sea (name, area, depth) VALUES ('Skagerrak', 47000, 725);
INSERT INTO sea (name, area, depth) VALUES ('Kattegat', 30000, 94);
INSERT INTO sea (name, area, depth) VALUES ('Baltic Sea', 377000, 459);
INSERT INTO sea (name, area, depth) VALUES ('Norwegian Sea', 1383000, 3970);
INSERT INTO sea (name, area, depth) VALUES ('Greenland Sea', 1205000, 4846);
INSERT INTO sea (name, area, depth) VALUES ('Arctic Ocean', 0, 5608);
INSERT INTO sea (name, area, depth) VALUES ('Barents Sea', 1400000, 450);
INSERT INTO sea (name, area, depth) VALUES ('White Sea', 90000, 340);
INSERT INTO sea (name, area, depth) VALUES ('Kara Sea', 926000, 620);
INSERT INTO sea (name, area, depth) VALUES ('Laptev Sea', 714000, 2980);
INSERT INTO sea (name, area, depth) VALUES ('East Sibirian Sea', 1518000, 155);
INSERT INTO sea (name, area, depth) VALUES ('Chukchi Sea', 620000, 0);
INSERT INTO sea (name, area, depth) VALUES ('Bering Sea', 2300000, 4096);
INSERT INTO sea (name, area, depth) VALUES ('Hudson Bay', 1230000, 258);
INSERT INTO sea (name, area, depth) VALUES ('Labrador Sea', 841000, 4316);
INSERT INTO sea (name, area, depth) VALUES ('Baffin Bay', 689000, 2905);
INSERT INTO sea (name, area, depth) VALUES ('Gulf of Mexico', 1550000, 4375);
INSERT INTO sea (name, area, depth) VALUES ('Caribbean Sea', 2754000, 7240);
INSERT INTO sea (name, area, depth) VALUES ('Lago de Maracaibo', 13512, 50);
INSERT INTO sea (name, area, depth) VALUES ('Pacific Ocean', 0, 11034);
INSERT INTO sea (name, area, depth) VALUES ('San Francisco Bay', 13512, 0);
INSERT INTO sea (name, area, depth) VALUES ('Gulf of California', 160000, 0);
INSERT INTO sea (name, area, depth) VALUES ('Sea of Okhotsk', 1583000, 3372);
INSERT INTO sea (name, area, depth) VALUES ('Sea of Japan', 978000, 4036);
INSERT INTO sea (name, area, depth) VALUES ('Seto Inland Sea', 23200, 105);
INSERT INTO sea (name, area, depth) VALUES ('Yellow Sea', 380000, 200);
INSERT INTO sea (name, area, depth) VALUES ('East China Sea', 1249000, 2370);
INSERT INTO sea (name, area, depth) VALUES ('South China Sea', 3500000, 5420);
INSERT INTO sea (name, area, depth) VALUES ('Gulf of Thailand', 320000, 80);
INSERT INTO sea (name, area, depth) VALUES ('Indian Ocean', 0, 6400);
INSERT INTO sea (name, area, depth) VALUES ('Arabian Sea', 3862000, 4650);
INSERT INTO sea (name, area, depth) VALUES ('Gulf of Oman', 181000, 3350);
INSERT INTO sea (name, area, depth) VALUES ('Persian Gulf', 251000, 102);
INSERT INTO sea (name, area, depth) VALUES ('Red Sea', 438000, 2635);
INSERT INTO sea (name, area, depth) VALUES ('Gulf of Aden', 410000, 3680);
INSERT INTO sea (name, area, depth) VALUES ('Gulf of Bengal', 2172000, 4045);
INSERT INTO sea (name, area, depth) VALUES ('Andaman Sea', 600000, 3113);
INSERT INTO sea (name, area, depth) VALUES ('Malakka Strait', 200000, 104);
INSERT INTO sea (name, area, depth) VALUES ('Java Sea', 320000, 2333);
INSERT INTO sea (name, area, depth) VALUES ('Banda Sea', 500000, 7440);
INSERT INTO sea (name, area, depth) VALUES ('Sulawesi Sea', 280000, 6218);
INSERT INTO sea (name, area, depth) VALUES ('Sulu Sea', 420000, 6218);
INSERT INTO sea (name, area, depth) VALUES ('Savu Sea', 60000, 3500);
INSERT INTO sea (name, area, depth) VALUES ('Timor Sea', 100000, 3300);
INSERT INTO sea (name, area, depth) VALUES ('Arafura Sea', 650000, 3680);
INSERT INTO sea (name, area, depth) VALUES ('Coral Sea', 4070000, 7661);
INSERT INTO sea (name, area, depth) VALUES ('Solomon Sea', 720000, 9140);
INSERT INTO sea (name, area, depth) VALUES ('Tasman Sea', 2331000, 5200);
