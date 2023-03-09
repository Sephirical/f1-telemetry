-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: f1_telemetry
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car_damage`
--

DROP TABLE IF EXISTS `car_damage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_damage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `session_uid` bigint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `rl_tyrewear` float unsigned DEFAULT NULL,
  `rr_tyrewear` float unsigned DEFAULT NULL,
  `fl_tyrewear` float unsigned DEFAULT NULL,
  `fr_tyrewear` float unsigned DEFAULT NULL,
  `rl_tyredamage` tinyint unsigned DEFAULT NULL,
  `rr_tyredamage` tinyint unsigned DEFAULT NULL,
  `fl_tyredamage` tinyint unsigned DEFAULT NULL,
  `fr_tyredamage` tinyint unsigned DEFAULT NULL,
  `rl_brakedamage` tinyint unsigned DEFAULT NULL,
  `rr_brakedamage` tinyint unsigned DEFAULT NULL,
  `fl_brakedamage` tinyint unsigned DEFAULT NULL,
  `fr_brakedamage` tinyint unsigned DEFAULT NULL,
  `fl_wingdamage` tinyint unsigned DEFAULT NULL,
  `fr_wingdamage` tinyint unsigned DEFAULT NULL,
  `rear_wingdamage` tinyint unsigned DEFAULT NULL,
  `floor_damage` tinyint unsigned DEFAULT NULL,
  `diffuser_damage` tinyint unsigned DEFAULT NULL,
  `sidepod_damage` tinyint unsigned DEFAULT NULL,
  `drs_fault` tinyint unsigned DEFAULT NULL,
  `ers_fault` tinyint unsigned DEFAULT NULL,
  `gearbox_damage` tinyint unsigned DEFAULT NULL,
  `engine_damage` tinyint unsigned DEFAULT NULL,
  `mguh_wear` tinyint unsigned DEFAULT NULL,
  `es_wear` tinyint unsigned DEFAULT NULL,
  `ce_wear` tinyint unsigned DEFAULT NULL,
  `ice_wear` tinyint unsigned DEFAULT NULL,
  `mguk_wear` tinyint unsigned DEFAULT NULL,
  `tc_wear` tinyint unsigned DEFAULT NULL,
  `engine_blown` tinyint unsigned DEFAULT NULL,
  `engine_seized` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (0,'Carlos Sainz'),(1,'Daniil Kvyat'),(2,'Daniel Ricciardo'),(3,'Fernando Alonso'),(4,'Felipe Massa'),(6,'Kimi Räikkönen'),(7,'Lewis Hamilton'),(9,'Max Verstappen'),(10,'Nico Hulkenburg'),(11,'Kevin Magnussen'),(12,'Romain Grosjean'),(13,'Sebastian Vettel'),(14,'Sergio Perez'),(15,'Valtteri Bottas'),(17,'Esteban Ocon'),(19,'Lance Stroll'),(20,'Arron Barnes'),(21,'Martin Giles'),(22,'Alex Murray'),(23,'Lucas Roth'),(24,'Igor Correia'),(25,'Sophie Levasseur'),(26,'Jonas Schiffer'),(27,'Alain Forest'),(28,'Jay Letourneau'),(29,'Esto Saari'),(30,'Yasar Atiyeh'),(31,'Callisto Calabresi'),(32,'Naota Izum'),(33,'Howard Clarke'),(34,'Wilheim Kaufmann'),(35,'Marie Laursen'),(36,'Flavio Nieves'),(37,'Peter Belousov'),(38,'Klimek Michalski'),(39,'Santiago Moreno'),(40,'Benjamin Coppens'),(41,'Noah Visser'),(42,'Gert Waldmuller'),(43,'Julian Quesada'),(44,'Daniel Jones'),(45,'Artem Markelov'),(46,'Tadasuke Makino'),(47,'Sean Gelael'),(48,'Nyck De Vries'),(49,'Jack Aitken'),(50,'George Russell'),(51,'Maximilian Günther'),(52,'Nirei Fukuzumi'),(53,'Luca Ghiotto'),(54,'Lando Norris'),(55,'Sérgio Sette Câmara'),(56,'Louis Delétraz'),(57,'Antonio Fuoco'),(58,'Charles Leclerc'),(59,'Pierre Gasly'),(62,'Alexander Albon'),(63,'Nicholas Latifi'),(64,'Dorian Boccolacci'),(65,'Niko Kari'),(66,'Roberto Merhi'),(67,'Arjun Maini'),(68,'Alessio Lorandi'),(69,'Ruben Meijer'),(70,'Rashid Nair'),(71,'Jack Tremblay'),(72,'Devon Butler'),(73,'Lukas Weber'),(74,'Antonio Giovinazzi'),(75,'Robert Kubica'),(76,'Alain Prost'),(77,'Ayrton Senna'),(78,'Nobuharu Matsushita'),(79,'Nikita Mazepin'),(80,'Guanyu Zhou'),(81,'Mick Schumacher'),(82,'Callum Ilott'),(83,'Juan Manuel Correa'),(84,'Jordan King'),(85,'Mahaveer Raghunathan'),(86,'Tatiana Calderon'),(87,'Anthoine Hubert'),(88,'Guiliano Alesi'),(89,'Ralph Boschung'),(90,'Michael Schumacher'),(91,'Dan Ticktum'),(92,'Marcus Armstrong'),(93,'Christian Lundgaard'),(94,'Yuki Tsunoda'),(95,'Jehan Daruvala'),(96,'Gulherme Samaia'),(97,'Pedro Piquet'),(98,'Felipe Drugovich'),(99,'Robert Schwartzman'),(100,'Roy Nissany'),(101,'Marino Sato'),(102,'Aidan Jackson'),(103,'Casper Akkerman'),(109,'Jenson Button'),(110,'David Coulthard'),(111,'Nico Rosberg'),(112,'Oscar Piastri'),(113,'Liam Lawson'),(114,'Juri Vips'),(115,'Theo Pourchaire'),(116,'Richard Verschoor'),(117,'Lirim Zendeli'),(118,'David Beckmann'),(121,'Alessio Deledda'),(122,'Bent Viscaal'),(123,'Enzo Fittipaldi'),(125,'Mark Webber'),(126,'Jacques Villeneuve'),(127,'Jake Hughes'),(128,'Frederik Vesti'),(129,'Olli Caldwell'),(130,'Logan Sargeant'),(131,'Cem Bolukbasi'),(132,'Ayuma Iwasa'),(133,'Clement Novolak'),(134,'Dennis Hauger'),(135,'Calan Williams'),(136,'Jack Doohan'),(137,'Amaury Cordeel'),(138,'Mika Hakkinen');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_classification`
--

DROP TABLE IF EXISTS `final_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_classification` (
  `session_uid` bigint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `position` tinyint unsigned DEFAULT NULL,
  `num_laps` tinyint unsigned DEFAULT NULL,
  `grid_position` tinyint unsigned DEFAULT NULL,
  `points` tinyint unsigned DEFAULT NULL,
  `num_pitstops` tinyint unsigned DEFAULT NULL,
  `result_status` tinyint unsigned DEFAULT NULL,
  `best_laptime` int unsigned DEFAULT NULL,
  `total_racetime` double DEFAULT NULL,
  `penalties_time` tinyint unsigned DEFAULT NULL,
  `num_penalties` tinyint unsigned DEFAULT NULL,
  `num_tyrestints` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`session_uid`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_classification_tyrestint`
