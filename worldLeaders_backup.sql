CREATE DATABASE  IF NOT EXISTS `world_leaders` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `world_leaders`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: world_leaders
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `background`
--

DROP TABLE IF EXISTS `background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `background` (
  `location_id` int NOT NULL,
  `leader_ID` int NOT NULL,
  `birthday` date DEFAULT NULL,
  `cause_of_death` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `education` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `president_ID` int NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `fk_us_presidents_has_world_presidents_world_presidents1_idx` (`leader_ID`),
  KEY `fk_us_presidents_has_world_presidents_us_presidents1_idx` (`president_ID`),
  CONSTRAINT `fk_us_presidents_has_world_presidents_us_presidents1` FOREIGN KEY (`president_ID`) REFERENCES `president_election` (`president_ID`),
  CONSTRAINT `fk_us_presidents_has_world_presidents_world_presidents1` FOREIGN KEY (`leader_ID`) REFERENCES `world_presidents` (`leader_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background`
--

LOCK TABLES `background` WRITE;
/*!40000 ALTER TABLE `background` DISABLE KEYS */;
INSERT INTO `background` VALUES (100,40,'1961-08-04',NULL,'Harvard','US',60),(101,41,'1942-11-20',NULL,'Syracuse','US',61),(102,42,'1946-06-14',NULL,'Wharton','US',62),(103,45,'1946-07-06',NULL,'Harvard','US',65),(104,48,'1952-08-07',NULL,'Saint Petersburg','RU',68),(105,49,'1953-06-15',NULL,'Tsinghua','CN',69),(106,50,'1978-01-25',NULL,'Kryvyi Rih','UA',70),(107,51,'1971-12-25',NULL,'UBC','CA',71),(108,52,'1964-06-19',NULL,'Balliol','UK',72),(109,53,'1984-01-08',NULL,'Kim Il-sung','DPRK',73),(110,54,'1954-09-21',NULL,'USC','JP',74),(111,43,'1732-02-22','Throat Infection','Self','US',63),(112,44,'1809-12-02','Assassination','Self','US',64),(113,46,'1911-06-02','Alzheimer','Eureka','US',66),(114,47,'1917-05-29','Assassination','Harvard','US',67);
/*!40000 ALTER TABLE `background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_facts`
--

DROP TABLE IF EXISTS `fun_facts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fun_facts` (
  `person_id` int NOT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `pets` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_facts`
--

