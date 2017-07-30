DROP TABLE admin;

CREATE TABLE `admin` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO admin VALUES("8","rusidi","2a41bcc1254e5e74ffaea34ff8e71411","rusidi");
INSERT INTO admin VALUES("9","admin","2a41bcc1254e5e74ffaea34ff8e71411","admin");
INSERT INTO admin VALUES("10","rusa","2a41bcc1254e5e74ffaea34ff8e71411","rusa");



DROP TABLE barang;

CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8 NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=latin1;

INSERT INTO barang VALUES("2","Botol Amamy 50ML","2017-07-27 23:10:05","admin");
INSERT INTO barang VALUES("3","Botol Amamy 90ML","2017-07-27 23:10:05","admin");
INSERT INTO barang VALUES("4","Botol Antis Bulat","2017-07-27 23:10:05","admin");
INSERT INTO barang VALUES("5","Botol Antis Kotak","2017-07-27 23:10:05","admin");
INSERT INTO barang VALUES("6","Botol Aqua 1500ml","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("7","Botol Aqua 250ml","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("8","Botol Aqua 330ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("9","Botol Aqua 500ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("10","Botol Aqua 600ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("11","Botol AST 100ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("12","Botol AST 50ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("13","Botol Beauty 100ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("14","Botol Beauty 200ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("15","Botol Beauty 350ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("16","Botol BL 1000ML Hitam","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("17","Botol BL 1000ML WO","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("18","Botol BL 100ML ","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("19","Botol BL 250ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("20","Botol BL 500ML","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("21","Botol BP 1 Natural","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("22","Botol BP 2 Natural","2017-07-27 23:10:06","admin");
INSERT INTO barang VALUES("23","Botol BP 2 WO","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("24","Botol BP 3 WO","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("25","Botol BR 100 Kotak Pet","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("26","Botol BR 100ML Biru","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("27","Botol BR 100ML Kuning","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("28","Botol BR 100ML Natural","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("29","Botol BR 100ML Pink","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("30","Botol BR 100ML WO","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("31","Botol BR 200ML Natural","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("32","Botol BR 20ML Dov","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("33","Botol BR 20ML Natural","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("34","Botol BR 23ML Pink","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("35","Botol BR 250ML Kuning","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("36","Botol BR 250ML Natural","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("37","Botol BR 250ML Pink","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("38","Botol BR 250ML WO","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("39","Botol BR 27ML Natural","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("40","Botol BR 30ML Natural","2017-07-27 23:10:07","admin");
INSERT INTO barang VALUES("41","Botol BR 60ML Amber","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("42","Botol BR 60ML Natural","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("43","Botol BR 60ML WO","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("44","Botol BR 70ML Natural","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("45","Botol BR 70ML WO","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("46","Botol Bumbu F2","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("47","Botol cantik 330ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("48","Botol cantik 600ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("49","Botol Cave Natural 100ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("50","Botol Cave Natural 200ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("51","Botol Cylinder Mozza 20ML Gold","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("52","Botol Cylinder Mozza 20ML Silver","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("53","Botol DKS 100ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("54","Botol DKS 200ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("55","Botol DKS 30ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("56","Botol DKS 60ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("57","Botol DO & BE 100ML","2017-07-27 23:10:08","admin");
INSERT INTO barang VALUES("58","Botol DO & BE 50ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("59","Botol DZ 1Ltr","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("60","Botol Elipps 20ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("61","Botol ESTER C 30ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("62","Botol ESTER C 60ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("63","Botol HEXAGON 90ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("64","Botol Hotel Tube 30ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("65","Botol HS 1000ML","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("66","Botol HS 300 Natural","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("67","Botol HS 400 Natural","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("68","Botol HS 410 Natural","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("69","Botol HS 500 Natural","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("70","Botol HS 500 WO","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("71","Botol HS Oval 500","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("72","Botol Jerigen 1/2Ltr Natural","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("73","Botol Jerigen 1Ltr Pendek Natural","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("74","Botol Jerigen 1Ltr Pendek WO","2017-07-27 23:10:09","admin");
INSERT INTO barang VALUES("75","Botol Jerigen 1Ltr Tinggi","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("76","Botol Jerigen 2Ltr ","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("77","Botol Jerigen 5Ltr Natural","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("78","Botol Jerigen 5Ltr WO","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("79","Botol Kale 250ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("80","Botol Kale 500ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("81","Botol kapsul Bulat 30ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("82","Botol kapsul Bulat 60ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("83","Botol Kapsul HD Natural","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("84","Botol Kapsul HD WO","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("85","Botol Kapsul Kotak 30ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("86","Botol Kapsul Kotak 60ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("87","Botol kapsul Press On 60ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("88","Botol Kick Juice 250ML","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("89","Botol Kick Juice 500ml","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("90","Botol Labor","2017-07-27 23:10:10","admin");
INSERT INTO barang VALUES("91","Botol Lampu 330ML","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("92","Botol Lily","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("93","Botol Madu Squit 150ML","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("94","Botol Madu TJ 250gr","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("95","Botol Minyak Telon 30ML","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("96","Botol Minyak Telon 60ML","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("97","Botol OB","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("98","Botol OBH 100ML Amber","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("99","Botol PLZ 150ML","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("100","Botol Polygon Natural","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("101","Botol Polygon WO","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("102","Botol Ponds Gold","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("103","Botol Ponds putih","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("104","Botol PRO Round RIB WO","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("105","Botol PS 100 Biru","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("106","Botol PS 100 Natural","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("107","Botol PS 100 WO","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("108","Botol PS 250 Natural","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("109","Botol PS 250 WO","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("110","Botol PS 250ml Biru","2017-07-27 23:10:11","admin");
INSERT INTO barang VALUES("111","Botol PS 500 Amber","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("112","Botol PS 500 Natural","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("113","Botol PS 500 WO","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("114","Botol Putri 100ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("115","Botol Putri 200ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("116","Botol Round 100ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("117","Botol Round 200ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("118","Botol Round 30ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("119","Botol Round 50ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("120","Botol Selai Kotak 200ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("121","Botol Selai Round 200ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("122","Botol Selai Round 250ML","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("123","Botol Serum 10ML Amber Ring Karet Hitam","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("124","Botol Serum 10ML Natural Ring Karet Hitam","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("125","Botol Serum 30ML Amber","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("126","Botol Serum Liquid 30ML Natural","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("127","Botol Serum Pipet 18ml Amber Ring Hitam","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("128","Botol Serum Pipet 18ml Natural Ring Hitam","2017-07-27 23:10:12","admin");
INSERT INTO barang VALUES("129","Botol Serum Pipet Chrome Gold 10ml Amber","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("130","Botol Serum Pipet Chrome Gold 5ml Amber","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("131","Botol SL Hijau / Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("132","Botol Syrup 100ML","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("133","Botol Tablet 120ML Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("134","Botol Tablet 120ML WO","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("135","Botol Tetes Mata 10ML Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("136","Botol Tetes Mata 10ML WO","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("137","Botol Tetes Mata 15ML Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("138","Botol Tetes Mata 15ML WO","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("139","Botol Tetes Mata 30ML Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("140","Botol Tetes Mata 30ML WO","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("141","Botol Tetes Mata 60ML ","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("142","Botol Tetes Mata 8ML Segel","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("143","Botol Tinta Pet 100ML Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("144","Botol Tubular 100ML Natural","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("145","Botol Vanily","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("146","Botol VITKOM BR","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("147","Botol Wine 330ML","2017-07-27 23:10:13","admin");
INSERT INTO barang VALUES("148","Botol Yadley Natural 100ML Gold","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("149","Botol Yadley Natural 100ML Hijau","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("150","Botol Yadley Natural 100ML Putih","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("151","Botol Yadley Natural 60ML Gold","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("152","Botol Yadley Natural 60ML Hijau","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("153","Botol Yadley Natural 60ML Putih","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("154","Botol Yadley Putih 100ML Gold/WO","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("155","Botol Yadley Putih 100ML Hijau/WO","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("156","Botol Yadley Putih 100ML Putih/WO","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("157","Botol Yadley Putih 60ML Gold/WO","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("158","Botol Yadley Putih 60ML Hijau/WO","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("159","Botol Yadley Putih 60ML Putih/WO","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("160","Botol Zam-Zam 80ML","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("161","Disctop 24 Gold","2017-07-27 23:10:14","admin");
INSERT INTO barang VALUES("162","Disctop 24 Natural","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("163","Disctop 24 Silver","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("164","Disctop 24 WO","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("165","Disctop 28 Natural","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("166","Fliptop 18 Natural","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("167","Fliptop 18 WO","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("168","Fliptop 24 Natural","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("169","Fliptop 24 WO","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("170","Fliptop 24 WO Garis","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("171","Galon 12Ltr","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("172","Galon 19Ltr","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("173","Galon 2Ltr","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("174","Galon 5Ltr","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("175","idweb","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("176","Kalung Galon","2017-07-27 23:10:15","admin");
INSERT INTO barang VALUES("177","Pot  Hijau/Putih 12,5gr INNER NATURAL","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("178","POT 12,5gr Ary Hijau/Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("179","POT 12,5gr Ary Mas/Mas","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("180","POT 12,5gr Ary Mas/Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("181","POT 12,5gr Ary Putih/Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("182","POT 13gram PP Kuning | Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("183","POT 13gram PP Putih | Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("184","POT 15-20gr","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("185","POT 25gram PS","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("186","POT 30gr TL Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("187","POT 30gr XTG Pink | Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("188","POT 30gr XTG Putih | Putih","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("189","POT 60gr XTG Putih | Natural","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("190","POT 7 Day Kaca","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("191","Pot AC 1 12.5 gr Gold","2017-07-27 23:10:16","admin");
INSERT INTO barang VALUES("192","Pot AC 1 12.5 gr Mutiara","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("193","Pot AC 1 12.5 gr Pink","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("194","Pot Acrylic C3 10ml Gold","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("195","Pot Acrylic C3 10ml Merah","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("196","Pot Acrylic C3 10ml Pearl","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("197","Pot Acrylic C3 10ml Silver","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("198","Pot Acrylic C3 10ml Ungu","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("199","Pot Aluminium 100gr","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("200","Pot Aluminium 60gr","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("201","Pot Aluminium 80gr","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("202","POT Anisa Gold","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("203","POT Anisa Hijau Pupus","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("204","POT Anisa Ungu","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("205","POT Apel 12,5gr Gold","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("206","POT Apel 12,5gr Mutiara","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("207","POT Apel Kaca 13gr Biru","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("208","POT Apel Kaca 13gr Gold","2017-07-27 23:10:17","admin");
INSERT INTO barang VALUES("209","POT Apel Kaca 13gr Hijau","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("210","POT Apel Kaca 13gr Pink","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("211","POT Apel Kaca 13gr Putih","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("212","POT Apel Kaca 13gr Ungu","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("213","Pot Ary 5gr Orange/Nat","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("214","Pot Ary 5gr Orange/Putih","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("215","Pot Ary 5gr Putih/Nat","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("216","Pot Ary 5gr Tosca/Putih","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("217","Pot Ary 5gr Ungu/Nat","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("218","Pot BDK Tabur 25gr Kotak Putih","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("219","Pot BDK Tabur Rex Hitam/Nat30gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("220","Pot BDK Tabur Rex Putih/Putih 30gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("221","Pot ESSEX 500gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("222","POT GENTONG MUTIARA 8gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("223","Pot H","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("224","Pot Hijau/Nat 5gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("225","Pot JAR 177gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("226","Pot JAR 200gr","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("227","Pot Jar Glass 15ml Gold","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("228","Pot Jar Glass 15ml Silver","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("229","Pot JARR 100gr Tutup Aluminium/Nat","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("230","Pot Jelly Bali Wo Putih / Putih","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("231","Pot Jelly Bali Wo Putih/Natural","2017-07-27 23:10:18","admin");
INSERT INTO barang VALUES("232","Pot Kelli 5gr Biru/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("233","Pot Kelli 5gr Hijau/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("234","Pot Kelli 5gr Mas/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("235","Pot Kelli 5gr Orange/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("236","Pot Kelli 5gr Pink/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("237","Pot Kelli 5gr Putih / Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("238","Pot Kelli 5gr Ungu/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("239","Pot Lulur 115gr Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("240","Pot Lulur 250gr Sumpel Putih/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("241","Pot Lulur 500gr Hitam / Hitam","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("242","Pot Lulur Apel 100gr Gold / Gold","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("243","Pot Lulur Apel 100gr Pink / Pink","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("244","Pot Lulur Apel 100gr Pink/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("245","Pot Lulur Apel 100gr Putih / Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("246","Pot Lulur Gepeng 250gr Gold/Gold","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("247","Pot Lulur Gepeng 250gr Hitam / Hitam","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("248","Pot Lulur Gepeng 250gr Pink/Pink","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("249","Pot Lulur Gepeng 250gr Pink/Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("250","Pot Lulur Gepeng 250gr Putih / Putih","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("251","Pot Lulur NIVEA 100gr Hitam / Hitam","2017-07-27 23:10:19","admin");
INSERT INTO barang VALUES("252","Pot Lulur NIVEA 100gr Orange / Orange","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("253","Pot Lulur NIVEA 100gr Putih / Putih","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("254","Pot Lulur NIVEA 50gr Hitam / Hitam","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("255","Pot Lulur NIVEA 50gr Putih / Putih","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("256","Pot Mas/Nat 5gr","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("257","POT MAWAR UNGU 15gr","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("258","Pot Merah 3gr","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("259","POT OVALET Merah","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("260","POT OVALET NATURAL 100gr","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("261","POT OVALET NATURAL 50gr","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("262","Pot P","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("263","Pot Pink/Nat 5gr","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("264","POT PS Biru Dongker","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("265","POT PS Biru Muda / Biru Muda","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("266","POT PS Biru Muda / Putih","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("267","POT PS Hijau Tosca/Putih","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("268","POT PS Hijau/Hijau","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("269","POT PS Hijau/Pth","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("270","POT PS mas/mas","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("271","POT PS mas/pth","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("272","POT PS Mutiara","2017-07-27 23:10:20","admin");
INSERT INTO barang VALUES("273","POT PS Pink/Putih","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("274","POT PS Putih Putih","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("275","POT PS Ungu/Putih","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("276","Pot Putih/Nat 5gr","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("277","POT RRN 10gr Putih Natural","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("278","POT RRN 8gr Putih Natural","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("279","Pot T2","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("280","Pot T3","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("281","Pot T4","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("282","Pot T6","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("283","Pot T8","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("284","Pot Ungu/Nat 5gr","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("285","Pot Y","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("286","Pump Lotion 24 Gold","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("287","Pump Lotion 24 Hitam","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("288","Pump Lotion 24 Natural","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("289","Pump Lotion 24 WO","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("290","Pump Lotion 28","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("291","Pump Lotion 33","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("292","Pump Treatment 18 WO","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("293","Pump Treatment 24 WO","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("294","Sabun ART Hitam","2017-07-27 23:10:21","admin");
INSERT INTO barang VALUES("295","Sabun ART Putih","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("296","Sabun Cucumber","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("297","Sabun Papaya","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("298","Spray 18 Natural","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("299","Spray 18 Pink","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("300","Spray 18 WO","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("301","Spray 24 Gold","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("302","Spray 24 Natural","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("303","Spray 24 WO","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("304","Sprayer 24 hitam","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("305","Tetes Mata 15ML WO Segel","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("306","Tetes Mata 30ML Natural Tinggi","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("307","Trigger 24 Natural","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("308","Tutup B aqua Tebal Biru Muda","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("309","Tutup B aqua Tebal Hijau","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("310","Tutup B aqua Tebal Hitam","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("311","Tutup B aqua Tebal Kuning","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("312","Tutup B aqua Tebal Merah","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("313","Tutup B aqua Tebal Orange","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("314","Tutup B aqua Tebal Putih","2017-07-27 23:10:22","admin");
INSERT INTO barang VALUES("315","Tutup B Aqua Tipis Hijau","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("316","Tutup B Aqua Tipis Hitam","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("317","Tutup B Aqua Tipis Kuning","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("318","Tutup B Aqua Tipis Merah","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("319","Tutup B Aqua Tipis Orange","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("320","Tutup B Aqua Tipis Putih","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("321","Tutup Galon","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("322","Tutup Kale, Kick, Tablet Hitam","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("323","Tutup Kale, Kick, Tablet Putih","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("324","Tutup Selai, Bumbu Gold","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("325","Tutup Selai, Bumbu Kuning","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("326","Tutup Selai, Bumbu Merah","2017-07-27 23:10:23","admin");
INSERT INTO barang VALUES("327","Tutup Selai, Bumbu Putih","2017-07-27 23:10:23","admin");



DROP TABLE barang_keluar;

CREATE TABLE `barang_keluar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `stok_id` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO barang_keluar VALUES("5","302","200","2017-07-30","330","","2017-07-30 03:47:40","admin");



DROP TABLE barang_masuk;

CREATE TABLE `barang_masuk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `stok_id` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO barang_masuk VALUES("1","304","322","2017-07-30","328","","2017-07-30 03:44:15","admin");
INSERT INTO barang_masuk VALUES("2","302","1200","2017-07-30","329","","2017-07-30 03:45:11","admin");



DROP TABLE barang_stok;

CREATE TABLE `barang_stok` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah_setelah` int(11) DEFAULT NULL,
  `jumlah_sebelum` int(11) DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `trx_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8;

INSERT INTO barang_stok VALUES("2","2017-07-27","2","0","0","start","0","2017-07-27 23:10:05","admin");
INSERT INTO barang_stok VALUES("3","2017-07-27","3","0","0","start","0","2017-07-27 23:10:05","admin");
INSERT INTO barang_stok VALUES("4","2017-07-27","4","0","0","start","0","2017-07-27 23:10:05","admin");
INSERT INTO barang_stok VALUES("5","2017-07-27","5","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("6","2017-07-27","6","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("7","2017-07-27","7","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("8","2017-07-27","8","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("9","2017-07-27","9","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("10","2017-07-27","10","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("11","2017-07-27","11","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("12","2017-07-27","12","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("13","2017-07-27","13","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("14","2017-07-27","14","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("15","2017-07-27","15","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("16","2017-07-27","16","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("17","2017-07-27","17","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("18","2017-07-27","18","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("19","2017-07-27","19","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("20","2017-07-27","20","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("21","2017-07-27","21","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("22","2017-07-27","22","0","0","start","0","2017-07-27 23:10:06","admin");
INSERT INTO barang_stok VALUES("23","2017-07-27","23","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("24","2017-07-27","24","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("25","2017-07-27","25","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("26","2017-07-27","26","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("27","2017-07-27","27","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("28","2017-07-27","28","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("29","2017-07-27","29","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("30","2017-07-27","30","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("31","2017-07-27","31","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("32","2017-07-27","32","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("33","2017-07-27","33","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("34","2017-07-27","34","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("35","2017-07-27","35","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("36","2017-07-27","36","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("37","2017-07-27","37","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("38","2017-07-27","38","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("39","2017-07-27","39","0","0","start","0","2017-07-27 23:10:07","admin");
INSERT INTO barang_stok VALUES("40","2017-07-27","40","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("41","2017-07-27","41","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("42","2017-07-27","42","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("43","2017-07-27","43","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("44","2017-07-27","44","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("45","2017-07-27","45","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("46","2017-07-27","46","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("47","2017-07-27","47","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("48","2017-07-27","48","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("49","2017-07-27","49","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("50","2017-07-27","50","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("51","2017-07-27","51","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("52","2017-07-27","52","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("53","2017-07-27","53","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("54","2017-07-27","54","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("55","2017-07-27","55","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("56","2017-07-27","56","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("57","2017-07-27","57","0","0","start","0","2017-07-27 23:10:08","admin");
INSERT INTO barang_stok VALUES("58","2017-07-27","58","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("59","2017-07-27","59","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("60","2017-07-27","60","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("61","2017-07-27","61","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("62","2017-07-27","62","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("63","2017-07-27","63","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("64","2017-07-27","64","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("65","2017-07-27","65","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("66","2017-07-27","66","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("67","2017-07-27","67","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("68","2017-07-27","68","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("69","2017-07-27","69","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("70","2017-07-27","70","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("71","2017-07-27","71","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("72","2017-07-27","72","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("73","2017-07-27","73","0","0","start","0","2017-07-27 23:10:09","admin");
INSERT INTO barang_stok VALUES("74","2017-07-27","74","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("75","2017-07-27","75","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("76","2017-07-27","76","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("77","2017-07-27","77","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("78","2017-07-27","78","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("79","2017-07-27","79","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("80","2017-07-27","80","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("81","2017-07-27","81","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("82","2017-07-27","82","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("83","2017-07-27","83","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("84","2017-07-27","84","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("85","2017-07-27","85","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("86","2017-07-27","86","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("87","2017-07-27","87","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("88","2017-07-27","88","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("89","2017-07-27","89","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("90","2017-07-27","90","0","0","start","0","2017-07-27 23:10:10","admin");
INSERT INTO barang_stok VALUES("91","2017-07-27","91","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("92","2017-07-27","92","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("93","2017-07-27","93","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("94","2017-07-27","94","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("95","2017-07-27","95","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("96","2017-07-27","96","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("97","2017-07-27","97","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("98","2017-07-27","98","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("99","2017-07-27","99","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("100","2017-07-27","100","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("101","2017-07-27","101","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("102","2017-07-27","102","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("103","2017-07-27","103","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("104","2017-07-27","104","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("105","2017-07-27","105","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("106","2017-07-27","106","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("107","2017-07-27","107","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("108","2017-07-27","108","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("109","2017-07-27","109","0","0","start","0","2017-07-27 23:10:11","admin");
INSERT INTO barang_stok VALUES("110","2017-07-27","110","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("111","2017-07-27","111","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("112","2017-07-27","112","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("113","2017-07-27","113","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("114","2017-07-27","114","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("115","2017-07-27","115","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("116","2017-07-27","116","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("117","2017-07-27","117","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("118","2017-07-27","118","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("119","2017-07-27","119","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("120","2017-07-27","120","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("121","2017-07-27","121","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("122","2017-07-27","122","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("123","2017-07-27","123","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("124","2017-07-27","124","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("125","2017-07-27","125","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("126","2017-07-27","126","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("127","2017-07-27","127","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("128","2017-07-27","128","0","0","start","0","2017-07-27 23:10:12","admin");
INSERT INTO barang_stok VALUES("129","2017-07-27","129","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("130","2017-07-27","130","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("131","2017-07-27","131","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("132","2017-07-27","132","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("133","2017-07-27","133","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("134","2017-07-27","134","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("135","2017-07-27","135","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("136","2017-07-27","136","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("137","2017-07-27","137","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("138","2017-07-27","138","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("139","2017-07-27","139","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("140","2017-07-27","140","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("141","2017-07-27","141","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("142","2017-07-27","142","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("143","2017-07-27","143","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("144","2017-07-27","144","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("145","2017-07-27","145","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("146","2017-07-27","146","0","0","start","0","2017-07-27 23:10:13","admin");
INSERT INTO barang_stok VALUES("147","2017-07-27","147","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("148","2017-07-27","148","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("149","2017-07-27","149","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("150","2017-07-27","150","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("151","2017-07-27","151","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("152","2017-07-27","152","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("153","2017-07-27","153","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("154","2017-07-27","154","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("155","2017-07-27","155","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("156","2017-07-27","156","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("157","2017-07-27","157","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("158","2017-07-27","158","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("159","2017-07-27","159","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("160","2017-07-27","160","0","0","start","0","2017-07-27 23:10:14","admin");
INSERT INTO barang_stok VALUES("161","2017-07-27","161","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("162","2017-07-27","162","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("163","2017-07-27","163","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("164","2017-07-27","164","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("165","2017-07-27","165","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("166","2017-07-27","166","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("167","2017-07-27","167","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("168","2017-07-27","168","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("169","2017-07-27","169","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("170","2017-07-27","170","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("171","2017-07-27","171","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("172","2017-07-27","172","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("173","2017-07-27","173","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("174","2017-07-27","174","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("175","2017-07-27","175","0","0","start","0","2017-07-27 23:10:15","admin");
INSERT INTO barang_stok VALUES("176","2017-07-27","176","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("177","2017-07-27","177","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("178","2017-07-27","178","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("179","2017-07-27","179","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("180","2017-07-27","180","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("181","2017-07-27","181","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("182","2017-07-27","182","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("183","2017-07-27","183","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("184","2017-07-27","184","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("185","2017-07-27","185","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("186","2017-07-27","186","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("187","2017-07-27","187","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("188","2017-07-27","188","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("189","2017-07-27","189","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("190","2017-07-27","190","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("191","2017-07-27","191","0","0","start","0","2017-07-27 23:10:16","admin");
INSERT INTO barang_stok VALUES("192","2017-07-27","192","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("193","2017-07-27","193","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("194","2017-07-27","194","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("195","2017-07-27","195","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("196","2017-07-27","196","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("197","2017-07-27","197","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("198","2017-07-27","198","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("199","2017-07-27","199","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("200","2017-07-27","200","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("201","2017-07-27","201","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("202","2017-07-27","202","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("203","2017-07-27","203","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("204","2017-07-27","204","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("205","2017-07-27","205","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("206","2017-07-27","206","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("207","2017-07-27","207","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("208","2017-07-27","208","0","0","start","0","2017-07-27 23:10:17","admin");
INSERT INTO barang_stok VALUES("209","2017-07-27","209","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("210","2017-07-27","210","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("211","2017-07-27","211","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("212","2017-07-27","212","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("213","2017-07-27","213","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("214","2017-07-27","214","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("215","2017-07-27","215","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("216","2017-07-27","216","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("217","2017-07-27","217","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("218","2017-07-27","218","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("219","2017-07-27","219","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("220","2017-07-27","220","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("221","2017-07-27","221","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("222","2017-07-27","222","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("223","2017-07-27","223","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("224","2017-07-27","224","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("225","2017-07-27","225","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("226","2017-07-27","226","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("227","2017-07-27","227","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("228","2017-07-27","228","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("229","2017-07-27","229","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("230","2017-07-27","230","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("231","2017-07-27","231","0","0","start","0","2017-07-27 23:10:18","admin");
INSERT INTO barang_stok VALUES("232","2017-07-27","232","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("233","2017-07-27","233","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("234","2017-07-27","234","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("235","2017-07-27","235","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("236","2017-07-27","236","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("237","2017-07-27","237","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("238","2017-07-27","238","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("239","2017-07-27","239","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("240","2017-07-27","240","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("241","2017-07-27","241","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("242","2017-07-27","242","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("243","2017-07-27","243","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("244","2017-07-27","244","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("245","2017-07-27","245","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("246","2017-07-27","246","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("247","2017-07-27","247","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("248","2017-07-27","248","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("249","2017-07-27","249","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("250","2017-07-27","250","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("251","2017-07-27","251","0","0","start","0","2017-07-27 23:10:19","admin");
INSERT INTO barang_stok VALUES("252","2017-07-27","252","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("253","2017-07-27","253","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("254","2017-07-27","254","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("255","2017-07-27","255","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("256","2017-07-27","256","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("257","2017-07-27","257","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("258","2017-07-27","258","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("259","2017-07-27","259","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("260","2017-07-27","260","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("261","2017-07-27","261","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("262","2017-07-27","262","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("263","2017-07-27","263","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("264","2017-07-27","264","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("265","2017-07-27","265","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("266","2017-07-27","266","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("267","2017-07-27","267","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("268","2017-07-27","268","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("269","2017-07-27","269","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("270","2017-07-27","270","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("271","2017-07-27","271","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("272","2017-07-27","272","0","0","start","0","2017-07-27 23:10:20","admin");
INSERT INTO barang_stok VALUES("273","2017-07-27","273","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("274","2017-07-27","274","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("275","2017-07-27","275","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("276","2017-07-27","276","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("277","2017-07-27","277","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("278","2017-07-27","278","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("279","2017-07-27","279","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("280","2017-07-27","280","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("281","2017-07-27","281","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("282","2017-07-27","282","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("283","2017-07-27","283","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("284","2017-07-27","284","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("285","2017-07-27","285","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("286","2017-07-27","286","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("287","2017-07-27","287","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("288","2017-07-27","288","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("289","2017-07-27","289","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("290","2017-07-27","290","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("291","2017-07-27","291","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("292","2017-07-27","292","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("293","2017-07-27","293","0","0","start","0","2017-07-27 23:10:21","admin");
INSERT INTO barang_stok VALUES("294","2017-07-27","294","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("295","2017-07-27","295","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("296","2017-07-27","296","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("297","2017-07-27","297","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("298","2017-07-27","298","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("299","2017-07-27","299","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("300","2017-07-27","300","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("301","2017-07-27","301","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("302","2017-07-27","302","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("303","2017-07-27","303","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("304","2017-07-27","304","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("305","2017-07-27","305","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("306","2017-07-27","306","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("307","2017-07-27","307","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("308","2017-07-27","308","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("309","2017-07-27","309","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("310","2017-07-27","310","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("311","2017-07-27","311","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("312","2017-07-27","312","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("313","2017-07-27","313","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("314","2017-07-27","314","0","0","start","0","2017-07-27 23:10:22","admin");
INSERT INTO barang_stok VALUES("315","2017-07-27","315","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("316","2017-07-27","316","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("317","2017-07-27","317","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("318","2017-07-27","318","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("319","2017-07-27","319","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("320","2017-07-27","320","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("321","2017-07-27","321","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("322","2017-07-27","322","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("323","2017-07-27","323","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("324","2017-07-27","324","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("325","2017-07-27","325","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("326","2017-07-27","326","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("327","2017-07-27","327","0","0","start","0","2017-07-27 23:10:23","admin");
INSERT INTO barang_stok VALUES("328","2017-07-30","304","322","0","masuk","1","2017-07-30 03:44:15","admin");
INSERT INTO barang_stok VALUES("329","2017-07-30","302","1200","0","masuk","2","2017-07-30 03:45:11","admin");
INSERT INTO barang_stok VALUES("330","2017-07-30","302","1000","1200","keluar","5","2017-07-30 03:47:40","admin");



DROP TABLE gudang_keluar;

CREATE TABLE `gudang_keluar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `stok_id` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE gudang_masuk;

CREATE TABLE `gudang_masuk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `stok_id` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE gudang_stok;

CREATE TABLE `gudang_stok` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah_setelah` int(11) DEFAULT NULL,
  `jumlah_sebelum` int(11) DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `trx_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

INSERT INTO gudang_stok VALUES("1","2017-07-27","1","0","0","start","0","2017-07-27 23:16:15","admin");
INSERT INTO gudang_stok VALUES("2","2017-07-27","2","0","0","start","0","2017-07-27 23:16:15","admin");
INSERT INTO gudang_stok VALUES("3","2017-07-27","3","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("4","2017-07-27","4","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("5","2017-07-27","5","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("6","2017-07-27","6","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("7","2017-07-27","7","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("8","2017-07-27","8","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("9","2017-07-27","9","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("10","2017-07-27","10","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("11","2017-07-27","11","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("12","2017-07-27","12","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("13","2017-07-27","13","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("14","2017-07-27","14","0","0","start","0","2017-07-27 23:16:16","admin");
INSERT INTO gudang_stok VALUES("15","2017-07-27","15","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("16","2017-07-27","16","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("17","2017-07-27","17","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("18","2017-07-27","18","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("19","2017-07-27","19","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("20","2017-07-27","20","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("21","2017-07-27","21","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("22","2017-07-27","22","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("23","2017-07-27","23","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("24","2017-07-27","24","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("25","2017-07-27","25","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("26","2017-07-27","26","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("27","2017-07-27","27","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("28","2017-07-27","28","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("29","2017-07-27","29","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("30","2017-07-27","30","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("31","2017-07-27","31","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("32","2017-07-27","32","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("33","2017-07-27","33","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("34","2017-07-27","34","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("35","2017-07-27","35","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("36","2017-07-27","36","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("37","2017-07-27","37","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("38","2017-07-27","38","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("39","2017-07-27","39","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("40","2017-07-27","40","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("41","2017-07-27","41","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("42","2017-07-27","42","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("43","2017-07-27","43","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("44","2017-07-27","44","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("45","2017-07-27","45","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("46","2017-07-27","46","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("47","2017-07-27","47","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("48","2017-07-27","48","0","0","start","0","2017-07-27 23:16:17","admin");
INSERT INTO gudang_stok VALUES("49","2017-07-27","49","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("50","2017-07-27","50","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("51","2017-07-27","51","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("52","2017-07-27","52","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("53","2017-07-27","53","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("54","2017-07-27","54","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("55","2017-07-27","55","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("56","2017-07-27","56","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("57","2017-07-27","57","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("58","2017-07-27","58","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("59","2017-07-27","59","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("60","2017-07-27","60","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("61","2017-07-27","61","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("62","2017-07-27","62","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("63","2017-07-27","63","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("64","2017-07-27","64","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("65","2017-07-27","65","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("66","2017-07-27","66","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("67","2017-07-27","67","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("68","2017-07-27","68","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("69","2017-07-27","69","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("70","2017-07-27","70","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("71","2017-07-27","71","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("72","2017-07-27","72","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("73","2017-07-27","73","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("74","2017-07-27","74","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("75","2017-07-27","75","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("76","2017-07-27","76","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("77","2017-07-27","77","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("78","2017-07-27","78","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("79","2017-07-27","79","0","0","start","0","2017-07-27 23:16:18","admin");
INSERT INTO gudang_stok VALUES("80","2017-07-27","80","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("81","2017-07-27","81","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("82","2017-07-27","82","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("83","2017-07-27","83","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("84","2017-07-27","84","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("85","2017-07-27","85","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("86","2017-07-27","86","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("87","2017-07-27","87","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("88","2017-07-27","88","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("89","2017-07-27","89","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("90","2017-07-27","90","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("91","2017-07-27","91","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("92","2017-07-27","92","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("93","2017-07-27","93","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("94","2017-07-27","94","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("95","2017-07-27","95","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("96","2017-07-27","96","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("97","2017-07-27","97","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("98","2017-07-27","98","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("99","2017-07-27","99","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("100","2017-07-27","100","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("101","2017-07-27","101","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("102","2017-07-27","102","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("103","2017-07-27","103","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("104","2017-07-27","104","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("105","2017-07-27","105","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("106","2017-07-27","106","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("107","2017-07-27","107","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("108","2017-07-27","108","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("109","2017-07-27","109","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("110","2017-07-27","110","0","0","start","0","2017-07-27 23:16:19","admin");
INSERT INTO gudang_stok VALUES("111","2017-07-27","111","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("112","2017-07-27","112","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("113","2017-07-27","113","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("114","2017-07-27","114","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("115","2017-07-27","115","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("116","2017-07-27","116","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("117","2017-07-27","117","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("118","2017-07-27","118","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("119","2017-07-27","119","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("120","2017-07-27","120","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("121","2017-07-27","121","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("122","2017-07-27","122","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("123","2017-07-27","123","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("124","2017-07-27","124","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("125","2017-07-27","125","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("126","2017-07-27","126","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("127","2017-07-27","127","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("128","2017-07-27","128","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("129","2017-07-27","129","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("130","2017-07-27","130","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("131","2017-07-27","131","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("132","2017-07-27","132","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("133","2017-07-27","133","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("134","2017-07-27","134","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("135","2017-07-27","135","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("136","2017-07-27","136","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("137","2017-07-27","137","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("138","2017-07-27","138","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("139","2017-07-27","139","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("140","2017-07-27","140","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("141","2017-07-27","141","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("142","2017-07-27","142","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("143","2017-07-27","143","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("144","2017-07-27","144","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("145","2017-07-27","145","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("146","2017-07-27","146","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("147","2017-07-27","147","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("148","2017-07-27","148","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("149","2017-07-27","149","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("150","2017-07-27","150","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("151","2017-07-27","151","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("152","2017-07-27","152","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("153","2017-07-27","153","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("154","2017-07-27","154","0","0","start","0","2017-07-27 23:16:20","admin");
INSERT INTO gudang_stok VALUES("155","2017-07-27","155","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("156","2017-07-27","156","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("157","2017-07-27","157","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("158","2017-07-27","158","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("159","2017-07-27","159","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("160","2017-07-27","160","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("161","2017-07-27","161","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("162","2017-07-27","162","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("163","2017-07-27","163","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("164","2017-07-27","164","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("165","2017-07-27","165","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("166","2017-07-27","166","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("167","2017-07-27","167","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("168","2017-07-27","168","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("169","2017-07-27","169","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("170","2017-07-27","170","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("171","2017-07-27","171","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("172","2017-07-27","172","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("173","2017-07-27","173","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("174","2017-07-27","174","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("175","2017-07-27","175","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("176","2017-07-27","176","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("177","2017-07-27","177","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("178","2017-07-27","178","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("179","2017-07-27","179","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("180","2017-07-27","180","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("181","2017-07-27","181","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("182","2017-07-27","182","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("183","2017-07-27","183","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("184","2017-07-27","184","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("185","2017-07-27","185","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("186","2017-07-27","186","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("187","2017-07-27","187","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("188","2017-07-27","188","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("189","2017-07-27","189","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("190","2017-07-27","190","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("191","2017-07-27","191","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("192","2017-07-27","192","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("193","2017-07-27","193","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("194","2017-07-27","194","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("195","2017-07-27","195","0","0","start","0","2017-07-27 23:16:21","admin");
INSERT INTO gudang_stok VALUES("196","2017-07-27","196","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("197","2017-07-27","197","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("198","2017-07-27","198","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("199","2017-07-27","199","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("200","2017-07-27","200","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("201","2017-07-27","201","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("202","2017-07-27","202","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("203","2017-07-27","203","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("204","2017-07-27","204","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("205","2017-07-27","205","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("206","2017-07-27","206","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("207","2017-07-27","207","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("208","2017-07-27","208","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("209","2017-07-27","209","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("210","2017-07-27","210","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("211","2017-07-27","211","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("212","2017-07-27","212","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("213","2017-07-27","213","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("214","2017-07-27","214","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("215","2017-07-27","215","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("216","2017-07-27","216","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("217","2017-07-27","217","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("218","2017-07-27","218","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("219","2017-07-27","219","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("220","2017-07-27","220","0","0","start","0","2017-07-27 23:16:22","admin");
INSERT INTO gudang_stok VALUES("221","2017-07-27","221","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("222","2017-07-27","222","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("223","2017-07-27","223","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("224","2017-07-27","224","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("225","2017-07-27","225","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("226","2017-07-27","226","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("227","2017-07-27","227","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("228","2017-07-27","228","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("229","2017-07-27","229","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("230","2017-07-27","230","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("231","2017-07-27","231","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("232","2017-07-27","232","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("233","2017-07-27","233","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("234","2017-07-27","234","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("235","2017-07-27","235","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("236","2017-07-27","236","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("237","2017-07-27","237","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("238","2017-07-27","238","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("239","2017-07-27","239","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("240","2017-07-27","240","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("241","2017-07-27","241","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("242","2017-07-27","242","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("243","2017-07-27","243","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("244","2017-07-27","244","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("245","2017-07-27","245","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("246","2017-07-27","246","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("247","2017-07-27","247","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("248","2017-07-27","248","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("249","2017-07-27","249","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("250","2017-07-27","250","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("251","2017-07-27","251","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("252","2017-07-27","252","0","0","start","0","2017-07-27 23:16:23","admin");
INSERT INTO gudang_stok VALUES("253","2017-07-27","253","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("254","2017-07-27","254","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("255","2017-07-27","255","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("256","2017-07-27","256","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("257","2017-07-27","257","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("258","2017-07-27","258","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("259","2017-07-27","259","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("260","2017-07-27","260","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("261","2017-07-27","261","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("262","2017-07-27","262","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("263","2017-07-27","263","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("264","2017-07-27","264","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("265","2017-07-27","265","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("266","2017-07-27","266","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("267","2017-07-27","267","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("268","2017-07-27","268","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("269","2017-07-27","269","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("270","2017-07-27","270","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("271","2017-07-27","271","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("272","2017-07-27","272","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("273","2017-07-27","273","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("274","2017-07-27","274","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("275","2017-07-27","275","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("276","2017-07-27","276","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("277","2017-07-27","277","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("278","2017-07-27","278","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("279","2017-07-27","279","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("280","2017-07-27","280","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("281","2017-07-27","281","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("282","2017-07-27","282","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("283","2017-07-27","283","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("284","2017-07-27","284","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("285","2017-07-27","285","0","0","start","0","2017-07-27 23:16:24","admin");
INSERT INTO gudang_stok VALUES("286","2017-07-27","286","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("287","2017-07-27","287","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("288","2017-07-27","288","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("289","2017-07-27","289","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("290","2017-07-27","290","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("291","2017-07-27","291","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("292","2017-07-27","292","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("293","2017-07-27","293","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("294","2017-07-27","294","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("295","2017-07-27","295","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("296","2017-07-27","296","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("297","2017-07-27","297","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("298","2017-07-27","298","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("299","2017-07-27","299","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("300","2017-07-27","300","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("301","2017-07-27","301","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("302","2017-07-27","302","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("303","2017-07-27","303","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("304","2017-07-27","304","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("305","2017-07-27","305","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("306","2017-07-27","306","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("307","2017-07-27","307","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("308","2017-07-27","308","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("309","2017-07-27","309","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("310","2017-07-27","310","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("311","2017-07-27","311","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("312","2017-07-27","312","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("313","2017-07-27","313","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("314","2017-07-27","314","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("315","2017-07-27","315","0","0","start","0","2017-07-27 23:16:25","admin");
INSERT INTO gudang_stok VALUES("316","2017-07-27","316","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("317","2017-07-27","317","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("318","2017-07-27","318","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("319","2017-07-27","319","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("320","2017-07-27","320","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("321","2017-07-27","321","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("322","2017-07-27","322","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("323","2017-07-27","323","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("324","2017-07-27","324","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("325","2017-07-27","325","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("326","2017-07-27","326","0","0","start","0","2017-07-27 23:16:26","admin");
INSERT INTO gudang_stok VALUES("327","2017-07-27","327","0","0","start","0","2017-07-27 23:16:26","admin");



