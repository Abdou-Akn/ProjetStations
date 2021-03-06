
CREATE TABLE stationsp2 (
    id character varying(15),
    marque character varying(30),
    nom character varying(100),
    latitude numeric,
    longitude numeric,
    adresse text,
    ville character varying(50),
    cp character(5),
    nbnotes integer default 0,
    noteglobale integer default 0,
    noteaccueil integer default 0,
    noteglobale integer default 0,
    noteprix integer default 0,
    noteservice integer default 0,
);

ALTER TABLE ONLY stationsp2
    ADD CONSTRAINT stationsp2_pkey PRIMARY KEY (id);



INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62300014', 'Carbix', NULL, 50.4272, 2.81919, '44 ROUTE D ARRAS', 'LENS', '62300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80200011', 'Carbix', NULL, 49.942, 2.941, '28 avenue des australiens', 'Péronne', '80200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62840004', 'Carbix', NULL, 50.653, 2.839, '7bis rue des Glattignies', 'Fleurbaix', '62840');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80000014', 'Carbix', NULL, 49.91144285, 2.25197699, '495 ROUTE D ABBEVILLE', 'AMIENS', '80000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59114006', 'Carbix', NULL, 50.826, 2.586, 'AUTOROUTE A25 - AIRE DE ST LAURENT', 'Steenvoorde', '59114');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100028', 'Carbix', NULL, 50.938, 1.882, '320 RUE DE SAINT-OMER', 'Calais', '62100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100029', 'Carbix', NULL, 50.964849701546, 1.8878127265503, 'RUE DES GOELANDS ZI DES DUNES', 'Calais', '62100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59215001', 'Carbix', NULL, 50.335900711304, 3.302841277246, 'RUE EMILE ZOLA', 'Abscon', '59215');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62660004', 'Carbix', NULL, 50.5229204147, 2.68093236649, '195 ROUTE NATIONALE', 'BEUVRY', '62660');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62250011', 'Carbix', NULL, 50.85976536, 1.73284823, 'AUTOROUTE A16 - AIRE DES DEUX CAPS', 'LEUBRINGHEN', '62250');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62200005', 'Carbix', NULL, 50.719, 1.609, '2 BOULEVARD DAUNOU', 'Boulogne-sur-Mer', '62200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62500005', 'Carbix', NULL, 50.74443926, 2.26025381, '1, RUE DES MADELEINES', 'Saint-Omer', '62500');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62300012', 'Carbix', NULL, 50.4350374806, 2.84088657342, '118 RUE RENE LANOY', 'LENS', '62300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100027', 'Carbix', NULL, 50.94494, 1.82729, '150 AVENUE ROGER SALENGRO', 'CALAIS', '62100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62700008', 'Carbix', NULL, 50.477203, 2.533918, '864 RUE DE LA REPUBLIQUE - RN 41', 'Bruay-la-Buissière', '62700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62250010', 'Carbix', NULL, 50.78458, 1.69358, 'AUTOROUTE A16 - AIRE DE L''EPITRE', 'BEUVREQUEN', '62250');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59000016', 'Carbix', NULL, 50.62565002, 3.03513858, '112 RUE DE LA BASSEE', 'LILLE', '59000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59100012', 'Carbix', NULL, 50.67431, 3.17409, '48 AVENUE GUSTAVE DELORY', 'ROUBAIX', '59100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59000019', 'Carbix', NULL, 50.6297641552, 3.03570571173, '2, RUE DE TURENNE', 'LILLE', '59000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59000020', 'Carbix', NULL, 50.62921, 3.10259, '17 A 25 RUE ROGER SALENGRO', 'LILLE', '59000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60640001', 'Carbix', 'GARAGE VAN ASTEN', 49.655, 3.05, '206 Rue Marcel Poulin', 'GUISCARD', '60640');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59550002', 'Carbix', 'SARL GGE DUBAIL CITROEN', 50.11864, 3.70226, '57 Faubourg de France', 'Landrecies', '59550');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59790001', 'Carbix', 'MR DEGAND BERNARD', 50.6002088404, 3.08413548938, '331 Rue Charles Saint-Venant', 'RONCHIN', '59790');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60300001', 'Carbix', 'EOR CHAMANT SEMAC', 49.221, 2.594, 'DEVIATION NORD DE SENLIS', 'Chamant', '60300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62130001', 'Carbix', 'ETS BAILLEUL', 50.38673, 2.34912, '184 Rue de Béthune', 'SAINT-POL-SUR-TERNOISE', '62130');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62250005', 'Carbix', 'RELAIS DE MARQUISE', 50.8166, 1.70267, '72 Avenue Ferber', 'Marquise', '62250');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62640002', 'Carbix', 'SARL LEFER', 50.42731, 2.92595, 'PONT DU TONKIN', 'Montigny-en-Gohelle', '62640');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80230004', 'Carbix', 'GARAGE DE ST VAL', 50.1749951225, 1.64873067505, '208 route d''Abbeville', 'Saint-Valery-sur-Somme', '80230');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80600004', 'Carbix', 'EOR DOULLENS GOGETI', 50.161, 2.353, 'Avenue Flandres Dunkerque', 'DOULLENS', '80600');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80600003', 'Carbix', 'M.MARECHAL', 50.1615443966, 2.35482521342, '76 ROUTE FLANDRE DUNKERQUE', 'DOULLENS', '80600');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59580001', 'Carbix', 'BOIVIN OCTAVE ET CIE SA', 50.33003, 3.24294, '67 Boulevard Paul Vaillant-Couturier', 'ANICHE', '59580');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62620001', 'Carbix', 'SARL LABBE', 50.454, 2.616, '3 Rue d''Haillicourt', 'BARLIN', '62620');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60140002', 'Carbix', 'MR DIXIMUS FABRICE', 49.329, 2.464, '6 Rue Victor Hugo', 'Liancourt', '60140');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80730001', 'Carbix', 'GGE DE ST LEGER', 49.914, 2.235, '421 Avenue Louis Pasteur', 'DREUIL-LèS-AMIENS', '80470');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60112002', 'Carbix', 'GARAGE CHAPRON', 49.483, 2.041, 'Rue de Dieppe', 'Troissereux', '60112');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59219001', 'Carbix', 'GARAGE HERBERT', 50.03054, 3.92387, '58 Route Nationale', 'Larouillies', '59219');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80110001', 'Carbix', 'GGE DE L''ESPINOY', 49.79, 2.477, 'Route de Thennes', 'MOREUIL', '80110');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80290002', 'Carbix', 'EURL LAGAND', 49.7748, 1.98479, '6 Rue d''Hardivillers', 'Poix-de-Picardie', '80290');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60120004', 'Carbix', 'GGE LEFEVRE', 49.635, 2.286, '84 Avenue du Général Frère', 'Breteuil', '60120');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59710006', 'Carbix Access', 'NEW STATION', 50.541, 3.074, '81 Rue de Seclin', 'Avelin', '59710');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80100004', 'Carbix', 'TERRIER', 50.108, 1.832, '3 Place de l''Amiral Courbet', 'Abbeville', '80100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80500004', 'Carbix', 'SARL OPALE', 49.646, 2.573, '1 Place du Maréchal Foch', 'Montdidier', '80500');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59151001', 'Carbix Access', 'M.ROSSIN', 50.291, 3.151, '15 RN 43', 'Bugnicourt', '59151');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80590001', 'Carbix', 'GALOT PASCAL', 49.77754, 1.82156, 'Route d''Aumale', 'Morvillers-Saint-Saturnin', '80290');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80210002', 'Carbix', 'EOR GARAGE DU VIMEU SA', 50.063, 1.603, 'ZONE INDUSTRIELLE', 'FEUQUIèRES-EN-VIMEU', '80210');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80380001', 'Carbix', 'AJC DISTRIBUTION', 49.871, 2.512, '21 RUE DES TAVERNES', 'VILLERS-BRETONNEUX', '80800');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62380001', 'Carbix', 'SARL HANSSE', 50.70998, 2.12748, '57 Avenue Bernard Chochoy', 'Lumbres', '62380');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59125003', 'Carbix', 'DUMEZ', 50.327, 3.489, '2 Rue de la Concorde', 'Trith-Saint-Léger', '59125');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62360001', 'Carbix', 'SARL DEMILLY', 50.734, 1.698, '93 bis AVENUE DE LA FORET', 'LA CAPELLE-LèS-BOULOGNE', '62360');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59474001', 'Carbix Access', 'WACRENIER   SA', 50.55863, 3.03422, '15 Route de Lille', 'Seclin', '59113');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59820001', 'Carbix', 'GRAVELINES GGRD', 50.99614, 2.1491, 'ROUTE DE DUNKERQUE', 'GRAVELINES', '59820');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59190001', 'Carbix', 'GARAGE TROLLE', 50.73122, 2.54372, 'Rue Notre-Dame', 'HAZEBROUCK', '59190');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80200003', 'Carbix', 'Relais de la Chapelette', 49.918, 2.933, '2 route de Paris', 'PERONNE', '80200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62920001', 'Carbix', 'SARL DELABROY', 50.544, 2.541, '14 Rue Nationale', 'CHOCQUES', '62920');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62110001', 'Carbix', 'SARL SANDRAH', 50.416, 2.976, '1230 BOULEVARD ALBERT SCHWEITZER', 'Hénin-Beaumont', '62110');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62220001', 'Carbix', 'EOR CARVIN SANEG', 50.48146, 2.93698, 'ROUTE NATIONALE 25', 'Carvin', '62220');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62140002', 'Carbix', 'EOR GARAGE HESDINOIS S A', 50.3671202413, 2.05482702801, '14 Route d''Arras', 'MARCONNE', '62140');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62260001', 'Carbix', 'EOR CAUCHY LA TOUR COUSIN', 50.50927, 2.4414, '22 Route Nationale', 'CAUCHY-à-LA-TOUR', '62260');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62114002', 'Carbix', 'GARAGE DE LA GOHELLE', 50.455, 2.684, '100 Avenue François Mitterand', 'SAINS-EN-GOHELLE', '62114');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100002', 'Carbix', 'SARL HOTEL DE VILLE', 50.953, 1.853, '23 Rue Paul Bert', 'CALAIS', '62100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59136001', 'Carbix', 'SARL GARAGE DE LA VALLEE', 50.58, 2.933, '30 Rue de Lille', 'WAVRIN', '59136');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62690002', 'Carbix', 'MR TETELIN', 50.348, 2.569, 'RN-39', 'Savy-Berlette', '62690');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80190001', 'Carbix', 'GARAGES FRANCOIS', 49.76, 2.914, 'Pôle Activité du Pays Neslois - Route de Rouy', 'NESLE', '80190');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59470004', 'Carbix', 'SAS nouveau garage des flandres', 50.891, 2.463, '703 Route de Bergues', 'Wormhout', '59470');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62780001', 'Carbix', 'SARL GARAGE DE LA COTE OPALE', 50.50964, 1.62825, 'AVENUE DE L''AEROPORT', 'Cucq', '62780');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59770003', 'Carbix', 'Garage Barbusse', 50.343, 3.562, '373 Avenue Henri Barbusse', 'MARLY', '59770');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59100011', 'Carbix', NULL, 50.69755, 3.16556, '660 AVENUE DES NATIONS UNIES', 'ROUBAIX', '59100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59110005', 'Carbix', NULL, 50.651008579, 3.06270154852, 'BOULEVARD ROBERT SCHUMANN', 'LA MADELEINE', '59110');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59113008', 'Carbix', NULL, 50.5325604, 3.0462115, 'AUTOROUTE A1 - AIRE DE PHALEMPIN OUEST', 'SECLIN', '59113');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59113009', 'Carbix', NULL, 50.54839, 3.04844, 'ROND-POINT DE L''EPINETTE', 'SECLIN', '59113');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59132001', 'Carbix', NULL, 50.0573, 4.07994, ' Rue Roland Rouleau', 'GLAGEON', '59132');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59125004', 'Carbix', NULL, 50.3398791925, 3.46911762553, 'AUTOROUTE A2 - AIRE LA SENTINELLE EST', 'Trith-Saint-Léger', '59125');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59146002', 'Carbix', NULL, 50.37898, 3.2186, '48 RUE ETIENNE D''ORVES', 'PECQUENCOURT', '59146');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59157002', 'Carbix', NULL, 50.138187661689, 3.394720012381, 'RD 643 LE JEUNE BOIS', 'Beauvois-en-Cambrésis', '59157');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59174002', 'Carbix', NULL, 50.33964, 3.46647, 'AUTOROUTE A2 - AIRE DE LA SENTINELLE OUEST', 'LA SENTINELLE', '59174');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59155007', 'Carbix', NULL, 50.580588190116, 3.0792491542825, 'C.C. AUCHAN - LIEU-DIT MOULIN DE', 'Faches-Thumesnil', '59155');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59200008', 'Carbix', NULL, 50.73657, 3.16874, '398, BOULEVARD DE L''EGALITE', 'TOURCOING', '59200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59210005', 'Carbix', NULL, 51.0317016964, 2.3937395017, '14 ROUTE DE FURNES', 'Coudekerque-Branche', '59210');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59242006', 'Carbix', NULL, 50.517, 3.208, 'A 23 sens Lille-Valenciennes Aire de Genech', 'Templeuve', '59242');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59250001', 'Carbix', NULL, 50.77952, 3.12707, 'av Abbé Lemire', 'HALLUIN', '59250');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59300015', 'Carbix', NULL, 50.36907, 3.53197, '9-12 RUE E. MACAREZ', 'VALENCIENNES', '59300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59300016', 'Carbix', NULL, 50.35369, 3.52025, '27 BD SALY', 'VALENCIENNES', '59300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59300021', 'Carbix', NULL, 50.3663554, 3.5129188, '36 AV DE ST AMAND', 'VALENCIENNES', '59300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59370004', 'Carbix', NULL, 50.647938378583, 3.0985984037771, 'RN 356 - VOIE RAPIDE URBAINE', 'Mons-en-Barœul', '59370');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59400007', 'Carbix', NULL, 50.16712, 3.23808, '2, RUE DE CAUDRY', 'CAMBRAI', '59400');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59400008', 'Carbix', NULL, 50.1850910256, 3.22480715307, '58 RUE DE DOUAI', 'CAMBRAI', '59400');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59491002', 'Carbix', NULL, 50.671372596584, 3.1444037757363, '301 Ave Jean Jaures', 'Villeneuve-d''Ascq', '59491');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59494009', 'Carbix', NULL, 50.37005999, 3.48099899, 'AUTOROUTE A23 6 - AIRE DE PETITE FORÊT', 'Petite-Forêt', '59494');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59500009', 'Carbix', NULL, 50.363, 3.082, '143 BOULEVARD PAUL HAYEZ', 'DOUAI', '59500');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59554005', 'Carbix', NULL, 50.176, 3.204, '16 BIS, ROUTE DE BAPAUME', 'RAILLENCOURT STE OLLE', '59554');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59650013', 'Carbix', NULL, 50.65967936, 3.13539032, '33 RUE JEAN JAURES', 'VILLENEUVE D''ASCQ', '59491');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59650012', 'Carbix', NULL, 50.65925, 3.13527, '76, RUE JEAN JAURES', 'Villeneuve-d''Ascq', '59650');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59700009', 'Carbix', NULL, 50.68307, 3.09256, 'PARC DU CHEVAL BLANC', 'MARCQ-EN-BAROEUL', '59700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59750005', 'Carbix', NULL, 50.281, 3.906, '126 ROUTE DE VALENCIENNES', 'FEIGNIES', '59750');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60000015', 'Carbix', NULL, 49.4334565, 2.0929126, '14 RUE DE CLERMONT', 'Beauvais', '60000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60120006', 'Carbix', NULL, 49.60849, 2.20488, 'AUTOROUTE A16 - AIRE HARDIVILLERS', 'HARDIVILLERS', '60120');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60200012', 'Carbix', NULL, 49.40728, 2.81295, '142 RUE DE PARIS', 'COMPIEGNE', '60200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60230004', 'Carbix', NULL, 49.16, 2.239, 'RN1 ROUTE PARIS', 'CHAMBLY', '60230');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60300007', 'Carbix', NULL, 49.20793, 2.5906, '64/66 AV. MAL FOCH', 'SENLIS', '60300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60300008', 'Carbix', NULL, 49.207744, 2.5901811, '510 AVENUE MARECHAL FOCH', 'SENLIS', '60300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60330004', 'Carbix', NULL, 49.0978508, 2.7515402, '45 ROUTE DE PARIS', 'Le Plessis-Belleville', '60330');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60400005', 'Carbix', NULL, 49.5751, 2.99048, 'RS ST CLAUDE - 70 AV. J.JAURES', 'NOYON', '60400');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60490008', 'Carbix', NULL, 49.5393, 2.70182, 'RN 17', 'CUVILLY', '60490');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60500011', 'Carbix', NULL, 49.2047622946, 2.46187665476, 'ZONE ARTISANALE RN 16', 'Chantilly', '60500');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60680003', 'Carbix', NULL, 49.403075004692, 2.7391493507921, 'RN 31 - ROUTE DE CLERMONT', 'JONQUIERES', '60680');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60870003', 'Carbix', NULL, 49.284380618066, 2.4918620726751, 'ROCADE INDUSTRIELLE', 'Villers-Saint-Paul', '60870');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62000014', 'Carbix', NULL, 50.29691, 2.76937, '138 PLACE DE THECOSLOVAQUIE', 'ARRAS', '62000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62110003', 'Carbix', NULL, 50.41839, 2.94714, '115 RUE PASTEUR', 'Hénin-Beaumont', '62110');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62110004', 'Carbix', NULL, 50.4355216046, 2.97633555894, '389 RUE DES HAUTS DE FRANCE/PLAT', 'Hénin-Beaumont', '62110');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62128010', 'Carbix', NULL, 50.26134, 2.864153, 'Autoroute A1 - Aire de Wancourt', 'WANCOURT', '62128');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62120014', 'Carbix', NULL, 50.57266111, 2.37727932, 'Aire de Rely - Autoroute A26 - Sens Calais - Reims', 'Rely', '62120');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62143003', 'Carbix', NULL, 50.40452363, 2.7447976, 'Autoroute A26 - Aire d''Angres', 'Angres', '62143');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62153003', 'Carbix', NULL, 50.39556, 2.75479, 'AUTOROUTE A26 - AIRE DE SOUCHEZ', 'SOUCHEZ', '62153');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62217007', 'Carbix', NULL, 50.28182, 2.80683, 'ROUTE DE CAMBRAI', 'Tilloy-lès-Mofflaines', '62217');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62600005', 'Carbix', NULL, 50.40858, 1.59383, '481 RUE IMPERATRICE', 'Berck', '62600');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62450005', 'Carbix', NULL, 50.1155313555, 2.85085855867, 'RN 17 - RUE DU TOUR DE VILLE', 'BAPAUME', '62450');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62610004', 'Carbix', NULL, 50.8521873, 1.9871573, '15 route départementale 943', 'Nielles-lès-Ardres', '62610');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62820003', 'Carbix', NULL, 50.4860791546, 2.99713945798, 'ROUTE DE CARVIN', 'LIBERCOURT', '62820');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62860007', 'Carbix', NULL, 50.22535552, 3.06865715, 'AIRE DE BARALLE AUTOROUTE A 26', 'MARQUION', '62860');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80000013', 'Carbix', NULL, 49.8981428362, 2.29242406591, '7 BD DU PORT D''AVAL', 'AMIENS', '80000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80000018', 'Carbix', NULL, 49.8811761, 2.3301715, '190 CHAUSSEE JULES FERRY', 'AMIENS', '80000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80046003', 'Carbix', NULL, 49.9278541, 2.2867746, '7 AVENUE R.DUMOULIN', 'AMIENS CEDEX 2', '80046');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80140006', 'Carbix', NULL, 49.9693324, 1.6748174, 'AUTOROUTE A 28', 'Le Translay', '80140');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80140004', 'Carbix', NULL, 49.960238552497, 1.7662645707019, '21 AVENUE FRANCOIS MITTERRAND', 'OISEMONT', '80140');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80140005', 'Carbix', NULL, 49.96846295, 1.6784044904081, 'AUTOROUTE A 28', 'LE TRANSLAY', '80140');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80190003', 'Carbix', NULL, 49.9829773, 1.5623103625, 'rue charles de gaulle', 'Gamaches', '80220');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80200012', 'Carbix', NULL, 49.88884818, 2.84058968, 'Autoroute A1 - Aire d''Assevillers Est', 'Péronne', '80200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80330004', 'Carbix', NULL, 49.86785, 2.3685, 'RD 935- AVENUE DE LA VILLE IDEAL', 'LONGUEAU', '80330');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80690001', 'Carbix', NULL, 50.0788052, 1.9955359, '17 ROUTE NATIONALE', 'Ailly-le-Haut-Clocher', '80690');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80700009', 'Carbix', NULL, 49.70288, 2.78062, 'ZI IMPASSE DU MOULIN', 'ROYE', '80700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80700010', 'Carbix', NULL, 49.7052849, 2.7660523, 'CHEMIN DEPARTEMENTAL 54 E', 'ROYE', '80700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62780004', 'Carbix', NULL, 50.51, 1.629, '209 AVENUE DE L''EUROPE', 'CUCQ', '62780');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80510003', 'Carbix', NULL, 50.011, 1.993, 'Rue du mai', 'Longpré-les-Corps-Saints', '80510');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59700008', 'Carbix', NULL, 50.66418, 3.10016, '1013 AVENUE DE LA REPUBLIQUE', 'Marcq-en-Barœul', '59700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62360006', 'Carbix', NULL, 50.689, 1.619, '43 BOULEVARD DE LA LIANE', 'Saint-Léonard', '62360');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59640002', 'Carbix', NULL, 51.0242239528, 2.36047848455, 'AV DE LA VILLETTE', 'DUNKERQUE', '59640');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62300013', 'Carbix', NULL, 50.43593, 2.82067, 'ZUP LENS GRANDE RESIDENCE', 'LENS', '62300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62118005', 'Carbix', NULL, 50.3031015, 2.8946233, 'RUE EUGENE DUMONT', 'Rœux', '62118');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59119003', 'Carbix', NULL, 50.3930977383, 3.14795935688, '194, ROUTE NATIONALE', 'WAZIERS', '59119');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80300006', 'Carbix', NULL, 50.0076856354, 2.66640384355, '164 AVENUE DU GENERAL FAIDHERBE', 'ALBERT', '80300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59380005', 'Carbix', NULL, 50.96273, 2.4329, 'FAUBOURG DE CASSEL RD 916', 'QUAEDYPRE', '59380');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59278003', 'Carbix', NULL, 50.42437631396, 3.5637870421417, '10 RUE JEAN JAURES', 'Escautpont', '59278');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62000013', 'Carbix', NULL, 50.291, 2.784, '2 RUE DES ROSATI', 'ARRAS', '62000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59570001', 'Carbix', NULL, 50.30122, 3.79447, 'Rue des Platanes', 'BAVAY', '59570');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59193002', 'Carbix', NULL, 50.680681563879, 2.8603081699752, 'RUE D''ARMENTIERES', 'Erquinghem-Lys', '59193');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62490003', 'Carbix', NULL, 50.3350424914, 2.93385305143, 'd 950', 'Fresnes-lès-Montauban', '62490');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60190003', 'Carbix', NULL, 49.4031869575, 2.62603730586, 'RN 17 / RN 31', 'MOYVILLERS', '60190');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59243001', 'Carbix', NULL, 50.39638, 3.64057, '221 Rue Jean Jaurès', 'Quarouble', '59243');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62230004', 'Carbix', NULL, 50.7114095122, 1.60064338896, 'BOULEVARD MONTESQUIEU', 'OUTREAU', '62230');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80160004', 'Carbix', NULL, 49.741, 2.151, '1 Place du génèral de Gaulle', 'Conty', '80160');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60390003', 'Carbix', NULL, 49.37, 1.987, '100 ROUTE DE GISORS', 'Auneuil', '60390');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62840003', 'Carbix', NULL, 50.658810245084, 2.7710338663378, '1173 rue de la lys', 'sailly sur la lys', '62840');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60380001', 'Carbix', NULL, 49.5479333, 1.8464724, '39 Route de Dieppe', 'SONGEONS', '60380');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62190005', 'Carbix', NULL, 50.5689, 2.46449, 'RN.43', 'LILLERS', '62190');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59121002', 'Carbix', NULL, 50.311006836613, 3.4067975460846, 'RN 30', 'HAULCHIN', '59121');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59760005', 'Carbix', NULL, 51.01420842, 2.30670989, '1 AV DE PETITE SYNTHE', 'Grande-Synthe', '59760');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59320006', 'Carbix', NULL, 50.6, 2.938, 'RN 41', 'Hallennes-lez-Haubourdin', '59320');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59000018', 'Carbix', NULL, 50.617, 3.024, '91 RUE DU FAUBOURG BETHUNE', 'LILLE', '59000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62800004', 'Carbix', NULL, 50.418, 2.769, '69 RUE DE LATTRE DE TASSIGNY', 'LIEVIN', '62800');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59120002', 'Carbix', NULL, 50.613, 3.005, '92, RUE GEORGES POTIE', 'LOOS LES LILLE', '59120');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59114005', 'Carbix', NULL, 50.82642, 2.58513, 'AUTOROUTE A25 - AIRE DE SAINT-LAURENT', 'STEENVOORDE', '59114');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59260007', 'Carbix', NULL, 50.61354, 3.13149, 'BOULEVARD DE TOURNAI', 'LEZENNES', '59260');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62170005', 'Carbix', NULL, 50.458, 1.758, '43 AV.GAL LECLERC', 'Montreuil', '62170');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62410001', 'Carbix', NULL, 50.495, 2.858, '45 RUE A.PEZE', 'WINGLES', '62410');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59110006', 'Carbix', NULL, 50.65240806, 3.07726756, '184 RUE DU GENERAL DE GAULLE', 'LA MADELEINE', '59110');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80100010', 'Carbix', NULL, 50.11327, 1.82925, '205 BLD DE LA REPUBLIQUE', 'ABBEVILLE', '80100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100025', 'Carbix', NULL, 50.9340083071, 1.81756520355, 'TERMINAL EUROTUNNEL', 'COQUELLES', '62100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60490007', 'Carbix', NULL, 49.5236, 2.72292, 'AUTOROUTE A1 - AIRE DE RESSONS EST', 'RESSONS SUR MATZ', '60490');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80340002', 'Carbix', NULL, 49.938493468872, 2.7181883865082, '3 RUE DU CASTEL', 'Bray-sur-Somme', '80340');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60000012', 'Carbix', NULL, 49.4313468362, 2.11811604926, 'RN 31 - ROUTE DE CLERMONT', 'BEAUVAIS', '60000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60100007', 'Carbix', NULL, 49.2722426655, 2.48607843362, 'LA VALLEE DE NOGENT-RN16', 'CREIL', '60100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59510003', 'Carbix', NULL, 50.665, 3.182, '188 AV DU GENERAL DE GAULLE', 'HEM', '59510');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59122001', 'Carbix', NULL, 50.9816909164, 2.58515615645, '17 bis place du Général de Gaulle', 'HONDSCHOOTE', '59122');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60290005', 'Carbix', NULL, 49.33673, 2.43351, 'RN.16 RTE DE CLERMONT', 'RANTIGNY', '60290');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59610004', 'Carbix', NULL, 50.0195442698, 4.02989849709, '1 PLACE DERIGNY', 'FOURMIES', '59610');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60540002', 'Carbix', NULL, 49.2013605, 2.2042972, '10 RUE LOUIS DENOUAL', 'BORNEL', '60540');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80410004', 'Carbix', NULL, 50.18162531, 1.49398555, '184 RUE DU MARECHAL FOCH', 'Cayeux-sur-Mer', '80410');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62150002', 'Carbix', NULL, 50.4537598, 2.5324337, '68 RUE DE LA GARE', 'HOUDAIN', '62150');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59930002', 'Carbix', NULL, 50.67262, 2.89654, 'ROUTE NATIONALE RD933', 'Chapelle-d''armentières', '59930');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60700004', 'Carbix', NULL, 49.306, 2.604, '39 41 RUE DE LA REPUBLIQUE', 'Pont-Sainte-Maxence', '60700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62580002', 'Carbix', NULL, 50.3709556, 2.7943223, 'rue saint nazaire', 'Vimy', '62580');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60160003', 'Carbix', NULL, 49.256, 2.432, '33, RUE GUY MOQUET', 'MONTATAIRE', '60160');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59239002', 'Carbix', NULL, 50.474475983978, 3.0512486498764, '4 Rue Pasteur', 'Thumeries', '59239');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59660002', 'Carbix', NULL, 50.641, 2.654, '102 route d''estaires', 'Merville', '59660');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60730004', 'Carbix', NULL, 49.29, 2.201, '180 route nationale 1', 'Sainte-Geneviève', '60730');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59138001', 'Carbix', NULL, 50.217, 3.849, '14 Grand Rue', 'PONT-SUR-SAMBRE', '59138');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60750003', 'Carbix', NULL, 49.4422332, 2.8829544, '100 rue de royaumont', 'Choisy-au-Bac', '60750');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62215005', 'Carbix', NULL, 50.97853836, 2.04248008, 'PLACE DU GENERAL DE GAULLE', 'OYE PLAGE', '62215');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59860003', 'Carbix', NULL, 50.3991898, 3.5441318, '386-388 Rue Jean Jaurès', 'Bruay-sur-l''Escaut', '59860');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59750004', 'Carbix', NULL, 50.29762, 3.9173, '28 Rue Jean Jaurès', 'Feignies', '59750');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59670001', 'Carbix', NULL, 50.797722204962, 2.4935618899882, '769 avenue Albert Mahieu', 'Cassel', '59670');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59246002', 'Carbix', NULL, 50.48, 3.103, '1 rue Saint Jean', 'Mons-en-Pévèle', '59246');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62137001', 'Carbix', NULL, 50.928, 1.901, '2246 route de St Omer', 'Coulogne', '62137');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59156002', 'Carbix', NULL, 50.3111116, 3.3458058, 'RUE SOCRATE', 'LOURCHES', '59156');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62120015', 'Carbix', NULL, 50.697879035687, 2.351145511856, 'ROUTE NATIONALE 43', 'RACQUINGHEM', '62120');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80580001', 'Carbix', NULL, 50.058008, 1.9002544, 'RUE JEAN MOULIN', 'Pont-Remy', '80580');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60650004', 'Carbix', NULL, 49.42181085, 1.97844826, 'RD 931 Lieu dit "Bois du Renard"', 'Saint-Paul', '60650');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59600006', 'Carbix', NULL, 50.282, 3.97, '4 Boulevard de l''europe', 'Maubeuge', '59600');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59133002', 'Carbix', NULL, 50.521, 3.021, '47 rue Jean Baptiste Lebas', 'Phalempin', '59133');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60350003', 'Carbix', NULL, 49.40354, 3.00774, 'ROUTE DE SOISSONS- RN 31', 'Cuise-la-Motte', '60350');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62630004', 'Carbix', NULL, 50.526, 1.628, 'CD 940', 'Étaples-sur-Mer', '62630');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60150003', 'Carbix', NULL, 49.479, 2.868, 'ZAC DU GROS GRELOT', 'THOUROTTE', '60150');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62180004', 'Carbix', NULL, 50.401548, 1.65032437, 'LES ALLEES', 'VERTON', '62180');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59920001', 'Carbix', NULL, 50.4027, 3.66865, '53 Avenue Jean Jaurès', 'QUIéVRECHAIN', '59920');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100026', 'Carbix', NULL, 50.9327163186, 1.82467603938, 'TERMINAL EUROTUNNEL', 'COQUELLES', '62231');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62450004', 'Carbix', NULL, 50.104, 2.85, 'LIEU DIT LA FABRIQUE A SUCRE', 'BAPAUME', '62450');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59216002', 'Carbix', NULL, 50.167, 4.041, '27 RUE DU GENERAL DE GAULLE', 'Sars-Poteries', '59216');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62130004', 'Carbix', NULL, 50.364, 2.331, '350 route de Saint Pol', 'Herlin-le-Sec', '62130');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59460002', 'Carbix', NULL, 50.3071717655, 4.09218092516, '818 Rue du Maréchal Leclerc', 'JEUMONT', '59460');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62730003', 'Carbix', NULL, 50.94110255, 1.93899854, '504 AVENUE HENRI RAVISSE', 'MARCK', '62730');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62100024', 'Carbix', NULL, 50.95575, 1.90807, 'RUE MARCEL DASSAULT', 'CALAIS', '62100');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60530003', 'Carbix', NULL, 49.229, 2.282, 'ZI route de Crouy', 'Neuilly-en-Thelle', '60530');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60610002', 'Carbix', NULL, 49.358, 2.777, 'ZAC DES JARDINS', 'LA CROIX SAINT OUEN', '60610');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59460001', 'Carbix', NULL, 50.28975, 4.10231, 'Avenue du Général de Gaulle', 'JEUMONT', '59460');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62300016', 'Carbix', NULL, 50.426, 2.82, '47 ROUTE D''ARRAS', 'LENS', '62300');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62860006', 'Carbix', NULL, 50.2273337, 3.0649737, 'AUTOROUTE A26 - Aire de Rumaucourt', 'Marquion', '62860');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62830002', 'Carbix', NULL, 50.6390729, 1.7593185, 'route de Desvres', 'Samer', '62830');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60360002', 'Carbix', NULL, 49.604, 2.085, '8 avenue du Général de Gaulle', 'Crèvecœur-le-Grand', '60360');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62240005', 'Carbix', NULL, 50.669, 1.838, '22 rue du 11 Novembre', 'DESVRES', '62240');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60700005', 'Carbix', NULL, 49.317, 2.606, 'avenue d''auvelais', 'pont sainte maxence', '60700');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59200009', 'Carbix', NULL, 50.7284988, 3.1372415, '344 Chaussée Denis Papin', 'TOURCOING', '59200');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59420002', 'Carbix', NULL, 50.6972581, 3.1408445, '160 RUE DE ROUBAIX', 'Mouvaux', '59420');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80340003', 'Carbix', NULL, 49.938, 2.718, 'zi route d''etinehem', 'Bray-sur-Somme', '80340');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59500010', 'Carbix', NULL, 50.3705389, 3.0767251, '307 BOULEVARD PASTEUR', 'DOUAI', '59500');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59570003', 'Carbix', NULL, 50.258, 3.913, 'VOIE RAPIDE HAUTMONT-MAUBEUGE', 'HAUTMONT', '59330');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59190007', 'Carbix', NULL, 50.758, 2.602, 'ROUTE D''HAZEBROUCK', 'CAESTRE', '59190');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60650006', 'Carbix', NULL, 49.417, 1.924, 'RN31 - LE VIVIER DANGER', 'ONS EN BRAY', '60650');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62131001', 'Carbix', NULL, 50.502, 2.652, 'D 937 ZAC DU BEAUPRE', 'VERQUIN', '62131');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62470004', 'Carbix', NULL, 50.493, 2.488, 'CHEMIN DEPARTEMENTAL 70 BP47', 'Calonne-Ricouart', '62470');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('62152003', 'Carbix', NULL, 50.6209007, 1.6432067, '59 rue des allées', 'Neufchâtel-Hardelot', '62152');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60370002', 'Carbix', NULL, 49.35190397, 2.23859034, '125 RUE DE NOAILLES', 'HERMES', '60370');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59520003', 'Carbix', NULL, 50.681, 3.063, 'Rue des moissons (ZAC DU TOUQUET)', 'MARQUETTE-LEZ-LILLE', '59520');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59000017', 'Carbix', NULL, 50.61884, 3.05164, '365, BOULEVARD VICTOR HUGO', 'LILLE', '59000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80970003', 'Carbix', NULL, 50.185, 1.772, 'AIRE DE LA BAIE DE SOMME A16', 'Sailly-Flibeaucourt', '80970');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59184002', 'Carbix', NULL, 50.56437216, 2.8992434, 'AVENUE DE LA SABLONNIERE', 'Sainghin-en-Weppes', '59184');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59720001', 'Carbix', NULL, 50.254, 3.957, 'Rue Jules Stephenne', 'LOUVROIL', '59720');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59600001', 'Carbix', NULL, 50.289, 3.965, 'Boulevard Alphonse de Lamartine', 'MAUBEUGE', '59600');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('60690001', 'Carbix', NULL, 49.582, 1.954, '145 DU GENERAL LECLERC', 'MARSEILLE EN BEAUVAISIS', '60690');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59163001', 'Carbix', NULL, 50.45199, 3.59123, 'avenue de la liberté', 'CONDé-SUR-L''ESCAUT', '59163');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59163002', 'Carbix', NULL, 50.453, 3.589, '46 Avenue de la Liberté', 'CONDE-SUR-L''ESCAUT', '59163');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('80000019', 'Carbix', NULL, 49.898783540155, 2.2702521626495, '1 rue edouard lucas', 'amiens', '80000');
INSERT INTO stationsp2 (id, marque, nom, latitude, longitude, adresse, ville, cp) VALUES ('59680001', 'Carbix', NULL, 50.2601, 4.00607, 'Avenue Georges Clémenceau', 'Ferrière-la-Grande', '59680');



ALTER TABLE ONLY stationsp2
    ADD CONSTRAINT stationsp2_pkey PRIMARY KEY (id);


