-- STRUCTURE
DROP TABLE IF EXISTS ventes; DROP TABLE IF EXISTS produits; DROP TABLE IF EXISTS clients; DROP TABLE IF EXISTS magasins; DROP TABLE IF EXISTS villes; DROP TABLE IF EXISTS categories;
CREATE TABLE categories (id_categorie INTEGER PRIMARY KEY, nom_categorie VARCHAR(50) NOT NULL);
CREATE TABLE villes (id_ville INTEGER PRIMARY KEY, nom_ville VARCHAR(50) NOT NULL UNIQUE);
CREATE TABLE magasins (id_magasin INTEGER PRIMARY KEY, nom_magasin VARCHAR(50) NOT NULL, id_ville INTEGER NOT NULL REFERENCES villes(id_ville));
CREATE TABLE clients (id_client INTEGER PRIMARY KEY, nom VARCHAR(50) NOT NULL, prenom VARCHAR(50) NOT NULL, email VARCHAR(100) NOT NULL UNIQUE, id_ville INTEGER NOT NULL REFERENCES villes(id_ville), date_inscription DATE);
CREATE TABLE produits (id_produit INTEGER PRIMARY KEY, nom_produit VARCHAR(100) NOT NULL, id_categorie INTEGER NOT NULL REFERENCES categories(id_categorie), prix DECIMAL(10, 2) NOT NULL, stock INTEGER DEFAULT 0);
CREATE TABLE ventes (id_vente INTEGER PRIMARY KEY, id_produit INTEGER NOT NULL REFERENCES produits(id_produit), id_client INTEGER NOT NULL REFERENCES clients(id_client), id_magasin INTEGER NOT NULL REFERENCES magasins(id_magasin), quantite_vendue INTEGER NOT NULL, date_vente DATE NOT NULL);

-- 1. LES 10 CATÉGORIES
INSERT INTO categories VALUES (1,'Tennis'),(2,'Rando'),(3,'Combat'),(4,'Fitness'),(5,'Cycle'),(6,'Natation'),(7,'Musculation'),(8,'Running'),(9,'Yoga'),(10,'Sports Co');

-- 2. LES 8 VILLES (RDC)
INSERT INTO villes VALUES (1,'Kinshasa'),(2,'Lubumbashi'),(3,'Goma'),(4,'Bukavu'),(5,'Kisangani'),(6,'Matadi'),(7,'Kananga'),(8,'Mbuji-Mayi');

-- 3. LES 5 MAGASINS
INSERT INTO magasins VALUES (1,'Run & Win Kinshasa',1),(2,'Run & Win Lubumbashi',2),(3,'Run & Win Goma',3),(4,'Run & Win Bukavu',4),(5,'Run & Win Kisangani',5);

