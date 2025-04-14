CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS riveronisland (
    river TEXT,
    island TEXT,
    PRIMARY KEY (river)
);

INSERT INTO riveronisland (river, island) VALUES ('Thames', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Severn', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Avon', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Test', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Great Ouse', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Trent', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Ouse', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Aire', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Clyde', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Leven', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Ness', 'Great Britain');
INSERT INTO riveronisland (river, island) VALUES ('Bann', 'Ireland');
INSERT INTO riveronisland (river, island) VALUES ('Shannon', 'Ireland');
INSERT INTO riveronisland (river, island) VALUES ('Imera Meridionale', 'Sicilia');
INSERT INTO riveronisland (river, island) VALUES ('Tirso', 'Sardegna');
INSERT INTO riveronisland (river, island) VALUES ('Ishikari', 'Hokkaido');
INSERT INTO riveronisland (river, island) VALUES ('Shinano', 'Honshu');
INSERT INTO riveronisland (river, island) VALUES ('Tone', 'Honshu');
INSERT INTO riveronisland (river, island) VALUES ('Kitakami', 'Honshu');
INSERT INTO riveronisland (river, island) VALUES ('Yodo', 'Honshu');
INSERT INTO riveronisland (river, island) VALUES ('Kushiro', 'Hokkaido');
INSERT INTO riveronisland (river, island) VALUES ('Tamsui', 'Taiwan');
INSERT INTO riveronisland (river, island) VALUES ('Gaoping', 'Taiwan');
INSERT INTO riveronisland (river, island) VALUES ('Mahaweli', 'Sri Lanka');
INSERT INTO riveronisland (river, island) VALUES ('Asahan', 'Sumatra');
INSERT INTO riveronisland (river, island) VALUES ('Batang Hari', 'Sumatra');
INSERT INTO riveronisland (river, island) VALUES ('Solo', 'Java');
INSERT INTO riveronisland (river, island) VALUES ('Rajang', 'Borneo');
INSERT INTO riveronisland (river, island) VALUES ('Kapuas', 'Borneo');
INSERT INTO riveronisland (river, island) VALUES ('Mahakam', 'Borneo');
INSERT INTO riveronisland (river, island) VALUES ('Barito', 'Borneo');
INSERT INTO riveronisland (river, island) VALUES ('Pansipit River', 'Luzon');
INSERT INTO riveronisland (river, island) VALUES ('Pasig River', 'Luzon');
INSERT INTO riveronisland (river, island) VALUES ('Agus River', 'Mindanao');
INSERT INTO riveronisland (river, island) VALUES ('Mamberano', 'New Guinea');
INSERT INTO riveronisland (river, island) VALUES ('Digul', 'New Guinea');
INSERT INTO riveronisland (river, island) VALUES ('Sepik', 'New Guinea');
INSERT INTO riveronisland (river, island) VALUES ('Fly River', 'New Guinea');
INSERT INTO riveronisland (river, island) VALUES ('Ruggles River', 'Ellesmere Island');
INSERT INTO riveronisland (river, island) VALUES ('Koukdjuak River', 'Baffin Island');
INSERT INTO riveronisland (river, island) VALUES ('Manitou River', 'Manitoulin');
INSERT INTO riveronisland (river, island) VALUES ('Mindemoya River', 'Manitoulin');
INSERT INTO riveronisland (river, island) VALUES ('RÃ­o Azopardo', 'Tierra del Fuego');
INSERT INTO riveronisland (river, island) VALUES ('Waikato River', 'Te Ika-a-Maui (North Island)');
INSERT INTO riveronisland (river, island) VALUES ('Whangaehu River', 'Te Ika-a-Maui (North Island)');
INSERT INTO riveronisland (river, island) VALUES ('Clutha River', 'Te Waka-a-Maui (South Island)');
