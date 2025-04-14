CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS desert (
    name TEXT,
    area DECIMAL,
    coordinates TEXT,
    PRIMARY KEY (name)
);

INSERT INTO desert (name, area, coordinates) VALUES ('Kalahari', 1200000, '(-22,21)');
INSERT INTO desert (name, area, coordinates) VALUES ('Namib', 95000, '(-25,15)');
INSERT INTO desert (name, area, coordinates) VALUES ('Danakil', 137000, '(14.2,40)');
INSERT INTO desert (name, area, coordinates) VALUES ('Somali Desert', 450000, '(8,48)');
INSERT INTO desert (name, area, coordinates) VALUES ('Chalbi', 1500, '(3,37.3)');
INSERT INTO desert (name, area, coordinates) VALUES ('Ferlo', 70000, '(15,-14)');
INSERT INTO desert (name, area, coordinates) VALUES ('Trarza', 50000, '(18,-15)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erg Ouarane', 80000, '(21,-11)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erg Maqteir', 40000, '(22,-11)');
INSERT INTO desert (name, area, coordinates) VALUES ('Saguia el-Hamra', 25000, '(27,-10)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erg Igidi', 150000, '(27,-5)');
INSERT INTO desert (name, area, coordinates) VALUES ('Hamada du Draa', 35000, '(28.5,-7.5)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erg Chech', 10000, '(25,-3)');
INSERT INTO desert (name, area, coordinates) VALUES ('Tanezrouft', 160000, '(23,0)');
INSERT INTO desert (name, area, coordinates) VALUES ('Grand Erg Ouest', 200000, '(30,-1)');
INSERT INTO desert (name, area, coordinates) VALUES ('Grand Erg Est', 150000, '(31,8)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erg Isaouane', 80000, '(28,8)');
INSERT INTO desert (name, area, coordinates) VALUES ('Hamada al-Hamra', 84000, '(30,12)');
INSERT INTO desert (name, area, coordinates) VALUES ('Fesan', 300000, '(26,13)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erg Rebiana', 200000, '(23,22)');
INSERT INTO desert (name, area, coordinates) VALUES ('Talak', 100000, '(17,6)');
INSERT INTO desert (name, area, coordinates) VALUES ('Tenere', 600000, '(18,11)');
INSERT INTO desert (name, area, coordinates) VALUES ('Djourab', 100000, '(17,18)');
INSERT INTO desert (name, area, coordinates) VALUES ('Erdi Ennedi', 180000, '(18,22)');
INSERT INTO desert (name, area, coordinates) VALUES ('Libyan Desert', 1100000, '(24,26)');
INSERT INTO desert (name, area, coordinates) VALUES ('Darfur', 500000, '(15,27)');
INSERT INTO desert (name, area, coordinates) VALUES ('Arabian Desert', 50000, '(33,26)');
INSERT INTO desert (name, area, coordinates) VALUES ('Nubian Desert', 250000, '(20.5,33)');
INSERT INTO desert (name, area, coordinates) VALUES ('Negev', 12000, '(30.5,35)');
INSERT INTO desert (name, area, coordinates) VALUES ('Syrian Desert', 518000, '(33,39)');
INSERT INTO desert (name, area, coordinates) VALUES ('Nefud', 78000, '(28,42)');
INSERT INTO desert (name, area, coordinates) VALUES ('Rub Al Chali', 780000, '(21,51)');
INSERT INTO desert (name, area, coordinates) VALUES ('Dascht-e-Kavir', 77600, '(32.5,55)');
INSERT INTO desert (name, area, coordinates) VALUES ('Dascht-e-Lut', 51000, '(30.6,59)');
INSERT INTO desert (name, area, coordinates) VALUES ('Dasht-e-Margoh', 150000, '(31,62)');
INSERT INTO desert (name, area, coordinates) VALUES ('Rigestan', 25000, '(30,65)');
INSERT INTO desert (name, area, coordinates) VALUES ('Thar', 240000, '(27.5,72)');
INSERT INTO desert (name, area, coordinates) VALUES ('Ryn', 80000, '(48,47)');
INSERT INTO desert (name, area, coordinates) VALUES ('Ust Urt', 180000, '(43,56)');
INSERT INTO desert (name, area, coordinates) VALUES ('Karakum', 400000, '(40,60)');
INSERT INTO desert (name, area, coordinates) VALUES ('Kysylkum', 200000, '(44,65)');
INSERT INTO desert (name, area, coordinates) VALUES ('Aralkum', 10000, '(45.5,60)');
INSERT INTO desert (name, area, coordinates) VALUES ('Muyunkum', 37500, '(44,72)');
INSERT INTO desert (name, area, coordinates) VALUES ('Takla Makan', 300000, '(38,82)');
INSERT INTO desert (name, area, coordinates) VALUES ('Gurbantunggut', 48800, '(45,87.5)');
INSERT INTO desert (name, area, coordinates) VALUES ('Kum Tagh', 22000, '(40,92)');
INSERT INTO desert (name, area, coordinates) VALUES ('Qaidam', 120000, '(37.5,95)');
INSERT INTO desert (name, area, coordinates) VALUES ('Gobi', 1000000, '(41,105)');
INSERT INTO desert (name, area, coordinates) VALUES ('Ordos', 90000, '(38,108)');
INSERT INTO desert (name, area, coordinates) VALUES ('Great Sandy Desert', 360000, '(-20,123)');
INSERT INTO desert (name, area, coordinates) VALUES ('Gibson Desert', 310800, '(-23,125)');
INSERT INTO desert (name, area, coordinates) VALUES ('Great Victoria Desert', 424400, '(-29,129)');
INSERT INTO desert (name, area, coordinates) VALUES ('Nullarbor Plain', 200000, '(-31,129)');
INSERT INTO desert (name, area, coordinates) VALUES ('Simpson Desert', 176500, '(-25,137)');
INSERT INTO desert (name, area, coordinates) VALUES ('Red Centre', 1000000, '(-26,135)');
INSERT INTO desert (name, area, coordinates) VALUES ('Tanami', 37500, '(-20,130)');
INSERT INTO desert (name, area, coordinates) VALUES ('Sturt Desert', 13000, '(-29,141)');
INSERT INTO desert (name, area, coordinates) VALUES ('Owyhee', 36000, '(42,-117)');
INSERT INTO desert (name, area, coordinates) VALUES ('Great Salt Lake Desert', 10360, '(41,-114)');
INSERT INTO desert (name, area, coordinates) VALUES ('Colorado Plateau', 337000, '(36,-110)');
INSERT INTO desert (name, area, coordinates) VALUES ('Great Basin', 300000, '(38,-117)');
INSERT INTO desert (name, area, coordinates) VALUES ('Mojave', 57000, '(36.2,-115.2)');
INSERT INTO desert (name, area, coordinates) VALUES ('Sonora', 320000, '(32,-113)');
INSERT INTO desert (name, area, coordinates) VALUES ('Chihuahua', 360000, '(31,-105)');
INSERT INTO desert (name, area, coordinates) VALUES ('Baja California Desert', 30000, '(31,-116)');
INSERT INTO desert (name, area, coordinates) VALUES ('Atacama', 181300, '(-24.5,-69.25)');