-- 4. LES 150 CLIENTS (Villes de RDC)
INSERT INTO clients VALUES 
(1,'Kasongo','Jean','j.kasongo@test.cd',1,'2023-04-12'),(2,'Mutombo','Marie','m.mutombo@test.cd',2,'2024-11-05'),
(3,'Kabasele','Michel','m.kabasele@test.cd',3,'2022-01-20'),(4,'Ilunga','Julie','j.ilunga@test.cd',1,'2025-02-14'),
(5,'Tshibanda','Isabelle','i.tshibanda@test.cd',2,'2023-08-30'),(6,'Ngoy','Luc','l.ngoy@test.cd',3,'2024-06-12'),
(7,'Mbuyi','Emma','e.mbuyi@test.cd',1,'2021-11-22'),(8,'Kabange','Lucas','l.kabange@test.cd',4,'2025-01-10'),
(9,'Mulumba','Alice','a.mulumba@test.cd',2,'2022-09-05'),(10,'Kanyinda','Hugo','h.kanyinda@test.cd',5,'2024-03-25'),
(11,'Tshimanga','Chloe','c.tshimanga@test.cd',1,'2023-12-01'),(12,'Kalonji','Pierre','p.kalonji@test.cd',3,'2024-04-14'),
(13,'Muteba','Theo','t.muteba@test.cd',2,'2020-05-18'),(14,'Kabila','Sarah','s.kabila@test.cd',1,'2025-03-02'),
(15,'Yav','Mathieu','m.yav@test.cd',6,'2023-02-28'),(16,'Mukania','Lea','l.mukania@test.cd',2,'2024-12-15'),
(17,'Kibali','Antoine','a.kibali@test.cd',3,'2022-07-04'),(18,'Banza','Elena','e.banza@test.cd',1,'2021-08-19'),
(19,'Lulua','Nicolas','n.lulua@test.cd',7,'2024-10-10'),(20,'Mwemba','Manon','m.mwemba@test.cd',2,'2023-03-14'),
(21,'Kadiat','Paul','p.kadiat@test.cd',1,'2022-12-25'),(22,'Zola','Clara','c.zola@test.cd',3,'2024-07-01'),
(23,'Tshiswaka','Louis','l.tshiswaka@test.cd',2,'2021-04-11'),(24,'Mpiana','Ines','i.mpiana@test.cd',1,'2024-11-30'),
(25,'Bakamba','Loic','l.bakamba@test.cd',8,'2023-06-21'),(26,'Kanku','Eva','e.kanku@test.cd',3,'2025-01-20'),
(27,'Ngalula','Marc','m.ngalula@test.cd',1,'2020-09-12'),(28,'Kalala','Noemie','n.kalala@test.cd',2,'2024-05-05'),
(29,'Kabeya','Kevin','k.kabeya@test.cd',4,'2023-08-14'),(30,'Mukendi','Zoe','z.mukendi@test.cd',1,'2024-12-31'),
(31,'Tshilumba','Yann','y.tshilumba@test.cd',2,'2022-02-14'),(32,'Mwamba','Sonia','s.mwamba@test.cd',3,'2024-08-22'),
(33,'Kabwe','Remi','r.kabwe@test.cd',1,'2021-03-10'),(34,'Mamba','Cecile','c.mamba@test.cd',7,'2023-11-25'),
(35,'Kadi','Jade','j.kadi@test.cd',2,'2024-01-18'),(36,'Bongo','Adam','a.bongo@test.cd',1,'2023-07-07'),
(37,'Lelo','Lise','l.lelo@test.cd',3,'2022-05-15'),(38,'Kifu','Tom','t.kifu@test.cd',2,'2025-02-12'),
(39,'Nsapu','Mia','m.nsapu@test.cd',1,'2022-04-20'),(40,'Biata','Leo','l.biata@test.cd',5,'2023-09-09'),
(41,'Mbuyu','Nina','n.mbuyu@test.cd',3,'2024-12-05'),(42,'Kayembe','Axel','a.kayembe@test.cd',2,'2021-10-30'),
(43,'Kabose','Lisa','l.kabose@test.cd',1,'2020-01-15'),(44,'Sampu','Evan','e.sampu@test.cd',6,'2024-06-25'),
(45,'Ditu','Mila','m.ditu@test.cd',1,'2024-10-01'),(46,'Ndala','Yanis','y.ndala@test.cd',3,'2023-12-12'),
(47,'Kunda','Anna','a.kunda@test.cd',2,'2022-11-18'),(48,'Moke','Enzo','e.moke@test.cd',1,'2021-07-22'),
(49,'Mbayo','Rose','r.mbayo@test.cd',8,'2024-03-30'),(50,'Kazadi','Jules','j.kazadi@test.cd',2,'2025-01-15'),
(51,'Nlandu','Ines','i.nlandu@test.cd',1,'2023-02-14'),(52,'Kivuvu','Theo','t.kivuvu@test.cd',3,'2024-09-19'),
(53,'Mayamba','Linh','l.mayamba@test.cd',2,'2022-06-08'),(54,'Luzolo','Ali','a.luzolo@test.cd',1,'2025-02-28'),
(55,'Makolo','Sami','s.makolo@test.cd',2,'2023-05-12'),(56,'Kimpa','Sara','s.kimpa@test.cd',1,'2024-11-15'),
(57,'Bofosa','Hugo','h.bofosa@test.cd',3,'2022-10-04'),(58,'Ngoma','Kim','k.ngoma@test.cd',2,'2021-12-31'),
(59,'Kiala','Eric','e.kiala@test.cd',1,'2020-08-20'),(60,'Nsiku','Luce','l.nsiku@test.cd',6,'2024-07-15'),
(61,'Nkulu','Marc','m.nkulu@test.cd',1,'2023-09-10'),(62,'Maluba','Lea','l.maluba@test.cd',2,'2024-02-05'),
(63,'Pandi','Yanis','y.pandi@test.cd',3,'2022-12-24'),(64,'Lumbwe','Mila','m.lumbwe@test.cd',1,'2025-01-15'),
(65,'Kunda','Nils','n.kunda@test.cd',2,'2021-05-22'),(66,'Malu','Zoe','z.malu@test.cd',1,'2024-03-18'),
(67,'Senga','Leo','l.senga@test.cd',3,'2023-06-30'),(68,'Kilolo','Ines','i.kilolo@test.cd',2,'2022-04-14'),
(69,'Mose','Paul','p.mose@test.cd',1,'2020-11-05'),(70,'Mambu','Emma','e.mambu@test.cd',5,'2024-08-19'),
(71,'Lukusa','David','d.lukusa@test.cd',1,'2023-01-08'),(72,'Tshisekedi','Aline','a.tshisekedi@test.cd',2,'2024-02-19'),
(73,'Kapinga','Serge','s.kapinga@test.cd',3,'2022-03-25'),(74,'Nzuzi','Grace','g.nzuzi@test.cd',1,'2025-01-05'),
(75,'Tshibangu','Olivier','o.tshibangu@test.cd',4,'2023-05-17'),(76,'Mbala','Christelle','c.mbala@test.cd',2,'2024-09-03'),
(77,'Kasa','Patrick','p.kasa@test.cd',5,'2021-06-14'),(78,'Lungu','Fiona','f.lungu@test.cd',1,'2024-04-28'),
(79,'Mpongo','Eric','e.mpongo@test.cd',6,'2022-08-10'),(80,'Tshilanda','Sylvie','s.tshilanda@test.cd',3,'2023-10-22'),
(81,'Bukasa','Joel','j.bukasa@test.cd',2,'2024-01-30'),(82,'Ngoyi','Pamela','p.ngoyi@test.cd',1,'2020-12-05'),
(83,'Kambale','Cedric','c.kambale@test.cd',3,'2023-07-19'),(84,'Makila','Ruth','r.makila@test.cd',7,'2024-06-08'),
(85,'Tshombe','Alain','a.tshombe@test.cd',2,'2022-11-01'),(86,'Vita','Esther','e.vita@test.cd',1,'2025-03-10'),
(87,'Kayiba','Franck','f.kayiba@test.cd',8,'2021-09-25'),(88,'Mbemba','Naomi','n.mbemba@test.cd',3,'2024-05-14'),
(89,'Nkunda','Thierry','t.nkunda@test.cd',4,'2023-02-07'),(90,'Kalombo','Viviane','v.kalombo@test.cd',1,'2024-08-15'),
(91,'Tshimwanga','Boris','b.tshimwanga@test.cd',2,'2022-04-30'),(92,'Mwanza','Diane','d.mwanza@test.cd',3,'2024-10-22'),
(93,'Kasonga','Fabrice','f.kasonga@test.cd',1,'2021-01-18'),(94,'Lunda','Hortense','h.lunda@test.cd',6,'2023-11-09'),
(95,'Ngandu','Raoul','r.ngandu@test.cd',2,'2024-07-25'),(96,'Bope','Clarisse','c.bope@test.cd',1,'2022-06-12'),
(97,'Kisalu','Gaston','g.kisalu@test.cd',3,'2023-03-28'),(98,'Tshikapa','Lydia','l.tshikapa@test.cd',7,'2024-12-01'),
(99,'Mbuku','Serge','s.mbuku@test.cd',1,'2020-07-15'),(100,'Katembo','Elise','e.katembo@test.cd',5,'2025-02-20'),
(101,'Lupaka','Daniel','d.lupaka@test.cd',2,'2023-08-05'),(102,'Ngimbi','Florence','f.ngimbi@test.cd',1,'2024-03-12'),
(103,'Kabamba','Herve','h.kabamba@test.cd',3,'2022-01-28'),(104,'Muya','Sandra','s.muya@test.cd',4,'2024-11-18'),
(105,'Tshibuabua','Gilbert','g.tshibuabua@test.cd',2,'2021-10-07'),(106,'Nkusu','Jeanne','j.nkusu@test.cd',1,'2023-12-20'),
(107,'Kalubi','Rene','r.kalubi@test.cd',8,'2024-04-05'),(108,'Bwana','Odette','o.bwana@test.cd',3,'2022-07-22'),
(109,'Mpata','Leon','l.mpata@test.cd',1,'2025-01-28'),(110,'Tshala','Berthe','b.tshala@test.cd',2,'2023-06-15'),
(111,'Kasanda','Victor','v.kasanda@test.cd',6,'2024-09-10'),(112,'Mwela','Gloria','g.mwela@test.cd',1,'2021-03-25'),
(113,'Kabongo','Nestor','n.kabongo@test.cd',3,'2022-12-08'),(114,'Ndombe','Solange','s.ndombe@test.cd',2,'2024-06-30'),
(115,'Tshibola','Armand','a.tshibola@test.cd',1,'2023-04-18'),(116,'Lwamba','Nadine','n.lwamba@test.cd',7,'2024-01-25'),
(117,'Kikunda','Blaise','b.kikunda@test.cd',4,'2020-10-12'),(118,'Mafuta','Chantal','c.mafuta@test.cd',1,'2024-08-05'),
(119,'Ngolo','Prosper','p.ngolo@test.cd',2,'2022-05-20'),(120,'Tshibwabwa','Irene','i.tshibwabwa@test.cd',3,'2023-09-14'),
(121,'Kaputo','Emile','e.kaputo@test.cd',1,'2024-02-28'),(122,'Mulenda','Brigitte','b.mulenda@test.cd',5,'2021-07-10'),
(123,'Nkasa','Hubert','h.nkasa@test.cd',2,'2023-11-03'),(124,'Binda','Monique','m.binda@test.cd',1,'2024-05-22'),
(125,'Tshintu','Roger','r.tshintu@test.cd',3,'2022-02-15'),(126,'Mukeba','Angelique','a.mukeba@test.cd',8,'2024-10-08'),
(127,'Kasela','Didier','d.kasela@test.cd',1,'2021-12-18'),(128,'Lokengo','Pascale','p.lokengo@test.cd',6,'2023-07-30'),
(129,'Ngwala','Christian','c.ngwala@test.cd',2,'2024-04-15'),(130,'Tshisola','Helene','h.tshisola@test.cd',1,'2022-09-28'),
(131,'Mpasa','Delphin','d.mpasa@test.cd',3,'2025-02-05'),(132,'Kabula','Veronique','v.kabula@test.cd',2,'2023-01-22'),
(133,'Nzeza','Lambert','l.nzeza@test.cd',1,'2024-07-12'),(134,'Tshilombo','Martine','m.tshilombo@test.cd',4,'2022-04-05'),
(135,'Kakese','Norbert','n.kakese@test.cd',1,'2020-06-20'),(136,'Mwila','Josephine','j.mwila@test.cd',2,'2024-11-28'),
(137,'Luvuezo','Gustave','g.luvuezo@test.cd',3,'2023-03-10'),(138,'Nsimba','Pauline','p.nsimba@test.cd',1,'2024-09-25'),
(139,'Kabika','Maurice','m.kabika@test.cd',7,'2022-08-17'),(140,'Tshivuadi','Rachel','r.tshivuadi@test.cd',2,'2021-02-08'),
(141,'Monga','Salomon','s.monga@test.cd',1,'2023-10-05'),(142,'Kiese','Therese','t.kiese@test.cd',5,'2024-03-20'),
(143,'Nkongolo','Xavier','x.nkongolo@test.cd',3,'2022-11-11'),(144,'Bulu','Yolande','y.bulu@test.cd',1,'2025-01-18'),
(145,'Tshibasu','Willy','w.tshibasu@test.cd',2,'2023-05-27'),(146,'Makoso','Carine','c.makoso@test.cd',6,'2024-08-30'),
(147,'Kalonji','Felix','f.kalonji@test.cd',1,'2021-04-14'),(148,'Ngala','Sylviane','s.ngala@test.cd',8,'2024-06-18'),
(149,'Mbumba','Arthur','a.mbumba@test.cd',3,'2022-10-25'),(150,'Tshisuaka','Denise','d.tshisuaka@test.cd',2,'2023-12-08');