LOCK TABLES `fun_facts` WRITE;
/*!40000 ALTER TABLE `fun_facts` DISABLE KEYS */;
INSERT INTO `fun_facts` VALUES (1,'175 lbs','6′2″','Dog'),(2,'178 lbs','6\'','Cat'),(3,'244 lbs','6′3″',NULL),(4,'175 lbs','6′2″','Dog'),(5,'184 lbs','6′4″','Horse'),(6,'191 lbs','6\'','Cat'),(7,'185 lbs','6′1″','Horse'),(8,'173 lbs','6′1″','Duck'),(9,'152 lbs ','5′7″','Dog'),(10,'143 lbs','5′11″','Wombat'),(11,'161 lbs','5′7″','Dog'),(12,'180 lbs','6′2″','Dog'),(13,'165 lbs','5′9″','Dog'),(14,'300 lbs','5′7″',NULL),(15,'165 lbs','5′8″','Dog');
/*!40000 ALTER TABLE `fun_facts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `number_of_president_older_than_60_elected_after_2000`
--

DROP TABLE IF EXISTS `number_of_president_older_than_60_elected_after_2000`;
/*!50001 DROP VIEW IF EXISTS `number_of_president_older_than_60_elected_after_2000`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `number_of_president_older_than_60_elected_after_2000` AS SELECT 
 1 AS `country`,
 1 AS `number_of_president`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `offically_educated_president_average_power_length`
--

DROP TABLE IF EXISTS `offically_educated_president_average_power_length`;
/*!50001 DROP VIEW IF EXISTS `offically_educated_president_average_power_length`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `offically_educated_president_average_power_length` AS SELECT 
 1 AS `country`,
 1 AS `average_length_of_power`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `president_election`
--

DROP TABLE IF EXISTS `president_election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president_election` (
  `president_ID` int NOT NULL,
  `number_of_terms` tinyint DEFAULT NULL,
  `party` varchar(45) DEFAULT NULL,
  `date_of_election` date DEFAULT NULL,
  `term_id` int NOT NULL,
  PRIMARY KEY (`president_ID`),
  KEY `fk_us_presidents_us_location1_idx` (`term_id`),
  CONSTRAINT `fk_us_presidents_us_location1` FOREIGN KEY (`term_id`) REFERENCES `presidental_term` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president_election`
--

LOCK TABLES `president_election` WRITE;
/*!40000 ALTER TABLE `president_election` DISABLE KEYS */;
INSERT INTO `president_election` VALUES (60,2,'D','2009-01-20',120),(61,1,'D','2021-01-20',121),(62,1,'R','2017-01-20',122),(63,2,'I','1789-04-30',133),(64,2,'R','1865-03-04',123),(65,2,'R','2001-01-20',124),(66,2,'R','1981-01-20',125),(67,1,'D','1949-01-20',126),(68,4,NULL,'2012-05-07',135),(69,2,NULL,'2013-03-14',136),(70,1,NULL,'2019-03-31',137),(71,5,NULL,'2021-09-20',138),(72,1,NULL,'2019-12-12',139),(73,4,NULL,'2014-03-09',140),(74,2,NULL,'2012-12-26',141),(75,1,'F','1797-03-04',127),(76,2,'D-R','1801-03-04',128),(77,2,'R','1901-09-04',129),(78,2,'D','1933-03-04',130),(79,2,'D','1945-04-12',131),(80,1,'R','1989-01-20',132),(81,2,'R','1969-01-20',134);
/*!40000 ALTER TABLE `president_election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `president_pets`
--

DROP TABLE IF EXISTS `president_pets`;
/*!50001 DROP VIEW IF EXISTS `president_pets`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `president_pets` AS SELECT 
 1 AS `president_name`,
 1 AS `pets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `president_power_length_in_party_in_us`
--

DROP TABLE IF EXISTS `president_power_length_in_party_in_us`;
/*!50001 DROP VIEW IF EXISTS `president_power_length_in_party_in_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `president_power_length_in_party_in_us` AS SELECT 
 1 AS `president_name`,
 1 AS `length_of_power`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `presidental_term`
--

DROP TABLE IF EXISTS `presidental_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presidental_term` (
  `term_id` int NOT NULL,
  `term` int DEFAULT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidental_term`
--

LOCK TABLES `presidental_term` WRITE;
/*!40000 ALTER TABLE `presidental_term` DISABLE KEYS */;
INSERT INTO `presidental_term` VALUES (120,44),(121,46),(122,45),(123,16),(124,43),(125,40),(126,35),(127,2),(128,3),(129,26),(130,32),(131,33),(132,41),(133,1),(134,37),(135,4),(136,7),(137,6),(138,23),(139,37),(140,2),(141,57);
/*!40000 ALTER TABLE `presidental_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `re_elected_president_record`
--

DROP TABLE IF EXISTS `re_elected_president_record`;
/*!50001 DROP VIEW IF EXISTS `re_elected_president_record`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `re_elected_president_record` AS SELECT 
 1 AS `president_name`,
 1 AS `country`,
 1 AS `number_of_terms`,
 1 AS `term`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `world_presidents`
--

DROP TABLE IF EXISTS `world_presidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `world_presidents` (
  `leader_ID` int NOT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `length_of_power` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`leader_ID`),
  KEY `fk_world_presidents_fun_facts_idx` (`person_id`),
  CONSTRAINT `fk_world_presidents_fun_facts` FOREIGN KEY (`person_id`) REFERENCES `fun_facts` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_presidents`
--

LOCK TABLES `world_presidents` WRITE;
/*!40000 ALTER TABLE `world_presidents` DISABLE KEYS */;
INSERT INTO `world_presidents` VALUES (40,'Barack','Obama',8,60,1),(41,'Joe','Biden',2,78,2),(42,'Donald','Trump',4,70,3),(43,'George','Washington',8,57,4),(44,'Abraham','Lincoln',4,52,5),(45,'George W.','Bush',8,54,6),(46,'Ronald','Reagan',8,69,7),(47,'John F.','Kennedy',2,43,8),(48,'Vladimir','Putin',18,69,9),(49,'Xi','Jinping',9,68,10),(50,'Volodymyr','Zelensky',3,44,11),(51,'Justin','Trudeau',7,50,12),(52,'Boris','Johnson',2,57,13),(53,'Kim','Jong-un',6,38,14),(54,'Shinzo','Abe',9,67,15);
/*!40000 ALTER TABLE `world_presidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `number_of_president_older_than_60_elected_after_2000`
--

/*!50001 DROP VIEW IF EXISTS `number_of_president_older_than_60_elected_after_2000`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `number_of_president_older_than_60_elected_after_2000` AS select `background`.`country` AS `country`,count(`world_presidents`.`age`) AS `number_of_president` from ((`world_presidents` join `background` on((`world_presidents`.`leader_ID` = `background`.`leader_ID`))) join `president_election` on((`background`.`president_ID` = `president_election`.`president_ID`))) where ((`president_election`.`date_of_election` between '2000-00-00' and now()) and (`world_presidents`.`age` > 60)) group by `background`.`country` order by `number_of_president` desc,`background`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `offically_educated_president_average_power_length`
--

/*!50001 DROP VIEW IF EXISTS `offically_educated_president_average_power_length`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `offically_educated_president_average_power_length` AS select `background`.`country` AS `country`,round(avg(`world_presidents`.`length_of_power`),1) AS `average_length_of_power` from (`world_presidents` join `background` on((`world_presidents`.`leader_ID` = `background`.`leader_ID`))) where (`background`.`education` <> 'Self') group by `background`.`country` order by `average_length_of_power` desc,`background`.`country` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `president_pets`
--

/*!50001 DROP VIEW IF EXISTS `president_pets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `president_pets` AS select concat(`world_presidents`.`f_name`,' ',`world_presidents`.`l_name`) AS `president_name`,`fun_facts`.`pets` AS `pets` from (`world_presidents` join `fun_facts` on((`world_presidents`.`person_id` = `fun_facts`.`person_id`))) where (`fun_facts`.`pets` is not null) order by concat(`world_presidents`.`f_name`,' ',`world_presidents`.`l_name`),`fun_facts`.`pets` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `president_power_length_in_party_in_us`
--

/*!50001 DROP VIEW IF EXISTS `president_power_length_in_party_in_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `president_power_length_in_party_in_us` AS select concat(`world_presidents`.`f_name`,' ',`world_presidents`.`l_name`) AS `president_name`,`world_presidents`.`length_of_power` AS `length_of_power` from (`world_presidents` join `background` on((`world_presidents`.`leader_ID` = `background`.`leader_ID`))) where ((`background`.`country` = 'US') and `background`.`president_ID` in (select `president_election`.`president_ID` from `president_election` where (`president_election`.`party` is not null))) order by `world_presidents`.`length_of_power` desc,concat(`world_presidents`.`f_name`,' ',`world_presidents`.`l_name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `re_elected_president_record`
--

/*!50001 DROP VIEW IF EXISTS `re_elected_president_record`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `re_elected_president_record` AS select concat(`world_presidents`.`f_name`,' ',`world_presidents`.`l_name`) AS `president_name`,`background`.`country` AS `country`,`president_election`.`number_of_terms` AS `number_of_terms`,`presidental_term`.`term` AS `term` from (((`world_presidents` join `background` on((`world_presidents`.`leader_ID` = `background`.`leader_ID`))) join `president_election` on((`background`.`president_ID` = `president_election`.`president_ID`))) join `presidental_term` on((`president_election`.`term_id` = `presidental_term`.`term_id`))) where (`president_election`.`number_of_terms` > 1) order by `background`.`country`,`presidental_term`.`term`,concat(`world_presidents`.`f_name`,' ',`world_presidents`.`l_name`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 21:56:20
