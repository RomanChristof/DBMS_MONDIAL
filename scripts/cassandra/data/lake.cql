CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE mondial;

CREATE TABLE IF NOT EXISTS lake (
    name TEXT,
    river TEXT,
    area DECIMAL,
    elevation DECIMAL,
    depth DECIMAL,
    height DECIMAL,
    type TEXT,
    coordinates TEXT,
    PRIMARY KEY (name)
);

INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('InarijÃ¤rvi', 'Paatsjoki', 1040, 119, 92, 0, '', '(68.95,27.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('OulujÃ¤rvi', 'Oulujoki', 928, 123, 35, 0, '', '(64.3,27.25)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Saimaa', 'Vuoksi', 4370, 76, 85, 0, '', '(61.3,28.0)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('PÃ¤ijÃ¤nne', 'Kymijoki', 1118, 78, 95, 0, '', '(61.5,25.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Mjoesa-See', 'LÃ¥gen', 368, 123, 449, 0, '', '(60.65,11)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Storuman', 'UmeÃ¤lv', 173, 419, 139, 0, '', '(65.22,16.88)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Siljan', 'Ã–sterdalÃ¤lv', 290, 161, 134, 0, 'impact', '(60.85,14.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('MÃ¤laren', '', 1140, 0.7, 66, 0, '', '(59.4,17.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('VÃ¤nern', 'GÃ¶taÃ¤lv', 5648, 44, 106, 0, '', '(58.8,13.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('VÃ¤ttern', 'Motala StrÃ¶m', 1900, 88, 119, 0, '', '(58.3,14.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('ArresÃ¸', '', 40.2, 3.9, 5.6, 0, '', '(56,12.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lough Neagh', 'Bann', 392, 15, 25, 0, '', '(54.6,-6.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Loch Ness', 'Ness', 56, 16, 226, 0, '', '(57.31,-4.44)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Loch Lomond', 'Leven', 71, 7.9, 190, 0, '', '(56.08,-4.59)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Bodensee', 'Rhein', 538.5, 395, 254, 0, '', '(47.6,9.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Chiemsee', 'Alz', 80, 518, 73, 0, '', '(47.9,12.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Starnberger See', 'WÃ¼rm', 56.36, 584, 127.7, 0, '', '(47.92,11.32)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ammersee', 'Ammer', 46.6, 533, 81.1, 0, '', '(48,11.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Laacher Maar', '', 3.3, 275, 53, 0, 'caldera', '(50.4,7.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lac Leman', 'Rhone', 581, 372, 310, 0, '', '(46.5,6.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lac de Serre-PonÃ§on', 'Durance', 29, 785, 120, 124, 'dam', '(44.52,6.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('ZÃ¼richsee', 'Limmat', 88, 406, 136, 0, '', '(47.501794,8.236313)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Thunersee', 'Aare', 48.3, 558, 217, 0, '', '(46.69,7.716)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Brienzersee', 'Aare', 29.8, 564, 260, 0, '', '(46.73,7.97)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lac de NeuchÃ¢tel', 'Zihl', 218, 429, 153, 0, '', '(46.90,6.86)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Bielersee', 'Aare', 40, 428, 74, 0, '', '(47.08,7.17)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('VierwaldstÃ¤ttersee', 'Reuss', 113.7, 434, 214, 0, '', '(47.0,8.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago Maggiore', 'Ticino', 212, 193, 372, 0, '', '(45.96,8.65)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago di Lugano', 'Tresa', 48.7, 271, 288, 0, '', '(45.98,8.97)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago di Como', 'Adda', 146, 197, 425, 0, '', '(46,9.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago di Garda', 'Mincio', 370, 65, 346, 0, '', '(45.6,10.65)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago Trasimeno', '', 128, 259, 7, 0, '', '(43.1,12.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago di Bolsena', 'Marta', 114, 335, 151, 0, 'caldera', '(42.6,11.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago di Bracciano', 'Arrone', 57, 164, 165, 0, 'caldera', '(42.1,12.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago Albano', '', 6, 291, 170, 0, 'caldera', '(41.75,12.66)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago Omodeo', 'Tirso', 29, 118, 60, 0, 'dam', '(40.14,8.91)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Laguna de Gallocanta', '', 14.4, 995, 1.5, 0, '', '(40.96,-1.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Neusiedlersee', '', 320, 115.5, 1.8, 0, 'saline', '(47.8,16.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Balaton', '', 594, 104, 12.5, 0, '', '(46.8,17.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Orava Reservoir', 'Orava', 35.2, 601, 38, 28, 'dam', '(49.40,19.55)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Skutari', 'Buna', 368, 7, 44, 0, '', '(42.2,19.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Prespa', '', 273, 849, 54, 0, '', '(40.9,21.0)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Ohrid', 'Black Drin', 367, 695, 289, 0, '', '(41.0,20.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kiev Reservoir', 'Dnepr', 922, 99, 8, 0, 'dam', '(50.6,30.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kakhovka Reservoir', 'Dnepr', 2155, 44, 26, 0, 'dam', '(47.45,34.20)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kremenchuk Reservoir', 'Dnepr', 2252, 44, 28, 0, 'dam', '(49.2,32.65)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Rybinsk Reservoir', 'Volga', 4580, 102, 28, 0, 'dam', '(58.7,38.42)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kuybyshev Reservoir', 'Volga', 6450, 53, 41, 0, 'dam', '(53.5,49.45)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kama Reservoir', 'Kama', 1915, 108.5, 30, 37, 'dam', '(58.68,56.11)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lower Kama Reservoir', 'Kama', 1370, 63, 41, 30, 'dam', '(55.89,52.80)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Ladoga', 'Newa', 18400, 4, 225, 0, '', '(60.82,31.53)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Onega', 'Swir', 9616, 33, 127, 0, '', '(61.67,35.485)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Wygozero', 'Wyg', 1250, 89, 18, 0, 'dam', '(35.485,34.74)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Pskovskoje', 'Narva', 3555, 30, 14.6, 0, '', '(58.68,27.49)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Novosibirsk Reservoir', 'Ob', 1070, 114, 25, 33, 'dam', '(54.85,82.99)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Keta', 'Pyasina', 452, 85, 180, 0, '', '(68.74,90.07)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Khantayskoye', 'Chantaika', 822, 65, 420, 0, '', '(68.33,91.00)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Taimyr', 'Taimyra', 4560, 5, 26, 0, '', '(74.5,101.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Baikal', 'Angara', 31492, 455, 1637, 0, '', '(53,108)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Chanka', 'Sungacha', 4190, 68, 10.6, 0, '', '(45,132.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Koltsevoye Lake', '', 25, 384, 0, 0, 'caldera', '(49.36,154.71)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Dead Sea', '', 41650, -422, 378, 0, 'saline', '(31.3,35.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Genezareth', 'Jordan', 165, -212, 46, 0, '', '(32.81,35.60)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Assad', 'Euphrat', 610, 310, 0, 60, 'dam', '(35.88,38.57)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Van', '', 3740, 1719, 457, 0, 'saline', '(38.6,42.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Tuz GÃ¶lÃ¼', '', 1600, 905, 1, 0, 'saline', '(38.73,33.39)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Nemrut GÃ¶lÃ¼', '', 6, 2200, 155, 0, 'caldera', '(38.65,42.23)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Keban', 'Euphrat', 675, 820, 0, 207, '', '(38.8,38.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('AtatÃ¼rk Baraj GÃ¶lÃ¼', 'Euphrat', 817, 542, 0, 169, 'dam', '(37.48,38.31)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Sevan', 'Hrazdan', 1242, 1904, 79, 0, 'saline', '(40.3,45.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Urmia', '', 5470, 1280, 7, 0, 'saline', '(37.7,45.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Daryacheh ye Namak', '', 1800, 790, 1, 0, 'saline', '(34.5,51.88)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Hamun', '', 1600, 500, 0, 0, 'saline', '(30.8,61.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Caspian Sea', '', 386400, -28, 995, 0, 'saline', '(41,51)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('GarabogazkÃ¶l', '', 18000, -28, 7, 0, 'saline', '(41.3,53.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('North Aral Sea', '', 3300, 40, 18, 0, 'saline', '(46.5,60.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('South Aral Sea', '', 3500, 29, 15, 0, 'saline', '(45.2,58.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Bukhtarma Reservoir', 'Irtysh', 5490, 388, 0, 90, 'dam', '(49.66,83.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kapshagay Dam', 'Ili', 1847, 485, 0, 56, 'dam', '(43.9,74.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Ozero Balchash', '', 18428, 342, 26, 0, 'saline', '(46.55,74.88)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Issyk-Kul', '', 6236, 1609, 668, 0, 'saline', '(42.4,77.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Koli Sarez', 'Bartang', 80, 3250, 500, 0, 'naturaldam', '(38.2,72.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Karakul', '', 380, 4020, 230, 0, 'saline', '(39.0,73.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lop Nor', '', 5000, 780, 0, 0, 'saline', '(40.2,90.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Aydingkol', '', 152, -155, 0, 0, 'saline', '(42.65,89.27)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Uws Nuur', '', 3350, 753, 20, 0, 'saline', '(50.3,92.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('ChÃ¶wsgÃ¶l Nuur', 'Egiin Gol', 2760, 1624, 262, 0, '', '(51.2,100.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Hulun Nur', '', 2315, 539, 9, 0, '', '(48.95,117.45)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Qinghai Lake', '', 4583, 3195, 27, 0, 'saline', '(36.9,100.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Nam Co', '', 1855, 4718, 125, 0, 'saline', '(30.7,90.55)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Manasarovar', 'Satluj', 412, 4586, 77, 0, '', '(30.67,81.47)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Rakshastal', 'Satluj', 258, 4572, 0, 0, '', '(30.7,81.23)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Hongze Hu', 'Huai', 1960, 15, 0, 5.1, 'dam', '(33.3,118.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Tai Hu', '', 2250, 15, 0, 0, '', '(31.17,120.15)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Poyang Hu', '', 3585, 16.5, 25, 0, '', '(29.1,116.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Xiluodu', 'Yangtze', 140, 600, 0, 285.5, 'dam', '(28.25,103.65)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Three Gorges Reservoir', 'Yangtze', 1084, 175, 0, 181, 'dam', '(30.82,111.00)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Dongting Hu', '', 2820, 33, 31, 0, '', '(29.3,112.95)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Heaven Lake', '', 9.82, 2189, 384, 0, 'crater', '(42.00,128.06)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Supung Dam', 'Yalu', 274, 126, 0, 106, 'dam', '(40.46,124.97)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Biwa', 'Yodo', 670, 85, 104, 0, '', '(35.32,136.17)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Kussharo', 'Kushiro', 79.5, 121, 117, 0, 'caldera', '(43.63,144.33)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Tazawa', '', 25.9, 290, 423, 0, 'caldera', '(39.72,140.66)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Pinatubo', '', 1.8, 900, 600, 0, 'crater', '(15.14,120.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Taal', 'Pansipit River', 234.2, 5, 172, 0, 'caldera', '(13.98,121.02)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Taal Crater Lake', '', 0.3, 5, 172, 0, 'crater', '(14.00,121.00)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Laguna de Bay', 'Pasig River', 911, 1, 20, 0, '', '(14.4,121.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Lanao', 'Agus River', 334, 700, 112, 0, '', '(7.9,124.25)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Toba', 'Asahan', 1103, 905, 505, 0, 'caldera', '(2.6,98.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Danau Kumbang', '', 0.04, 2560, 0, 0, 'crater', '(-2.50,101.86)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Segara Anak', '', 11.3, 2008, 190, 0, 'caldera', '(-8.40,116.45)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Tonle Sap', 'Tonle Sap River', 16000, 0.5, 10, 0, '', '(12.88,104.07)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Bhumibol', 'Mae Nam Ping', 308, 250, 0, 154, 'dam', '(17.24,98.97)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Sirikit', 'Mae Nam Nan', 259, 160, 0, 113, 'dam', '(17.76,100.55)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Songkhla Lake', '', 1040, 0, 0, 0, '', '(7.2,100.47)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Nasser', 'Nile', 5250, 183, 180, 0, 'dam', '(22.4,31.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Chott Melrhir', '', 6700, -40, 3, 0, 'saline', '(34.33,6.33)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Kossou', 'Bandama', 1898, 195, 0, 58, 'dam', '(7.00,-5.50)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Volta', 'Volta', 8502, 85, 75, 0, 'dam', '(6.3,0.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Bosumtwi', '', 49, 107, 81, 0, 'impact', '(6.5,-1.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Kainji', 'Niger', 1243, 140, 12, 65, 'dam', '(10.4,4.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Chad Lake', '', 23000, 250, 7, 0, 'saline', '(13.2,14.0)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Barrage de Mbakaou', 'Sanaga', 348, 838, 29, 19, 'dam', '(6.4,12.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Nyos', '', 1.58, 250, 1091, 0, 'caldera', '(6.44,10.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lac Assal', '', 54, -155, 20, 0, 'saline', '(11.65,42.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Abbe', '', 320, 243, 37, 0, 'saline', '(11.2,41.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Abaya', '', 1285, 619, 13, 0, 'saline', '(6.3,37.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Chew Bahir', '', 800, 520, 7.5, 0, 'saline', '(4.7,36.85)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Turkana', '', 6405, 375, 73, 0, 'saline', '(3.6,36.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Tana', 'Blue Nile', 3000, 1830, 14, 0, '', '(12.0,37.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake No', 'White Nile', 100, 390, 0, 0, '', '(9.5,30.45)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Sese Seko/Albertsee', 'Bahr el-Djebel/Albert Nil', 5347, 619, 48, 0, '', '(1.7,30.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Rutanzige/Eduardsee', 'Semliki', 2325, 920, 112, 0, '', '(-0.35,29.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Kyoga', 'Victoria Nile', 1720, 914, 5.7, 0, '', '(1.5,33)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Victoria', 'Victoria Nile', 68870, 1134, 85, 0, '', '(-1,33)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Kivu', 'Ruzizi', 2650, 1462, 450, 0, '', '(-1.8,29.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Tanganjika', 'Lukuga', 32893, 782, 1470, 0, '', '(-6,30)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Mweru', 'Luvua', 5120, 931, 27, 0, '', '(-9,28.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Bangweulu', 'Luapula', 10000, 1140, 4, 0, '', '(-11.2,29.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Rukwa', '', 5760, 800, 3.4, 0, 'saline', '(-8,32.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Eyasi', '', 1050, 1030, 0, 0, 'saline', '(-3.6,35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Natron', '', 1040, 600, 2, 0, 'saline', '(-2.4,36)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Malawi', 'Shire', 29600, 474, 704, 0, '', '(-12,34)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Chilwa', '', 687, 474, 2, 0, 'saline', '(-15.3,35.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Mai Ndombe', 'Fimi', 8200, 300, 10, 0, '', '(-2.05,18.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Malebo Pool', 'Congo', 500, 272, 10, 0, '', '(-4.3,15.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Cahora-Bassa', 'Zambezi', 2739, 326, 157, 171, 'dam', '(-15.6,32.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Kariba', 'Zambezi', 5580, 479, 97, 128, 'dam', '(-16.5,28.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Ngami', '', 770, 925, 2, 0, 'saline', '(-20.5,23)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Etoscha Salt Pan', '', 6133, 1000, 0, 0, 'saline', '(-18.8,16)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Makgadikgadi Salt Pan', '', 12000, 900, 0, 0, 'saline', '(-25.5,21)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Hazen', 'Ruggles River', 537.5, 158, 269, 0, '', '(81.75,-71.05)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Nettilling Lake', 'Koukdjuak River', 5542, 30, 132, 0, '', '(66.3,-70.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Clark', 'Newhalen River', 370, 77, 322, 0, '', '(60,-154)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Iliamna Lake', 'Kvichak River', 2622, 14, 301, 0, '', '(60,-155)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Great Bear Lake', 'Great Bear River', 31792, 186, 446, 0, '', '(65.9,-120.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Great Slave Lake', 'Mackenzie River', 28568, 156, 614, 0, '', '(61.7,-113.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Athabasca', 'Slave River', 7850, 213, 124, 0, '', '(59.26,-109.45)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Atlin Lake', 'Yukon River', 798, 668, 283, 0, '', '(59.5,-133.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Winnipeg', 'Nelson River', 24420, 218, 18, 0, '', '(52.77,-97.97)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Nipigon', 'Nipigon River', 4848, 260, 165, 0, '', '(49.83,-88.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Manicouagan', 'Manicouagan River', 1942, 360, 350, 214, 'impact', '(51.4,-68.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Ontario', 'Saint Lawrence River', 18960, 75, 244, 0, '', '(43.695,-77.96)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Erie', 'Niagara River', 25745, 174, 64, 0, '', '(42.16,-81.27)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Huron', 'Detroit River', 59600, 176, 229, 0, '', '(44.795,-82.44)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Manitou', 'Manitou River', 104, 215, 0, 0, '', '(45.76,-82.0)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Mindemoya', 'Mindemoya River', 38.7, 200, 21, 0, '', '(45.76,-82.21)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Michigan', 'Straits of Mackinac', 57800, 176, 281, 0, '', '(43.69,-87.08)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Superior', 'Saint Marys River', 82103, 184, 405, 0, '', '(47.7675,-87.37)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Champlain', 'Riviere Richelieu', 1130, 30, 121, 0, '', '(44.56,-73.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Winnipesaukee', 'Merrimack River', 186, 153, 55, 0, '', '(43.6,-71.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Okeechobee', 'Caloosahatchee River', 1890, 4, 4, 0, '', '(26.94,-80.80)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Kentucky Lake', 'Tennessee River', 648, 375, 23, 63, 'dam', '(37,-88.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Chickamauga Lake', 'Tennessee River', 147, 710, 22, 39, 'dam', '(35.4,-85.0)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Franklin. D. Roosevelt Lake', 'Columbia River', 320, 390, 0, 168, 'dam', '(47.95,-119)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Pend Oreille', 'Clark Fork River', 383, 630, 351, 0, '', '(48.02,-116.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Chelan', 'Chelan River', 383, 335, 453, 0, '', '(48.0,-120.0)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Mazama Crater Lake', '', 53.2, 1883, 594, 0, 'caldera', '(42.9,-122.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Great Salt Lake', '', 4400, 1279, 10, 0, 'saline', '(41.15,-112.60)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Utah Lake', 'Jordan River', 392, 1368, 4.2, 0, '', '(40.19,-111.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Tahoe', 'Truckee River', 497, 1900, 501, 0, '', '(39,-120)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Pyramid Lake', '', 487, 1155, 108, 0, 'saline', '(40.03,-119.57)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Mono Lake', '', 183, 1946, 48, 0, 'saline', '(38.02,-119.00)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Oroville', 'Feather River', 64, 275, 274, 235, 'dam', '(39.55,-121.47)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Powell', 'Colorado', 645, 1127, 171, 216, 'dam', '(36.9,-111.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Mead', 'Colorado', 640, 372, 180, 221, 'dam', '(36.05,-114.75)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Fort Peck Lake', 'Missouri', 981, 690, 67, 76, 'dam', '(48.00,-106.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Sakakawea', 'Missouri', 1578, 554, 55, 64, 'dam', '(47.48,-101.42)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Oahe', 'Missouri', 1453, 502, 62, 75, 'dam', '(44.45,-100.40)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago de Chapala', 'Rio Lerma Santiago', 1685, 1520, 12, 0, '', '(20.22,-103.05)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Presa Malpaso', 'Rio Grijalva', 381, 180, 0, 137.5, 'dam', '(17.18,-93.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Presa Angostura', 'Rio Grijalva', 760, 530, 0, 146, 'dam', '(16.4,-92.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago de AtitlÃ¡n', '', 130, 1562, 340, 0, 'caldera', '(14.7,-91.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago de Izabal', 'Rio Dulce', 598.6, 1.5, 18, 0, '', '(15.5,-89.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago Enriquillo', '', 375, -27, 52, 0, 'saline', '(18.52,-71.66)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Nicaragua', 'Rio San Juan', 8157, 31, 45, 0, '', '(11.60,-85.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Managua', '', 1035, 39, 20, 0, '', '(12.35,-86.4)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Irazu', '', 1, 3200, 0, 0, 'crater', '(10,-83.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Bayano', 'Rio Chepo', 353, 60, 0, 0, 'dam', '(9.15,-78.76)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('La Brea Pitch Lake', '', 0.4, 60, 75, 0, 'asphalt', '(10.24,-61.64)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Represa de Ilha Solteira', 'Parana', 1195, 328, 0, 85, 'dam', '(-20.2,-51.2)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago de Sobradinho', 'Rio Sao Francisco', 4214, 392, 30, 41, 'dam', '(-9.46,-40.7)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Quilotoa', '', 5, 3500, 250, 0, '', '(-0.85,-78.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Junin', 'Mantaro', 530, 4082, 12, 0, '', '(-11.0,-76.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Titicaca', 'Rio Desaguadero', 8372, 3812, 281, 0, '', '(-15.84,-69.33)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Poopo', '', 1340, 3686, 0, 0, 'saline', '(-18.55,-67.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Salar de Uyuni', '', 10582, 3650, 0, 0, 'saline', '(-20.1,-67.5)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Laguna Verde', '', 1.7, 4329, 0, 0, 'saline', '(-22.8,-67.8)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Salar de Atacama', '', 3051, 2300, 1700, 0, 'saline', '(-23.4,-68.25)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Licancabur Crater Lake', '', 0.005, 5600, 0, 0, 'crater', '(-22.8,-67.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Laguna Mar Chiquita', '', 5770, 71, 19, 0, 'saline', '(-30.5,-62.67)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Nahuel Huapi', 'RÃ­o Limay', 531, 770, 460, 0, '', '(-41.08,-71.33)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago General Carrera', 'RÃ­o Baker', 1850, 217, 590, 0, '', '(-46.47,-71.63)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Laguna del CarbÃ³n', '', 9, -105, 0, 0, 'saline', '(-49.58,-68.35)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lago Argentino', 'RÃ­o Santa Cruz', 1415, 187, 500, 0, '', '(-50.23,-72.52)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Fagnano Lake', 'RÃ­o Azopardo', 645, 140, 449, 0, '', '(-54.54,-67.99)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Eyre', '', 9500, -17, 4, 0, 'saline', '(-28.6,137.3)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Burley Griffin', 'Murrumbidgee River', 6.64, 556, 18, 0, 'dam', '(-35.3,149.1)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Eucumbene', 'Eucumbene River', 145, 1200, 107, 116, 'dam', '(-36.1,148.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Jindabyne', 'Snowy River', 30, 915, 40, 72, 'dam', '(-36.45,148.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Hume', 'Murray River', 202, 192, 40, 51, 'dam', '(-36.1,147)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Taupo', 'Waikato River', 622, 356, 160, 0, 'caldera', '(-38.8,175.9)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Te Wai Ä-moe', 'Whangaehu River', 0.12, 2560, 0, 0, 'crater', '(-39.3,175.6)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Wanaka', 'Clutha River', 192, 280, 311, 0, '', '(-44.5,169.13)');
INSERT INTO lake (name, river, area, elevation, depth, height, type, coordinates) VALUES ('Lake Tengano', '', 155, 40, 44, 0, '', '(-11.78,160.50)');