-- 5. LES 200 PRODUITS (Identique au précédent pour conserver les critères de prix/stock)
INSERT INTO produits VALUES 
(1,'Raquette Wilson Pro RF',1,189.00,10),(2,'Raquette Babolat Pure Drive',1,210.00,5),(3,'Balles Tennis Dunlop x4',1,12.50,100),(4,'Sac Tennis Head Tour',1,85.00,12),
(5,'Short Tennis Adidas',1,35.00,25),(6,'Raquette Tennis Junior',1,45.00,15),(7,'Raquette Yonex Ezone',1,195.00,3),(8,'Grip Tennis Wilson',1,9.90,50),
(9,'Cordage Luxilon',1,25.00,20),(10,'Raquette Prince Warrior',1,110.00,7),(11,'Chaussures Rando Salomon X',2,145.00,2),(12,'Sac Rando Osprey 30L',2,95.00,3),
(13,'Bâtons Rando Carbone',2,65.00,15),(14,'Gourde Rando Inox',2,18.00,40),(15,'Chaussures Rando Merrell',2,110.00,1),(16,'Lampe Frontale Petzl',2,35.00,10),
(17,'Veste Rando Pluie GoreTex',2,199.00,4),(18,'Chaussettes Rando x2',2,22.00,30),(19,'Pantalon Rando Stretch',2,55.00,12),(20,'Boussole Rando Silva',2,25.00,5),
(21,'Gants Boxe Venum Giant',3,65.00,10),(22,'Protège-dents Shock Pro',3,22.00,50),(23,'Kimono Judo Adidas J500',3,48.00,15),(24,'Bandes Boxe 4m',3,12.00,30),
(25,'Coquille Protection Combat',3,28.00,20),(26,'Sac Frappe 120cm',3,150.00,2),(27,'Coudières Muay Thai',3,35.00,12),(28,'Short MMA Phantom',3,42.00,18),
(29,'Casque Boxe Training',3,55.00,6),(30,'Mitaines Karaté',3,24.00,25),(31,'Tapis Yoga Antidérapant',9,45.00,20),(32,'Haltères Fitness 2kg',4,18.00,40),
(33,'Ballon Yoga 65cm',9,25.00,15),(34,'Élastique Fitness Hard',4,15.00,60),(35,'Step réglable Fitness',4,49.00,8),(36,'Kettlebell 12kg Nike',4,59.00,5),
(37,'Corde à sauter Speed',4,12.00,100),(38,'Roue Abdominale Pro',4,22.00,35),(39,'Banc Musculation',7,180.00,3),(40,'Barre Traction porte',7,35.00,12),
(41,'Velo Route Carbone Trek',5,2500.00,2),(42,'Casque VTT Fox',5,85.00,10),(43,'Pompe Vélo Pied',5,29.00,20),(44,'Cuissard Vélo Eté',5,55.00,15),
(45,'Gants Vélo Gel',5,25.00,40),(46,'Chambre à air x2',5,12.00,100),(47,'Eclairage Vélo LED',5,38.00,18),(48,'Antivol Vélo U',5,45.00,12),
(49,'Porte-bidon Carbone',5,19.00,25),(50,'Maillot Cyclisme France',5,65.00,10),(51,'Lunettes Soleil Running',8,85.00,15),(52,'Asics Gel Nimbus 25',8,180.00,12),
(53,'Nike Pegasus Running',8,130.00,8),(54,'Montre Garmin Forerunner',8,350.00,5),(55,'Short Running 2en1',8,35.00,22),(56,'T-shirt Running Respirant',8,25.00,50),
(57,'Chaussettes Run x3',8,18.00,40),(58,'Brassière Sport Run',8,32.00,20),(59,'Sac Hydratation 5L',8,75.00,6),(60,'Casquette Running Dry',8,19.00,30),
(61,'Maillot Bain Arena',6,35.00,25),(62,'Lunettes Natation Speedo',6,22.00,40),(63,'Bonnet Bain Silicone',6,8.00,100),(64,'Planche Natation Eva',6,15.00,15),
(65,'Palmes Natation Courtes',6,28.00,12),(66,'Pince-nez Natation',6,5.00,50),(67,'Sac Piscine Mesh',6,18.00,20),(68,'Pull-buoy Natation',6,12.00,25),
(69,'Serviette Microfibre L',6,15.00,60),(70,'Maillot Natation Femme',6,45.00,18),(71,'Haltères Musculation 10kg',7,45.00,10),(72,'Disque Fonte 5kg x2',7,25.00,30),
(73,'Barre Musculation 1m50',7,55.00,8),(74,'Gants Musculation Cuir',7,22.00,25),(75,'Ceinture Force Cuir',7,38.00,12),(76,'Banc Développé Couché',7,220.00,2),
(77,'Poignées Pompes',7,18.00,40),(78,'Gilet Lesté 10kg',7,65.00,5),(79,'Magnésie Escalade/Muscu',7,9.00,100),(80,'Sangle Suspension Pro',7,85.00,10),
(81,'Briques Yoga Mousse x2',9,15.00,40),(82,'Sangle Yoga Coton',9,12.00,50),(83,'Coussin Méditation',9,35.00,15),(84,'Bol Tibétain Petit',9,45.00,8),
(85,'Pantalon Yoga Fluide',9,28.00,30),(86,'Top Yoga Dos Nu',9,22.00,25),(87,'Nettoyant Tapis Yoga',9,12.00,20),(88,'Sac Transport Tapis',9,25.00,15),
(89,'Roue Yoga Training',9,38.00,10),(90,'Couverture Yoga Relax',9,29.00,20),(91,'Ballon Foot Adidas UCL',10,35.00,30),(92,'Maillot Foot PSG 2024',10,95.00,20),
(93,'Crampons Foot Nike',10,120.00,12),(94,'Gants Gardien Reusch',10,45.00,15),(95,'Protège-tibias Foot',10,18.00,40),(96,'Ballon Basket Spalding',10,25.00,25),
(97,'Panier Basket Mural',10,85.00,5),(98,'Maillot Basket NBA',10,89.00,12),(99,'Ballon Rugby Gilbert',10,32.00,20),(100,'Casque Rugby Impact',10,45.00,10),
(101,'Raquette Tennis Babolat Aero',1,245.00,2),(102,'Balles Tennis x12',1,29.00,40),(103,'Survêtement Tennis',1,85.00,15),(104,'Chaussures Tennis Terre',1,130.00,6),
(105,'Gourde Rando Isotherme',2,28.00,4),(106,'Chaussures Rando Lowa',2,185.00,2),(107,'Sac Couchage Rando',2,120.00,3),(108,'Popote Rando 1 pers',2,35.00,8),
(109,'Gants Combat MMA Pro',3,45.00,20),(110,'Protège-tibias Boxe',3,38.00,15),(111,'Rashguard Combat',3,35.00,25),(112,'Plastron Taekwondo',3,49.00,5),
(113,'Vélo VTT Rockrider',5,450.00,5),(114,'Antivol Vélo Cable',5,15.00,30),(115,'Casque Route Ultra',5,120.00,4),(116,'Kit Réparation Vélo',5,9.00,100),
(117,'Short Running Trail',8,42.00,15),(118,'Veste Running Coupe-vent',8,65.00,10),(119,'Buff Running Microfibre',8,12.00,50),(120,'Lampe Run Poitrine',8,35.00,8),
(121,'Surgrip Tennis x3',1,8.50,60),(122,'Chaussures Tennis All Court',1,155.00,8),(123,'Jupe Tennis Femme',1,32.00,20),(124,'Vibrateur Raquette x2',1,6.00,80),
(125,'Sac Rando 50L Deuter',2,135.00,5),(126,'Guêtres Rando Imperméables',2,28.00,18),(127,'Chapeau Rando UV',2,22.00,25),(128,'Couteau Rando Multifonction',2,35.00,10),
(129,'Sac Frappe Sur Pied',3,180.00,3),(130,'Protège-poitrine Femme Combat',3,42.00,10),(131,'Ceinture Judo Noire',3,15.00,35),(132,'Pattes Ours Boxe',3,55.00,8),
(133,'Banc Abdominaux Incliné',4,95.00,4),(134,'Ballon Fitness Lesté 3kg',4,28.00,15),(135,'Tapis Fitness Epais 15mm',4,35.00,20),(136,'Chronomètre Sport Digital',4,18.00,30),
(137,'Selle Vélo Gel Confort',5,42.00,12),(138,'Compteur Vélo GPS',5,89.00,6),(139,'Sacoche Vélo Etanche',5,35.00,14),(140,'Pneu VTT 27.5',5,28.00,20),
(141,'Chaussures Running Trail',8,145.00,7),(142,'Ceinture Running Porte-bidon',8,22.00,25),(143,'Manchons Compression Run',8,18.00,35),(144,'Gel Energie Running x6',8,12.00,100),
(145,'Combinaison Natation Néoprène',6,85.00,4),(146,'Tuba Frontal Natation',6,18.00,20),(147,'Plaquettes Natation Main',6,15.00,25),(148,'Chrono Natation Etanche',6,45.00,8),
(149,'Power Rack Musculation',7,450.00,2),(150,'Disque Fonte 10kg x2',7,42.00,15),(151,'Barre EZ Musculation',7,45.00,10),(152,'Protège-poignets Muscu',7,12.00,40),
(153,'Tapis Yoga Voyage Pliable',9,55.00,10),(154,'Bolster Yoga Cylindrique',9,32.00,12),(155,'Encens Yoga Relaxation x20',9,8.00,60),(156,'Livre Yoga Postures',9,19.00,20),
(157,'Ballon Volley Mikasa',10,38.00,18),(158,'Filet Badminton Portable',10,45.00,6),(159,'Raquette Badminton Yonex',10,65.00,10),(160,'Ballon Handball Molten',10,28.00,15),
(161,'Bandana Tennis Absorbant',1,12.00,40),(162,'Raquette Tennis Dunlop CX',1,175.00,5),(163,'Chaussettes Tennis Longues x3',1,15.00,35),(164,'Machine Lance-balles Mini',1,320.00,2),
(165,'Tente Rando 2 Places',2,210.00,3),(166,'Matelas Rando Autogonflant',2,75.00,6),(167,'Filtre Eau Rando Portable',2,45.00,8),(168,'Carte Boussole Rando Set',2,18.00,15),
(169,'Gants MMA Sparring',3,52.00,12),(170,'Bouclier Frappe Courbe',3,65.00,5),(171,'Short Boxe Satin',3,35.00,20),(172,'Protège-chevilles Combat',3,22.00,18),
(173,'TRX Sangles Suspension',4,75.00,6),(174,'Medecine Ball 5kg',4,38.00,10),(175,'Bande Résistance Set x5',4,25.00,30),(176,'Mini Vélo Appartement',4,120.00,4),
(177,'Bidon Vélo Isotherme 750ml',5,15.00,35),(178,'Lunettes Vélo Photochromiques',5,55.00,8),(179,'Béquille Vélo Réglable',5,12.00,25),(180,'Garde-boue Vélo Set',5,18.00,20),
(181,'Genouillère Running Sport',8,15.00,30),(182,'Bandeau Running Réfléchissant',8,10.00,45),(183,'Chaussettes Trail Hautes x2',8,22.00,20),(184,'Sac Running Dos 10L',8,55.00,8),
(185,'Short Natation Jammer',6,32.00,15),(186,'Bouchons Oreilles Natation',6,8.00,50),(187,'Sac Etanche Natation 20L',6,25.00,12),(188,'Elastique Natation Résistance',6,18.00,20),
(189,'Haltères Réglables 20kg',7,85.00,5),(190,'Cage Squat Pliable',7,280.00,2),(191,'Rouleau Mousse Massage',7,22.00,25),(192,'Poignées Musculation Grip',7,15.00,30),
(193,'Hamac Yoga Aérien',9,65.00,5),(194,'Bandeau Yoga Coton',9,10.00,40),(195,'Spray Aromathérapie Yoga',9,14.00,25),(196,'DVD Yoga Débutant',9,12.00,15),
(197,'Chasuble Sport x10',10,35.00,20),(198,'Sifflet Arbitre Métal',10,8.00,50),(199,'Plots Entraînement x20',10,22.00,15),(200,'Chronomètre Coach Digital',10,32.00,10);