--

DROP TABLE IF EXISTS `final_classification_tyrestint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_classification_tyrestint` (
  `session_uid` bigint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `stint` tinyint unsigned NOT NULL,
  `tyre_actual` tinyint unsigned DEFAULT NULL,
  `tyre_visual` tinyint unsigned DEFAULT NULL,
  `tyre_endlap` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`session_uid`,`index`,`stint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gamemode`
--

DROP TABLE IF EXISTS `gamemode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamemode` (
  `id` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamemode`
--

LOCK TABLES `gamemode` WRITE;
/*!40000 ALTER TABLE `gamemode` DISABLE KEYS */;
INSERT INTO `gamemode` VALUES (0,'Event Mode'),(3,'Grand Prix'),(5,'Time Trial'),(6,'Splitscreen'),(7,'Online Custom'),(8,'Online League'),(11,'Career Invitational'),(12,'Championship Invitational'),(13,'Championship'),(14,'Online Championship'),(15,'Online Weekly Event'),(19,'Career ‘22'),(20,'Career ’22 Online'),(127,'Benchmark');
/*!40000 ALTER TABLE `gamemode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infringement`
--

DROP TABLE IF EXISTS `infringement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infringement` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infringement`
--

LOCK TABLES `infringement` WRITE;
/*!40000 ALTER TABLE `infringement` DISABLE KEYS */;
INSERT INTO `infringement` VALUES (0,'Blocking by slow driving'),(1,'Blocking by wrong way driving'),(2,'Reversing off the start line'),(3,'Big Collision'),(4,'Small Collision'),(5,'Collision failed to hand back position single'),(7,'Corner cutting gained time'),(8,'Corner cutting overtake single'),(9,'Corner cutting overtake multiple'),(10,'Crossed pit exit lane'),(11,'Ignoring blue flags'),(12,'Ignoring yellow flags'),(13,'Ignoring drive through'),(14,'Too many drive throughs'),(15,'Drive through reminder serve within n laps'),(16,'Drive through reminder serve this lap'),(17,'Pit lane speeding'),(18,'Parked for too long'),(19,'Ignoring tyre regulations'),(20,'Too many penalties'),(21,'Multiple warnings'),(22,'Approaching disqualification'),(23,'Tyre regulations select single'),(24,'Tyre regulations select multiple'),(25,'Lap invalidated corner cutting'),(26,'Lap invalidated running wide'),(27,'Corner cutting ran wide gained time minor'),(29,'Corner cutting ran wide gained time extreme'),(30,'Lap invalidated wall riding'),(31,'Lap invalidated flashback used'),(32,'Lap invalidated reset to track'),(33,'Blocking the pitlane'),(34,'Jump start'),(35,'Safety car to car collision'),(36,'Safety car illegal overtake'),(37,'Safety car exceeding allowed pace'),(38,'Virtual safety car exceeding allowed pace'),(39,'Formation lap below allowed speed'),(40,'Formation lap parking'),(41,'Retired mechanical failure'),(42,'Retired terminally damaged'),(43,'Safety car falling too far back'),(44,'Black flag timer'),(45,'Unserved stop go penalty'),(46,'Unserved drive through penalty'),(47,'Engine component change'),(48,'Gearbox change'),(49,'Parc Fermé change'),(50,'League grid penalty'),(51,'Retry penalty'),(52,'Illegal time gain'),(53,'Mandatory pitstop'),(54,'Attribute assigned');
/*!40000 ALTER TABLE `infringement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lap_data`
--

DROP TABLE IF EXISTS `lap_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lap_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_uid` bigint unsigned DEFAULT NULL,
  `index` tinyint unsigned DEFAULT NULL,
  `last_laptime` int unsigned DEFAULT NULL,
  `current_laptime` int unsigned DEFAULT NULL,
  `sector1_time` smallint unsigned DEFAULT NULL,
  `sector2_time` smallint unsigned DEFAULT NULL,
  `lap_distance` float DEFAULT NULL,
  `total_distance` float DEFAULT NULL,
  `safetycar_delta` float DEFAULT NULL,
  `car_position` tinyint unsigned DEFAULT NULL,
  `currentlap_num` tinyint unsigned DEFAULT NULL,
  `pit_status` tinyint unsigned DEFAULT NULL,
  `num_pitstops` tinyint unsigned DEFAULT NULL,
  `sector` tinyint unsigned DEFAULT NULL,
  `currentlap_invalid` tinyint unsigned DEFAULT NULL,
  `penalties` tinyint unsigned DEFAULT NULL,
  `warnings` tinyint unsigned DEFAULT NULL,
  `num_unserved_drivethrough_pens` tinyint unsigned DEFAULT NULL,
  `num_unserved_stopgo_pens` tinyint unsigned DEFAULT NULL,
  `grid_position` tinyint unsigned DEFAULT NULL,
  `driver_status` tinyint unsigned DEFAULT NULL,
  `result_status` tinyint unsigned DEFAULT NULL,
  `pitlane_timer_active` tinyint unsigned DEFAULT NULL,
  `pitlane_time` smallint unsigned DEFAULT NULL,
  `pitstop_timer` smallint unsigned DEFAULT NULL,
  `pitstop_serve_pen` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lap_history`
--

DROP TABLE IF EXISTS `lap_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lap_history` (
  `session_uid` bigint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `lap_num` tinyint unsigned NOT NULL,
  `lap_time` int unsigned DEFAULT NULL,
  `sector1_time` smallint unsigned DEFAULT NULL,
  `sector2_time` smallint unsigned DEFAULT NULL,
  `sector3_time` smallint unsigned DEFAULT NULL,
  `lap_valid` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`session_uid`,`index`,`lap_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES (1,'American'),(2,'Argentinean'),(3,'Australian'),(4,'Austrian'),(5,'Azerbaijani'),(6,'Bahraini'),(7,'Belgian'),(8,'Bolivian'),(9,'Brazilian'),(10,'British'),(11,'Bulgarian'),(12,'Cameroonian'),(13,'Canadian'),(14,'Chilean'),(15,'Chinese'),(16,'Colombian'),(17,'Costa Rican'),(18,'Croatian'),(19,'Cypriot'),(20,'Czech'),(21,'Danish'),(22,'Dutch'),(23,'Ecuadorian'),(24,'English'),(25,'Emirian'),(26,'Estonian'),(27,'Finnish'),(28,'French'),(29,'German'),(30,'Ghanaian'),(31,'Greek'),(32,'Guatemalan'),(33,'Honduran'),(34,'Hong Konger'),(35,'Hungarian'),(36,'Icelander'),(37,'Indian'),(38,'Indonesian'),(39,'Irish'),(40,'Israeli'),(41,'Italian'),(42,'Jamaican'),(43,'Japanese'),(44,'Jordanian'),(45,'Kuwaiti'),(46,'Latvian'),(47,'Lebanese'),(48,'Lithuanian'),(49,'Luxembourger'),(50,'Malaysian'),(51,'Maltese'),(52,'Mexican'),(53,'Monegasque'),(54,'New Zealander'),(55,'Nicaraguan'),(56,'Northern Irish'),(57,'Norwegian'),(58,'Omani'),(59,'Pakistani'),(60,'Panamanian'),(61,'Paraguayan'),(62,'Peruvian'),(63,'Polish'),(64,'Portuguese'),(65,'Qatari'),(66,'Romanian'),(67,'Russian'),(68,'Salvadoran'),(69,'Saudi'),(70,'Scottish'),(71,'Serbian'),(72,'Singaporean'),(73,'Slovakian'),(74,'Slovenian'),(75,'South Korean'),(76,'South African'),(77,'Spanish'),(78,'Swedish'),(79,'Swiss'),(80,'Thai'),(81,'Turkish'),(82,'Uruguayan'),(83,'Ukrainian'),(84,'Venezuelan'),(85,'Barbadian'),(86,'Welsh'),(87,'Vietnamese');
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `session_uid` bigint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `is_ai` tinyint unsigned DEFAULT NULL,
  `driver_id` tinyint unsigned DEFAULT NULL,
  `network_id` tinyint unsigned DEFAULT NULL,
  `team_id` tinyint unsigned DEFAULT NULL,
  `is_my_team` tinyint unsigned DEFAULT NULL,
  `race_number` tinyint unsigned DEFAULT NULL,
  `nationality` tinyint unsigned DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `telemetry` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`session_uid`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `penalty`
--

DROP TABLE IF EXISTS `penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty`
--

LOCK TABLES `penalty` WRITE;
/*!40000 ALTER TABLE `penalty` DISABLE KEYS */;
INSERT INTO `penalty` VALUES (0,'Drive through'),(1,'Stop Go'),(2,'Grid penalty'),(3,'Penalty reminder'),(4,'Time penalty'),(5,'Warning'),(6,'Disqualified'),(7,'Removed from formation lap'),(8,'Parked too long timer'),(9,'Tyre regulations'),(10,'This lap invalidated'),(11,'This and next lap invalidated'),(12,'This lap invalidated without reason'),(13,'This and next lap invalidated without reason'),(14,'This and previous lap invalidated'),(16,'Retired'),(17,'Black flag timer');
/*!40000 ALTER TABLE `penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruleset`
--

DROP TABLE IF EXISTS `ruleset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruleset` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruleset`
--

LOCK TABLES `ruleset` WRITE;
/*!40000 ALTER TABLE `ruleset` DISABLE KEYS */;
INSERT INTO `ruleset` VALUES (0,'Practice & Qualifying'),(1,'Race'),(2,'Time Trial'),(4,'Time Attack'),(6,'Checkpoint Challenge'),(8,'Autocross'),(9,'Drift'),(10,'Average Speed Zone'),(11,'Rival Duel');
/*!40000 ALTER TABLE `ruleset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `uid` bigint unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `playercar_index` tinyint unsigned DEFAULT NULL,
  `track_id` tinyint DEFAULT NULL,
  `formula` tinyint unsigned DEFAULT NULL,
  `network_game` tinyint unsigned DEFAULT NULL,
  `season_link` int unsigned DEFAULT NULL,
  `weekend_link` int unsigned DEFAULT NULL,
  `session_link` int unsigned DEFAULT NULL,
  `gamemode` tinyint unsigned DEFAULT NULL,
  `ruleset` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `session_history`
--

DROP TABLE IF EXISTS `session_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_history` (
  `session_uid` bigint unsigned NOT NULL,
  `index` tinyint unsigned NOT NULL,
  `best_lap_num` tinyint unsigned DEFAULT NULL,
  `best_sector1_lap_num` tinyint unsigned DEFAULT NULL,
  `best_sector2_lap_num` tinyint unsigned DEFAULT NULL,
  `best_sector3_lap_num` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`session_uid`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surface`
--

DROP TABLE IF EXISTS `surface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surface` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surface`
--

LOCK TABLES `surface` WRITE;
/*!40000 ALTER TABLE `surface` DISABLE KEYS */;
INSERT INTO `surface` VALUES (0,'Tarmac'),(1,'Rumble strip'),(2,'Concrete'),(3,'Rock'),(4,'Gravel'),(5,'Mud'),(6,'Sand'),(7,'Grass'),(8,'Water'),(9,'Cobblestone'),(10,'Metal'),(11,'Ridged');
/*!40000 ALTER TABLE `surface` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (0,'Mercedes'),(1,'Ferrari'),(2,'Red Bull Racing'),(3,'Williams'),(4,'Aston Martin'),(5,'Alpine'),(6,'Alpha Tauri'),(7,'Haas'),(8,'McLaren'),(9,'Alfa Romeo'),(85,'Mercedes 2020'),(86,'Ferrari 2020'),(87,'Red Bull 2020'),(88,'Williams 2020'),(89,'Racing Point 2020'),(90,'Renault 2020'),(91,'Alpha Tauri 2020'),(92,'Haas 2020'),(93,'McLaren 2020'),(94,'Alfa Romeo 2020'),(95,'Aston Martin DB11 V12'),(96,'Aston Martin Vantage F1 Edition'),(97,'Aston Martin Vantage Safety Car'),(98,'Ferrari F8 Tributo'),(99,'Ferrari Roma'),(100,'McLaren 720S'),(101,'McLaren Artura'),(102,'Mercedes AMG GT Black Series Safety Car'),(103,'Mercedes AMG GTR Pro'),(104,'F1 Custom Team'),(106,'Prema \'21'),(107,'Uni-Virtuosi \'21'),(108,'Carlin \'21'),(109,'Hitech \'21'),(110,'Art GP \'21'),(111,'MP Motorsport \'21'),(112,'Charouz \'21'),(113,'Dams \'21'),(114,'Campos \'21'),(115,'BWT \'21'),(116,'Trident \'21'),(117,'Mercedes AMG GT Black Series'),(118,'Prema \'22'),(119,'Virtuosi \'22'),(120,'Carlin \'22'),(121,'Hitech \'22'),(122,'Art GP \'22'),(123,'MP Motorsport \'22'),(124,'Charouz \'22'),(125,'Dams \'22'),(126,'Campos \'22'),(127,'Van Amersfoort Racing \'22'),(128,'Trident \'22');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `track` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track`
--

LOCK TABLES `track` WRITE;
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` VALUES (0,'Melbourne'),(1,'Paul Ricard'),(2,'Shanghai'),(3,'Sakhir (Bahrain)'),(4,'Catalunya'),(5,'Monaco'),(6,'Montreal'),(7,'Silverstone'),(8,'Hockenheim'),(9,'Hungaroring'),(10,'Spa'),(11,'Monza'),(12,'Singapore'),(13,'Suzuka'),(14,'Abu Dhabi'),(15,'Texas'),(16,'Brazil'),(17,'Austria'),(18,'Sochi'),(19,'Mexico'),(20,'Baku (Azerbaijan)'),(21,'Sakhir Short'),(22,'Silverstone Short'),(23,'Texas Short'),(24,'Suzuka Short'),(25,'Hanoi'),(26,'Zandvoort'),(27,'Imola'),(28,'Portimão'),(29,'Jeddah'),(30,'Miami');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 17:32:25
