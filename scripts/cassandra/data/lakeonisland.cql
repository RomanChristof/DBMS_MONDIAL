CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS lakeonisland (
    lake TEXT,
    island TEXT,
    PRIMARY KEY (lake)
);

INSERT INTO lakeonisland (lake, island) VALUES ('ArresÃ¸', 'Seeland');
INSERT INTO lakeonisland (lake, island) VALUES ('Lough Neagh', 'Ireland');
INSERT INTO lakeonisland (lake, island) VALUES ('Loch Ness', 'Great Britain');
INSERT INTO lakeonisland (lake, island) VALUES ('Loch Lomond', 'Great Britain');
INSERT INTO lakeonisland (lake, island) VALUES ('Koltsevoye Lake', 'Onekotan');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Biwa', 'Honshu');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Kussharo', 'Hokkaido');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Tazawa', 'Honshu');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Pinatubo', 'Luzon');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Taal', 'Luzon');
INSERT INTO lakeonisland (lake, island) VALUES ('Taal Crater Lake', 'Taal Volcano Island');
INSERT INTO lakeonisland (lake, island) VALUES ('Laguna de Bay', 'Luzon');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Lanao', 'Mindanao');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Toba', 'Sumatra');
INSERT INTO lakeonisland (lake, island) VALUES ('Danau Kumbang', 'Sumatra');
INSERT INTO lakeonisland (lake, island) VALUES ('Segara Anak', 'Lombok');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Hazen', 'Ellesmere Island');
INSERT INTO lakeonisland (lake, island) VALUES ('Nettilling Lake', 'Baffin Island');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Manitou', 'Manitoulin');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Mindemoya', 'Manitoulin');
INSERT INTO lakeonisland (lake, island) VALUES ('Fagnano Lake', 'Tierra del Fuego');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Taupo', 'Te Ika-a-Maui (North Island)');
INSERT INTO lakeonisland (lake, island) VALUES ('Te Wai Ä-moe', 'Te Ika-a-Maui (North Island)');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Wanaka', 'Te Waka-a-Maui (South Island)');
INSERT INTO lakeonisland (lake, island) VALUES ('Lake Tengano', 'Rennell Island');