-- 6. LES 350 VENTES
INSERT INTO ventes VALUES
-- Janvier 2023
(1,3,21,5,4,'2023-01-05'),(2,37,28,3,3,'2023-01-07'),(3,56,35,1,2,'2023-01-10'),(4,63,42,4,5,'2023-01-12'),
(5,14,49,2,2,'2023-01-15'),(6,91,56,5,3,'2023-01-17'),(7,8,63,3,4,'2023-01-20'),(8,46,70,1,6,'2023-01-22'),
(9,82,77,4,2,'2023-01-25'),(10,66,84,2,3,'2023-01-28'),
-- Février 2023
(11,52,91,5,1,'2023-02-02'),(12,24,98,3,3,'2023-02-05'),(13,95,105,1,2,'2023-02-08'),(14,34,112,4,4,'2023-02-10'),
(15,69,119,2,2,'2023-02-14'),(16,5,126,5,1,'2023-02-16'),(17,77,133,3,3,'2023-02-19'),(18,102,140,1,2,'2023-02-22'),
(19,144,147,4,5,'2023-02-25'),(20,38,4,2,2,'2023-02-28'),
-- Mars 2023
(21,1,11,5,1,'2023-03-03'),(22,93,18,3,1,'2023-03-06'),(23,55,25,1,2,'2023-03-09'),(24,62,32,4,3,'2023-03-12'),
(25,18,39,2,2,'2023-03-15'),(26,96,46,5,2,'2023-03-18'),(27,119,53,3,4,'2023-03-21'),(28,31,60,1,1,'2023-03-24'),
(29,71,67,4,1,'2023-03-27'),(30,46,74,2,5,'2023-03-30'),
-- Avril 2023
(31,42,81,5,1,'2023-04-02'),(32,22,88,3,2,'2023-04-05'),(33,85,95,1,2,'2023-04-08'),(34,3,102,4,6,'2023-04-11'),
(35,57,109,2,3,'2023-04-14'),(36,175,116,5,2,'2023-04-17'),(37,110,123,3,1,'2023-04-20'),(38,63,130,1,4,'2023-04-23'),
(39,136,137,4,2,'2023-04-26'),(40,9,144,2,1,'2023-04-29'),
-- Mai 2023
(41,53,1,5,1,'2023-05-02'),(42,98,8,3,1,'2023-05-05'),(43,37,15,1,5,'2023-05-08'),(44,14,22,4,3,'2023-05-11'),
(45,81,29,2,2,'2023-05-14'),(46,161,36,5,3,'2023-05-17'),(47,44,43,3,1,'2023-05-20'),(48,24,50,1,2,'2023-05-23'),
(49,131,57,4,2,'2023-05-26'),(50,56,64,2,3,'2023-05-29'),
-- Juin 2023
(51,91,71,5,2,'2023-06-01'),(52,155,78,3,4,'2023-06-04'),(53,7,85,1,1,'2023-06-07'),(54,66,92,4,5,'2023-06-10'),
(55,34,99,2,3,'2023-06-13'),(56,117,106,5,1,'2023-06-16'),(57,95,113,3,3,'2023-06-19'),(58,46,120,1,4,'2023-06-22'),
(59,72,127,4,2,'2023-06-25'),(60,182,134,2,3,'2023-06-28'),
-- Juillet 2023
(61,2,141,5,1,'2023-07-01'),(62,61,148,3,2,'2023-07-04'),(63,38,5,1,2,'2023-07-07'),(64,105,12,4,1,'2023-07-10'),
(65,79,19,2,5,'2023-07-13'),(66,144,26,5,6,'2023-07-16'),(67,163,33,3,2,'2023-07-19'),(68,25,40,1,1,'2023-07-22'),
(69,55,47,4,3,'2023-07-25'),(70,198,54,2,4,'2023-07-28'),
-- Août 2023
(71,41,61,5,1,'2023-08-01'),(72,92,68,3,1,'2023-08-03'),(73,13,75,1,2,'2023-08-06'),(74,69,82,4,3,'2023-08-09'),
(75,37,89,2,4,'2023-08-12'),(76,102,96,5,3,'2023-08-15'),(77,86,103,3,2,'2023-08-18'),(78,177,110,1,2,'2023-08-21'),
(79,23,117,4,1,'2023-08-24'),(80,143,124,2,2,'2023-08-27'),(81,8,131,5,3,'2023-08-30'),
-- Septembre 2023
(82,54,138,3,1,'2023-09-02'),(83,96,145,1,2,'2023-09-05'),(84,31,2,4,2,'2023-09-08'),(85,119,9,2,3,'2023-09-11'),
(86,63,16,5,4,'2023-09-14'),(87,150,23,3,1,'2023-09-17'),(88,5,30,1,2,'2023-09-20'),(89,174,37,4,1,'2023-09-23'),
(90,82,44,2,3,'2023-09-26'),(91,46,51,5,5,'2023-09-29'),
-- Octobre 2023
(92,10,58,3,1,'2023-10-02'),(93,57,65,1,2,'2023-10-05'),(94,91,72,4,3,'2023-10-08'),(95,137,79,2,1,'2023-10-11'),
(96,22,86,5,3,'2023-10-14'),(97,85,93,3,1,'2023-10-17'),(98,3,100,1,8,'2023-10-20'),(99,155,107,4,5,'2023-10-23'),
(100,44,114,2,2,'2023-10-26'),(101,192,121,5,2,'2023-10-29'),
-- Novembre 2023
(102,52,128,3,1,'2023-11-01'),(103,93,135,1,2,'2023-11-04'),(104,34,142,4,3,'2023-11-07'),(105,14,149,2,2,'2023-11-10'),
(106,77,6,5,2,'2023-11-13'),(107,161,13,3,2,'2023-11-16'),(108,109,20,1,1,'2023-11-19'),(109,66,27,4,4,'2023-11-22'),
(110,131,34,2,3,'2023-11-25'),(111,38,41,5,2,'2023-11-28'),
-- Décembre 2023
(112,1,48,3,2,'2023-12-01'),(113,92,55,1,2,'2023-12-03'),(114,61,62,4,3,'2023-12-06'),(115,98,69,2,1,'2023-12-09'),
(116,42,76,5,1,'2023-12-12'),(117,175,83,3,3,'2023-12-15'),(118,55,90,1,2,'2023-12-18'),(119,144,97,4,4,'2023-12-21'),
(120,71,104,2,1,'2023-12-24'),(121,24,111,5,2,'2023-12-27'),(122,95,118,3,2,'2023-12-30'),
-- Janvier 2024
(123,37,125,1,4,'2024-01-03'),(124,63,132,4,3,'2024-01-06'),(125,102,139,2,2,'2024-01-09'),(126,8,146,5,5,'2024-01-12'),
(127,56,3,3,3,'2024-01-15'),(128,182,10,1,2,'2024-01-18'),(129,91,17,4,2,'2024-01-21'),(130,46,24,2,6,'2024-01-24'),
(131,119,31,5,3,'2024-01-27'),(132,3,38,3,5,'2024-01-30'),
-- Février 2024
(133,53,45,1,1,'2024-02-02'),(134,85,52,4,2,'2024-02-05'),(135,14,59,2,3,'2024-02-08'),(136,34,66,5,2,'2024-02-11'),
(137,155,73,3,6,'2024-02-14'),(138,69,80,1,2,'2024-02-17'),(139,22,87,4,3,'2024-02-20'),(140,136,94,2,1,'2024-02-23'),
(141,79,101,5,4,'2024-02-26'),(142,198,108,3,3,'2024-02-29'),
-- Mars 2024
(143,2,115,1,1,'2024-03-03'),(144,110,122,4,2,'2024-03-06'),(145,44,129,2,2,'2024-03-09'),(146,96,136,5,3,'2024-03-12'),
(147,163,143,3,2,'2024-03-15'),(148,31,150,1,1,'2024-03-18'),(149,72,7,4,2,'2024-03-21'),(150,5,14,2,2,'2024-03-24'),
(151,143,21,5,3,'2024-03-27'),(152,177,28,3,2,'2024-03-30'),
-- Avril 2024
(153,92,35,1,1,'2024-04-02'),(154,41,42,4,1,'2024-04-05'),(155,37,49,2,3,'2024-04-08'),(156,82,56,5,2,'2024-04-11'),
(157,24,63,3,4,'2024-04-14'),(158,117,70,1,2,'2024-04-17'),(159,66,77,4,3,'2024-04-20'),(160,150,84,2,2,'2024-04-23'),
(161,9,91,5,2,'2024-04-26'),(162,174,98,3,1,'2024-04-29'),
-- Mai 2024
(163,1,105,1,1,'2024-05-02'),(164,61,112,4,2,'2024-05-05'),(165,55,119,2,3,'2024-05-08'),(166,93,126,5,1,'2024-05-11'),
(167,102,133,3,4,'2024-05-14'),(168,38,140,1,2,'2024-05-17'),(169,131,147,4,2,'2024-05-20'),(170,46,4,2,5,'2024-05-23'),
(171,13,11,5,1,'2024-05-26'),(172,86,18,3,2,'2024-05-29'),
-- Juin 2024
(173,52,25,1,2,'2024-06-01'),(174,91,32,4,3,'2024-06-04'),(175,7,39,2,1,'2024-06-07'),(176,63,46,5,2,'2024-06-10'),
(177,175,53,3,2,'2024-06-13'),(178,34,60,1,3,'2024-06-16'),(179,95,67,4,2,'2024-06-19'),(180,144,74,2,5,'2024-06-22'),
(181,161,81,5,3,'2024-06-25'),(182,57,88,3,2,'2024-06-28'),
-- Juillet 2024
(183,10,95,1,1,'2024-07-01'),(184,42,102,4,2,'2024-07-04'),(185,69,109,2,2,'2024-07-07'),(186,98,116,5,2,'2024-07-10'),
(187,119,123,3,4,'2024-07-13'),(188,22,130,1,2,'2024-07-16'),(189,137,137,4,1,'2024-07-19'),(190,77,144,2,3,'2024-07-22'),
(191,3,1,5,6,'2024-07-25'),(192,182,8,3,4,'2024-07-28'),
-- Août 2024
(193,53,15,1,1,'2024-08-01'),(194,85,22,4,2,'2024-08-04'),(195,14,29,2,2,'2024-08-07'),(196,192,36,5,2,'2024-08-10'),
(197,56,43,3,2,'2024-08-13'),(198,105,50,1,1,'2024-08-16'),(199,44,57,4,1,'2024-08-19'),(200,155,64,2,3,'2024-08-22'),
(201,71,71,5,2,'2024-08-25'),(202,25,78,3,2,'2024-08-28'),
-- Septembre 2024
(203,2,85,1,1,'2024-09-01'),(204,92,92,4,2,'2024-09-04'),(205,37,99,2,3,'2024-09-07'),(206,66,106,5,4,'2024-09-10'),
(207,96,113,3,2,'2024-09-13'),(208,31,120,1,2,'2024-09-16'),(209,150,127,4,1,'2024-09-19'),(210,8,134,2,4,'2024-09-22'),
(211,109,141,5,2,'2024-09-25'),(212,46,148,3,3,'2024-09-28'),
-- Octobre 2024
(213,54,5,1,1,'2024-10-01'),(214,93,12,4,1,'2024-10-04'),(215,61,19,2,2,'2024-10-07'),(216,34,26,5,2,'2024-10-10'),
(217,163,33,3,3,'2024-10-13'),(218,79,40,1,3,'2024-10-16'),(219,117,47,4,2,'2024-10-19'),(220,91,54,2,2,'2024-10-22'),
(221,38,61,5,3,'2024-10-25'),(222,143,68,3,2,'2024-10-28'),
-- Novembre 2024
(223,1,75,1,2,'2024-11-01'),(224,42,82,4,1,'2024-11-03'),(225,55,89,2,2,'2024-11-06'),(226,102,96,5,3,'2024-11-09'),
(227,24,103,3,3,'2024-11-12'),(228,72,110,1,2,'2024-11-15'),(229,136,117,4,2,'2024-11-18'),(230,177,124,2,3,'2024-11-21'),
(231,5,131,5,1,'2024-11-24'),(232,144,138,3,4,'2024-11-27'),(233,198,145,1,5,'2024-11-30'),
-- Décembre 2024 (fêtes = plus de ventes)
(234,92,2,4,3,'2024-12-01'),(235,52,9,2,2,'2024-12-03'),(236,98,16,5,2,'2024-12-05'),(237,91,23,3,4,'2024-12-07'),
(238,3,30,1,10,'2024-12-09'),(239,37,37,4,5,'2024-12-11'),(240,93,44,2,2,'2024-12-13'),(241,61,51,5,3,'2024-12-15'),
(242,85,58,3,2,'2024-12-16'),(243,14,65,1,4,'2024-12-17'),(244,155,72,4,8,'2024-12-18'),(245,56,79,2,3,'2024-12-19'),
(246,22,86,5,4,'2024-12-20'),(247,46,93,3,7,'2024-12-21'),(248,175,100,1,3,'2024-12-22'),(249,69,107,4,3,'2024-12-23'),
(250,95,114,2,3,'2024-12-24'),(251,131,121,5,2,'2024-12-26'),(252,182,128,3,4,'2024-12-27'),(253,77,135,1,2,'2024-12-28'),
(254,119,142,4,3,'2024-12-29'),(255,34,149,2,2,'2024-12-30'),(256,8,6,5,5,'2024-12-31'),
-- Janvier 2025
(257,53,13,3,1,'2025-01-03'),(258,41,20,1,1,'2025-01-06'),(259,31,27,4,2,'2025-01-09'),(260,96,34,2,2,'2025-01-12'),
(261,163,41,5,2,'2025-01-15'),(262,44,48,3,2,'2025-01-18'),(263,102,55,1,2,'2025-01-21'),(264,66,62,4,3,'2025-01-24'),
(265,38,69,2,2,'2025-01-27'),(266,150,76,5,1,'2025-01-30'),
-- Février 2025
(267,2,83,3,1,'2025-02-02'),(268,55,90,1,2,'2025-02-05'),(269,14,97,4,2,'2025-02-08'),(270,91,104,2,3,'2025-02-11'),
(271,82,111,5,2,'2025-02-14'),(272,37,118,3,4,'2025-02-17'),(273,109,125,1,1,'2025-02-20'),(274,63,132,4,3,'2025-02-23'),
(275,144,139,2,5,'2025-02-26'),
-- Mars 2025
(276,1,146,5,1,'2025-03-01'),(277,92,3,3,2,'2025-03-04'),(278,52,10,1,1,'2025-03-07'),(279,3,17,4,5,'2025-03-10'),
(280,85,24,2,2,'2025-03-13'),(281,42,31,5,1,'2025-03-16'),(282,22,38,3,3,'2025-03-19'),(283,56,45,1,2,'2025-03-22'),
(284,175,52,4,2,'2025-03-25'),(285,46,59,2,4,'2025-03-28'),
-- Avril 2025
(286,93,66,5,1,'2025-04-01'),(287,61,73,3,2,'2025-04-04'),(288,34,80,1,3,'2025-04-07'),(289,119,87,4,2,'2025-04-10'),
(290,95,94,2,2,'2025-04-13'),(291,77,101,5,2,'2025-04-16'),(292,137,108,3,1,'2025-04-19'),(293,24,115,1,2,'2025-04-22'),
(294,155,122,4,4,'2025-04-25'),(295,8,129,2,3,'2025-04-28'),
-- Mai 2025
(296,10,136,5,1,'2025-05-02'),(297,44,143,3,2,'2025-05-05'),(298,66,150,1,3,'2025-05-08'),(299,91,7,4,2,'2025-05-11'),
(300,37,14,2,3,'2025-05-14'),(301,131,21,5,2,'2025-05-17'),(302,55,28,3,2,'2025-05-20'),(303,96,35,1,2,'2025-05-23'),
(304,182,42,4,3,'2025-05-26'),(305,14,49,2,2,'2025-05-29'),
-- Juin 2025
(306,53,56,5,1,'2025-06-01'),(307,102,63,3,2,'2025-06-04'),(308,38,70,1,2,'2025-06-07'),(309,85,77,4,1,'2025-06-10'),
(310,46,84,2,5,'2025-06-13'),(311,161,91,5,2,'2025-06-16'),(312,72,98,3,2,'2025-06-19'),(313,117,105,1,1,'2025-06-22'),
(314,63,112,4,3,'2025-06-25'),(315,198,119,2,3,'2025-06-28'),
-- Juillet 2025
(316,2,126,5,1,'2025-07-02'),(317,92,133,3,1,'2025-07-05'),(318,42,140,1,2,'2025-07-08'),(319,69,147,4,2,'2025-07-11'),
(320,34,4,2,2,'2025-07-14'),(321,56,11,5,3,'2025-07-17'),(322,144,18,3,4,'2025-07-20'),(323,22,25,1,2,'2025-07-23'),
(324,79,32,4,3,'2025-07-26'),(325,150,39,2,1,'2025-07-29'),
-- Août - Décembre 2025 et début 2026
(326,1,46,5,1,'2025-08-05'),(327,91,53,3,3,'2025-08-12'),(328,37,60,1,4,'2025-08-19'),(329,52,67,4,1,'2025-08-26'),
(330,3,74,2,7,'2025-09-03'),(331,93,81,5,2,'2025-09-10'),(332,55,88,3,2,'2025-09-17'),(333,46,95,1,4,'2025-09-24'),
(334,92,102,4,2,'2025-10-02'),(335,14,109,2,3,'2025-10-09'),(336,85,116,5,2,'2025-10-16'),(337,102,123,3,3,'2025-10-23'),
(338,42,130,1,1,'2025-11-01'),(339,61,137,4,2,'2025-11-08'),(340,37,144,2,5,'2025-11-15'),(341,91,1,5,4,'2025-11-22'),
(342,3,8,3,12,'2025-12-05'),(343,92,15,1,3,'2025-12-10'),(344,56,22,4,4,'2025-12-15'),(345,155,29,2,6,'2025-12-20'),
(346,46,36,5,8,'2025-12-24'),(347,95,43,3,3,'2025-12-27'),
(348,1,50,1,1,'2026-01-05'),(349,37,57,4,3,'2026-01-12'),(350,91,64,2,2,'2026-01-19');