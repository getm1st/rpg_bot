-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abilities`
--

DROP TABLE IF EXISTS `abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `name_rus` varchar(100) NOT NULL,
  `class_ability` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `level_required` int DEFAULT '0',
  `is_passive` tinyint(1) DEFAULT '0',
  `usage_limit` varchar(50) DEFAULT NULL,
  `recharge_condition` varchar(100) DEFAULT NULL,
  `source` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abilities`
--

LOCK TABLES `abilities` WRITE;
/*!40000 ALTER TABLE `abilities` DISABLE KEYS */;
INSERT INTO `abilities` VALUES (1,'bardic_inspiration','╨Т╨┤╨╛╤Е╨╜╨╛╨▓╨╡╨╜╨╕╨╡ ╨▒╨░╤А╨┤╨░','╨С╨░╤А╨┤','╨Т╤Л ╨┤╨░╤С╤В╨╡ ╤Б╨╛╤О╨╖╨╜╨╕╨║╤Г ╨▒╨╛╨╜╤Г╤Б╨╜╤Л╨╣ ╨║╤Г╨▒╨╕╨║ d6, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╨╛╨╜ ╨╝╨╛╨╢╨╡╤В ╨┤╨╛╨▒╨░╨▓╨╕╤В╤М ╨║ ╨▒╤А╨╛╤Б╨║╤Г ╨░╤В╨░╨║╨╕, ╨┐╤А╨╛╨▓╨╡╤А╨║╨╕ ╤Г╨╝╨╡╨╜╨╕╤П ╨╕╨╗╨╕ ╤Б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨░.',1,0,'d6 ├Ч CHA mod/╨┤╨╡╨╜╤М','long_rest','Player\'s Handbook','2025-05-11 22:26:29'),(2,'spellcasting_bard','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╨▒╨░╤А╨┤)','╨С╨░╤А╨┤','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╨▒╨░╤А╨┤╨░: ╤Б╨┐╨╕╤Б╨╛╨║ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣ ╨┐╨╛ CHA.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(3,'rage','╨п╤А╨╛╤Б╤В╤М','╨Т╨░╤А╨▓╨░╤А','╨Т╤Л ╨▓╨┐╨░╨┤╨░╨╡╤В╨╡ ╨▓ ╤П╤А╨╛╤Б╤В╤М: ╨┐╤А╨╕ ╨░╤В╨░╨║╨╡ ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨▒╨╛╨╜╤Г╤Б ╨║ ╤Г╤А╨╛╨╜╤Г, ╤Б╨╛╨┐╤А╨╛╤В╨╕╨▓╨╗╨╡╨╜╨╕╨╡ ╨┤╤А╨╛╨▒╤П╤Й╨╡╨╝╤Г, ╨║╨╛╨╗╤О╤Й╨╡╨╝╤Г ╨╕ ╤А╤Г╨▒╤П╤Й╨╡╨╝╤Г ╤Г╤А╨╛╨╜╤Г.',1,0,'2/╨┤╨╡╨╜╤М','long_rest','Player\'s Handbook','2025-05-11 22:26:29'),(4,'unarmored_defense_barbarian','╨Ч╨░╤Й╨╕╤В╨░ ╨▒╨╡╨╖ ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓ (╨▓╨░╤А╨▓╨░╤А)','╨Т╨░╤А╨▓╨░╤А','AC = 10 + DEX mod + CON mod, ╨╡╤Б╨╗╨╕ ╨▒╨╡╨╖ ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓ ╨╕ ╤Й╨╕╤В╨░.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(5,'fighting_style','╨б╤В╨╕╨╗╤М ╨▒╨╛╤П','╨Т╨╛╨╕╨╜','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╨╛╨┤╨╜╤Г ╤Б╤Е╨╡╨╝╤Г ╨▒╨╛╤П: Archery, Defense, Dueling, Great Weapon Fighting, Protection ╨╕╨╗╨╕ Two-Weapon Fighting.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(6,'second_wind','╨Т╤В╨╛╤А╨╛╨╡ ╨┤╤Л╤Е╨░╨╜╨╕╨╡','╨Т╨╛╨╕╨╜','╨Т ╨║╨░╤З╨╡╤Б╤В╨▓╨╡ ╨▒╨╛╨╜╤Г╤Б╨╜╨╛╨│╨╛ ╨┤╨╡╨╣╤Б╤В╨▓╨╕╤П ╨▓╨╛╤Б╤Б╤В╨░╨╜╨░╨▓╨╗╨╕╨▓╨░╨╡╤В╨╡ 1d10 + ╤Г╤А╨╛╨▓╨╡╨╜╤М ╤Е╨╕╤В╨╛╨▓.',1,0,'1/╨┤╨╡╨╜╤М','short_rest','Player\'s Handbook','2025-05-11 22:26:29'),(7,'spellcasting_wizard','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╨▓╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║)','╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╨▓╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║╨░: ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨║╨░ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ INT.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(8,'arcane_recovery','╨Т╨╛╤Б╤Б╤В╨░╨╜╨╛╨▓╨╗╨╡╨╜╨╕╨╡ ╤З╨░╤А','╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║','╨Ю╨┤╨╕╨╜ ╤А╨░╨╖ ╨╖╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╛╤В╨┤╤Л╤Е ╨▓╨╛╤Б╤Б╤В╨░╨╜╨░╨▓╨╗╨╕╨▓╨░╨╡╤В╨╡ ╤Н╨║╨▓╨╕╨▓╨░╨╗╨╡╨╜╤В ╨┐╨╛╨╗╨╛╨▓╨╕╨╜╤Л ╨▓╤Б╨╡╤Е ╨┤╨╛╤Б╤В╤Г╨┐╨╜╤Л╤Е ╤П╤З╨╡╨╡╨║ ╤Б╤Г╨╝╨╝╨░╤А╨╜╨╛╨│╨╛ ╤Г╤А╨╛╨▓╨╜╤П.',1,0,'1/╨┤╨╡╨╜╤М','short_rest','Player\'s Handbook','2025-05-11 22:26:29'),(9,'spellcasting_druid','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╨┤╤А╤Г╨╕╨┤)','╨Ф╤А╤Г╨╕╨┤','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╨┤╤А╤Г╨╕╨┤╨░: ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨║╨░ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ WIS.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(10,'wild_shape','╨Ф╨╕╨║╨░╤П ╤Д╨╛╤А╨╝╨░','╨Ф╤А╤Г╨╕╨┤','╨Ф╨▓╨░╨╢╨┤╤Л ╨╖╨░ ╨┤╨╛╨╗╨│╨╕╨╣ ╨╛╤В╨┤╤Л╤Е ╨┐╤А╨╡╨▓╤А╨░╤Й╨░╨╡╤В╨╡╤Б╤М ╨▓ ╨╖╨▓╨╡╤А╤П (CR тЙд 1/4, ╨▒╨╡╨╖ ╨┐╨╛╨╗╤С╤В╨░).',2,0,'2/long_rest','long_rest','Player\'s Handbook','2025-05-11 22:26:29'),(11,'spellcasting_cleric','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╨╢╤А╨╡╤Ж)','╨Ц╤А╨╡╤Ж','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╨╢╤А╨╡╤Ж╨░: ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨║╨░ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ WIS.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(12,'divine_domain_feature','╨Ю╤Б╨╛╨▒╨╡╨╜╨╜╨╛╤Б╤В╤М ╨┤╨╛╨╝╨╡╨╜╨░','╨Ц╤А╨╡╤Ж','╨б╨┐╨╛╤Б╨╛╨▒╨╜╨╛╤Б╤В╤М ╨┤╨╛╨╝╨╡╨╜╨░, ╤Б╨┐╨╡╤Ж╨╕╤Д╨╕╤З╨╜╨░╤П ╨┤╨╗╤П ╨▓╤Л╨▒╤А╨░╨╜╨╜╨╛╨│╨╛ ╨▒╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╨│╨╛ ╨┤╨╛╨╝╨╡╨╜╨░.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(13,'magical_tinkering','╨Ь╨░╨│╨╕╤З╨╡╤Б╨║╨╛╨╡ ╨╝╨░╤Б╤В╨╡╤А╨╡╨╜╨╕╨╡','╨Ш╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╤М','╨Т╤Л ╤Б╨╛╨╖╨┤╨░╤С╤В╨╡ ╨╝╨░╨╗╨╡╨╜╤М╨║╨╕╨╣ ╨╝╨░╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╨▒╤К╨╡╨║╤В, ╨╕╨╖╨╗╤Г╤З╨░╤О╤Й╨╕╨╣ ╤Б╨▓╨╡╤В ╨╕╨╗╨╕ ╨╖╨▓╤Г╨║, ╨┤╨╛ ╤В╨╡╤Е ╨┐╨╛╤А, ╨┐╨╛╨║╨░ ╨╜╨╡ ╤Б╨╝╨╡╨╜╨╕╤В╨╡ ╨╛╨▒╤К╨╡╨║╤В.',1,0,'╨┤╨╛ 6 ╨┐╤А╨╡╨┤╨╝╨╡╤В╨╛╨▓','long_rest','Player\'s Handbook','2025-05-11 22:26:29'),(14,'spellcasting_artificer','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╨╕╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╤М)','╨Ш╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╤М','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╨╕╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╤П: ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨║╨░ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ INT.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(15,'unarmored_defense_monk','╨Ч╨░╤Й╨╕╤В╨░ ╨▒╨╡╨╖ ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓ (╨╝╨╛╨╜╨░╤Е)','╨Ь╨╛╨╜╨░╤Е','AC = 10 + DEX mod + WIS mod, ╨╡╤Б╨╗╨╕ ╨▒╨╡╨╖ ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓ ╨╕ ╤Й╨╕╤В╨░.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(16,'martial_arts','╨С╨╛╨╡╨▓╤Л╨╡ ╨╕╤Б╨║╤Г╤Б╤Б╤В╨▓╨░','╨Ь╨╛╨╜╨░╤Е','╨Я╤А╨╕ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╣ ╨░╤В╨░╨║╨╡ ╤Г╤А╨╛╨╜ ╤А╨░╨▓╨╡╨╜ d4 + DEX mod; ╨▒╨╛╨╜╤Г╤Б╨╜╨░╤П ╨░╤В╨░╨║╨░ ╨║╤Г╨╗╨░╨║╨╛╨╝.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(17,'divine_sense','╨С╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╨╡ ╤З╤Г╤В╤М╤С','╨Я╨░╨╗╨░╨┤╨╕╨╜','╨Ъ╨░╨║ ╨┤╨╡╨╣╤Б╤В╨▓╨╕╨╡, ╨╛╤Й╤Г╤Й╨░╨╡╤В╨╡ ╨┐╤А╨╕╤Б╤Г╤В╤Б╤В╨▓╨╕╨╡ ╨┤╨╛╨▒╤А╤Л╤Е ╨╕╨╗╨╕ ╨╖╨╗╤Л╤Е ╤Б╤Г╤Й╨╡╤Б╤В╨▓ ╨▓ 60 ╤Д╤В.',1,0,'1 + CHA mod/╨┤╨╡╨╜╤М','long_rest','Player\'s Handbook','2025-05-11 22:26:29'),(18,'lay_on_hands','╨Т╤Л╨╗╨╛╨╢╨╕╤В╤М ╤А╤Г╨║╨╕','╨Я╨░╨╗╨░╨┤╨╕╨╜','╨Ч╨░╨┐╨░╤Б ╨╗╨╡╤З╨╡╨▒╨╜╤Л╤Е ╨╛╤З╨║╨╛╨▓ = 5 ├Ч ╤Г╤А╨╛╨▓╨╡╨╜╤М ╨┐╨░╨╗╨░╨┤╨╕╨╜╨░; ╨▓╨╛╤Б╤Б╤В╨░╨╜╨░╨▓╨╗╨╕╨▓╨░╨╡╤В╨╡ HP ╨╕╨╗╨╕ ╨╛╤З╨╕╤Й╨░╨╡╤В╨╡ ╨╛╤В ╤П╨┤╨░/╨▒╨╛╨╗╨╡╨╖╨╜╨╕.',1,0,'pool/long_rest','long_rest','Player\'s Handbook','2025-05-11 22:26:29'),(19,'sneak_attack','╨г╨┤╨░╤А ╨▓ ╤Б╨┐╨╕╨╜╤Г','╨Я╨╗╤Г╤В','╨Ф╨╛╨┐╨╛╨╗╨╜╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╤Г╤А╨╛╨╜ 1d6, ╨╡╤Б╨╗╨╕ ╨╡╤Б╤В╤М ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛ ╨╕╨╗╨╕ ╤Б╨╛╤О╨╖╨╜╨╕╨║ ╤А╤П╨┤╨╛╨╝ ╤Б ╨┐╤А╨╛╤В╨╕╨▓╨╜╨╕╨║╨╛╨╝.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(20,'thieves_cant','╨Ц╨░╤А╨│╨╛╨╜ ╨▓╨╛╤А╨╛╨▓','╨Я╨╗╤Г╤В','╨в╨░╨╣╨╜╤Л╨╣ ╤П╨╖╤Л╨║ ╨┐╨╗╤Г╤В╨╛╨▓; ╨┐╨░╤Б╤Б╨╕╨▓╨╜╨╛ ╨▓╨╗╨░╨┤╨╡╨╡╤В╨╡.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(21,'favored_enemy','╨Ш╨╖╨▒╤А╨░╨╜╨╜╤Л╨╣ ╨▓╤А╨░╨│','╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╤В╨╕╨┐ ╨▓╤А╨░╨│╨╛╨▓; ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨▒╨╛╨╜╤Г╤Б ╨║ ╨┐╤А╨╛╨▓╨╡╤А╨║╨░╨╝ ╨а╨░╨╖╨▓╨╡╨┤╨║╨╕ ╨╕ ╨Ш╤Б╤В╨╛╤А╨╕╨╕ ╨╛ ╨╜╨╕╤Е.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(22,'natural_explorer','╨Я╤А╨╕╤А╨╛╨┤╨╜╤Л╨╣ ╤Б╨╗╨╡╨┤╨╛╨┐╤Л╤В','╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╤Б╤А╨╡╨┤╤Г (╨╗╨╡╤Б, ╨┐╤Г╤Б╤В╤Л╨╜╤П ╨╕ ╤В.╨┤.); ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨▒╨╛╨╜╤Г╤Б╤Л ╨┐╤А╨╕ ╨┐╨╡╤А╨╡╨┤╨▓╨╕╨╢╨╡╨╜╨╕╨╕ ╨╕ ╤А╨░╨╖╨▓╨╡╨┤╨║╨╡.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(23,'spellcasting_sorcerer','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╤З╨░╤А╨╛╨┤╨╡╨╣)','╨з╨░╤А╨╛╨┤╨╡╨╣','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╨║╨╛╨╗╨┤╤Г╨╜╨░: ╤Б╨┐╨╕╤Б╨╛╨║ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ CHA.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(24,'sorcerous_origin','╨Я╤А╨╛╨╕╤Б╤Е╨╛╨╢╨┤╨╡╨╜╨╕╨╡ ╨║╨╛╨╗╨┤╨╛╨▓╤Б╨║╨╛╨╣ ╤Б╨╕╨╗╤Л','╨з╨░╤А╨╛╨┤╨╡╨╣','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╨┐╤А╨╛╨╕╤Б╤Е╨╛╨╢╨┤╨╡╨╜╨╕╨╡ (Draconic Bloodline ╨╕╨╗╨╕ Wild Magic) ╨╕ ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨╛╤Б╨╛╨▒╨╡╨╜╨╜╨╛╤Б╤В╨╕.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(25,'spellcasting_warlock','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╤З╨╡╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║)','╨з╤С╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╤З╨╡╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║╨░: ╤Б╨┐╨╕╤Б╨╛╨║ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╤Б╨╗╨╛╤В ╨▓╨╛╤Б╤Б╤В╨░╨╜╨╛╨▓╨╗╨╡╨╜╨╕╤П ╨╖╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╛╤В╨┤╤Л╤Е, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ CHA.',1,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(26,'otherworldly_patron','╨Я╨╛╨║╤А╨╛╨▓╨╕╤В╨╡╨╗╤М ╨╕╨╖ ╨╕╨╜╤Л╤Е ╨╝╨╕╤А╨╛╨▓','╨з╤С╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╨┐╨╛╨║╤А╨╛╨▓╨╕╤В╨╡╨╗╤П (Fiend, Archfey ╨╕╨╗╨╕ Great Old One) ╨╕ ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨╛╤Б╨╛╨▒╨╡╨╜╨╜╨╛╤Б╤В╨╕.',1,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(27,'jack_of_all_trades','╨г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗','╨С╨░╤А╨┤','╨Ф╨╛╨▒╨░╨▓╨╗╤П╨╡╤В╨╡ ╨┐╨╛╨╗╨╛╨▓╨╕╨╜╤Г ╨▒╨╛╨╜╤Г╤Б╨░ ╨║╨╛╨╝╨┐╨╡╤В╨╡╨╜╤Ж╨╕╨╕ (╨╛╨║╤А╤Г╨│╨╗╤С╨╜╨╜╤Г╤О ╨▓╨╜╨╕╨╖) ╨║ ╨╗╤О╨▒╤Л╨╝ ╨▒╤А╨╛╤Б╨║╨░╨╝ ╨┐╤А╨╛╨▓╨╡╤А╨║╨╕, ╨▓ ╨║╨╛╤В╨╛╤А╤Л╤Е ╨▓╤Л ╨╜╨╡ ╨┐╤А╨╕╨╝╨╡╨╜╤П╨╡╤В╨╡ ╨▒╨╛╨╜╤Г╤Б ╨║╨╛╨╝╨┐╨╡╤В╨╡╨╜╤Ж╨╕╨╕.',2,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(28,'song_of_rest','╨Я╨╡╤Б╨╜╤П ╨╛╤В╨┤╤Л╤Е╨░','╨С╨░╤А╨┤','╨Т╨╛ ╨▓╤А╨╡╨╝╤П ╨║╨╛╤А╨╛╤В╨║╨╛╨│╨╛ ╨╛╤В╨┤╤Л╤Е╨░ ╤Б╨╛╤О╨╖╨╜╨╕╨║╨╕ ╨╝╨╛╨│╤Г╤В ╨▓╨╛╤Б╤Б╤В╨░╨╜╨╛╨▓╨╕╤В╤М ╨┤╨╛╨┐╨╛╨╗╨╜╨╕╤В╨╡╨╗╤М╨╜╨╛ 1d6 ╤Е╨╕╤В╨╛╨▓, ╨╡╤Б╨╗╨╕ ╨╛╨╜╨╕ ╤Б╨╗╤Л╤И╨░╤В ╨▓╨░╤И╤Г ╨╝╨╡╨╗╨╛╨┤╨╕╤О.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(29,'reckless_attack','╨С╨╡╨╖╤А╨░╤Б╤Б╤Г╨┤╨╜╨░╤П ╨░╤В╨░╨║╨░','╨Т╨░╤А╨▓╨░╤А','╨Я╤А╨╕ ╨░╤В╨░╨║╨╡ ╨╝╨╛╨╢╨╡╤В╨╡ ╨╛╨▒╤К╤П╨▓╨╕╤В╤М ╨С╨╡╨╖╤А╨░╤Б╤Б╤Г╨┤╨╜╤Г╤О ╨░╤В╨░╨║╤Г, ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛, ╨╜╨╛ ╨░╤В╨░╨║╨╕ ╨┐╨╛ ╨▓╨░╨╝ ╤В╨╛╨╢╨╡ ╤Б ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛╨╝.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(30,'danger_sense','╨з╤Г╤В╤М╤С ╨╛╨┐╨░╤Б╨╜╨╛╤Б╤В╨╕','╨Т╨░╤А╨▓╨░╤А','╨Я╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛ ╨╜╨░ ╤Б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨╕ ╨Ы╨╛╨▓╨║╨╛╤Б╤В╨╕ ╨┐╤А╨╛╤В╨╕╨▓ ╤Н╤Д╤Д╨╡╨║╤В╨╛╨▓, ╨║╨╛╤В╨╛╤А╤Л╤Е ╨╝╨╛╨╢╨╜╨╛ ╨╕╨╖╨▒╨╡╨╢╨░╤В╤М ╨┐╨╛╨╗╨╛╨▓╨╕╨╜╨╛╨╣ ╤Г╤А╨╛╨╜╨░.',2,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(31,'action_surge','╨Т╤Б╨┐╨╗╨╡╤Б╨║ ╨┤╨╡╨╣╤Б╤В╨▓╨╕╨╣','╨Т╨╛╨╕╨╜','╨Ф╨╛╨┐╨╛╨╗╨╜╨╕╤В╨╡╨╗╤М╨╜╨╛╨╡ ╨┤╨╡╨╣╤Б╤В╨▓╨╕╨╡ ╨▓ ╤Б╨▓╨╛╨╣ ╤Е╨╛╨┤ ╨╛╨┤╨╕╨╜ ╤А╨░╨╖ ╨╖╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╛╤В╨┤╤Л╤Е.',2,0,'1/short_rest','short_rest','Player\'s Handbook','2025-05-11 22:26:29'),(32,'arcane_tradition','╨Ь╨░╨│╨╕╤З╨╡╤Б╨║╨░╤П ╤В╤А╨░╨┤╨╕╤Ж╨╕╤П','╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╤И╨║╨╛╨╗╤Г ╨╝╨░╨│╨╕╨╕ ╨╕ ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╤Б╨▓╤П╨╖╨░╨╜╨╜╤Л╨╡ ╤Б ╨╜╨╡╨╣ ╨╛╤Б╨╛╨▒╨╡╨╜╨╜╨╛╤Б╤В╨╕.',2,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(33,'channel_divinity','╨Ъ╨░╨╜╨░╨╗ ╨▒╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╤Б╤В╨╕','╨Ц╤А╨╡╤Ж','╨Ф╨▓╨░╨╢╨┤╤Л ╨╖╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╛╤В╨┤╤Л╤Е ╨┐╤А╨╕╨╝╨╡╨╜╤П╨╡╤В╨╡ ╨╛╤Б╨╛╨▒╨╡╨╜╨╜╨╛╤Б╤В╨╕ ╨║╨░╨╜╨░╨╗╨░ ╨▒╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╤Б╤В╨╕.',2,0,'2/short_rest','short_rest','Player\'s Handbook','2025-05-11 22:26:29'),(34,'infuse_item','╨Т╨╗╨╕╨▓╨░╨╜╨╕╨╡ ╨┐╤А╨╡╨┤╨╝╨╡╤В╨╛╨▓','╨Ш╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╤М','╨Ф╨▓╨░ ╤Б╨╗╨╛╤В╨░ ╨┐╤А╨╕╨┐╨░╤Б╨╛╨▓ ╨┤╨╗╤П ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╨╝╨░╨│╨╕╤З╨╡╤Б╨║╨╕╤Е ╨┐╤А╨╡╨┤╨╝╨╡╤В╨╛╨▓ ╨╖╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╛╤В╨┤╤Л╤Е.',2,0,'╨┤╨╛ 2','short_rest','Player\'s Handbook','2025-05-11 22:26:29'),(35,'ki','╨ж╨╕','╨Ь╨╛╨╜╨░╤Е','╨Ъ╨╕╨╜ ╤Н╨╜╨╡╤А╨│╨╕╤П: ╨║╨╕-╨┐╤Г╨╜╨║╤В╤Л ╤А╨░╨▓╨╜╤Л ╤Г╤А╨╛╨▓╨╜╤О ╨╝╨╛╨╜╨░╤Е╨░, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╤Б╨┐╨╡╤Ж╨╕╨░╨╗╤М╨╜╤Л╤Е ╨┐╤А╨╕╤С╨╝╨╛╨▓.',2,0,'ki_points','per_turn','Player\'s Handbook','2025-05-11 22:26:29'),(36,'unarmored_movement','╨Ч╨░╤Й╨╕╤В╨░ ╨▒╨╡╨╖ ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓ (╨┤╨▓╨╕╨╢╨╡╨╜╨╕╨╡)','╨Ь╨╛╨╜╨░╤Е','╨б╨║╨╛╤А╨╛╤Б╤В╤М ╤Г╨▓╨╡╨╗╨╕╤З╨╕╨▓╨░╨╡╤В╤Б╤П ╨╜╨░ 10 ╤Д╤Г╤В╨╛╨▓, ╨╡╤Б╨╗╨╕ ╨▒╨╡╨╖ ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓ ╨╕ ╤Й╨╕╤В╨░.',2,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(37,'fighting_style_paladin','╨б╤В╨╕╨╗╤М ╨▒╨╛╤П (╨┐╨░╨╗╨░╨┤╨╕╨╜)','╨Я╨░╨╗╨░╨┤╨╕╨╜','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╨╛╨┤╨╜╤Г ╤Б╤Е╨╡╨╝╤Г ╨▒╨╛╤П: Defence, Dueling ╨╕╨╗╨╕ Two-Weapon Fighting.',2,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(38,'divine_smite','╨С╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╨╡ ╤Г╨╜╨╕╤З╤В╨╛╨╢╨╡╨╜╨╕╨╡','╨Я╨░╨╗╨░╨┤╨╕╨╜','╨Ъ╨╛╨│╨┤╨░ ╨▓╤Л ╨┐╨╛╨┐╨░╨┤╨░╨╡╤В╨╡, ╤В╤А╨░╤В╨╕╤В╨╡ ╤Б╨╗╨╛╤В ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╤П, ╤З╤В╨╛╨▒╤Л ╨╜╨░╨╜╨╡╤Б╤В╨╕ ╨┤╨╛╨┐╨╛╨╗╨╜╨╕╤В╨╡╨╗╤М╨╜╨╛ 2d8 ╤А╨░╨┤╨╕╨░╨╜╤В╨╜╨╛╨│╨╛ ╤Г╤А╨╛╨╜╨░.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(39,'cunning_action','╨е╨╕╤В╤А╨╛╤Г╨╝╨╜╨╛╨╡ ╨┤╨╡╨╣╤Б╤В╨▓╨╕╨╡','╨Я╨╗╤Г╤В','╨Э╨░ ╤Б╨▓╨╛╤С╨╝ ╤Е╨╛╨┤╤Г ╨╝╨╛╨╢╨╡╤В╨╡ ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╤М ╨▒╨╛╨╜╤Г╤Б╨╜╨╛╨╡ ╨┤╨╡╨╣╤Б╤В╨▓╨╕╨╡, ╤З╤В╨╛╨▒╤Л ╤Б╨║╤А╤Л╤В╤М╤Б╤П, ╨▒╨╡╨╢╨░╤В╤М ╨╕╨╗╨╕ ╤Г╨║╨╗╨╛╨╜╨╕╤В╤М╤Б╤П.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(40,'spellcasting_ranger','╨Ъ╨╛╨╗╨┤╨╛╨▓╤Б╤В╨▓╨╛ (╤Б╨╗╨╡╨┤╨╛╨┐╤Л╤В)','╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В','╨Ф╨╛╤Б╤В╤Г╨┐ ╨║ ╨╝╨░╨│╨╕╨╕ ╤Б╨╗╨╡╨┤╨╛╨┐╤Л╤В╨░: ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨║╨░  Ranger ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╨╜╨╕╨╡ ╤П╤З╨╡╨╡╨║, ╨╕╨╖╨▓╨╗╨╡╤З╨╡╨╜╨╕╨╡ ╨┐╨╛ WIS.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(41,'fighting_style_ranger','╨б╤В╨╕╨╗╤М ╨▒╨╛╤П (╤Б╨╗╨╡╨┤╨╛╨┐╤Л╤В)','╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В','╨Т╤Л╨▒╨╕╤А╨░╨╡╤В╨╡ ╨╛╨┤╨╜╤Г ╤Б╤Е╨╡╨╝╤Г ╨▒╨╛╤П: Archery ╨╕╨╗╨╕ Two-Weapon Fighting.',2,1,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(42,'font_of_magic','╨Ш╤Б╤В╨╛╤З╨╜╨╕╨║ ╨╝╨░╨│╨╕╨╕','╨з╨░╤А╨╛╨┤╨╡╨╣','╨Т╤Б╨╡ ╨┐╨╛╤В╤А╨░╤З╨╡╨╜╨╜╤Л╨╡ ╤З╨░╤А╤Л ╨▓╨╛╤Б╤Б╤В╨░╨╜╨░╨▓╨╗╨╕╨▓╨░╤О╤В╤Б╤П ╨┐╨╛╤Б╨╗╨╡ ╨║╨╛╤А╨╛╤В╨║╨╛╨│╨╛ ╨╛╤В╨┤╤Л╤Е╨░; ╨║╨╕-╨┐╤Г╨╜╨║╤В╤Л ╨║╨░╨║ ╤П╤З╨╡╨╣╨║╨╕ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(43,'eldritch_invocations','╨Я╤А╨╕╨╖╤Л╨▓╤Л ╨╕╨╖ ╨╕╨╜╤Л╤Е ╨╝╨╕╤А╨╛╨▓','╨з╤С╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║','╨Ф╨▓╨╡ ╨╕╨╜╨▓╨╛╨║╨░╤Ж╨╕╨╕ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А, ╨║╨╛╤В╨╛╤А╤Л╨╡ ╤Г╨╗╤Г╤З╤И╨░╤О╤В ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╤П ╨╕╨╗╨╕ ╨┤╨░╤О╤В ╨╜╨╛╨▓╤Л╨╡ ╤Б╨┐╨╛╤Б╨╛╨▒╨╜╨╛╤Б╤В╨╕.',2,0,NULL,NULL,'Player\'s Handbook','2025-05-11 22:26:29'),(44,'sunlight_weakness','╨б╨╗╨░╨▒╨╛╤Б╤В╤М ╨║ ╤Б╨╛╨╗╨╜╨╡╤З╨╜╨╛╨╝╤Г ╤Б╨▓╨╡╤В╤Г','Shadow','╨Я╨╛╨║╨░ ╨╜╨░╤Е╨╛╨┤╨╕╤В╤Б╤П ╨╜╨░ ╨╛╤В╨║╤А╤Л╤В╨╛╨╝ ╤Б╨╛╨╗╨╜╤Ж╨╡, ╨╕╨╝╨╡╨╡╤В ╨┐╨╛╨╝╨╡╤Е╤Г ╨╜╨░ ╨▓╤Б╨╡ ╨▒╤А╨╛╤Б╨║╨╕ d20.',0,1,NULL,NULL,'AideDD','2025-05-11 22:33:42'),(45,'drawing_strength','╨Т╤Л╤В╤П╨│╨╕╨▓╨░╨╜╨╕╨╡ ╤Б╨╕╨╗╤Л','Shadow','╨Т╤Л╤В╤П╨│╨╕╨▓╨░╨╜╨╕╨╡ ╤Б╨╕╨╗╤Л. ╨а╤Г╨║╨╛╨┐╨░╤И╨╜╨░╤П ╨░╤В╨░╨║╨░ ╨╛╤А╤Г╨╢╨╕╨╡╨╝: +4 ╨║ ╨┐╨╛╨┐╨░╨┤╨░╨╜╨╕╤О, ╨┤╨╛╤Б╤П╨│╨░╨╡╨╝╨╛╤Б╤В╤М 5 ╤Д╤Г╤В╨╛╨▓, ╨╛╨┤╨╜╨╛ ╤Б╤Г╤Й╨╡╤Б╤В╨▓╨╛. ╨Я╨╛╨┐╨░╨┤╨░╨╜╨╕╨╡: 9 (2╨║6 + 2) ╤Г╤А╨╛╨╜╨░ ╨╜╨╡╨║╤А╨╛╤В╨╕╤З╨╡╤Б╨║╨╛╨╣ ╤Н╨╜╨╡╤А╨│╨╕╨╡╨╣, ╨╕ ╨╖╨╜╨░╤З╨╡╨╜╨╕╨╡ ╨б╨╕╨╗╤Л ╤Ж╨╡╨╗╨╕ ╤Г╨╝╨╡╨╜╤М╤И╨░╨╡╤В╤Б╤П ╨╜╨░ 1╨║4. ╨ж╨╡╨╗╤М ╤Г╨╝╨╕╤А╨░╨╡╤В, ╨╡╤Б╨╗╨╕ ╨╖╨╜╨░╤З╨╡╨╜╨╕╨╡ ╨╡╤С ╨б╨╕╨╗╤Л ╤Г╨╝╨╡╨╜╤М╤И╨░╨╡╤В╤Б╤П ╨┤╨╛ 0. ╨г╨╝╨╡╨╜╤М╤И╨╡╨╜╨╕╨╡ ╨┤╨╗╨╕╤В╤Б╤П ╨┤╨╛ ╤В╨╡╤Е ╨┐╨╛╤А, ╨┐╨╛╨║╨░ ╤Ж╨╡╨╗╤М ╨╜╨╡ ╨╛╨║╨╛╨╜╤З╨╕╤В ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╕╨╗╨╕ ╨┐╤А╨╛╨┤╨╛╨╗╨╢╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╨╛╤В╨┤╤Л╤Е.\n\n╨Х╤Б╨╗╨╕ ╨╛╤В ╤Н╤В╨╛╨╣ ╨░╤В╨░╨║╨╕ ╤Г╨╝╤А╤С╤В ╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤ ╤Б ╨╜╨╡╨╖╨╗╤Л╨╝ ╨╝╨╕╤А╨╛╨▓╨╛╨╖╨╖╤А╨╡╨╜╨╕╨╡╨╝, ╤З╨╡╤А╨╡╨╖ 1╨║4 ╤З╨░╤Б╨░ ╨╕╨╖ ╤В╤А╤Г╨┐╨░ ╨▓╤Л╨╣╨┤╨╡╤В ╨╜╨╛╨▓╨░╤П ╤В╨╡╨╜╤М.',0,0,NULL,NULL,'AideDD','2025-05-11 22:33:42'),(46,'shadow_stealth','╨в╨╡╨╜╨╡╨▓╨╛╨╣ ╤Б╤В╨╡╨╗╤Б','Shadow','╨Т ╤В╤С╨╝╨╜╤Л╤Е ╨╕╨╗╨╕ ╨┐╨╛╨╗╤Г╤В╤С╨╝╨╜╤Л╤Е ╤Г╤Б╨╗╨╛╨▓╨╕╤П╤Е ╨╝╨╛╨╢╨╡╤В ╨╕╤Б╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╤М ╨┤╨╡╨╣╤Б╤В╨▓╨╕╨╡ ┬л╨б╨║╤А╤Л╤В╤М╤Б╤П┬╗ ╨║╨░╨║ ╨▒╨╛╨╜╤Г╤Б╨╜╨╛╨╡.',0,1,NULL,NULL,'AideDD','2025-05-11 22:33:42');
/*!40000 ALTER TABLE `abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armors`
--

DROP TABLE IF EXISTS `armors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armors` (
  `id` int NOT NULL,
  `name_armor` varchar(50) DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `item_armor_class` varchar(30) DEFAULT NULL,
  `strength_requirment` varchar(10) DEFAULT NULL,
  `stealth_hindrance` tinyint(1) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `armor_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armors`
--

LOCK TABLES `armors` WRITE;
/*!40000 ALTER TABLE `armors` DISABLE KEYS */;
INSERT INTO `armors` VALUES (1,'╨б╤В╤С╨│╨░╨╜╨╜╤Л╨╣','5 ╨╖╨╝','11 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓',NULL,1,8,'╨Ы╨╡╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(2,'╨Ъ╨╛╨╢╨░╨╜╤Л╨╣','10 ╨╖╨╝','11 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓',NULL,NULL,10,'╨Ы╨╡╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(3,'╨Я╤А╨╛╨║╨╗╤С╨┐╨░╨╜╨╜╨░╤П ╨║╨╛╨╢╨░','45 ╨╖╨╝','12 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓',NULL,NULL,13,'╨Ы╨╡╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(4,'╨и╨║╤Г╤А╨╜╤Л╨╣','10 ╨╖╨╝','12 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓ (╨╝╨░╨║╤Б. 2)',NULL,NULL,12,'╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(5,'╨Ъ╨╛╨╗╤М╤З╤Г╨╢╨╜╨░╤П ╤А╤Г╨▒╨░╤Е╨░','50 ╨╖╨╝','13 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓ (╨╝╨░╨║╤Б. 2)',NULL,NULL,20,'╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(6,'╨з╨╡╤И╤Г╨╣╤З╨░╤В╤Л╨╣','50 ╨╖╨╝','14 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓ (╨╝╨░╨║╤Б. 2)',NULL,1,45,'╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(7,'╨Ъ╨╕╤А╨░╤Б╨░','400 ╨╖╨╝','14 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓ (╨╝╨░╨║╤Б. 2)',NULL,NULL,20,'╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(8,'╨Я╨╛╨╗╤Г╨╗╨░╤В╤Л','750 ╨╖╨╝','15 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨Ы╨╛╨▓ (╨╝╨░╨║╤Б. 2)',NULL,1,40,'╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(9,'╨Ъ╨╛╨╗╨╡╤З╨╜╤Л╨╣','30 ╨╖╨╝','14',NULL,1,40,'╨в╤П╨╢╨╡╨╗╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(10,'╨Ъ╨╛╨╗╤М╤З╤Г╨│╨░','75 ╨╖╨╝','16','13',1,55,'╨в╤П╨╢╨╡╨╗╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(11,'╨Э╨░╨▒╨╛╤А╨╜╤Л╨╣','200 ╨╖╨╝','17','15',1,60,'╨в╤П╨╢╨╡╨╗╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(12,'╨Ы╨░╤В╤Л','1,500 ╨╖╨╝','18','15',1,65,'╨в╤П╨╢╨╡╨╗╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е'),(13,'╨й╨╕╤В','10 ╨╖╨╝','2',NULL,NULL,6,'╨й╨╕╤В');
/*!40000 ALTER TABLE `armors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attacks`
--

DROP TABLE IF EXISTS `attacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_attack` varchar(50) DEFAULT NULL,
  `type_attack` varchar(50) DEFAULT NULL,
  `aim_bonus` int DEFAULT NULL,
  `distance` int DEFAULT NULL,
  `aim_count` int DEFAULT NULL,
  `damage` varchar(20) DEFAULT NULL,
  `aftereffect` varchar(50) DEFAULT NULL,
  `saving_throw` varchar(50) DEFAULT NULL,
  `descriptions` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attacks`
--

LOCK TABLES `attacks` WRITE;
/*!40000 ALTER TABLE `attacks` DISABLE KEYS */;
INSERT INTO `attacks` VALUES (1,'drawing_power','╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨░╤П ╨░╤В╨░╨║╨░ ╨╛╤А╤Г╨╢╨╕╨╡╨╝',4,5,1,'2d6 + 2','strength low 1d4',NULL,'╨ж╨╡╨╗╤М ╤Г╨╝╨╕╤А╨░╨╡╤В, ╨╡╤Б╨╗╨╕ ╨╖╨╜╨░╤З╨╡╨╜╨╕╨╡ ╨╡╤С ╨б╨╕╨╗╤Л ╤Г╨╝╨╡╨╜╤М╤И╨░╨╡╤В╤Б╤П ╨┤╨╛ 0. ╨г╨╝╨╡╨╜╤М╤И╨╡╨╜╨╕╨╡ ╨┤╨╗╨╕╤В╤Б╤П ╨┤╨╛ ╤В╨╡╤Е ╨┐╨╛╤А, ╨┐╨╛╨║╨░ ╤Ж╨╡╨╗╤М ╨╜╨╡ ╨╛╨║╨╛╨╜╤З╨╕╤В ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╕╨╗╨╕ ╨┐╤А╨╛╨┤╨╛╨╗╨╢╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╨╛╤В╨┤╤Л╤Е.╨Х╤Б╨╗╨╕ ╨╛╤В ╤Н╤В╨╛╨╣ ╨░╤В╨░╨║╨╕ ╤Г╨╝╤А╤С╤В ╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤ ╤Б ╨╜╨╡╨╖╨╗╤Л╨╝ ╨╝╨╕╤А╨╛╨▓╨╛╨╖╨╖╤А╨╡╨╜╨╕╨╡╨╝, ╤З╨╡╤А╨╡╨╖ 1╨║4 ╤З╨░╤Б╨░ ╨╕╨╖ ╤В╤А╤Г╨┐╨░ ╨▓╤Л╨╣╨┤╨╡╤В ╨╜╨╛╨▓╨░╤П ╤В╨╡╨╜╤М'),(2,'drawing_power','╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨░╤П ╨░╤В╨░╨║╨░ ╨╛╤А╤Г╨╢╨╕╨╡╨╝',5,5,1,'2d6 + 2','strength low 1d4',NULL,'╨ж╨╡╨╗╤М ╤Г╨╝╨╕╤А╨░╨╡╤В, ╨╡╤Б╨╗╨╕ ╨╖╨╜╨░╤З╨╡╨╜╨╕╨╡ ╨╡╤С ╨б╨╕╨╗╤Л ╤Г╨╝╨╡╨╜╤М╤И╨░╨╡╤В╤Б╤П ╨┤╨╛ 0. ╨г╨╝╨╡╨╜╤М╤И╨╡╨╜╨╕╨╡ ╨┤╨╗╨╕╤В╤Б╤П ╨┤╨╛ ╤В╨╡╤Е ╨┐╨╛╤А, ╨┐╨╛╨║╨░ ╤Ж╨╡╨╗╤М ╨╜╨╡ ╨╛╨║╨╛╨╜╤З╨╕╤В ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╕╨╗╨╕ ╨┐╤А╨╛╨┤╨╛╨╗╨╢╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╨╛╤В╨┤╤Л╤Е.╨Х╤Б╨╗╨╕ ╨╛╤В ╤Н╤В╨╛╨╣ ╨░╤В╨░╨║╨╕ ╤Г╨╝╤А╤С╤В ╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤ ╤Б ╨╜╨╡╨╖╨╗╤Л╨╝ ╨╝╨╕╤А╨╛╨▓╨╛╨╖╨╖╤А╨╡╨╜╨╕╨╡╨╝, ╤З╨╡╤А╨╡╨╖ 1╨║4 ╤З╨░╤Б╨░ ╨╕╨╖ ╤В╤А╤Г╨┐╨░ ╨▓╤Л╨╣╨┤╨╡╤В ╨╜╨╛╨▓╨░╤П ╤В╨╡╨╜╤М');
/*!40000 ALTER TABLE `attacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backgrounds`
--

DROP TABLE IF EXISTS `backgrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backgrounds` (
  `id` int NOT NULL,
  `name_background` varchar(50) DEFAULT NULL,
  `description` text,
  `strength_mod` int DEFAULT NULL,
  `dexterity_mod` int DEFAULT NULL,
  `constitution_mod` int DEFAULT NULL,
  `intelligence_mod` int DEFAULT NULL,
  `wisdom_mod` int DEFAULT NULL,
  `charisma_mod` int DEFAULT NULL,
  `skill_proficiencies` varchar(255) DEFAULT NULL,
  `tool_proficiencies` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `feature` text,
  `equipment` text,
  `ability_score_increases` varchar(255) DEFAULT NULL,
  `origin_feat` varchar(255) DEFAULT NULL,
  `suitable_for` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backgrounds`
--

LOCK TABLES `backgrounds` WRITE;
/*!40000 ALTER TABLE `backgrounds` DISABLE KEYS */;
INSERT INTO `backgrounds` VALUES (1,'╨Р╨║╨╛╨╗╨╕╤В','╨Т╤Л ╨┐╨╛╤Б╨▓╤П╤В╨╕╨╗╨╕ ╤Б╨▓╨╛╤О ╨╢╨╕╨╖╨╜╤М ╤Б╨╗╤Г╨╢╨╡╨╜╨╕╤О ╤А╨╡╨╗╨╕╨│╨╕╨╛╨╖╨╜╨╛╨╣ ╤В╤А╨░╨┤╨╕╤Ж╨╕╨╕.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨а╨╡╨╗╨╕╨│╨╕╤П','тАФ','╨Ф╨▓╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨Я╤А╨╕╤Е╨╛╨╢╨░╨╜╨╡: ╨▓╤Л ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╨╡ ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨║╤Г ╨╛╤В ╨┐╨╛╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╨╡╨╣ ╨▓╨░╤И╨╡╨╣ ╨▓╨╡╤А╤Л.','╨б╨▓╤П╤Й╨╡╨╜╨╜╤Л╨╣ ╤Б╨╕╨╝╨▓╨╛╨╗, ╨╝╨╛╨╗╨╕╤В╨▓╨╡╨╜╨╜╨╕╨║, 5 ╨┐╨░╨╗╨╛╤З╨╡╨║ ╨▒╨╗╨░╨│╨╛╨▓╨╛╨╜╨╕╨╣, ╨╛╨┤╨╡╨╢╨┤╨░ ╨╢╤А╨╡╤Ж╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 15 ╨╖╨╝','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М +2','Acolyte','╨Ц╤А╨╡╤Ж╤Л, ╨┐╨░╨╗╨░╨┤╨╕╨╜╤Л'),(2,'╨и╨░╤А╨╗╨░╤В╨░╨╜','╨Т╤Л ╨╝╨░╤Б╤В╨╡╤А ╨╛╨▒╨╝╨░╨╜╨░, ╤Б╨╛╨╖╨┤╨░╤О╤Й╨╕╨╣ ╨╜╨╛╨▓╤Л╨╡ ╨╗╨╕╤З╨╜╨╛╤Б╤В╨╕ ╨┤╨╗╤П ╨╛╨▒╨╝╨░╨╜╨░.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Ю╨▒╨╝╨░╨╜, ╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М ╤А╤Г╨║','╨Э╨░╨▒╨╛╤А ╤Д╨░╨╗╤М╤И╨╕╨▓╨╛╨╝╨╛╨╜╨╡╤В╤З╨╕╨║╨░, ╨╛╨┤╨╕╨╜ ╨╜╨░╨▒╨╛╤А ╨╕╨│╤А╨╛╨▓╤Л╤Е ╨║╨╛╤Б╤В╨╡╨╣','тАФ','╨Ы╨╛╨╢╨╜╨░╤П ╨╗╨╕╤З╨╜╨╛╤Б╤В╤М: ╤Г ╨▓╨░╤Б ╨╡╤Б╤В╤М ╨▓╤В╨╛╤А╨░╤П ╨╗╨╕╤З╨╜╨╛╤Б╤В╤М ╤Б ╨┤╨╛╨║╤Г╨╝╨╡╨╜╤В╨░╨╝╨╕ ╨╕ ╤Б╨▓╤П╨╖╤П╨╝╨╕.','╨Э╨░╨▒╨╛╤А ╨╛╨┤╨╡╨╢╨┤╤Л ╨▓╤Л╤Б╤И╨╡╨│╨╛ ╨║╨░╤З╨╡╤Б╤В╨▓╨░, ╨╜╨░╨▒╨╛╤А ╤Д╨░╨╗╤М╤И╨╕╨▓╨╛╨╝╨╛╨╜╨╡╤В╤З╨╕╨║╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 15 ╨╖╨╝','╨е╨░╤А╨╕╨╖╨╝╨░ +2','Charlatan','╨Я╨╗╤Г╤В╤Л, ╨▒╨░╤А╨┤╤Л'),(3,'╨Я╤А╨╡╤Б╤В╤Г╨┐╨╜╨╕╨║','╨Т╤Л ╤Б╨▓╤П╨╖╨░╨╜╤Л ╤Б ╨┐╤А╨╡╤Б╤В╤Г╨┐╨╜╤Л╨╝ ╨╝╨╕╤А╨╛╨╝ ╨╕ ╨╛╨▒╨╗╨░╨┤╨░╨╡╤В╨╡ ╤Б╨╛╨╛╤В╨▓╨╡╤В╤Б╤В╨▓╤Г╤О╤Й╨╕╨╝╨╕ ╨╜╨░╨▓╤Л╨║╨░╨╝╨╕.',NULL,NULL,NULL,NULL,NULL,NULL,'╨б╨║╤А╤Л╤В╨╜╨╛╤Б╤В╤М, ╨Ю╨▒╨╝╨░╨╜','╨Э╨░╨▒╨╛╤А ╨▓╨╛╤А╨░, ╨╛╨┤╨╕╨╜ ╨╕╨│╤А╨╛╨▓╨╛╨╣ ╨╜╨░╨▒╨╛╤А ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','тАФ','╨Ъ╨╛╨╜╤В╨░╨║╤В╤Л ╨▓ ╨┐╤А╨╡╤Б╤В╤Г╨┐╨╜╨╛╨╝ ╨╝╨╕╤А╨╡: ╨▓╤Л ╨╖╨╜╨░╨╡╤В╨╡, ╨║╨░╨║ ╤Б╨▓╤П╨╖╨░╤В╤М╤Б╤П ╤Б ╨┐╤А╨╡╤Б╤В╤Г╨┐╨╜╨╕╨║╨░╨╝╨╕.','╨Т╨╛╤А╨╛╨╜╨╡╨╜╤Л╨╣ ╨┐╨╗╨░╤Й ╤Б ╨║╨░╨┐╤О╤И╨╛╨╜╨╛╨╝, ╨╜╨░╨▒╨╛╤А ╨▓╨╛╤А╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 15 ╨╖╨╝','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М +2','Criminal','╨Я╨╗╤Г╤В╤Л, ╤Б╨╗╨╡╨┤╨╛╨┐╤Л╤В╤Л'),(4,'╨Р╤А╤В╨╕╤Б╤В','╨Т╤Л ╨╖╨░╤А╨░╨▒╨░╤В╤Л╨▓╨░╨╡╤В╨╡ ╨╜╨░ ╨╢╨╕╨╖╨╜╤М ╨▓╤Л╤Б╤В╤Г╨┐╨╗╨╡╨╜╨╕╤П╨╝╨╕ ╨┐╨╡╤А╨╡╨┤ ╨┐╤Г╨▒╨╗╨╕╨║╨╛╨╣.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Р╨║╤А╨╛╨▒╨░╤В╨╕╨║╨░, ╨Т╤Л╤Б╤В╤Г╨┐╨╗╨╡╨╜╨╕╨╡','╨Ю╨┤╨╕╨╜ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','тАФ','╨Я╨╛╨┐╤Г╨╗╤П╤А╨╜╨╛╤Б╤В╤М: ╨▓╤Л ╨╝╨╛╨╢╨╡╤В╨╡ ╨╜╨░╤Е╨╛╨┤╨╕╤В╤М ╨╝╨╡╤Б╤В╨░ ╨┤╨╗╤П ╨▓╤Л╤Б╤В╤Г╨┐╨╗╨╡╨╜╨╕╨╣ ╨╕ ╨┐╨╛╨╗╤Г╤З╨░╤В╤М ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨║╤Г ╨┐╨╛╨║╨╗╨╛╨╜╨╜╨╕╨║╨╛╨▓.','╨Ь╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨╜╨░ ╨▓╤Л╨▒╨╛╤А, ╨║╨╛╤Б╤В╤О╨╝ ╨░╤А╤В╨╕╤Б╤В╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 15 ╨╖╨╝','╨е╨░╤А╨╕╨╖╨╝╨░ +2','Entertainer','╨С╨░╤А╨┤╤Л'),(5,'╨Э╨░╤А╨╛╨┤╨╜╤Л╨╣ ╨│╨╡╤А╨╛╨╣','╨Т╤Л ╤Б╤В╨░╨╗╨╕ ╨│╨╡╤А╨╛╨╡╨╝ ╤Б╤А╨╡╨┤╨╕ ╨┐╤А╨╛╤Б╤В╤Л╤Е ╨╗╤О╨┤╨╡╨╣ ╨▒╨╗╨░╨│╨╛╨┤╨░╤А╤П ╤Б╨▓╨╛╨╕╨╝ ╨┐╨╛╨┤╨▓╨╕╨│╨░╨╝.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡, ╨г╤Е╨╛╨┤ ╨╖╨░ ╨╢╨╕╨▓╨╛╤В╨╜╤Л╨╝╨╕','╨Ю╨┤╨╕╨╜ ╨╜╨░╨▒╨╛╤А ╤А╨╡╨╝╨╡╤Б╨╗╨╡╨╜╨╜╨╕╨║╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А, ╨╜╨░╨╖╨╡╨╝╨╜╤Л╨╡ ╤В╤А╨░╨╜╤Б╨┐╨╛╤А╤В╨╜╤Л╨╡ ╤Б╤А╨╡╨┤╤Б╤В╨▓╨░','тАФ','╨Ч╨╡╨╝╨╗╤П╨║: ╨▓╤Л ╨╝╨╛╨╢╨╡╤В╨╡ ╨╜╨░╤Е╨╛╨┤╨╕╤В╤М ╤Г╨▒╨╡╨╢╨╕╤Й╨╡ ╤Б╤А╨╡╨┤╨╕ ╨┐╤А╨╛╤Б╤В╤Л╤Е ╨╗╤О╨┤╨╡╨╣.','╨Э╨░╨▒╨╛╤А ╤А╨╡╨╝╨╡╤Б╨╗╨╡╨╜╨╜╨╕╨║╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А, ╨╗╨╛╨┐╨░╤В╨░, ╨║╨░╤Б╤В╤А╤О╨╗╤П, ╨╛╨▒╤Й╨░╤П ╨╛╨┤╨╡╨╢╨┤╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 10 ╨╖╨╝','╨б╨╕╨╗╨░ +1, ╨е╨░╤А╨╕╨╖╨╝╨░ +1','Folk Hero','╨Т╨╛╨╕╨╜╤Л, ╨┐╨░╨╗╨░╨┤╨╕╨╜╤Л'),(6,'╨У╨╕╨╗╤М╨┤╨╡╨╣╤Б╨║╨╕╨╣ ╤А╨╡╨╝╨╡╤Б╨╗╨╡╨╜╨╜╨╕╨║','╨Т╤Л ╤П╨▓╨╗╤П╨╡╤В╨╡╤Б╤М ╤З╨╗╨╡╨╜╨╛╨╝ ╨│╨╕╨╗╤М╨┤╨╕╨╕ ╤А╨╡╨╝╨╡╤Б╨╗╨╡╨╜╨╜╨╕╨║╨╛╨▓, ╤В╨╛╤А╨│╨╛╨▓╤Ж╨╡╨▓ ╨╕╨╗╨╕ ╤Г╤З╨╡╨╜╤Л╤Е.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨г╨▒╨╡╨╢╨┤╨╡╨╜╨╕╨╡','╨Ю╨┤╨╕╨╜ ╨╜╨░╨▒╨╛╤А ╤А╨╡╨╝╨╡╤Б╨╗╨╡╨╜╨╜╨╕╨║╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨Ю╨┤╨╕╨╜ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨з╨╗╨╡╨╜╤Б╤В╨▓╨╛ ╨▓ ╨│╨╕╨╗╤М╨┤╨╕╨╕: ╨▓╤Л ╨╝╨╛╨╢╨╡╤В╨╡ ╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╤М╤Б╤П ╨┐╨╛╨┤╨┤╨╡╤А╨╢╨║╨╛╨╣ ╨│╨╕╨╗╤М╨┤╨╕╨╕.','╨Э╨░╨▒╨╛╤А ╤А╨╡╨╝╨╡╤Б╨╗╨╡╨╜╨╜╨╕╨║╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А, ╨┐╨╕╤Б╤М╨╝╨╛ ╨╛╤В ╨│╨╕╨╗╤М╨┤╨╕╨╕, ╨╛╨┤╨╡╨╢╨┤╨░ ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 15 ╨╖╨╝','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В +2','Guild Artisan','╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║╨╕, ╨║╨╗╨╡╤А╨╕╨║╨╕'),(7,'╨Ю╤В╤И╨╡╨╗╤М╨╜╨╕╨║','╨Т╤Л ╨╢╨╕╨╗╨╕ ╨▓ ╤Г╨╡╨┤╨╕╨╜╨╡╨╜╨╕╨╕, ╨╕╨╖╤Г╤З╨░╤П ╤Д╨╕╨╗╨╛╤Б╨╛╤Д╨╕╤О ╨╕╨╗╨╕ ╨╖╨░╨╜╨╕╨╝╨░╤П╤Б╤М ╨╝╨╡╨┤╨╕╤В╨░╤Ж╨╕╨╡╨╣.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Ь╨╡╨┤╨╕╤Ж╨╕╨╜╨░, ╨а╨╡╨╗╨╕╨│╨╕╤П','╨Э╨░╨▒╨╛╤А ╤В╤А╨░╨▓╨╜╨╕╨║╨░','╨Ю╨┤╨╕╨╜ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨Ю╤В╨║╤А╨╛╨▓╨╡╨╜╨╕╨╡: ╨▓╤Л ╨┐╨╛╨╗╤Г╤З╨╕╨╗╨╕ ╤Г╨╜╨╕╨║╨░╨╗╤М╨╜╨╛╨╡ ╨╖╨╜╨░╨╜╨╕╨╡ ╨╕╨╗╨╕ ╨╛╨╖╨░╤А╨╡╨╜╨╕╨╡.','╨Ъ╨╡╨╣╤Б ╨┤╨╗╤П ╤Б╨▓╨╕╤В╨║╨╛╨▓ ╤Б ╨╖╨░╨┐╨╕╤Б╤П╨╝╨╕, ╨╛╨┤╨╡╤П╨╜╨╕╨╡ ╨╛╤В╤И╨╡╨╗╤М╨╜╨╕╨║╨░, ╨╜╨░╨▒╨╛╤А ╤В╤А╨░╨▓╨╜╨╕╨║╨░, 5 ╨╖╨╝','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М +2','Hermit','╨Ф╤А╤Г╨╕╨┤╤Л, ╨╝╨╛╨╜╨░╤Е╨╕'),(8,'╨С╨╗╨░╨│╨╛╤А╨╛╨┤╨╜╤Л╨╣','╨Т╤Л ╤А╨╛╨┤╨╕╨╗╨╕╤Б╤М ╨▓ ╨╖╨╜╨░╤В╨╜╨╛╨╣ ╤Б╨╡╨╝╤М╨╡ ╨╕ ╨┐╤А╨╕╨▓╤Л╨║╨╗╨╕ ╨║ ╨┐╤А╨╕╨▓╨╕╨╗╨╡╨│╨╕╤П╨╝.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Ш╤Б╤В╨╛╤А╨╕╤П, ╨г╨▒╨╡╨╢╨┤╨╡╨╜╨╕╨╡','╨Ю╨┤╨╕╨╜ ╨╕╨│╤А╨╛╨▓╨╛╨╣ ╨╜╨░╨▒╨╛╤А ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨Ю╨┤╨╕╨╜ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨Я╨╛╨╖╨╕╤Ж╨╕╤П ╨▓╨╗╨░╤Б╤В╨╕: ╨▓╤Л ╨╝╨╛╨╢╨╡╤В╨╡ ╨┐╨╛╨╗╤М╨╖╨╛╨▓╨░╤В╤М╤Б╤П ╤Б╨▓╨╛╨╕╨╝ ╤Б╤В╨░╤В╤Г╤Б╨╛╨╝ ╨┤╨╗╤П ╨┐╨╛╨╗╤Г╤З╨╡╨╜╨╕╤П ╨┐╤А╨╕╨▓╨╕╨╗╨╡╨│╨╕╨╣.','╨Ю╨┤╨╡╨╢╨┤╨░ ╨▓╤Л╤Б╤И╨╡╨│╨╛ ╨║╨░╤З╨╡╤Б╤В╨▓╨░, ╨┐╨╡╤А╤Б╤В╨╡╨╜╤М ╤Б ╨┐╨╡╤З╨░╤В╤М╤О, ╤Б╨▓╨╕╤В╨╛╨║ ╤Б ╤А╨╛╨┤╨╛╤Б╨╗╨╛╨▓╨╜╨╛╨╣, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 25 ╨╖╨╝','╨е╨░╤А╨╕╨╖╨╝╨░ +2','Noble','╨Я╨░╨╗╨░╨┤╨╕╨╜╤Л, ╨▓╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║╨╕'),(9,'╨Ь╤Г╨┤╤А╨╡╤Ж','╨Т╤Л ╨┐╨╛╤Б╨▓╤П╤В╨╕╨╗╨╕ ╤Б╨▓╨╛╤О ╨╢╨╕╨╖╨╜╤М ╨╕╨╖╤Г╤З╨╡╨╜╨╕╤О ╨╖╨╜╨░╨╜╨╕╨╣ ╨╕ ╨╕╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╨╜╨╕╨╣.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Р╤А╨║╨░╨╜╨░, ╨Ш╤Б╤В╨╛╤А╨╕╤П','тАФ','╨Ф╨▓╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','╨Ш╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤М: ╨▓╤Л ╨╖╨╜╨░╨╡╤В╨╡, ╨│╨┤╨╡ ╨╜╨░╨╣╤В╨╕ ╨╕╨╜╤Д╨╛╤А╨╝╨░╤Ж╨╕╤О ╨┐╨╛ ╨╕╨╜╤В╨╡╤А╨╡╤Б╤Г╤О╤Й╨╕╨╝ ╨▓╨░╤Б ╨▓╨╛╨┐╤А╨╛╤Б╨░╨╝.','╨С╤Г╤В╤Л╨╗╨╛╤З╨║╨░ ╤З╨╡╤А╨╜╨╕╨╗, ╨┐╨╕╤Б╤З╨╡╨╡ ╨┐╨╡╤А╨╛, ╨╜╨╛╨╢, ╨┐╨╕╤Б╤М╨╝╨╛ ╨╛╤В ╨║╨╛╨╗╨╗╨╡╨│╨╕ ╤Б ╨▓╨╛╨┐╤А╨╛╤Б╨╛╨╝, ╨║╨╛╨╝╨┐╨╗╨╡╨║╤В ╨╛╨┤╨╡╨╢╨┤╤Л, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 10 ╨╖╨╝','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В +2','Sage','╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║╨╕, ╤З╨░╤А╨╛╨┤╨╡╨╕'),(10,'╨Ь╨╛╤А╤П╨║','╨Т╤Л ╨┐╤А╨╛╨▓╨╡╨╗╨╕ ╨│╨╛╨┤╤Л, ╤А╨░╨▒╨╛╤В╨░╤П ╨╜╨░ ╨║╨╛╤А╨░╨▒╨╗╨╡ ╨╕ ╨╕╤Б╤Б╨╗╨╡╨┤╤Г╤П ╨╝╨╛╤А╤П.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Т╨╛╤Б╨┐╤А╨╕╤П╤В╨╕╨╡','╨Э╨░╨▓╨╕╨│╨░╤Ж╨╕╨╛╨╜╨╜╤Л╨╡ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л, ╨▓╨╛╨┤╨╜╤Л╨╡ ╤В╤А╨░╨╜╤Б╨┐╨╛╤А╤В╨╜╤Л╨╡ ╤Б╤А╨╡╨┤╤Б╤В╨▓╨░','тАФ','╨Я╨╗╨░╨▓╨░╨╜╨╕╨╡: ╨▓╤Л ╨╝╨╛╨╢╨╡╤В╨╡ ╨╜╨░╤Е╨╛╨┤╨╕╤В╤М ╤Б╨╡╨▒╨╡ ╤А╨░╨▒╨╛╤В╤Г ╨╜╨░ ╨║╨╛╤А╨░╨▒╨╗╤П╤Е ╨╕ ╨┤╨╛╨▒╨╕╤А╨░╤В╤М╤Б╤П ╨┤╨╛ ╨╜╤Г╨╢╨╜╤Л╤Е ╨╝╨╡╤Б╤В ╨┐╨╛ ╨▓╨╛╨┤╨╡.','╨Э╨░╨▒╨╛╤А ╨╛╨┤╨╡╨╢╨┤╤Л ╨╝╨╛╤А╤П╨║╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 10 ╨╖╨╝','╨б╨╕╨╗╨░ +1, ╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М +1','Sailor','╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В╤Л, ╨▓╨╛╨╕╨╜╤Л'),(11,'╨б╨╛╨╗╨┤╨░╤В','╨Т╤Л ╤Г╤З╨░╤Б╤В╨▓╨╛╨▓╨░╨╗╨╕ ╨▓ ╨▒╨╕╤В╨▓╨░╤Е ╨╕ ╤Б╤А╨░╨╢╨╡╨╜╨╕╤П╤Е, ╨╖╨░╨║╨░╨╗╨╕╨▓ ╤Б╨▓╨╛╨╣ ╤Е╨░╤А╨░╨║╤В╨╡╤А ╨╕ ╤В╨╡╨╗╨╛.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Ч╨░╨┐╤Г╨│╨╕╨▓╨░╨╜╨╕╨╡','╨Ю╨┤╨╕╨╜ ╨╕╨│╤А╨╛╨▓╨╛╨╣ ╨╜╨░╨▒╨╛╤А ╨╜╨░ ╨▓╤Л╨▒╨╛╤А, ╨╜╨░╨╖╨╡╨╝╨╜╤Л╨╡ ╤В╤А╨░╨╜╤Б╨┐╨╛╤А╤В╨╜╤Л╨╡ ╤Б╤А╨╡╨┤╤Б╤В╨▓╨░','тАФ','╨Т╨╛╨╡╨╜╨╜╨░╤П ╨┐╨╛╨┤╨│╨╛╤В╨╛╨▓╨║╨░: ╤Г ╨▓╨░╤Б ╨╡╤Б╤В╤М ╨░╤А╨╝╨╡╨╣╤Б╨║╨╕╨╣ ╨╛╨┐╤Л╤В, ╨┤╨╛╤Б╤В╤Г╨┐ ╨▓ ╨▓╨╛╨╡╨╜╨╜╤Л╨╡ ╨╗╨░╨│╨╡╤А╤П ╨╕ ╨╖╨╜╨░╨╜╨╕╨╡ ╨▓╨╛╨╡╨╜╨╜╤Л╤Е ╤В╨░╨║╤В╨╕╨║.','╨Э╨░╨▒╨╛╤А ╨╕╨│╤А╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╤Б╤В╨╡╨╣, ╨║╨╛╤Б╤В╤О╨╝ ╤Б╨╛╨╗╨┤╨░╤В╨░, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 10 ╨╖╨╝','╨б╨╕╨╗╨░ +2','Soldier','╨Т╨╛╨╕╨╜╤Л, ╨┐╨░╨╗╨░╨┤╨╕╨╜╤Л'),(12,'╨С╨╡╤Б╨┐╤А╨╕╨╖╨╛╤А╨╜╨╕╨║','╨Т╤Л ╨▓╤Л╤А╨╛╤Б╨╗╨╕ ╨╜╨░ ╤Г╨╗╨╕╤Ж╨░╤Е, ╨▓╤Л╨╢╨╕╨▓╨░╤П ╨╖╨░ ╤Б╤З╨╡╤В ╤Б╨╝╨╡╨║╨░╨╗╨║╨╕ ╨╕ ╨╗╨╛╨▓╨║╨╛╤Б╤В╨╕.',NULL,NULL,NULL,NULL,NULL,NULL,'╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М ╤А╤Г╨║, ╨Э╨╡╨╖╨░╨╝╨╡╤В╨╜╨╛╤Б╤В╤М','╨Т╨╛╤А╨╛╨▓╤Б╨║╨╕╨╡ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л, ╨╛╨┤╨╕╨╜ ╨╕╨│╤А╨╛╨▓╨╛╨╣ ╨╜╨░╨▒╨╛╤А ╨╜╨░ ╨▓╤Л╨▒╨╛╤А','тАФ','╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡ ╨╜╨░ ╤Г╨╗╨╕╤Ж╨╡: ╨▓╤Л ╨╗╨╡╨│╨║╨╛ ╨╜╨░╤Е╨╛╨┤╨╕╤В╨╡ ╤Г╨║╤А╤Л╤В╨╕╤П ╨╕ ╤Б╨┐╨╛╤Б╨╛╨▒╤Л ╨┤╨╛╨▒╤Л╤З╨╕ ╨┐╤А╨╛╨┐╨╕╤В╨░╨╜╨╕╤П.','╨Э╨░╨▒╨╛╤А ╤В╤С╨╝╨╜╨╛╨╣ ╨╛╨┤╨╡╨╢╨┤╤Л, ╨┐╨╛╤П╤Б╨╜╨╛╨╣ ╨║╨╛╤И╨╡╨╗╤М ╤Б 10 ╨╖╨╝','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М +2','Urchin','╨Я╨╗╤Г╤В╤Л, ╤Б╨╗╨╡╨┤╨╛╨┐╤Л╤В╤Л');
/*!40000 ALTER TABLE `backgrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_abilities`
--

DROP TABLE IF EXISTS `character_abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `character_id` int NOT NULL,
  `ability_id` int NOT NULL,
  `acquired_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `character_id` (`character_id`),
  KEY `ability_id` (`ability_id`),
  CONSTRAINT `character_abilities_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `character_abilities_ibfk_2` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_abilities`
--

LOCK TABLES `character_abilities` WRITE;
/*!40000 ALTER TABLE `character_abilities` DISABLE KEYS */;
INSERT INTO `character_abilities` VALUES (1,1,2,'2025-05-15 22:07:43'),(2,1,4,'2025-05-15 22:07:43'),(3,1,8,'2025-05-15 22:07:43');
/*!40000 ALTER TABLE `character_abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_skills`
--

DROP TABLE IF EXISTS `character_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_skills` (
  `character_id` int NOT NULL,
  `skill_id` int NOT NULL,
  PRIMARY KEY (`character_id`,`skill_id`),
  KEY `skill_id` (`skill_id`),
  CONSTRAINT `character_skills_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `character_skills_ibfk_2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_skills`
--

LOCK TABLES `character_skills` WRITE;
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
INSERT INTO `character_skills` VALUES (2,1),(1,5),(2,6),(1,7),(1,8),(1,10),(2,11),(1,14),(2,16);
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_spell`
--

DROP TABLE IF EXISTS `character_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_spell` (
  `character_id` int NOT NULL,
  `spell_id` int NOT NULL,
  PRIMARY KEY (`character_id`,`spell_id`),
  KEY `spell_id` (`spell_id`),
  CONSTRAINT `character_spell_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `character_spell_ibfk_2` FOREIGN KEY (`spell_id`) REFERENCES `spells` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_spell`
--

LOCK TABLES `character_spell` WRITE;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_stats`
--

DROP TABLE IF EXISTS `character_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `character_id` int DEFAULT NULL,
  `health` int DEFAULT NULL,
  `mana` int DEFAULT NULL,
  `armor_class` int DEFAULT NULL,
  `initiative` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `character_id` (`character_id`),
  CONSTRAINT `character_stats_ibfk_1` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_stats`
--

LOCK TABLES `character_stats` WRITE;
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `race_id` int DEFAULT NULL,
  `background_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  `weapon_id` int DEFAULT NULL,
  `armor_id` int DEFAULT NULL,
  `count_weapont` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `hitpoints` int DEFAULT NULL,
  `armor_class` int DEFAULT NULL,
  `initiative` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `intelligence` int DEFAULT NULL,
  `dexterity` int DEFAULT NULL,
  `constitution` int DEFAULT NULL,
  `wisdom` int DEFAULT NULL,
  `charisma` int DEFAULT NULL,
  `who_is` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `armor_id` (`armor_id`),
  KEY `weapon_id` (`weapon_id`),
  KEY `class_id` (`class_id`),
  KEY `background_id` (`background_id`),
  KEY `user_id` (`user_id`),
  KEY `race_id` (`race_id`),
  CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`armor_id`) REFERENCES `armors` (`id`),
  CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`),
  CONSTRAINT `characters_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `characters_ibfk_4` FOREIGN KEY (`background_id`) REFERENCES `backgrounds` (`id`),
  CONSTRAINT `characters_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `characters_ibfk_6` FOREIGN KEY (`race_id`) REFERENCES `races` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,1,'╨б╤В╤А╨░╨╜╨╜╨╕╨║',2,7,11,35,3,1,1,0,10,14,6,8,14,15,10,14,13,1),(2,2,'╨Ф╤Г╤А╨╕╨╜',4,11,3,22,10,1,1,0,12,16,2,16,9,14,15,13,11,1);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_abilities`
--

DROP TABLE IF EXISTS `class_abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `ability_id` int NOT NULL,
  `level_required` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ability_id` (`ability_id`),
  CONSTRAINT `class_abilities_ibfk_1` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_abilities`
--

LOCK TABLES `class_abilities` WRITE;
/*!40000 ALTER TABLE `class_abilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) DEFAULT NULL,
  `primary_stat` varchar(100) DEFAULT NULL,
  `save` varchar(100) DEFAULT NULL,
  `hit_dice` varchar(10) DEFAULT NULL,
  `hit_first_level` varchar(50) DEFAULT NULL,
  `equipment` text,
  `armor_proficiency` text,
  `weapon_proficiency` text,
  `tool_proficiency` text,
  `saving_throws` text,
  `skill_choices` text,
  `num_skills` int DEFAULT NULL,
  `spellcasting_ability` text,
  `spell_slots` text,
  `extra_attack` tinyint(1) DEFAULT NULL,
  `subclasses` text,
  `archetype_level` int DEFAULT NULL,
  `class_features` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'╨С╨░╤А╨┤','╨е╨░╤А╨╕╨╖╨╝╨░','dexterity or charism','8','8 + ╨╝╨╛╨┤╨╕╤Д╨╕╨║╨░╤В╨╛╤А ╨в╨╡╨╗╨╛╤Б╨╗╨╛╨╢╨╡╨╜╨╕╤П','тАв ╨░ ╤А╨░╨┐╨╕╤А╨░, ╨▒ ╨┤╨╗╨╕╨╜╨╜╤Л╨╣ ╨╝╨╡╤З ╨╕╨╗╨╕ ╨▓ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░) ╨╜╨░╨▒╨╛╤А ╨┤╨╕╨┐╨╗╨╛╨╝╨░╤В╨░ ╨╕╨╗╨╕ ╨▒) ╨╜╨░╨▒╨╛╤А ╨░╤А╤В╨╕╤Б╤В╨░\nтАв ╨░) ╨╗╤О╤В╨╜╤П ╨╕╨╗╨╕ ╨▒) ╨╗╤О╨▒╨╛╨╣ ╨┤╤А╤Г╨│╨╛╨╣ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В\nтАв ╨Ъ╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е ╨╕ ╨║╨╕╨╜╨╢╨░╨╗','╨Ы╤С╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡, ╨┤╨╗╨╕╨╜╨╜╤Л╨╡ ╨╝╨╡╤З╨╕, ╨║╨╛╤А╨╛╤В╨║╨╕╨╡ ╨╝╨╡╤З╨╕, ╤А╨░╨┐╨╕╤А╤Л, ╨░╤А╨▒╨░╨╗╨╡╤В╤Л (╤А╤Г╤З╨╜╤Л╨╡)','╨в╤А╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨░ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А',NULL,'╨Ы╤С╨│╨║╨╛╤Б╤В╤М ╤А╤Г╨║, ╨Ю╨▒╨╝╨░╨╜, ╨Т╤Л╤Б╤В╤Г╨┐╨╗╨╡╨╜╨╕╨╡, ╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨Р╤В╨╗╨╡╤В╨╕╨║╨░ ╨╕ ╨┤╤А.',3,'╨е╨░╤А╨╕╨╖╨╝╨░','╨Ф╨░',0,'╨Ъ╨╛╨╗╨╗╨╡╨┤╨╢╨╕ ╨▒╨░╤А╨┤╨╛╨▓',3,'╨Т╨┤╨╛╤Е╨╜╨╛╨▓╨╡╨╜╨╕╨╡ ╨С╨░╤А╨┤╨░, ╨Ь╨░╨│╨╕╤П ╨С╨░╤А╨┤╨░, ╨Ф╨╛╨┐╨╛╨╗╨╜╨╕╤В╨╡╨╗╤М╨╜╨╛╨╡ ╨Ь╨░╨│╨╕╤З╨╡╤Б╨║╨╛╨╡ ╨Т╨┤╨╛╤Е╨╜╨╛╨▓╨╡╨╜╨╕╨╡'),(2,'╨Т╨░╤А╨▓╨░╤А','╨б╨╕╨╗╨░','strength or constitution','12','12 + mod_strength','тАв ╨░ ╤Б╨╡╨║╨╕╤А╨░ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░ ╨┤╨▓╨░ ╤А╤Г╤З╨╜╤Л╤Е ╤В╨╛╨┐╨╛╤А╨░ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨Э╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░ ╨╕ ╤З╨╡╤В╤Л╤А╨╡ ╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╤Л╤Е ╨║╨╛╨┐╤М╤П','╨Ы╤С╨│╨║╨╕╨╣, ╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨й╨╕╤В╤Л','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╕ ╨Т╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡','╨Э╨╡╤В',NULL,'╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡, ╨Ч╨░╨┐╤Г╨│╨╕╨▓╨░╨╜╨╕╨╡ ╨╕ ╨┤╤А.',2,NULL,NULL,1,'╨Я╤Г╤В╨╕ ╨Т╨░╤А╨▓╨░╤А╨╛╨▓',3,'╨п╤А╨╛╤Б╤В╤М, ╨Э╨╡╨╕╤Б╤В╨╛╨▓╤Б╤В╨▓╨╛, ╨б╤В╨╛╨╣╨║╨╛╤Б╤В╤М'),(3,'╨Т╨╛╨╕╨╜','╨б╨╕╨╗╨░ ╨╕ ╨в╨╡╨╗╨╛╤Б╨╗╨╛╨╢╨╡╨╜╨╕╨╡','strength or constitution','10','10 + mod_strength','тАв ╨░ ╨║╨╛╨╗╤М╤З╤Г╨│╨░ ╨╕╨╗╨╕ ╨▒ ╨║╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨┤╨╗╨╕╨╜╨╜╤Л╨╣ ╨╗╤Г╨║ ╨╕ 20 ╤Б╤В╤А╨╡╨╗\nтАв ╨░ ╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨╕ ╤Й╨╕╤В ╨╕╨╗╨╕ ╨▒ ╨┤╨▓╨░ ╨▓╨╛╨╕╨╜╤Б╨║╨╕╤Е ╨╛╤А╤Г╨╢╨╕╤П\nтАв ╨░ ╨╗╤С╨│╨║╨╕╨╣ ╨░╤А╨▒╨░╨╗╨╡╤В ╨╕ 20 ╨▒╨╛╨╗╤В╨╛╨▓ ╨╕╨╗╨╕ ╨▒ ╨┤╨▓╨░ ╤А╤Г╤З╨╜╤Л╤Е ╤В╨╛╨┐╨╛╤А╨░\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╨┐╨╛╨┤╨╖╨╡╨╝╨╡╨╗╤М╤Й╨╕╨║╨░ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░','╨Т╤Б╨╡ ╨▓╨╕╨┤╤Л ╨┤╨╛╤Б╨┐╨╡╤Е╨╛╨▓, ╨й╨╕╤В╤Л','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╕ ╨Т╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡','╨Э╨╡╤В',NULL,'2: ╨Р╨║╤А╨╛╨▒╨░╤В╨╕╨║╨░, ╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Т╨╜╨╕╨╝╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡, ╨Ч╨░╨┐╤Г╨│╨╕╨▓╨░╨╜╨╕╨╡, ╨Ш╤Б╤В╨╛╤А╨╕╤П, ╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М,\n╨г╤Е╨╛╨┤ ╨╖╨░ ╨╢╨╕╨▓╨╛╤В╨╜╤Л╨╝╨╕',2,NULL,NULL,1,'╨Р╤А╤Е╨╡╤В╨╕╨┐╤Л ╨Т╨╛╨╕╨╜╨╛╨▓',3,'╨С╨╛╨╡╨▓╨╛╨╣ ╨б╤В╨╕╨╗╤М, ╨Т╤В╨╛╤А╨╛╨╡ ╨Ф╤Л╤Е╨░╨╜╨╕╨╡, ╨Ф╨╡╨╣╤Б╤В╨▓╨╕╨╡ ╨У╨╡╤А╨╛╤П'),(4,'╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В','intelligence or wisdom','6','6 + mod_strength','тАв ╨░ ╨┐╨╛╤Б╨╛╤Е ╨╕╨╗╨╕ ╨▒ ╨║╨╕╨╜╨╢╨░╨╗\nтАв ╨░ ╤Б╤Г╨╝╨║╨░ ╤Б ╨║╨╛╨╝╨┐╨╛╨╜╨╡╨╜╤В╨░╨╝╨╕ ╨╕╨╗╨╕ ╨▒ ╨╝╨░╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╤Д╨╛╨║╤Г╤Б\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╤Г╤З╤С╨╜╨╛╨│╨╛ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░\nтАв ╨Ъ╨╜╨╕╨│╨░ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣','╨Э╨╡╤В','╨Ъ╨╕╨╜╨╢╨░╨╗, ╨┤╤А╨╛╤В╨╕╨║, ╨┐╤А╨░╤Й╨░, ╨┐╨╛╤Б╨╛╤Е, ╨░╤А╨▒╨░╨╗╨╡╤В (╨╗╤С╨│╨║╨╕╨╣)','╨Э╨╡╤В',NULL,'╨Ь╨░╨│╨╕╤П, ╨Ш╤Б╤В╨╛╤А╨╕╤П, ╨Р╤А╨║╨░╨╜╨░, ╨а╨░╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╨╜╨╕╨╡ ╨╕ ╨┤╤А.',2,'╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В','╨Ф╨░',0,'╨и╨║╨╛╨╗╤Л ╨Ь╨░╨│╨╕╨╕',2,'╨Ъ╨╜╨╕╨│╨░ ╨Ч╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣, ╨Т╨╛╤Б╤Б╤В╨░╨╜╨╛╨▓╨╗╨╡╨╜╨╕╨╡ ╨Р╤А╨║╨░╨╜╤Л'),(5,'╨Ф╤А╤Г╨╕╨┤','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М','intelligence or wisdom','8','8 + mod_strength','тАв ╨░ ╨┤╨╡╤А╨╡╨▓╤П╨╜╨╜╤Л╨╣ ╤Й╨╕╤В ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░ ╤П╤В╨░╨│╨░╨╜ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨▒╨╗╨╕╨╢╨╜╨╡╨│╨╛ ╨▒╨╛╤П\nтАв ╨Ъ╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░ ╨╕ ╨┤╤А╤Г╨╕╨┤╨╕╤З╨╡╤Б╨║╨╕╨╣ ╤Д╨╛╨║╤Г╤Б','╨Ы╤С╨│╨║╨╕╨╣, ╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨й╨╕╤В╤Л (╨▒╨╡╨╖ ╨╝╨╡╤В╨░╨╗╨╗╨░)','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡, ╨┤╤Г╨▒╨╕╨╜╨░, ╨║╨╛╨┐╤М╤С, ╤Б╨╡╤А╨┐, ╨┐╤А╨░╤Й╨░','╨Ю╨┤╨╕╨╜ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨╜╨░ ╨▓╤Л╨▒╨╛╤А',NULL,'╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡, ╨Я╤А╨╕╤А╨╛╨┤╨░, ╨Ь╨╡╨┤╨╕╤Ж╨╕╨╜╨░ ╨╕ ╨┤╤А.',2,'╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М','╨Ф╨░',0,'╨Ъ╤А╤Г╨│╨╕ ╨Ф╤А╤Г╨╕╨┤╨╛╨▓',2,'╨Ф╨╕╨║╨░╤П ╨д╨╛╤А╨╝╨░, ╨Ь╨░╨│╨╕╤П ╨Ф╤А╤Г╨╕╨┤╨░'),(6,'╨Ц╤А╨╡╤Ж','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М','wisdom or charisma','8','8 + mod_strength','тАв ╨░ ╨▒╤Г╨╗╨░╨▓╨░ ╨╕╨╗╨╕ ╨▒ ╨▒╨╛╨╡╨▓╨╛╨╣ ╨╝╨╛╨╗╨╛╤В ╨╡╤Б╨╗╨╕ ╨▓╨╗╨░╨┤╨╡╨╡╤В╨╡\nтАв ╨░ ╨║╨╛╨╗╤М╤З╤Г╨│╨░, ╨▒ ╨║╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е ╨╕╨╗╨╕ ╨▓ ╨║╨╛╨╗╤М╤З╤Г╨╢╨╜╨░╤П ╤А╤Г╨▒╨░╤Е╨░\nтАв ╨░ ╨╗╤С╨│╨║╨╕╨╣ ╨░╤А╨▒╨░╨╗╨╡╤В ╨╕ 20 ╨▒╨╛╨╗╤В╨╛╨▓ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╤Б╨▓╤П╤Й╨╡╨╜╨╜╨╕╨║╨░ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░\nтАв ╨й╨╕╤В ╨╕ ╤Б╨▓╤П╤Й╨╡╨╜╨╜╤Л╨╣ ╤Б╨╕╨╝╨▓╨╛╨╗','╨б╤А╨╡╨┤╨╜╨╕╨╣, ╨Ы╤С╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨й╨╕╤В╤Л','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡','╨Э╨╡╤В',NULL,'╨а╨╡╨╗╨╕╨│╨╕╤П, ╨Ш╤Б╤В╨╛╤А╨╕╤П, ╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М ╨╕ ╨┤╤А.',2,'╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М','╨Ф╨░',0,'╨Ф╨╛╨╝╨╡╨╜╤Л ╨С╨╛╨╢╨╡╤Б╤В╨▓',1,'╨С╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╨╡ ╨Т╨┤╨╛╤Е╨╜╨╛╨▓╨╡╨╜╨╕╨╡, ╨Ь╨░╨│╨╕╤П ╨Ц╤А╨╡╤Ж╨░'),(7,'╨Ш╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╤М','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В','intelligence or dexterity','8','8 + mod_strength','тАв ╨░ ╨╗╤С╨│╨║╨╕╨╣ ╨░╤А╨▒╨░╨╗╨╡╤В ╨╕ 20 ╨▒╨╛╨╗╤В╨╛╨▓ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░ ╤Б╤Г╨╝╨║╨░ ╤Б ╨║╨╛╨╝╨┐╨╛╨╜╨╡╨╜╤В╨░╨╝╨╕ ╨╕╨╗╨╕ ╨▒ ╨╝╨░╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╤Д╨╛╨║╤Г╤Б\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╤Г╤З╤С╨╜╨╛╨│╨╛ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░\nтАв ╨Ъ╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨╕ ╨┤╨▓╨░ ╨║╨╕╨╜╨╢╨░╨╗╨░','╨Ы╤С╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡, ╨░╤А╨▒╨░╨╗╨╡╤В (╤А╤Г╤З╨╜╨╛╨╣), ╨╝╨╡╤З╨╕ (╨║╨╛╤А╨╛╤В╨║╨╕╨╡)','╨Ю╨┤╨╜╨╛ ╨╜╨░ ╨▓╤Л╨▒╨╛╤А',NULL,'╨Р╤А╨║╨░╨╜╨░, ╨Ш╤Б╤В╨╛╤А╨╕╤П, ╨Я╤А╨╕╤А╨╛╨┤╨░, ╨Ь╨╡╤Е╨░╨╜╨╕╨║╨░ ╨╕ ╨┤╤А.',2,'╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В','╨Ф╨░',0,'╨и╨║╨╛╨╗╤Л ╨Ш╨╖╨╛╨▒╤А╨╡╤В╨░╤В╨╡╨╗╨╡╨╣',2,'╨Ь╨░╨│╨╕╤З╨╡╤Б╨║╨░╤П ╨Ш╨╜╤Д╤Г╨╖╨╕╤П, ╨Ь╨╡╤Е╨░╨╜╨╕╤З╨╡╤Б╨║╨░╤П ╨С╤А╨╛╨╜╤П'),(8,'╨Ь╨╛╨╜╨░╤Е','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М ╨╕ ╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М','strength or dexterity','8','8 + mod_strength','тАв ╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╝╨╡╤З ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨▒╨╗╨╕╨╢╨╜╨╡╨│╨╛ ╨▒╨╛╤П\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨╕╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤П ╨┐╨╛╨┤╨╖╨╡╨╝╨╡╨╗╨╕╨╣\nтАв 10 ╨┤╤А╨╛╤В╨╕╨║╨╛╨▓','╨Э╨╡╤В','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡, ╨║╨╛╤А╨╛╤В╨║╨╕╨╡ ╨╝╨╡╤З╨╕','╨Ю╨┤╨╕╨╜ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨╜╨░ ╨▓╤Л╨▒╨╛╤А',NULL,'╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Т╨╜╨╕╨╝╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨Ш╤Б╤В╨╛╤А╨╕╤П ╨╕ ╨┤╤А.',2,NULL,NULL,1,'╨Я╤Г╤В╨╕ ╨Ь╨╛╨╜╨░╤Е╨╛╨▓',3,'╨С╨╡╨╖╨╛╤А╤Г╨╢╨╜╨░╤П ╨Р╤В╨░╨║╨░, ╨Ф╤Г╤Е╨╛╨▓╨╜╨░╤П ╨н╨╜╨╡╤А╨│╨╕╤П'),(9,'╨Я╨░╨╗╨░╨┤╨╕╨╜','╨б╨╕╨╗╨░ ╨╕ ╨е╨░╤А╨╕╨╖╨╝╨░','wisdom or charisma','10','10 + mod_strength','тАв ╨░ ╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨╕ ╤Й╨╕╤В ╨╕╨╗╨╕ ╨▒ ╨┤╨▓╨░ ╨▓╨╛╨╕╨╜╤Б╨║╨╕╤Е ╨╛╤А╤Г╨╢╨╕╤П\nтАв ╨░ ╨┐╤П╤В╤М ╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╤Л╤Е ╨║╨╛╨┐╨╕╨╣ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨▒╨╗╨╕╨╢╨╜╨╡╨│╨╛ ╨▒╨╛╤П\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╤Б╨▓╤П╤Й╨╡╨╜╨╜╨╕╨║╨░ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░\nтАв ╨Ъ╨╛╨╗╤М╤З╤Г╨│╨░ ╨╕ ╤Б╨▓╤П╤Й╨╡╨╜╨╜╤Л╨╣ ╤Б╨╕╨╝╨▓╨╛╨╗','╨Т╤Б╨╡ ╨┤╨╛╤Б╨┐╨╡╤Е╨╕, ╨й╨╕╤В╤Л','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╕ ╨Т╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡','╨Э╨╡╤В',NULL,'╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Ч╨░╨┐╤Г╨│╨╕╨▓╨░╨╜╨╕╨╡, ╨Т╨╜╨╕╨╝╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М ╨╕ ╨┤╤А.',2,'╨е╨░╤А╨╕╨╖╨╝╨░','╨Ф╨░',1,'╨Ю╤А╨┤╨╡╨╜╤Л ╨Я╨░╨╗╨░╨┤╨╕╨╜╨╛╨▓',3,'╨С╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨░╤П ╨п╤А╨╛╤Б╤В╤М, ╨Т╨╡╤А╨░ ╨▓ ╨Ю╤А╤Г╨╢╨╕╨╕'),(10,'╨Я╨╗╤Г╤В','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М','dexterity or charisma','8','8 + mod_strength','тАв ╨░ ╤А╨░╨┐╨╕╤А╨░ ╨╕╨╗╨╕ ╨▒ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╝╨╡╤З\nтАв ╨░ ╨╗╤Г╨║ ╨╕ 20 ╤Б╤В╤А╨╡╨╗ ╨╕╨╗╨╕ ╨▒ ╨║╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╝╨╡╤З\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╨▓╨╛╤А╨░, ╨▒ ╨╜╨░╨▒╨╛╤А ╨┤╨╕╨┐╨╗╨╛╨╝╨░╤В╨░ ╨╕╨╗╨╕ ╨▓ ╨╜╨░╨▒╨╛╤А ╨╕╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤П ╨┐╨╛╨┤╨╖╨╡╨╝╨╡╨╗╨╕╨╣\nтАв ╨Ъ╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨┤╨▓╨░ ╨║╨╕╨╜╨╢╨░╨╗╨░ ╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨▓╨╛╤А╨░','╨Ы╤С╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡, ╤А╨░╨┐╨╕╤А╤Л, ╨╝╨╡╤З╨╕ (╨║╨╛╤А╨╛╤В╨║╨╕╨╡), ╨░╤А╨▒╨░╨╗╨╡╤В (╤А╤Г╤З╨╜╨╛╨╣)','╨Ю╨┤╨╕╨╜ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨▓╨╛╤А╨╛╨▓',NULL,'╨Ю╨▒╨╝╨░╨╜, ╨Ы╤С╨│╨║╨╛╤Б╤В╤М ╨а╤Г╨║, ╨б╨║╤А╤Л╤В╨╜╨╛╤Б╤В╤М ╨╕ ╨┤╤А.',4,NULL,NULL,0,'╨Р╤А╤Е╨╡╤В╨╕╨┐╤Л ╨Я╨╗╤Г╤В╨╛╨▓',3,'╨б╨║╤А╤Л╤В╨░╤П ╨Р╤В╨░╨║╨░, ╨Т╨╛╤А╨╛╨▓╤Б╨║╨╕╨╡ ╨г╨╝╨╡╨╜╨╕╤П'),(11,'╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М ╨╕ ╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М','strength or dexterity','10','10 + mod_strength','тАв ╨░ ╤З╨╡╤И╤Г╨╣╤З╨░╤В╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е ╨╕╨╗╨╕ ╨▒ ╨║╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е\nтАв ╨░ ╨┤╨▓╨░ ╨║╨╛╤А╨╛╤В╨║╨╕╤Е ╨╝╨╡╤З╨░ ╨╕╨╗╨╕ ╨▒ ╨┤╨▓╨░ ╨┐╤А╨╛╤Б╤В╤Л╤Е ╨╛╤А╤Г╨╢╨╕╤П ╨▒╨╗╨╕╨╢╨╜╨╡╨│╨╛ ╨▒╨╛╤П\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╨╕╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤П ╨┐╨╛╨┤╨╖╨╡╨╝╨╡╨╗╨╕╨╣ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░\nтАв ╨Ф╨╗╨╕╨╜╨╜╤Л╨╣ ╨╗╤Г╨║ ╨╕ ╨║╨╛╨╗╤З╨░╨╜ ╤Б 20 ╤Б╤В╤А╨╡╨╗╨░╨╝╨╕','╨Ы╤С╨│╨║╨╕╨╣, ╨б╤А╨╡╨┤╨╜╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨й╨╕╤В╤Л','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╕ ╨Т╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡','╨Ю╨┤╨╕╨╜ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨╜╨░ ╨▓╤Л╨▒╨╛╤А',NULL,'3:\n╨Р╨╜╨░╨╗╨╕╨╖, ╨Р╤В╨╗╨╡╤В╨╕╨║╨░, ╨Т╨╜╨╕╨╝╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡,\n╨Я╤А╨╕╤А╨╛╨┤╨░, ╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М, ╨б╨║╤А╤Л╤В╨╜╨╛╤Б╤В╤М, ╨г╤Е╨╛╨┤ ╨╖╨░\n╨╢╨╕╨▓╨╛╤В╨╜╤Л╨╝╨╕',3,NULL,NULL,1,'╨Р╤А╤Е╨╡╤В╨╕╨┐╤Л ╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В╨╛╨▓',3,'╨Ш╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤М, ╨Ь╨░╨│╨╕╤П ╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В╨░'),(12,'╨з╨░╤А╨╛╨┤╨╡╨╣','╨е╨░╤А╨╕╨╖╨╝╨░','charisma or constitution','6','6 + mod_strength','тАв ╨░ ╨╗╤С╨│╨║╨╕╨╣ ╨░╤А╨▒╨░╨╗╨╡╤В ╨╕ 20 ╨▒╨╛╨╗╤В╨╛╨▓ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░ ╤Б╤Г╨╝╨║╨░ ╤Б ╨║╨╛╨╝╨┐╨╛╨╜╨╡╨╜╤В╨░╨╝╨╕ ╨╕╨╗╨╕ ╨▒ ╨╝╨░╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╤Д╨╛╨║╤Г╤Б\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╨╕╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤П ╨┐╨╛╨┤╨╖╨╡╨╝╨╡╨╗╨╕╨╣ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╨░\nтАв ╨Ф╨▓╨░ ╨║╨╕╨╜╨╢╨░╨╗╨░','╨Э╨╡╤В','╨Ъ╨╕╨╜╨╢╨░╨╗, ╨┤╤А╨╛╤В╨╕╨║, ╨┐╨╛╤Б╨╛╤Е, ╨░╤А╨▒╨░╨╗╨╡╤В (╨╗╤С╨│╨║╨╕╨╣)','╨Э╨╡╤В',NULL,'╨Ю╨▒╨╝╨░╨╜, ╨Ь╨░╨│╨╕╤П, ╨Т╨╜╨╕╨╝╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М ╨╕ ╨┤╤А.',2,'╨е╨░╤А╨╕╨╖╨╝╨░','╨Ф╨░',0,'╨Ы╨╕╨╜╨╕╨╕ ╨з╨░╤А╨╛╨┤╨╡╨╡╨▓',1,'╨Ь╨░╨│╨╕╤З╨╡╤Б╨║╨░╤П ╨б╤Г╤Й╨╜╨╛╤Б╤В╤М, ╨Ь╨╡╤В╨░-╨Ь╨░╨│╨╕╤П'),(13,'╨з╤С╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║','╨е╨░╤А╨╕╨╖╨╝╨░','charisma or constitution','8','8 + mod_strength','тАв ╨░ ╨╗╤С╨│╨║╨╕╨╣ ╨░╤А╨▒╨░╨╗╨╡╤В ╨╕ 20 ╨▒╨╛╨╗╤В╨╛╨▓ ╨╕╨╗╨╕ ╨▒ ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡\nтАв ╨░ ╤Б╤Г╨╝╨║╨░ ╤Б ╨║╨╛╨╝╨┐╨╛╨╜╨╡╨╜╤В╨░╨╝╨╕ ╨╕╨╗╨╕ ╨▒ ╨╝╨░╨│╨╕╤З╨╡╤Б╨║╨╕╨╣ ╤Д╨╛╨║╤Г╤Б\nтАв ╨░ ╨╜╨░╨▒╨╛╤А ╤Г╤З╤С╨╜╨╛╨│╨╛ ╨╕╨╗╨╕ ╨▒ ╨╜╨░╨▒╨╛╤А ╨╕╤Б╤Б╨╗╨╡╨┤╨╛╨▓╨░╤В╨╡╨╗╤П ╨┐╨╛╨┤╨╖╨╡╨╝╨╡╨╗╨╕╨╣\nтАв ╨Ъ╨╛╨╢╨░╨╜╤Л╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е, ╨╗╤О╨▒╨╛╨╡ ╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡ ╨╕ ╨┤╨▓╨░ ╨║╨╕╨╜╨╢╨░╨╗╨░','╨Ы╤С╨│╨║╨╕╨╣ ╨┤╨╛╤Б╨┐╨╡╤Е','╨Я╤А╨╛╤Б╤В╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡','╨Э╨╡╤В',NULL,'╨Ш╤Б╤В╨╛╤А╨╕╤П, ╨Ч╨░╨┐╤Г╨│╨╕╨▓╨░╨╜╨╕╨╡, ╨Ь╨░╨│╨╕╤П ╨╕ ╨┤╤А.',2,'╨е╨░╤А╨╕╨╖╨╝╨░','╨Ф╨░',0,'╨Я╨░╨║╤В╤Л ╨з╤С╤А╨╜╨╛╨║╨╜╨╕╨╢╨╜╨╕╨║╨╛╨▓',1,'╨Ь╨░╨│╨╕╤П ╨Я╨╛╨║╤А╨╛╨▓╨╕╤В╨╡╨╗╤П, ╨в╤С╨╝╨╜╤Л╨╡ ╨Ф╨░╤А╤Л');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_object` varchar(50) DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'╨Р╨▒╨░╨║','2 ╨╖╨╝','2','╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨┤╨╗╤П ╨╝╨░╤В╨╡╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╕╤Е ╨▓╤Л╤З╨╕╤Б╨╗╨╡╨╜╨╕╨╣'),(2,'╨Р╨╗╤Е╨╕╨╝╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╛╨│╨╛╨╜╤М (╤Д╨╗╤П╨│╨░)','50 ╨╖╨╝','1','╨Ч╨░╨╢╨╕╨│╨░╨╡╤В╤Б╤П ╨┐╤А╨╕ ╨║╨╛╨╜╤В╨░╨║╤В╨╡ ╤Б ╨▓╨╛╨╖╨┤╤Г╤Е╨╛╨╝. ╨Ь╨╛╨╢╨╜╨╛ ╨╝╨╡╤В╨╜╤Г╤В╤М ╨╜╨░ 20 ╤Д╤Г╤В╨╛╨▓, ╨╜╨░╨╜╨╛╤Б╤П 1d4 ╤Г╤А╨╛╨╜╨░ ╨╛╨│╨╜╤С╨╝ ╨▓ ╤В╨╡╤З╨╡╨╜╨╕╨╡ 2 ╤Е╨╛╨┤╨╛╨▓.'),(3,'╨С╨╗╨╛╨║ ╨╕ ╨╗╨╡╨▒╤С╨┤╨║╨░','1 ╨╖╨╝','5','╨Я╨╛╨╖╨▓╨╛╨╗╤П╨╡╤В ╨┐╨╛╨┤╨╜╤П╤В╤М ╨▓ 4 ╤А╨░╨╖╨░ ╨▒╨╛╨╗╤М╤И╨╡ ╨▓╨╡╤Б╨░'),(4,'╨С╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╤Л (╨Р╤А╨▒╨░╨╗╨╡╤В╨╜╤Л╨╡ ╨▒╨╛╨╗╤В╤Л, 20 ╤И╤В.)','1 ╨╖╨╝','1.5','20 ╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╨╛╨▓ ╨┤╨╗╤П ╨░╤А╨▒╨░╨╗╨╡╤В╨░'),(5,'╨С╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╤Л (╨Ш╨│╨╗╤Л ╨┤╨╗╤П ╨┤╤Г╤Е╨╛╨▓╨╛╨╣ ╤В╤А╤Г╨▒╨║╨╕, 50 ╤И╤В.)','1 ╨╖╨╝','1','50 ╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╨╛╨▓ ╨┤╨╗╤П ╨┤╤Г╤Е╨╛╨▓╨╛╨╣ ╤В╤А╤Г╨▒╨║╨╕'),(6,'╨С╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╤Л (╨б╨╜╨░╤А╤П╨┤╤Л ╨┤╨╗╤П ╨┐╤А╨░╤Й╨╕, 20 ╤И╤В.)','4 ╨╝╨╝','1.5','20 ╨║╨░╨╝╨╜╨╡╨╣ ╨┤╨╗╤П ╨┐╤А╨░╤Й╨╕'),(7,'╨С╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╤Л (╨б╤В╤А╨╡╨╗╤Л, 20 ╤И╤В.)','1 ╨╖╨╝','1','20 ╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б╨╛╨▓ ╨┤╨╗╤П ╨╗╤Г╨║╨░'),(8,'╨С╨╛╤З╨║╨░','2 ╨╖╨╝','70','╨Ф╨╡╤А╨╡╨▓╤П╨╜╨╜╨░╤П ╤С╨╝╨║╨╛╤Б╤В╤М ╨┤╨╗╤П ╤Е╤А╨░╨╜╨╡╨╜╨╕╤П ╨╢╨╕╨┤╨║╨╛╤Б╤В╨╡╨╣'),(9,'╨С╤Г╨╝╨░╨│╨░ (1 ╨╗╨╕╤Б╤В)','2 ╤Б╨╝','0','╨Ю╨┤╨╕╨╜ ╨╗╨╕╤Б╤В ╨▒╤Г╨╝╨░╨│╨╕'),(10,'╨С╤Г╤А╨┤╤О╨║','2 ╤Б╨╝','5','╨Б╨╝╨║╨╛╤Б╤В╤М ╨┤╨╗╤П ╨▓╨╛╨┤╤Л, ╨▓╨╡╤Б ╤Г╨║╨░╨╖╨░╨╜ ╨▓ ╨┐╨╛╨╗╨╜╨╛╨╝ ╤Б╨╛╤Б╤В╨╛╤П╨╜╨╕╨╕'),(11,'╨С╤Г╤В╤Л╨╗╨║╨░ ╤Б╤В╨╡╨║╨╗╤П╨╜╨╜╨░╤П','2 ╨╖╨╝','2','╨б╤В╨╡╨║╨╗╤П╨╜╨╜╨░╤П ╨▒╤Г╤В╤Л╨╗╨║╨░ ╨┤╨╗╤П ╨╢╨╕╨┤╨║╨╛╤Б╤В╨╡╨╣'),(12,'╨Т╨╡╨┤╤А╨╛','5 ╨╝╨╝','2','╨Ф╨╡╤А╨╡╨▓╤П╨╜╨╜╨╛╨╡ ╨▓╨╡╨┤╤А╨╛'),(13,'╨Т╨╡╤А╤С╨▓╨║╨░, ╨┐╨╡╨╜╤М╨║╨╛╨▓╨░╤П (50 ╤Д╤Г╤В╨╛╨▓)','1 ╨╖╨╝','10','╨Я╤А╨╛╤З╨╜╨░╤П ╨▓╨╡╤А╤С╨▓╨║╨░, ╨╕╨╝╨╡╨╡╤В 2 ╤Е╨╕╤В╨░, ╤А╨░╨╖╤А╤Л╨▓╨░╨╡╤В╤Б╤П ╨┐╤А╨╕ ╨┐╤А╨╛╨▓╨╡╤А╨║╨╡ ╨б╨╕╨╗╤Л (╨б╨╗ 17)'),(14,'╨Т╨╡╤А╤С╨▓╨║╨░, ╤И╤С╨╗╨║╨╛╨▓╨░╤П (50 ╤Д╤Г╤В╨╛╨▓)','10 ╨╖╨╝','5','╨Я╤А╨╛╤З╨╜╨░╤П, ╨╜╨╛ ╨╗╤С╨│╨║╨░╤П ╨▓╨╡╤А╤С╨▓╨║╨░, ╨╕╨╝╨╡╨╡╤В 2 ╤Е╨╕╤В╨░'),(15,'╨Т╨╡╤Б╤Л ╤В╨╛╤А╨│╨╛╨▓╤Л╨╡','5 ╨╖╨╝','3','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╨▓╨╖╨▓╨╡╤И╨╕╨▓╨░╤В╤М ╨╝╨╡╨╗╨║╨╕╨╡ ╨┐╤А╨╡╨┤╨╝╨╡╤В╤Л, ╨▓╨║╨╗╤О╤З╨░╤П ╨┤╤А╨░╨│╨╛╤Ж╨╡╨╜╨╜╤Л╨╡ ╨╝╨╡╤В╨░╨╗╨╗╤Л'),(16,'╨Т╨╛╤Б╨║','5 ╤Б╨╝','0','╨Ь╨░╤В╨╡╤А╨╕╨░╨╗ ╨┤╨╗╤П ╨┐╨╡╤З╨░╤В╨╡╨╣ ╨╕╨╗╨╕ ╤Б╨▓╨╡╤З╨╡╨╣'),(17,'╨У╨╛╤А╤И╨╛╨║ ╨╢╨╡╨╗╨╡╨╖╨╜╤Л╨╣','2 ╨╖╨╝','10','╨Ь╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨║╨╛╤В╨╡╨╗╨╛╨║ ╨┤╨╗╤П ╨┐╤А╨╕╨│╨╛╤В╨╛╨▓╨╗╨╡╨╜╨╕╤П ╨┐╨╕╤Й╨╕'),(18,'╨Ф╤Г╤Е╨╕ (╤Д╨╗╨░╨║╨╛╨╜)','5 ╨╖╨╝','0','╨д╨╗╨░╨║╨╛╨╜ ╤Б ╨░╤А╨╛╨╝╨░╤В╨╜╨╛╨╣ ╨╢╨╕╨┤╨║╨╛╤Б╤В╤М╤О'),(19,'╨Ч╨░╨╝╨╛╨║','10 ╨╖╨╝','1','╨Ь╨╛╨╢╨╜╨╛ ╨▓╤Б╨║╤А╤Л╤В╤М ╨┐╤А╨╛╨▓╨╡╤А╨║╨╛╨╣ ╨Ы╨╛╨▓╨║╨╛╤Б╤В╨╕ (╨б╨╗ 15) ╨╕╨╗╨╕ ╨║╨╗╤О╤З╨╛╨╝'),(20,'╨Ч╨╡╨╗╤М╨╡ ╨╗╨╡╤З╨╡╨╜╨╕╤П','50 ╨╖╨╝','0.5','╨Т╤Л╨┐╨╕╨▓╤И╨╕╨╣ ╨▓╨╛╤Б╤Б╤В╨░╨╜╨░╨▓╨╗╨╕╨▓╨░╨╡╤В 2╨║4+2 ╤Е╨╕╤В╨░'),(21,'╨Ч╨╡╤А╨║╨░╨╗╨╛ ╤Б╤В╨░╨╗╤М╨╜╨╛╨╡','5 ╨╖╨╝','0.5','╨Ю╤В╤А╨░╨╢╨░╨╡╤В ╨╕╨╖╨╛╨▒╤А╨░╨╢╨╡╨╜╨╕╨╡, ╤Г╤Б╤В╨╛╨╣╤З╨╕╨▓╨╛ ╨║ ╤Г╨┤╨░╤А╨░╨╝'),(22,'╨Ъ╨░╨╗╤В╤А╨╛╨┐╤Л (20 ╤И╤В.)','1 ╨╖╨╝','2','╨а╨░╤Б╤Б╤Л╨┐╨░╨▓ ╨╜╨░ 5├Ч5 ╤Д╤Г╤В╨╛╨▓, ╨╝╨╛╨╢╨╜╨╛ ╨╛╤Б╤В╨░╨╜╨╛╨▓╨╕╤В╤М ╨┐╤А╨╛╤В╨╕╨▓╨╜╨╕╨║╨░'),(23,'╨Ъ╨░╨╜╨┤╨░╨╗╤Л','2 ╨╖╨╝','6','╨Ь╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨╕╨╡ ╨╛╨║╨╛╨▓╤Л ╨┤╨╗╤П ╨┐╨╗╨╡╨╜╨╜╨╕╨║╨╛╨▓. ╨Я╤А╨╛╨▓╨╡╤А╨║╨░ ╨б╨╕╨╗╤Л (╨б╨╗ 20) ╨┤╨╗╤П ╤А╨░╨╖╤А╤Л╨▓╨░'),(24,'╨Ъ╨╕╤А╨║╨░ ╨│╨╛╤А╨╜╤П╤Ж╨║╨░╤П','2 ╨╖╨╝','10','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╨╡╤В╤Б╤П ╨┤╨╗╤П ╨┤╨╛╨▒╤Л╤З╨╕ ╤А╤Г╨┤╤Л ╨╕ ╨║╨░╨╝╨╜╤П'),(25,'╨Ъ╨╕╤Б╨╗╨╛╤В╨░ (╤Д╨╗╨░╨║╨╛╨╜)','25 ╨╖╨╝','1','╨Ь╨╛╨╢╨╜╨╛ ╨▓╤Л╨┐╨╗╨╡╤Б╨╜╤Г╤В╤М ╨╕╨╗╨╕ ╨╝╨╡╤В╨╜╤Г╤В╤М ╨╜╨░ 20 ╤Д╤Г╤В╨╛╨▓, ╨╜╨░╨╜╨╛╤Б╤П 2╨║6 ╤Г╤А╨╛╨╜╨░ ╨║╨╕╤Б╨╗╨╛╤В╨╛╨╣'),(26,'╨Ъ╨╜╨╕╨│╨░','25 ╨╖╨╝','5','╨Ь╨╛╨╢╨╡╤В ╤Б╨╛╨┤╨╡╤А╨╢╨░╤В╤М ╤В╨╡╨║╤Б╤В╤Л, ╨╖╨░╨┐╨╕╤Б╨╕, ╨┤╨╕╨░╨│╤А╨░╨╝╨╝╤Л'),(27,'╨Ъ╨╜╨╕╨│╨░ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣','50 ╨╖╨╝','3','╨Э╨╡╨╛╨▒╤Е╨╛╨┤╨╕╨╝╨░ ╨▓╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║╨░╨╝ ╨┤╨╗╤П ╨╖╨░╨┐╨╕╤Б╨╕ ╨╖╨░╨║╨╗╨╕╨╜╨░╨╜╨╕╨╣'),(28,'╨Ъ╨╛╨╗╨╛╨║╨╛╨╗╤М╤З╨╕╨║','1 ╨╖╨╝','0','╨Ч╨▓╨╡╨╜╨╕╤В ╨┐╤А╨╕ ╨┤╨▓╨╕╨╢╨╡╨╜╨╕╨╕'),(29,'╨Ъ╨╛╨╗╤З╨░╨╜','1 ╨╖╨╝','1','╨Т╨╝╨╡╤Й╨░╨╡╤В 20 ╤Б╤В╤А╨╡╨╗'),(30,'╨Ъ╨╛╨╝╨┐╨╗╨╡╨║╤В ╨┤╨╗╤П ╨╗╨░╨╖╨░╨╜╨╕╤П','25 ╨╖╨╝','12','╨Т╨║╨╗╤О╤З╨░╨╡╤В ╤И╨╗╤П╨╝╨▒╤Г╤А╤Л, ╨▓╨╡╤А╤С╨▓╨║╨╕ ╨╕ ╤Б╤В╤А╨░╤Е╨╛╨▓╨╛╤З╨╜╤Л╨╡ ╨┐╤А╨╕╤Б╨┐╨╛╤Б╨╛╨▒╨╗╨╡╨╜╨╕╤П'),(31,'╨Ъ╨╛╨╝╨┐╨╗╨╡╨║╤В ╨┤╨╗╤П ╤А╤Л╨▒╨░╨╗╨║╨╕','1 ╨╖╨╝','4','╨Т╨║╨╗╤О╤З╨░╨╡╤В ╤Г╨┤╨╛╤З╨║╤Г, ╨║╤А╤О╤З╨║╨╕, ╨╗╨╡╤Б╨║╤Г ╨╕ ╨│╤А╤Г╨╖╨╕╨╗╨░'),(32,'╨Ъ╨╛╨╝╨┐╨╗╨╡╨║╤В ╤Ж╨╡╨╗╨╕╤В╨╡╨╗╤П','5 ╨╖╨╝','3','╨Я╨╛╨╖╨▓╨╛╨╗╤П╨╡╤В ╤Б╤В╨░╨▒╨╕╨╗╨╕╨╖╨╕╤А╨╛╨▓╨░╤В╤М ╤Г╨╝╨╕╤А╨░╤О╤Й╨╡╨│╨╛ ╨▒╨╡╨╖ ╨┐╤А╨╛╨▓╨╡╤А╨║╨╕ ╨Ь╨╡╨┤╨╕╤Ж╨╕╨╜╤Л'),(33,'╨Ъ╨╛╨╜╤В╨╡╨╣╨╜╨╡╤А ╨┤╨╗╤П ╨░╤А╨▒╨░╨╗╨╡╤В╨╜╤Л╤Е ╨▒╨╛╨╗╤В╨╛╨▓','1 ╨╖╨╝','1','╨Т╨╝╨╡╤Й╨░╨╡╤В 20 ╨░╤А╨▒╨░╨╗╨╡╤В╨╜╤Л╤Е ╨▒╨╛╨╗╤В╨╛╨▓'),(34,'╨Ъ╨╛╨╜╤В╨╡╨╣╨╜╨╡╤А ╨┤╨╗╤П ╨║╨░╤А╤В ╨╕ ╤Б╨▓╨╕╤В╨║╨╛╨▓','1 ╨╖╨╝','1','╨ж╨╕╨╗╨╕╨╜╨┤╤А╨╕╤З╨╡╤Б╨║╨╕╨╣ ╤В╤Г╨▒╤Г╤Б ╨┤╨╗╤П ╤Е╤А╨░╨╜╨╡╨╜╨╕╤П ╨▒╤Г╨╝╨░╨│'),(35,'╨Ъ╤А╤О╨║-╨║╨╛╤И╨║╨░','2 ╨╖╨╝','4','╨Я╨╛╨╖╨▓╨╛╨╗╤П╨╡╤В ╤Ж╨╡╨┐╨╗╤П╤В╤М╤Б╤П ╨╖╨░ ╨▓╤Л╤Б╤В╤Г╨┐╤Л ╨┐╤А╨╕ ╨┐╨╛╨┤╤К╤С╨╝╨╡'),(36,'╨Ы╨░╨╝╨┐╨░','5 ╤Б╨╝','1','╨Ф╨░╤С╤В ╤Б╨▓╨╡╤В ╨╜╨░ 15 ╤Д╤Г╤В╨╛╨▓ ╨▓ ╤В╨╡╤З╨╡╨╜╨╕╨╡ 6 ╤З╨░╤Б╨╛╨▓ ╨╜╨░ 1 ╨┐╨╕╨╜╤В╨╡ ╨╝╨░╤Б╨╗╨░'),(37,'╨Ы╨╛╨╝╨╕╨║','2 ╨╖╨╝','5','╨Я╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛ ╨║ ╨┐╤А╨╛╨▓╨╡╤А╨║╨░╨╝ ╨б╨╕╨╗╤Л ╨╜╨░ ╨▓╨╖╨╗╨╛╨╝'),(38,'╨Ы╨╛╨┐╨░╤В╨░','2 ╨╖╨╝','5','╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨┤╨╗╤П ╨║╨╛╨┐╨░╨╜╨╕╤П'),(39,'╨Ь╨░╤Б╨╗╨╛ (╤Д╨╗╤П╨│╨░)','1 ╤Б╨╝','1','╨У╨╛╤А╨╕╤В 2 ╤А╨░╤Г╨╜╨┤╨░, ╨╜╨░╨╜╨╛╤Б╤П 5 ╤Г╤А╨╛╨╜╨░ ╨╛╨│╨╜╤С╨╝'),(40,'╨Ь╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨╕╨╡ ╤И╨░╤А╨╕╨║╨╕ (1000 ╤И╤В.)','1 ╨╖╨╝','2','╨а╨░╤Б╤Б╤Л╨┐╨░╨▓ ╤И╨░╤А╨╕╨║╨╕, ╨╝╨╛╨╢╨╜╨╛ ╨▓╤Л╨╖╨▓╨░╤В╤М ╨┐╨░╨┤╨╡╨╜╨╕╨╡ ╨┐╤А╨╛╤В╨╕╨▓╨╜╨╕╨║╨╛╨▓'),(41,'╨Ь╨╡╤И╨╛╨║','1 ╨╝╨╝','0.5','╨в╨║╨░╨╜╨╡╨▓╤Л╨╣ ╨╝╨╡╤И╨╛╨║'),(42,'╨Ь╨╛╨╗╨╛╤В ╨║╤Г╨╖╨╜╨╡╤З╨╜╤Л╨╣','2 ╨╖╨╝','10','╨в╤П╨╢╤С╨╗╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╨┤╨╗╤П ╨║╤Г╨╖╨╜╨╡╤З╨╜╨╛╨│╨╛ ╨┤╨╡╨╗╨░'),(43,'╨Ю╨┤╨╡╨╢╨┤╨░ ╨┤╨╛╤А╨╛╨╢╨╜╨░╤П','2 ╨╖╨╝','4','╨Я╤А╨╛╤Б╤В╨░╤П ╨╛╨┤╨╡╨╢╨┤╨░ ╨┤╨╗╤П ╨┐╤Г╤В╨╡╤И╨╡╤Б╤В╨▓╨╕╨╣'),(44,'╨Ю╤Е╨╛╤В╨╜╨╕╤З╨╕╨╣ ╨║╨░╨┐╨║╨░╨╜','5 ╨╖╨╝','25','╨Р╨║╤В╨╕╨▓╨╕╤А╤Г╨╡╤В╤Б╤П ╨┐╤А╨╕ ╨╜╨░╤Б╤В╤Г╨┐╨╗╨╡╨╜╨╕╨╕, ╤Г╨┤╨╡╤А╨╢╨╕╨▓╨░╤П ╨╢╨╡╤А╤В╨▓╤Г'),(45,'╨Я╨░╨╗╨░╤В╨║╨░ (╨┤╨▓╤Г╤Е╨╝╨╡╤Б╤В╨╜╨░╤П)','2 ╨╖╨╝','20','╨Я╨░╨╗╨░╤В╨║╨░ ╨╕╨╖ ╨┐╨░╤А╤Г╤Б╨╕╨╜╤Л ╨┤╨╗╤П 2 ╤З╨╡╨╗╨╛╨▓╨╡╨║'),(46,'╨Я╨╡╤А╨│╨░╨╝╨╡╨╜╤В (1 ╨╗╨╕╤Б╤В)','1 ╤Б╨╝','0','╨Ы╨╕╤Б╤В ╨┤╨╗╤П ╨╖╨░╨┐╨╕╤Б╨╡╨╣'),(47,'╨Я╨╕╤Б╤З╨╡╨╡ ╨┐╨╡╤А╨╛','2 ╨╝╨╝','0','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╨╡╤В╤Б╤П ╨┤╨╗╤П ╨┐╨╕╤Б╤М╨╝╨░'),(48,'╨Я╨╛╨┤╨╖╨╛╤А╨╜╨░╤П ╤В╤А╤Г╨▒╨░','1000 ╨╖╨╝','1','╨г╨▓╨╡╨╗╨╕╤З╨╕╨▓╨░╨╡╤В ╨╛╨▒╤К╨╡╨║╤В╤Л ╨▓ 2 ╤А╨░╨╖╨░'),(49,'╨Я╤А╨╛╤В╨╕╨▓╨╛╤П╨┤╨╕╨╡ (╤Д╨╗╨░╨║╨╛╨╜)','50 ╨╖╨╝','0','╨Ф╨╡╨╣╤Б╤В╨▓╤Г╨╡╤В 1 ╤З╨░╤Б, ╨┤╨░╤С╤В ╤Б╨╛╨┐╤А╨╛╤В╨╕╨▓╨╗╨╡╨╜╨╕╨╡ ╤П╨┤╨░╨╝'),(50,'╨а╤О╨║╨╖╨░╨║','2 ╨╖╨╝','5','╨Я╨╛╨╖╨▓╨╛╨╗╤П╨╡╤В ╨╜╨╡╤Б╤В╨╕ ╨▒╨╛╨╗╤М╤И╨╡ ╨┐╤А╨╡╨┤╨╝╨╡╤В╨╛╨▓'),(51,'╨б╨▓╤П╤В╨░╤П ╨▓╨╛╨┤╨░ (╤Д╨╗╤П╨│╨░)','25 ╨╖╨╝','1','╨Э╨░╨╜╨╛╤Б╨╕╤В 2╨║6 ╤Г╤А╨╛╨╜╨░ ╨╕╨╖╨╗╤Г╤З╨╡╨╜╨╕╨╡╨╝ ╨╜╨╡╨╢╨╕╤В╨╕ ╨╕ ╨╕╨╖╨▓╨╡╤А╨│╨░╨╝'),(52,'╨д╨░╨║╨╡╨╗','1 ╨╝╨╝','1','╨У╨╛╤А╨╕╤В 1 ╤З╨░╤Б, ╨┤╨░╨▓╨░╤П ╤П╤А╨║╨╕╨╣ ╤Б╨▓╨╡╤В ╨╜╨░ 20 ╤Д╤Г╤В╨╛╨▓'),(53,'╨д╨╛╨╜╨░╤А╤М ╨╖╨░╨║╤А╤Л╤В╤Л╨╣','5 ╨╖╨╝','2','╨б╨▓╨╡╤В╨╕╤В ╨╜╨░ 30 ╤Д╤Г╤В╨╛╨▓, ╨╝╨╛╨╢╨╜╨╛ ╨╖╨░╨║╤А╤Л╤В╤М'),(54,'╨д╨╛╨╜╨░╤А╤М ╨╜╨░╨┐╤А╨░╨▓╨╗╨╡╨╜╨╜╤Л╨╣','10 ╨╖╨╝','2','╨б╨▓╨╡╤В╨╕╤В ╨║╨╛╨╜╤Г╤Б╨╛╨╝ ╨╜╨░ 60 ╤Д╤Г╤В╨╛╨▓'),(55,'╨ж╨╡╨┐╤М (10 ╤Д╤Г╤В╨╛╨▓)','5 ╨╖╨╝','10','╨Я╤А╨╛╤З╨╜╨░╤П ╤Ж╨╡╨┐╤М, ╤А╨░╨╖╤А╤Л╨▓╨░╨╡╤В╤Б╤П ╨┐╤А╨╕ ╨┐╤А╨╛╨▓╨╡╤А╨║╨╡ ╨б╨╕╨╗╤Л (╨б╨╗ 20)'),(56,'╨п╨┤ ╨┐╤А╨╛╤Б╤В╨╛╨╣ (╤Д╨╗╨░╨║╨╛╨╜)','100 ╨╖╨╝','0','╨Э╨░╨╜╨╛╤Б╨╕╤В 1╨║4 ╤Г╤А╨╛╨╜╨░ ╤П╨┤╨╛╨╝ ╨┐╤А╨╕ ╨┐╨╛╨┐╨░╨┤╨░╨╜╨╕╨╕ ╨╛╤А╤Г╨╢╨╕╨╡╨╝');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL,
  `name_item` varchar(50) DEFAULT NULL,
  `description` text,
  `item_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_abilities`
--

DROP TABLE IF EXISTS `monster_abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `monster_id` int NOT NULL,
  `ability_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `monster_id` (`monster_id`),
  KEY `ability_id` (`ability_id`),
  CONSTRAINT `monster_abilities_ibfk_1` FOREIGN KEY (`monster_id`) REFERENCES `monsters` (`id`),
  CONSTRAINT `monster_abilities_ibfk_2` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_abilities`
--

LOCK TABLES `monster_abilities` WRITE;
/*!40000 ALTER TABLE `monster_abilities` DISABLE KEYS */;
INSERT INTO `monster_abilities` VALUES (1,19,44),(2,19,45),(3,19,46);
/*!40000 ALTER TABLE `monster_abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_attacks`
--

DROP TABLE IF EXISTS `monster_attacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_attacks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_monster` int DEFAULT NULL,
  `id_attack` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_monster` (`id_monster`),
  KEY `id_attack` (`id_attack`),
  CONSTRAINT `monster_attacks_ibfk_1` FOREIGN KEY (`id_monster`) REFERENCES `monsters` (`id`),
  CONSTRAINT `monster_attacks_ibfk_2` FOREIGN KEY (`id_attack`) REFERENCES `attacks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_attacks`
--

LOCK TABLES `monster_attacks` WRITE;
/*!40000 ALTER TABLE `monster_attacks` DISABLE KEYS */;
INSERT INTO `monster_attacks` VALUES (1,19,1);
/*!40000 ALTER TABLE `monster_attacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsters`
--

DROP TABLE IF EXISTS `monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monsters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `size` varchar(15) DEFAULT NULL,
  `type_monster` varchar(25) DEFAULT NULL,
  `main_attacks_or_abilities` text,
  `worldview` varchar(30) DEFAULT NULL,
  `armor_class` int DEFAULT NULL,
  `hitpoints` int DEFAULT NULL,
  `danger` float DEFAULT NULL,
  `initiative` int DEFAULT NULL,
  `strength` int DEFAULT NULL,
  `intelligence` int DEFAULT NULL,
  `dexterity` int DEFAULT NULL,
  `constitution` int DEFAULT NULL,
  `wisdom` int DEFAULT NULL,
  `charisma` int DEFAULT NULL,
  `attack_descriptions` text,
  `speed` varchar(50) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `proficiency_bonus` int DEFAULT NULL,
  `who_is` int DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsters`
--

LOCK TABLES `monsters` WRITE;
/*!40000 ALTER TABLE `monsters` DISABLE KEYS */;
INSERT INTO `monsters` VALUES (1,'╨Р╨╗╤М╨╝╨╕╤А╨░╨╢','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨а╨╛╨│╨╛╨▓╨░╤П ╨░╤В╨░╨║╨░','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',13,3,0,NULL,2,2,15,10,12,10,NULL,'30 ╤Д╤В.','тАФ',2,2),(2,'╨Р╨╕╤Б╤В','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨Ъ╨╗╤О╨▓','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,3,0,NULL,6,2,16,8,14,5,NULL,'0 ╤Д╤В., ╨┐╨╛╨╗╤С╤В 60 ╤Д╤В.','тАФ',2,2),(3,'╨С╨░╨▒╨╛╤З╨║╨░','╨Ъ╤А╨╛╤И╨╡╤З╨╜╤Л╨╣','╨Ч╨▓╨╡╤А╤М','тАФ','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,1,0,NULL,2,1,14,10,10,2,NULL,'10 ╤Д╤В., ╨┐╨╛╨╗╤С╤В 20 ╤Д╤В.','тАФ',2,2),(4,'╨С╨░╨╜╨┤╨╡╤А╨╗╨╛╨│','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,3,0,NULL,8,4,14,10,12,6,NULL,'30 ╤Д╤В.','тАФ',2,2),(5,'╨С╨╡╤Б╨║╤А╤Л╨╗╤Л╨╣ ╨┤╤А╨░╨║╨╛╨╜╤З╨╕╨║','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨Ф╤А╨░╨║╨╛╨╜','╨г╨║╤Г╤Б','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',14,7,0,NULL,6,4,16,13,12,6,NULL,'30 ╤Д╤В.','╨Ф╤А╨░╨║╨╛╨╜╨╕╨╣',2,2),(6,'╨Т╨╛╤А╨╛╨▒╨╡╨╣','╨Ъ╤А╨╛╤И╨╡╤З╨╜╤Л╨╣','╨Ч╨▓╨╡╤А╤М','╨Ъ╨╗╤О╨▓','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,1,0,NULL,2,1,14,10,10,2,NULL,'10 ╤Д╤В., ╨┐╨╛╨╗╤С╤В 40 ╤Д╤В.','тАФ',2,2),(7,'╨У╨╡╨║╨║╨╛╨╜','╨Ъ╤А╨╛╤И╨╡╤З╨╜╤Л╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,1,0,NULL,2,1,14,10,10,2,NULL,'20 ╤Д╤В., ╨╗╨░╨╖╨░╨╜╨╕╨╡ 20 ╤Д╤В.','тАФ',2,2),(8,'╨Ц╨░╨▒╨░','╨Ъ╤А╨╛╤И╨╡╤З╨╜╤Л╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',11,1,0,NULL,1,1,13,8,8,3,NULL,'20 ╤Д╤В., ╨┐╨╗╨░╨▓╨░╨╜╨╕╨╡ 20 ╤Д╤В.','тАФ',2,2),(9,'╨Ч╨░╤П╤Ж','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',13,2,0,NULL,2,2,15,10,12,10,NULL,'30 ╤Д╤В.','тАФ',2,2),(10,'╨Ъ╨╛╤И╨║╨░','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨Ъ╨╛╨│╤В╨╕','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,2,0,NULL,3,3,15,10,12,7,NULL,'40 ╤Д╤В.','тАФ',2,2),(11,'╨С╨░╨╜╨┤╨╕╤В╤Б╨║╨╕╨╣ ╨│╨╗╨░╨▓╨░╤А╤М','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨б╨░╨▒╨╗╤П, ╨░╤А╨▒╨░╨╗╨╡╤В','╨Ы╤О╨▒╨╛╨╡',15,65,1,NULL,14,10,14,12,11,10,NULL,'30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(12,'╨У╨╛╨▒╨╗╨╕╨╜-╨▓╨╛╨╢╨░╨║','╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ъ╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╝╨╡╤З, ╨╗╤Г╨║','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',17,27,1,NULL,12,10,15,12,10,8,NULL,'30 ╤Д╤В.','╨У╨╛╨▒╨╗╨╕╨╜╤Б╨║╨╕╨╣, ╨Ю╨▒╤Й╨╕╨╣',2,2),(13,'╨Т╨╛╨╗╨║','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б, ╤Б╨▒╨╕╨▓╨░╨╜╨╕╨╡ ╤Б ╨╜╨╛╨│','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',13,11,0.25,NULL,12,3,15,12,12,6,NULL,'40 ╤Д╤В.','тАФ',2,2),(14,'╨У╨╕╨│╨░╨╜╤В╤Б╨║╨╕╨╣ ╨┐╨░╤Г╨║','╨С╨╛╨╗╤М╤И╨╛╨╣','╨з╤Г╨┤╨╛╨▓╨╕╤Й╨╡','╨г╨║╤Г╤Б (╤П╨┤), ╨┐╨░╤Г╤В╨╕╨╜╨░','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',14,26,1,NULL,14,2,16,12,11,4,NULL,'30 ╤Д╤В., ╨╗╨░╨╖╨░╨╜╨╕╨╡ 30 ╤Д╤В.','тАФ',2,2),(15,'╨У╨╜╨╛╨╗╨╗','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ъ╨╛╨┐╤М╤С, ╨╗╤Г╨║','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',15,22,0.5,NULL,14,6,12,11,10,7,NULL,'30 ╤Д╤В.','╨У╨╜╨╛╨╗╨╗',2,2),(16,'╨б╨║╨╡╨╗╨╡╤В','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Э╨╡╨╢╨╕╤В╤М','╨Ъ╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╝╨╡╤З, ╨╗╤Г╨║','╨Ч╨░╨║╨╛╨╜╨╛╨┐╨╛╤Б╨╗╤Г╤И╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',13,13,0.25,NULL,10,6,14,15,8,5,NULL,'30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(17,'╨Ч╨╛╨╝╨▒╨╕','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Э╨╡╨╢╨╕╤В╤М','╨У╨╜╨╕╤О╤Й╨╕╨╡ ╤А╤Г╨║╨╕','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',8,22,0.25,NULL,13,3,6,16,6,5,NULL,'20 ╤Д╤В.','тАФ',2,2),(18,'╨е╨╛╨▒╨│╨╛╨▒╨╗╨╕╨╜','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ф╨╗╨╕╨╜╨╜╤Л╨╣ ╨╝╨╡╤З, ╨╗╤Г╨║','╨Ч╨░╨║╨╛╨╜╨╛╨┐╨╛╤Б╨╗╤Г╤И╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',18,11,0.5,NULL,13,10,12,14,10,9,NULL,'30 ╤Д╤В.','╨У╨╛╨▒╨╗╨╕╨╜╤Б╨║╨╕╨╣, ╨Ю╨▒╤Й╨╕╨╣',2,2),(19,'╨в╨╡╨╜╤М','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Э╨╡╨╢╨╕╤В╤М','╨Ъ╨░╤Б╨░╨╜╨╕╨╡ ╨╢╨╕╨╖╨╜╨╡╨╜╨╜╨╛╨╣ ╤Н╨╜╨╡╤А╨│╨╕╨╕','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',12,16,0.5,7,6,6,14,13,10,8,NULL,'40 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(20,'╨Ю╨│╤А-╤Б╤В╤А╨░╨╢╨╜╨╕╨║','╨С╨╛╨╗╤М╤И╨╛╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ф╤Г╨▒╨╕╨╜╨░','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',11,59,2,NULL,19,5,8,16,7,7,NULL,'40 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣, ╨Т╨╡╨╗╨╕╨║╨░╨╜╤Б╨║╨╕╨╣',2,2),(21,'╨С╨╡╤А╤Б╨╡╤А╨║','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨С╨╛╨╡╨▓╨╛╨╣ ╤В╨╛╨┐╨╛╤А','╨Ы╤О╨▒╨╛╨╡',13,67,2,NULL,16,9,12,17,11,9,NULL,'30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(22,'╨У╨░╤А╨┐╨╕╤П','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨з╤Г╨┤╨╛╨▓╨╕╤Й╨╡','╨Ъ╨╛╨│╤В╨╕, ╨╝╨░╨│╨╕╤П ╨┐╨╡╨╜╨╕╤П','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',11,38,2,NULL,12,7,13,12,10,13,NULL,'20 ╤Д╤В., ╨┐╨╛╨╗╤С╤В 40 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(23,'╨У╨╕╨│╨░╨╜╤В╤Б╨║╨░╤П ╨╝╨╜╨╛╨│╨╛╨╜╨╛╨╢╨║╨░','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б (╤П╨┤)','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',13,22,2,NULL,14,2,16,12,10,6,NULL,'40 ╤Д╤В.','тАФ',2,2),(24,'╨У╨╕╨│╨░╨╜╤В╤Б╨║╨░╤П ╨╖╨╝╨╡╤П','╨С╨╛╨╗╤М╤И╨╛╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б, ╤Б╨╢╨░╤В╨╕╨╡','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,60,2,NULL,19,2,14,15,10,3,NULL,'30 ╤Д╤В.','тАФ',2,2),(25,'╨У╨╕╨│╨░╨╜╤В╤Б╨║╨░╤П ╨╢╨░╨▒╨░','╨С╨╛╨╗╤М╤И╨╛╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б, ╨┐╤А╨╛╨│╨╗╨░╤В╤Л╨▓╨░╨╜╨╕╨╡','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',13,52,2,NULL,15,2,13,13,10,3,NULL,'20 ╤Д╤В., ╨┐╨╗╨░╨▓╨░╨╜╨╕╨╡ 40 ╤Д╤В.','тАФ',2,2),(26,'╨У╨╜╨╛╨╗╨╗-╨╛╤Е╨╛╤В╨╜╨╕╨║','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ы╤Г╨║, ╨║╨╛╨┐╤М╤С','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',14,33,2,NULL,14,6,12,11,10,7,NULL,'30 ╤Д╤В.','╨У╨╜╨╛╨╗╨╗',2,2),(27,'╨Ь╤Г╨╝╨╕╤Д╨╕╤Ж╨╕╤А╨╛╨▓╨░╨╜╨╜╤Л╨╣ ╨▓╨╛╨╕╨╜','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Э╨╡╨╢╨╕╤В╤М','╨Ъ╤Г╨╗╨░╨║, ╨┐╤А╨╛╨║╨╗╤П╤В╤М╨╡','╨Ч╨░╨║╨╛╨╜╨╛╨┐╨╛╤Б╨╗╤Г╤И╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',15,58,2,NULL,16,6,8,15,10,12,NULL,'20 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(28,'╨Ю╨│╤А','╨С╨╛╨╗╤М╤И╨╛╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ф╤Г╨▒╨╕╨╜╨░','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',11,59,2,NULL,19,5,8,16,7,7,NULL,'40 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣, ╨Т╨╡╨╗╨╕╨║╨░╨╜╤Б╨║╨╕╨╣',2,2),(29,'╨б╨░╨▒╨╗╨╡╨╖╤Г╨▒╤Л╨╣ ╤В╨╕╨│╤А','╨С╨╛╨╗╤М╤И╨╛╨╣','╨Ч╨▓╨╡╤А╤М','╨г╨║╤Г╤Б, ╤А╤Л╨▓╨╛╨║','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',12,52,2,NULL,18,3,14,15,12,8,NULL,'40 ╤Д╤В.','тАФ',2,2),(30,'╨Т╨╕╨▓╨╡╤А╨╜╨░','╨С╨╛╨╗╤М╤И╨╛╨╣','╨Ф╤А╨░╨║╨╛╨╜','╨Ъ╨╛╨│╤В╨╕, ╤Г╨║╤Г╤Б, ╤П╨┤','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',13,110,2,NULL,19,5,10,16,12,6,NULL,'20 ╤Д╤В., ╨┐╨╛╨╗╤С╤В 80 ╤Д╤В.','╨Ф╤А╨░╨║╨╛╨╜╨╕╨╣',2,2),(31,'╨У╨╜╨╛╨╗╨╗-╨║╨╗╤Л╨║╨░╤А╤М','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ъ╨╛╨┐╤М╤С, ╨║╨╗╤Л╨║╨╕','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',15,65,3,NULL,16,8,12,14,10,9,NULL,'30 ╤Д╤В.','╨У╨╜╨╛╨╗╨╗',2,2),(32,'╨У╤А╨╛╨╝╨╕╨╗╨░','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ф╨▓╤Г╤А╤Г╤З╨╜╤Л╨╣ ╨╝╨╛╨╗╨╛╤В','╨Ы╤О╨▒╨╛╨╡',16,84,3,NULL,18,10,12,16,12,10,NULL,'30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(33,'╨Ч╨╡╨╗╤С╨╜╤Л╨╣ ╨┤╤А╨░╨║╨╛╨╜ (╨╝╨╛╨╗╨╛╨┤╨╛╨╣)','╨С╨╛╨╗╤М╤И╨╛╨╣','╨Ф╤А╨░╨║╨╛╨╜','╨Ъ╨╛╨│╤В╨╕, ╤Г╨║╤Г╤Б, ╨┤╤Л╤Е╨░╨╜╨╕╨╡ ╤П╨┤╨╛╨╝','╨Ч╨░╨║╨╛╨╜╨╛╨┐╨╛╤Б╨╗╤Г╤И╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',18,136,3,NULL,19,14,12,17,13,17,NULL,'30 ╤Д╤В., ╨┐╨╛╨╗╤С╤В 60 ╤Д╤В., ╨┐╨╗╨░╨▓╨░╨╜╨╕╨╡ 30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣, ╨Ф╤А╨░╨║╨╛╨╜╨╕╨╣',2,2),(34,'╨Ъ╨░╨╝╨╡╨╜╨╜╤Л╨╣ ╨│╨╛╨╗╨╡╨╝','╨С╨╛╨╗╤М╤И╨╛╨╣','╨Ъ╨╛╨╜╤Б╤В╤А╤Г╨║╤В','╨г╨┤╨░╤А, ╨┐╤А╨╛╤З╨╜╨╛╤Б╤В╤М','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',17,90,3,NULL,20,3,9,18,11,1,NULL,'30 ╤Д╤В.','тАФ',2,2),(35,'╨Ъ╨╛╤Б╤В╤П╨╜╨╛╨╣ ╨┤╤М╤П╨▓╨╛╨╗','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨Ш╤Б╤З╨░╨┤╨╕╨╡','╨Ъ╨╛╨│╤В╨╕, ╤И╨╕╨┐╨░╤Б╤В╤Л╨╣ ╤Е╨▓╨╛╤Б╤В','╨Ч╨░╨║╨╛╨╜╨╛╨┐╨╛╤Б╨╗╤Г╤И╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',16,85,3,NULL,18,9,14,16,12,10,NULL,'30 ╤Д╤В.','╨Р╨┤╤Б╨║╨╕╨╣, ╨Ф╤А╨╡╨▓╨╜╨╕╨╣',2,2),(36,'╨Ы╨╡╨┤╤П╨╜╨╛╨╣ ╨│╨╕╨│╨░╨╜╤В','╨Ю╨│╤А╨╛╨╝╨╜╤Л╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ф╨▓╤Г╤А╤Г╤З╨╜╤Л╨╣ ╤В╨╛╨┐╨╛╤А','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',15,138,3,NULL,21,9,10,18,12,11,NULL,'40 ╤Д╤В.','╨У╨╕╨│╨░╨╜╤В╤Б╨║╨╕╨╣',2,2),(37,'╨Ь╨╕╨╜╤В╨░╨▓╤А','╨б╤А╨╡╨┤╨╜╨╕╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨С╨╛╨╡╨▓╨╛╨╣ ╤В╨╛╨┐╨╛╤А, ╤А╨╛╨│╨░','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',14,76,3,NULL,18,6,11,16,10,9,NULL,'40 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣, ╨Ь╨╕╨╜╨╛╤В╨░╨▓╤А╤Б╨║╨╕╨╣',2,2),(38,'╨Ю╨│╨╜╨╡╨╜╨╜╤Л╨╣ ╤Н╨╗╨╡╨╝╨╡╨╜╤В╨░╨╗╤М','╨С╨╛╨╗╤М╤И╨╛╨╣','╨н╨╗╨╡╨╝╨╡╨╜╤В╨░╨╗╤М','╨Ю╨│╨╜╨╡╨╜╨╜╤Л╨╣ ╤Г╨┤╨░╤А, ╨│╨╛╤А╨╡╨╜╨╕╨╡','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',13,102,3,NULL,14,6,17,16,10,7,NULL,'50 ╤Д╤В.','╨Я╨╡╤А╨▓╨╕╤З╨╜╤Л╨╣',2,2),(39,'╨в╤А╨╛╨╗╨╗╤М','╨С╨╛╨╗╤М╤И╨╛╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ъ╨╛╨│╤В╨╕, ╤Г╨║╤Г╤Б','╨е╨░╨╛╤В╨╕╤З╨╜╤Л╨╣ ╨╖╨╗╨╛╨╣',15,84,3,NULL,18,7,13,20,9,7,NULL,'30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣',2,2),(40,'╨з╤С╤А╨╜╤Л╨╣ ╨╝╨╡╨┤╨▓╨╡╨┤╤М-╨╛╨▒╨╛╤А╨╛╤В╨╡╨╜╤М','╨С╨╛╨╗╤М╤И╨╛╨╣','╨У╤Г╨╝╨░╨╜╨╛╨╕╨┤','╨Ъ╨╛╨│╤В╨╕, ╤Г╨║╤Г╤Б','╨Э╨╡╨╣╤В╤А╨░╨╗╤М╨╜╤Л╨╣',15,110,3,NULL,19,10,14,17,11,12,NULL,'30 ╤Д╤В.','╨Ю╨▒╤Й╨╕╨╣, ╨Ю╨▒╨╛╤А╨╛╤В╨╜╨╕╤З╨╡╤Б╨║╨╕╨╣',2,2);
/*!40000 ALTER TABLE `monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `races` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_race` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `speed` int DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `strength_value` int DEFAULT NULL,
  `dexterity_value` int DEFAULT NULL,
  `constitution_value` int DEFAULT NULL,
  `intelligence_value` int DEFAULT NULL,
  `wisdom_value` int DEFAULT NULL,
  `charisma_value` int DEFAULT NULL,
  `name_example` text,
  `age` int DEFAULT NULL,
  `worldview` varchar(100) DEFAULT NULL,
  `features` text,
  `darkvision` int DEFAULT NULL,
  `resistances` text,
  `vulnerabilities` text,
  `favored_classes` text,
  `size_modifier` int DEFAULT NULL,
  `average_weight` varchar(20) DEFAULT NULL,
  `average_height` varchar(20) DEFAULT NULL,
  `speed_modifiers` text,
  `special_movement` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,'╨з╨╡╨╗╨╛╨▓╨╡╨║','╨Ю╨▒╤Й╨╕╨╣, any language',30,'╨б╤А╨╡╨┤╨╜╨╕╨╣',1,1,1,1,1,1,'╨Р╨╜╨┤╤А╨╡╨╣, ╨Т╨╕╨║╤В╨╛╤А, ╨Ф╨╝╨╕╤В╤А╨╕╨╣, ╨Ш╨▓╨░╨╜, ╨Ь╨╕╤Е╨░╨╕╨╗, ╨Ю╨╗╤М╨│╨░, ╨Х╨║╨░╤В╨╡╤А╨╕╨╜╨░, ╨в╨░╤В╤М╤П╨╜╨░, ╨Х╨╗╨╡╨╜╨░, ╨Ь╨░╤А╨╕╤П',100,'╨╗╤О╨▒╨╛╨╡','╨Р╨┤╨░╨┐╤В╨╕╨▓╨╜╨╛╤Б╤В╤М, ╨Ф╨╛╨┐╨╛╨╗╨╜╨╕╤В╨╡╨╗╤М╨╜╤Л╨╣ ╤П╨╖╤Л╨║',NULL,NULL,NULL,'╨Ы╤О╨▒╨╛╨╣ ╨║╨╗╨░╤Б╤Б',0,'60-90 ╨║╨│','160-190 ╤Б╨╝',NULL,NULL),(2,'╨н╨╗╤М╤Д','╨Ю╨▒╤Й╨╕╨╣, ╨н╨╗╤М╤Д╨╕╨╣╤Б╨║╨╕╨╣',30,'╨б╤А╨╡╨┤╨╜╨╕╨╣',0,2,0,0,0,0,'╨Р╤Н╤А╨┤╤А╨╕, ╨Ъ╨╛╤А╨╕╨╛╨╗╨╕╤Б, ╨Ы╨╛╤А╨╕╤Н╨╜, ╨д╨░╤Н╤А╤Г╨╜, ╨Ы╨╕╨░╨▓╨╡╨╜╨░, ╨н╨╗╨░╨╜╨╕╤Н╨╗╤М, ╨Ь╨╕╤А╤М╨╡╨╗╤М, ╨б╨╕╤А╨╕╨╜╨░',750,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╤Е╨░╨╛╤В╨╕╤З╨╜╨╛-╨┤╨╛╨▒╤А╨╛╨╡','╨в╤С╨╝╨╜╨╛╨╡ ╨╖╤А╨╡╨╜╨╕╨╡, ╨Ф╨╛╨╗╨│╨░╤П ╨╢╨╕╨╖╨╜╤М, ╨г╤Б╤В╨╛╨╣╤З╨╕╨▓╨╛╤Б╤В╤М ╨║ ╨╝╨░╨│╨╕╨╕',60,NULL,'╨Ю╤З╨░╤А╨╛╨▓╨░╨╜╨╕╨╡','╨Ы╤Г╤З╨╜╨╕╨║, ╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В, ╨з╨░╤А╨╛╨┤╨╡╨╣',0,'55-75 ╨║╨│','165-195 ╤Б╨╝',NULL,NULL),(3,'╨Я╨╛╨╗╤Г╤А╨╛╤Б╨╗╨╕╨║','╨Ю╨▒╤Й╨╕╨╣, ╨е╨░╨╗╤Д╨╗╨╕╨╜╨│╤Б╨║╨╕╨╣',25,'╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣',0,2,0,0,0,0,'╨С╨╕╨╗╤М╨▒╨╛, ╨д╤А╨╛╨┤╨╛, ╨Ь╨╡╤А╤А╨╕, ╨Я╨╕╨┐╨┐╨╕╨╜, ╨а╨╛╨╖╨╕, ╨б╨░╨╝, ╨в╨╛╨╝╨░╤Б, ╨Ы╨╕╨╗╨╕, ╨н╨╝╨╕╨╗╨╕╤П',250,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╨┤╨╛╨▒╤А╤Л╨╣','╨г╨┤╨░╤З╨╗╨╕╨▓╨╛╤Б╤В╤М, ╨С╨╡╤Б╤Б╤В╤А╨░╤И╨╕╨╡, ╨Я╤А╨╛╨▓╨╛╤А╨╜╨╛╤Б╤В╤М',NULL,NULL,NULL,'╨Я╨╗╤Г╤В, ╨С╨░╤А╨┤',-2,'35-45 ╨║╨│','90-120 ╤Б╨╝',NULL,NULL),(4,'╨Ф╨▓╨░╤А╤Д','╨Ю╨▒╤Й╨╕╨╣, ╨Ф╨▓╨░╤А╤Д╨╕╨╣╤Б╨║╨╕╨╣',25,'╨б╤А╨╡╨┤╨╜╨╕╨╣',2,0,2,0,0,0,'╨С╨░╨╗╨╕╨╜, ╨Ф╤Г╤А╨╕╨╜, ╨д╨░╤А╨╕╨╜, ╨У╨╕╨╝╨╗╨╕, ╨в╤А╨░╨╕╨╜, ╨в╨╛╤А╨╕╨╜, ╨Ю╨╣╨╜, ╨У╨╗╨╛╨╕╨╜, ╨Ф╨▓╨░╨╗╨╕',350,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╨╖╨░╨║╨╛╨╜╨╜╨╛-╨┤╨╛╨▒╤А╨╛╨╡','╨в╤С╨╝╨╜╨╛╨╡ ╨╖╤А╨╡╨╜╨╕╨╡, ╨г╤Б╤В╨╛╨╣╤З╨╕╨▓╨╛╤Б╤В╤М ╨║ ╤П╨┤╨░╨╝, ╨Ч╨╜╨░╨╜╨╕╨╡ ╨║╨░╨╝╨╜╤П',60,'╨п╨┤',NULL,'╨Т╨╛╨╕╨╜, ╨Я╨░╨╗╨░╨┤╨╕╨╜',0,'75-100 ╨║╨│','130-150 ╤Б╨╝','╨Ш╨│╨╜╨╛╤А╨╕╤А╤Г╨╡╤В ╤И╤В╤А╨░╤Д ╨╛╤В ╤В╤П╨╢╤С╨╗╨╛╨╣ ╨▒╤А╨╛╨╜╨╕',NULL),(5,'╨У╨╜╨╛╨╝','╨Ю╨▒╤Й╨╕╨╣, ╨У╨╜╨╛╨╝╨╕╨╣',25,'╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣',0,0,0,2,0,0,'╨Р╨╗╤М╨▓╨╕╨╜, ╨С╨╡╨╗╨▓╨╕╨╜, ╨Ф╨╛╤А╨▓╨╕╨╜, ╨н╨╗╨▓╨╕╨╜, ╨д╨╕╨╜╨▒╨░╤А, ╨У╨╕╨╗╨╝╨╛╤А, ╨е╨░╤А╨▓╨╕╨╜, ╨Щ╨╛╤А╨▓╨╕╨╜',500,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╨┤╨╛╨▒╤А╤Л╨╣','╨в╤С╨╝╨╜╨╛╨╡ ╨╖╤А╨╡╨╜╨╕╨╡, ╨У╨╜╨╛╨╝╤М╤П ╤Б╨╝╨╡╨║╨░╨╗╨║╨░',60,NULL,NULL,'╨з╨░╤А╨╛╨┤╨╡╨╣, ╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║',-2,'35-50 ╨║╨│','90-120 ╤Б╨╝',NULL,NULL),(6,'╨У╨╛╨╗╨╕╨░╤Д','╨Ю╨▒╤Й╨╕╨╣, ╨У╨╛╨╗╨╕╨░╤Д╤Б╨║╨╕╨╣',30,'╨Ъ╤А╤Г╨┐╨╜╤Л╨╣',2,0,1,0,0,0,'╨Р╨║╨░╤Е╨╛, ╨С╨░╤А╤А╤Г╨╝, ╨Ф╤А╤Г╤Г╨╝, ╨Ъ╨░╨░╤А, ╨Э╨░╨│╤А╨╛╨║, ╨в╨╛╤А╨░╨╗',80,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╨╜╨╡╨╣╤В╤А╨░╨╗╤М╨╜╨╛╨╡','╨Ь╨╛╨│╤Г╤Й╨╡╤Б╤В╨▓╨╛ ╨│╨╛╤А, ╨Ъ╨░╨╝╨╡╨╜╨╜╨░╤П ╤Б╤В╨╛╨╣╨║╨╛╤Б╤В╤М',NULL,NULL,NULL,'╨Т╨╛╨╕╨╜, ╨Т╨░╤А╨▓╨░╤А',2,'100-150 ╨║╨│','200-250 ╤Б╨╝',NULL,NULL),(7,'╨Я╨╛╨╗╤Г╤Н╨╗╤М╤Д','╨Ю╨▒╤Й╨╕╨╣, ╨н╨╗╤М╤Д╨╕╨╣╤Б╨║╨╕╨╣, any language',30,'╨б╤А╨╡╨┤╨╜╨╕╨╣',0,1,0,1,0,2,'╨Р╨╜╨┤╤А╨╕╨╜, ╨С╨╡╨╗╨╗╨╛╤А, ╨Ъ╨░╨╣╤А╨╕╤Б, ╨Ы╨╕╤А╨╡╨╗╤М, ╨Ю╤А╨╡╨╗╤М, ╨б╨╡╨╗╨╕╨╜',180,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╨╜╨╡╨╣╤В╤А╨░╨╗╤М╨╜╨╛╨╡','╨в╤С╨╝╨╜╨╛╨╡ ╨╖╤А╨╡╨╜╨╕╨╡, ╨Э╨░╤Б╨╗╨╡╨┤╨╕╨╡ ╨┤╨▓╤Г╤Е ╨╝╨╕╤А╨╛╨▓',60,NULL,NULL,'╨С╨░╤А╨┤, ╨з╨░╤А╨╛╨┤╨╡╨╣',0,'55-85 ╨║╨│','160-190 ╤Б╨╝',NULL,NULL),(8,'╨в╨░╨▒╨░╨║╤Б╨╕','╨Ю╨▒╤Й╨╕╨╣',30,'╨б╤А╨╡╨┤╨╜╨╕╨╣',0,2,0,0,0,1,'╨С╤Л╤Б╤В╤А╨░╤П ╨в╨╡╨╜╤М, ╨Ю╤Б╤В╤А╨╛╨╡ ╨Ъ╨╛╨┐╤М╨╡, ╨Ы╤Г╨╜╨╜╨░╤П ╨Ы╨░╨┐╨░, ╨Ч╨╗╨░╤В╨╛╨│╨╗╨░╨╖, ╨Я╨╡╤Б╤З╨░╨╜╤Л╨╣ ╨Ю╤Е╨╛╤В╨╜╨╕╨║',80,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╤Е╨░╨╛╤В╨╕╤З╨╜╨╛-╨╜╨╡╨╣╤В╤А╨░╨╗╤М╨╜╨╛╨╡','╨Ъ╨╛╤И╨░╤З╤М╤П ╨╗╨╛╨▓╨║╨╛╤Б╤В╤М, ╨Ю╤Б╤В╤А╨╛╨╡ ╨╖╤А╨╡╨╜╨╕╨╡',NULL,NULL,NULL,'╨б╨╗╨╡╨┤╨╛╨┐╤Л╤В, ╨Я╨╗╤Г╤В',0,'45-75 ╨║╨│','150-180 ╤Б╨╝','╨С╨╛╨╜╤Г╤Б ╨║ ╨┐╤А╤Л╨╢╨║╨░╨╝ (+10 ╤Д╤Г╤В╨╛╨▓)','╨б╨║╨╛╤А╨╛╤Б╤В╤М ╨╗╨░╨╖╨░╨╜╨╕╤П 20 ╤Д╤Г╤В╨╛╨▓'),(9,'╨в╨╕╤Д╨╗╨╕╨╜╨│','╨Ю╨▒╤Й╨╕╨╣, ╨Ш╨╜╤Д╨╡╤А╨╜╨░╨╗╤М╨╜╤Л╨╣',30,'╨б╤А╨╡╨┤╨╜╨╕╨╣',0,0,0,1,0,2,'╨Р╨║╨╝╨╡╨╜╨╛╤Б, ╨Р╨╝╨╜╨╛╨╜, ╨С╨░╤А╨░╨║╨░╤Б, ╨Ф╨░╨╝╨░╨║╨╛╤Б, ╨Ъ╨░╨╣╤А╨╛╨╜, ╨Ы╤О╤Ж╨╕╤Б, ╨Ь╨╛╤А╨┤╨░╨╣, ╨Я╨╡╨╗╨░╨╣╨╛╤Б',100,'╤З╨░╤Й╨╡ ╨▓╤Б╨╡╨│╨╛ ╤Е╨░╨╛╤В╨╕╤З╨╜╨╛-╨╖╨╗╨╛╨╡','╨Э╨░╤Б╨╗╨╡╨┤╨╕╨╡ ╨Ш╨╜╤Д╨╡╤А╨╜╨╛, ╨Ь╨░╨│╨╕╤П ╨Ш╨╜╤Д╨╡╤А╨╜╨╛',60,'╨Ю╨│╨╛╨╜╤М',NULL,'╨з╨░╤А╨╛╨┤╨╡╨╣, ╨Ъ╨╛╨╗╨┤╤Г╨╜',0,'60-80 ╨║╨│','160-190 ╤Б╨╝',NULL,NULL);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_skill` varchar(50) DEFAULT NULL,
  `base_stat` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'╨Р╤В╨╗╨╡╤В╨╕╨║╨░','╨б╨╕╨╗╨░'),(2,'╨Р╨║╤А╨╛╨▒╨░╤В╨╕╨║╨░','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М'),(3,'╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М ╤А╤Г╨║','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М'),(4,'╨б╨║╤А╤Л╤В╨╜╨╛╤Б╤В╤М','╨Ы╨╛╨▓╨║╨╛╤Б╤В╤М'),(5,'╨Т╨╜╨╕╨╝╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М'),(6,'╨Т╤Л╨╢╨╕╨▓╨░╨╜╨╕╨╡','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М'),(7,'╨Ь╨╡╨┤╨╕╤Ж╨╕╨╜╨░','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М'),(8,'╨Я╤А╨╛╨╜╨╕╤Ж╨░╤В╨╡╨╗╤М╨╜╨╛╤Б╤В╤М','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М'),(9,'╨г╤Е╨╛╨┤ ╨╖╨░ ╨╢╨╕╨▓╨╛╤В╨╜╤Л╨╝╨╕','╨Ь╤Г╨┤╤А╨╛╤Б╤В╤М'),(10,'╨Р╨╜╨░╨╗╨╕╨╖','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В'),(11,'╨Ш╤Б╤В╨╛╤А╨╕╤П','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В'),(12,'╨Ь╨░╨│╨╕╤П','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В'),(13,'╨Я╤А╨╕╤А╨╛╨┤╨░','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В'),(14,'╨а╨╡╨╗╨╕╨│╨╕╤П','╨Ш╨╜╤В╨╡╨╗╨╗╨╡╨║╤В'),(15,'╨Т╤Л╤Б╤В╤Г╨┐╨╗╨╡╨╜╨╕╨╡','╨е╨░╤А╨╕╨╖╨╝╨░'),(16,'╨Ч╨░╨┐╤Г╨│╨╕╨▓╨░╨╜╨╕╨╡','╨е╨░╤А╨╕╨╖╨╝╨░'),(17,'╨Ю╨▒╨╝╨░╨╜','╨е╨░╤А╨╕╨╖╨╝╨░'),(18,'╨г╨▒╨╡╨╢╨┤╨╡╨╜╨╕╨╡','╨е╨░╤А╨╕╨╖╨╝╨░');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spells`
--

DROP TABLE IF EXISTS `spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spells` (
  `id` int NOT NULL,
  `name_spel` varchar(50) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `description` text,
  `class_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `spells_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spells`
--

LOCK TABLES `spells` WRITE;
/*!40000 ALTER TABLE `spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `default_duration` int DEFAULT NULL,
  `duration_unit` enum('round','minute','hour','scene') DEFAULT NULL,
  `has_levels` tinyint(1) DEFAULT '0',
  `max_levels` int DEFAULT NULL,
  `concentration_required` tinyint(1) DEFAULT '0',
  `remove_condition` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'blinded','╨б╨╗╨╡╨┐╨╛╨╣','╨С╨╛╠Б╨╗╨╡╨╡ ╨╜╨╡ ╨▓╨╕╨┤╨╕╤В; ╨░╨▓╤В╨╛╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╕╨╡ ╨╜╨╡╤Г╨┤╨░╤З╨╕ ╨┐╤А╨╛╨▓╨╡╤А╨╛╨║ ╨Т╨╛╤Б╨┐╤А╨╕╤П╤В╨╕╤П ╨╜╨░ ╨╖╤А╨╡╨╜╨╕╨╡; ╨░╤В╨░╨║╨╕ ╨┐╨╛ ╨╜╨╡╨╝╤Г тАФ ╤Б ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛╨╝; ╨╛╨╜ ╤Б╨░╨╝ тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(2,'charmed','╨Ю╤З╨░╤А╨╛╨▓╨░╨╜╨╜╤Л╨╣','╨Э╨╡ ╨╝╨╛╨╢╨╡╤В ╨╜╨░╨┐╨░╨┤╨░╤В╤М ╨╜╨░ ╤В╨╛╨│╨╛, ╨║╤В╨╛ ╨╡╨│╨╛ ╨╛╤З╨░╤А╨╛╨▓╨░╨╗; ╨┤╨░╤С╤В ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛ ╨┐╤А╨╛╨▓╨╡╤А╨║╨░╨╝ ╨Ф╤А╤Г╨╢╨╡╨╗╤О╨▒╨╕╤П ╨║ ╨╛╤З╨░╤А╨╛╨▓╨░╨▓╤И╨╡╨╝╤Г.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(3,'deafened','╨У╨╗╤Г╤Е╨╛╨╣','╨Э╨╡ ╤Б╨╗╤Л╤И╨╕╤В ╨▓╨╛╨╛╨▒╤Й╨╡ ╨╜╨╕╤З╤В╨╛; ╨░╨▓╤В╨╛╨╝╨░╤В╨╕╤З╨╡╤Б╨║╨╕╨╡ ╨╜╨╡╤Г╨┤╨░╤З╨╕ ╨╖╨▓╤Г╨║╨╛╨▓╤Л╤Е ╨┐╤А╨╛╨▓╨╡╤А╨╛╨║ ╨Т╨╛╤Б╨┐╤А╨╕╤П╤В╨╕╤П.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(4,'exhaustion','╨Ш╤Б╤В╨╛╤Й╨╡╨╜╨╕╨╡','6 ╤Г╤А╨╛╨▓╨╜╨╡╨╣, ╨║╨░╨╢╨┤╤Л╨╣ ╤Г╤А╨╛╨▓╨╡╨╜╤М ╨┤╨░╤С╤В ╤И╤В╤А╨░╤Д╤Л; ╤Б╨╜╨╕╨╝╨░╨╡╤В╤Б╤П ╨┐╨╛ 1 ╤Г╤А╨╛╨▓╨╜╤О ╨╖╨░ ╨┤╨╛╨╗╨│╨╕╨╣ ╨╛╤В╨┤╤Л╤Е.',NULL,NULL,1,6,0,'on_long_rest','2025-05-11 17:14:01'),(5,'frightened','╨Ш╤Б╨┐╤Г╨│╨░╨╜','╨Ф╨╛╨╗╨╢╨╡╨╜ ╨▒╨╡╨╢╨░╤В╤М ╨╛╤В ╨╕╤Б╤В╨╛╤З╨╜╨╕╨║╨░ ╤Б╤В╤А╨░╤Е╨░, ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣ ╨▒╤А╨╛╤Б╨║╨╕ ╨░╤В╨░╨║╨╕ ╨╕ ╨┐╤А╨╛╨▓╨╡╤А╨║╨╕ ╨б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨╛╨▓, ╨┐╨╛╨║╨░ ╨▓╨╕╨┤╨╕╤В ╨╕╤Б╤В╨╛╤З╨╜╨╕╨║.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(6,'grappled','╨б╤Е╨▓╨░╤З╨╡╨╜','╨б╨║╨╛╤А╨╛╤Б╤В╤М = 0; ╤Г╤Б╨╗╨╛╨▓╨╕╨╡ ╤Б╨╜╨╕╨╝╨░╨╡╤В╤Б╤П, ╨╡╤Б╨╗╨╕ ╨╖╨░╤Е╨▓╨░╤В╤З╨╕╨║ ╤Б╤В╨░╨╜╨╛╨▓╨╕╤В╤Б╤П ╨╜╨╡╨┤╨╛╤Б╤В╤Г╨┐╨╡╨╜.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(7,'incapacitated','╨Э╨╡╨┤╨╡╨╡╤Б╨┐╨╛╤Б╨╛╨▒╨╡╨╜','╨Э╨╡ ╨╝╨╛╨╢╨╡╤В ╨┤╨╡╨╣╤Б╤В╨▓╨╛╨▓╨░╤В╤М ╨╕╨╗╨╕ ╤А╨╡╨░╨│╨╕╤А╨╛╨▓╨░╤В╤М.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(8,'invisible','╨Э╨╡╨▓╨╕╨┤╨╕╨╝╤Л╨╣','╨Э╨╡ ╨▓╨╕╨┤╨╜╨╛; ╨░╤В╨░╨║╨╕ ╨┐╨╛ ╨╜╨╡╨╝╤Г тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣, ╨╛╨╜ ╤Б╨░╨╝ ╨░╤В╨░╨║╤Г╨╡╤В ╤Б ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛╨╝.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(9,'paralyzed','╨Я╨░╤А╨░╨╗╨╕╨╖╨╛╨▓╨░╨╜','╨б╤З╨╕╤В╨░╨╡╤В╤Б╤П ╨╛╨┤╨╜╨╛╨▓╤А╨╡╨╝╨╡╨╜╨╜╨╛ ╨С╨╡╤Б╤Б╨╛╨╖╨╜╨░╤В╨╡╨╗╤М╨╜╤Л╨╝ ╨╕ ╨Э╨╡╨┤╨▓╨╕╨╢╨╜╤Л╨╝; ╨░╤В╨░╨║╨╕ ╨┐╨╛ ╨╜╨╡╨╝╤Г тАФ ╨║╤А╨╕╤В ╨┐╤А╨╕ ╨┐╨╛╨┐╨░╨┤╨░╨╜╨╕╨╕.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(10,'petrified','╨Ю╨║╨░╨╝╨╡╨╜╨╡╨▓╤И╨╕╨╣','╨б╤В╨░╨╜╨╛╨▓╨╕╤В╤Б╤П ╨║╨░╨╝╨╜╨╡╨╝: +2 ╨║ ╨╖╨░╤Й╨╕╤В╨╡, ╨╕╨╝╨╝╤Г╨╜╨╕╤В╨╡╤В ╨║╨╛ ╨╝╨╜╨╛╨│╨╕╨╝ ╤Н╤Д╤Д╨╡╨║╤В╨░╨╝; ╨╡╤Б╨╗╨╕ ╨▓╤Л╨╗╨╡╤З╨╡╨╜ тАФ ╨▓╨╛╤Б╤Б╤В╨░╨╜╨░╨▓╨╗╨╕╨▓╨░╨╡╤В ╨┐╤А╨╡╨╢╨╜╨╡╨╡ ╤Б╨╛╤Б╤В╨╛╤П╨╜╨╕╨╡.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(11,'poisoned','╨Ю╤В╤А╨░╨▓╨╗╨╡╨╜','╨Я╤А╨╛╨▓╨╡╤А╨║╨╕ ╨░╤В╨░╨║╨╕ ╨╕ ╨б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨╕ тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(12,'knock_down','╨б╨▒╨╕╤В ╤Б ╨╜╨╛╨│','╨Ы╨╡╨╢╨╕╤В; ╨░╤В╨░╨║╨╕ ╨▓ ╨▒╨╗╨╕╨╢╨╜╨╡╨╝ ╨▒╨╛╤О тАФ ╤Б ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛╨╝, ╨╜╨░ ╨┤╨░╨╗╤М╨╜╨╡╨╝ тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣; ╨╜╨░ ╨▓╤Б╤В╨░╨▓╨░╨╜╨╕╨╡ ╤В╤А╨░╤В╨╕╤В╤Б╤П ╨┤╨▓╨╕╨╢╨╡╨╜╨╕╨╡.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(13,'restrained','╨б╨║╨╛╨▓╤Л╨▓╨░╨╡╨╝╤Л╨╣','╨б╨║╨╛╤А╨╛╤Б╤В╤М = 0; ╨░╤В╨░╨║╨╕ ╨┐╨╛ ╨╜╨╡╨╝╤Г тАФ ╤Б ╨┐╤А╨╡╨╕╨╝╤Г╤Й╨╡╤Б╤В╨▓╨╛╨╝, ╨╛╨╜ ╤Б╨░╨╝ тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣; ╤Б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨╕ ╨Ы╨╛╨▓╨║╨╛╤Б╤В╨╕ тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(14,'stunned','╨Ю╤И╨╡╨╗╨╛╨╝╨╗╤С╨╜╨╜╤Л╨╣','╨Э╨╡ ╨╝╨╛╨╢╨╡╤В ╨┤╨╡╨╣╤Б╤В╨▓╨╛╨▓╨░╤В╤М, ╤А╨╡╨░╨│╨╕╤А╨╛╨▓╨░╤В╤М, ╨┐╨╡╤А╨╡╨┤╨▓╨╕╨│╨░╤В╤М╤Б╤П ╨╕╨╗╨╕ ╨│╨╛╨▓╨╛╤А╨╕╤В╤М; ╤Б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨╕ тАФ ╤Б ╨┐╨╛╨╝╨╡╤Е╨╛╨╣; ╨░╤В╨░╨║╨╕ ╨┐╨╛ ╨╜╨╡╨╝╤Г тАФ ╨║╤А╨╕╤В ╨┐╤А╨╕ ╨┐╨╛╨┐╨░╨┤╨░╨╜╨╕╨╕.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(15,'unconscious','╨С╨╡╨╖ ╤Б╨╛╨╖╨╜╨░╨╜╨╕╤П','╨б╤З╨╕╤В╨░╤В╤М╤Б╤П ╨┐╨╛╨▓╨╡╤А╨╢╨╡╨╜╨╜╤Л╨╝, ╨╜╨╡ ╨╝╨╛╨╢╨╡╤В ╨┤╨╡╨╣╤Б╤В╨▓╨╛╨▓╨░╤В╤М, ╨┤╤Л╤И╨░╤В╤М, ╨│╨╛╨▓╨╛╤А╨╕╤В╤М; ╤Б╨┐╨░╤Б╨▒╤А╨╛╤Б╨║╨╕ ╤Б╨╝╨╡╤А╤В╨╕; ╨░╤В╨░╨║╨░ ╨┐╨╛ ╨╜╨╡╨╝╤Г тАФ ╨║╤А╨╕╤В ╨┐╤А╨╕ ╨┐╨╛╨┐╨░╨┤╨░╨╜╨╕╨╕.',NULL,NULL,0,NULL,0,'on_dispel','2025-05-11 17:14:01'),(16,'strength_drain','╨Ш╤Б╤В╨╛╤Й╨╡╨╜╨╕╨╡ ╤Б╨╕╨╗','╨в╨╡╨╜╤М ╨▓╤Л╤Б╨╛╤Б╨░╨╗╨░ ╨╕╨╖ ╤В╨╡╨▒╤П ╤Б╨╕╨╗╤Л',NULL,NULL,0,NULL,0,'on_short_rest or on_long_rest','2025-05-12 00:04:32');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_now`
--

DROP TABLE IF EXISTS `status_now`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_now` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_id` int NOT NULL,
  `id_character` int DEFAULT NULL,
  `id_monster` int DEFAULT NULL,
  `remaining_time` int DEFAULT NULL,
  `applied_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `effect_value` int DEFAULT NULL,
  `effect_meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `status_now_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_now`
--

LOCK TABLES `status_now` WRITE;
/*!40000 ALTER TABLE `status_now` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_now` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_tool` varchar(50) DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools`
--

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` VALUES (1,'╨Т╨╛╤А╨╛╨▓╤Б╨║╨╕╨╡ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л','25 ╨╖╨╝','1 ╤Д╨╜╤В.','╨Т╨║╨╗╤О╤З╨░╨╡╤В ╨╜╨░╨┐╨╕╨╗╤М╨╜╨╕╨║, ╨╛╤В╨╝╤Л╤З╨║╨╕, ╨╖╨╡╤А╨║╨░╨╗╨╛ ╨╜╨░ ╤А╤Г╤З╨║╨╡, ╨╜╨╛╨╢╨╜╨╕╤Ж╤Л, ╤Й╨╕╨┐╤З╨╕╨║╨╕. ╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╨╡╤В╤Б╤П ╨┤╨╗╤П ╨▓╨╖╨╗╨╛╨╝╨░ ╨╖╨░╨╝╨║╨╛╨▓ ╨╕ ╨╛╤В╨║╨╗╤О╤З╨╡╨╜╨╕╤П ╨╗╨╛╨▓╤Г╤И╨╡╨║.'),(2,'╨Ф╤А╨░╨║╨╛╨╜╤М╨╕ ╤И╨░╤Е╨╝╨░╤В╤Л','1 ╨╖╨╝','1/2 ╤Д╨╜╤В.','╨Э╨░╤Б╤В╨╛╨╗╤М╨╜╨░╤П ╤Б╤В╤А╨░╤В╨╡╨│╨╕╤З╨╡╤Б╨║╨░╤П ╨╕╨│╤А╨░ ╤Б ╤Д╨╕╨│╤Г╤А╨░╨╝╨╕ ╨┤╤А╨░╨║╨╛╨╜╨╛╨▓.'),(3,'╨Ъ╨░╤А╤В╤Л','5 ╤Б╨╝','-','╨Ъ╨╛╨╗╨╛╨┤╨░ ╨╕╨│╤А╨░╨╗╤М╨╜╤Л╤Е ╨║╨░╤А╤В ╨┤╨╗╤П ╤А╨░╨╖╨╗╨╕╤З╨╜╤Л╤Е ╨║╨░╤А╤В╨╛╤З╨╜╤Л╤Е ╨╕╨│╤А.'),(4,'╨Ъ╨╛╤Б╤В╨╕','1 ╤Б╨╝','-','╨Э╨░╨▒╨╛╤А ╨╕╨│╤А╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╤Б╤В╨╡╨╣ ╨┤╨╗╤П ╨░╨╖╨░╤А╤В╨╜╤Л╤Е ╨╕╨│╤А.'),(5,'╨б╤В╨░╨▓╨║╨░ ╤В╤А╨╡╤Е ╨┤╤А╨░╨║╨╛╨╜╨╛╨▓','1 ╨╖╨╝','-','╨Ш╨│╤А╨░, ╨┐╨╛╨┐╤Г╨╗╤П╤А╨╜╨░╤П ╤Б╤А╨╡╨┤╨╕ ╨░╨▓╨░╨╜╤В╤О╤А╨╕╤Б╤В╨╛╨▓ ╨╕ ╤А╨░╨╖╨▒╨╛╨╣╨╜╨╕╨║╨╛╨▓.'),(6,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨╜╨░╨▓╨╕╨│╨░╤В╨╛╤А╨░','25 ╨╖╨╝','2 ╤Д╨╜╤В.','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╨┐╤А╨╛╨║╨╗╨░╨┤╤Л╨▓╨░╨╜╨╕╤П ╨║╤Г╤А╤Б╨░ ╨╕ ╨╝╨╛╤А╤Б╨║╨╛╨╣ ╨╜╨░╨▓╨╕╨│╨░╤Ж╨╕╨╕.'),(7,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨╛╤В╤А╨░╨▓╨╕╤В╨╡╨╗╤П','50 ╨╖╨╝','2 ╤Д╨╜╤В.','╨б╨╛╨┤╨╡╤А╨╢╨░╤В ╤Д╨╗╨░╨║╨╛╨╜╤Л, ╤Е╨╕╨╝╨╕╨║╨░╤В╤Л ╨╕ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨┤╨╗╤П ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╤П╨┤╨╛╨▓.'),(8,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨░╨╗╤Е╨╕╨╝╨╕╨║╨░','50 ╨╖╨╝','8 ╤Д╨╜╤В.','╨Э╨░╨▒╨╛╤А ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨╛╨▓ ╨┤╨╗╤П ╤А╨░╨▒╨╛╤В╤Л ╤Б ╨╖╨╡╨╗╤М╤П╨╝╨╕ ╨╕ ╤Е╨╕╨╝╨╕╤З╨╡╤Б╨║╨╕╨╝╨╕ ╨▓╨╡╤Й╨╡╤Б╤В╨▓╨░╨╝╨╕.'),(9,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨│╨╛╨╜╤З╨░╤А╨░','10 ╨╖╨╝','3 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╤Б╨╛╨╖╨┤╨░╨▓╨░╤В╤М ╨║╨╡╤А╨░╨╝╨╕╤З╨╡╤Б╨║╨╕╨╡ ╨╕╨╖╨┤╨╡╨╗╨╕╤П.'),(10,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨╢╨╡╤Б╤В╤П╨╜╤Й╨╕╨║╨░','50 ╨╖╨╝','10 ╤Д╨╜╤В.','╨Э╨░╨▒╨╛╤А ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨╛╨▓ ╨┤╨╗╤П ╤А╨░╨▒╨╛╤В╤Л ╤Б ╨╝╨╡╤В╨░╨╗╨╗╨╛╨╝.'),(11,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨║╨░╨╗╨╗╨╕╨│╤А╨░╤Д╨░','10 ╨╖╨╝','5 ╤Д╨╜╤В.','╨б╨╛╨┤╨╡╤А╨╢╨░╤В ╤З╨╡╤А╨╜╨╕╨╗╨░, ╨║╨╕╤Б╤В╨╕, ╨┐╨╡╤А╤М╤П ╨┤╨╗╤П ╤Е╤Г╨┤╨╛╨╢╨╡╤Б╤В╨▓╨╡╨╜╨╜╨╛╨╣ ╨┐╨╕╤Б╤М╨╝╨╡╨╜╨╜╨╛╤Б╤В╨╕.'),(12,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨║╨░╨╝╨╡╨╜╤Й╨╕╨║╨░','10 ╨╖╨╝','8 ╤Д╨╜╤В.','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╨╛╨▒╤А╨░╨▒╨╛╤В╨║╨╕ ╨╕ ╤А╨╡╨╖╨║╨╕ ╨║╨░╨╝╨╜╤П.'),(13,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨║╨░╤А╤В╨╛╨│╤А╨░╤Д╨░','15 ╨╖╨╝','6 ╤Д╨╜╤В.','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╨║╨░╤А╤В ╨╕ ╤Б╤Е╨╡╨╝.'),(14,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨║╨╛╨╢╨╡╨▓╨╜╨╕╨║╨░','5 ╨╖╨╝','5 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╤А╨░╨▒╨╛╤В╨░╤В╤М ╤Б ╨║╨╛╨╢╨╡╨╣, ╤Б╨╛╨╖╨┤╨░╨▓╨░╤В╤М ╨╕ ╤А╨╡╨╝╨╛╨╜╤В╨╕╤А╨╛╨▓╨░╤В╤М ╨║╨╛╨╢╨░╨╜╤Л╨╡ ╨╕╨╖╨┤╨╡╨╗╨╕╤П.'),(15,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨║╤Г╨╖╨╜╨╡╤Ж╨░','20 ╨╖╨╝','8 ╤Д╨╜╤В.','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╨║╨╛╨▓╨║╨╕ ╨╕ ╤А╨░╨▒╨╛╤В╤Л ╤Б ╨╝╨╡╤В╨░╨╗╨╗╨╛╨╝.'),(16,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨┐╨╕╨▓╨╛╨▓╨░╤А╨░','20 ╨╖╨╝','9 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╨▓╨░╤А╨╕╤В╤М ╨┐╨╕╨▓╨╛ ╨╕ ╨┤╤А╤Г╨│╨╕╨╡ ╨╜╨░╨┐╨╕╤В╨║╨╕.'),(17,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨┐╨╗╨╛╤В╨╜╨╕╨║╨░','8 ╨╖╨╝','6 ╤Д╨╜╤В.','╨Э╨░╨▒╨╛╤А ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╨╛╨▓ ╨┤╨╗╤П ╨╛╨▒╤А╨░╨▒╨╛╤В╨║╨╕ ╨┤╨╡╤А╨╡╨▓╨░.'),(18,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨┐╨╛╨▓╨░╤А╨░','1 ╨╖╨╝','8 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╨│╨╛╤В╨╛╨▓╨╕╤В╤М ╨┐╨╕╤Й╤Г ╨▓ ╨┐╨╛╤Е╨╛╨┤╨╜╤Л╤Е ╤Г╤Б╨╗╨╛╨▓╨╕╤П╤Е.'),(19,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╤А╨╡╨╖╤З╨╕╨║╨░ ╨┐╨╛ ╨┤╨╡╤А╨╡╨▓╤Г','1 ╨╖╨╝','5 ╤Д╨╜╤В.','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╤А╨╡╨╖╤М╨▒╤Л ╨┐╨╛ ╨┤╨╡╤А╨╡╨▓╤Г.'),(20,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╤Б╨░╨┐╨╛╨╢╨╜╨╕╨║╨░','5 ╨╖╨╝','5 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╤Б╨╛╨╖╨┤╨░╨▓╨░╤В╤М ╨╕ ╤З╨╕╨╜╨╕╤В╤М ╨╛╨▒╤Г╨▓╤М.'),(21,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╤Б╤В╨╡╨║╨╗╨╛╨┤╤Г╨▓╨░','30 ╨╖╨╝','5 ╤Д╨╜╤В.','╨Ш╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤В╤Б╤П ╨┤╨╗╤П ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╤Б╤В╨╡╨║╨╗╤П╨╜╨╜╤Л╤Е ╨╕╨╖╨┤╨╡╨╗╨╕╨╣.'),(22,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╤В╨║╨░╤З╨░','1 ╨╖╨╝','5 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╤В╨║╨░╤В╤М ╤В╨║╨░╨╜╨╕ ╨╕ ╤Б╨╛╨╖╨┤╨░╨▓╨░╤В╤М ╨╛╨┤╨╡╨╢╨┤╤Г.'),(23,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╤Е╤Г╨┤╨╛╨╢╨╜╨╕╨║╨░','10 ╨╖╨╝','5 ╤Д╨╜╤В.','╨б╨╛╨┤╨╡╤А╨╢╨░╤В ╨║╨╕╤Б╤В╨╕, ╨║╤А╨░╤Б╨║╨╕, ╨┐╨░╨╗╨╕╤В╤А╤Г ╨┤╨╗╤П ╤А╨╕╤Б╨╛╨▓╨░╨╜╨╕╤П.'),(24,'╨Ш╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╤О╨▓╨╡╨╗╨╕╤А╨░','25 ╨╖╨╝','2 ╤Д╨╜╤В.','╨Я╨╛╨╖╨▓╨╛╨╗╤П╤О╤В ╨╛╨▒╤А╨░╨▒╨░╤В╤Л╨▓╨░╤В╤М ╨┤╤А╨░╨│╨╛╤Ж╨╡╨╜╨╜╤Л╨╡ ╨║╨░╨╝╨╜╨╕ ╨╕ ╤Б╨╛╨╖╨┤╨░╨▓╨░╤В╤М ╤Г╨║╤А╨░╤И╨╡╨╜╨╕╤П.'),(25,'╨С╨░╤А╨░╨▒╨░╨╜','6 ╨╖╨╝','3 ╤Д╨╜╤В.','╨Ь╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╤Г╨╡╨╝╤Л╨╣ ╨┤╨╗╤П ╤А╨╕╤В╨╝╨╕╤З╨╡╤Б╨║╨╛╨│╨╛ ╤Б╨╛╨┐╤А╨╛╨▓╨╛╨╢╨┤╨╡╨╜╨╕╤П.'),(26,'╨Т╨╕╨╛╨╗╨░','30 ╨╖╨╝','1 ╤Д╨╜╤В.','╨б╤В╤А╤Г╨╜╨╜╤Л╨╣ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╨┐╨╛╤Е╨╛╨╢╨╕╨╣ ╨╜╨░ ╤Б╨║╤А╨╕╨┐╨║╤Г.'),(27,'╨Т╨╛╨╗╤Л╨╜╨║╨░','30 ╨╖╨╝','6 ╤Д╨╜╤В.','╨Ф╤Г╤Е╨╛╨▓╨╛╨╣ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╤Б ╨╝╨╡╤Е╨╛╨╝ ╨┤╨╗╤П ╨┐╨╛╨┤╨░╤З╨╕ ╨▓╨╛╨╖╨┤╤Г╤Е╨░.'),(28,'╨Ы╨╕╤А╨░','30 ╨╖╨╝','2 ╤Д╨╜╤В.','╨б╤В╤А╤Г╨╜╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╨┐╨╛╨┐╤Г╨╗╤П╤А╨╜╤Л╨╣ ╤Б╤А╨╡╨┤╨╕ ╨▒╨░╤А╨┤╨╛╨▓.'),(29,'╨Ы╤О╤В╨╜╤П','35 ╨╖╨╝','2 ╤Д╨╜╤В.','╨Ъ╨╗╨░╤Б╤Б╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╤Б ╨╝╨╜╨╛╨╢╨╡╤Б╤В╨▓╨╛╨╝ ╤Б╤В╤А╤Г╨╜.'),(30,'╨а╨╛╨╢╨╛╨║','3 ╨╖╨╝','2 ╤Д╨╜╤В.','╨Ф╤Г╤Е╨╛╨▓╨╛╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╤Г╨╡╨╝╤Л╨╣ ╨┤╨╗╤П ╤Б╨╕╨│╨╜╨░╨╗╨╛╨▓ ╨╕ ╨╝╤Г╨╖╤Л╨║╨╕.'),(31,'╨б╨▓╨╕╤А╨╡╨╗╤М','12 ╨╖╨╝','2 ╤Д╨╜╤В.','╨Ф╤Г╤Е╨╛╨▓╨╛╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╤Б╨╛╤Б╤В╨╛╤П╤Й╨╕╨╣ ╨╕╨╖ ╨╜╨╡╤Б╨║╨╛╨╗╤М╨║╨╕╤Е ╤В╤А╤Г╨▒╨╛╤З╨╡╨║.'),(32,'╨д╨╗╨╡╨╣╤В╨░','2 ╨╖╨╝','1 ╤Д╨╜╤В.','╨Ы╤С╨│╨║╨╕╨╣ ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╨╕╤Б╨┐╨╛╨╗╤М╨╖╤Г╤О╤Й╨╕╨╣ ╨┤╤Л╤Е╨░╨╜╨╕╨╡.'),(33,'╨ж╨╕╨╝╨▒╨░╨╗╤Л','25 ╨╖╨╝','10 ╤Д╨╜╤В.','╨г╨┤╨░╤А╨╜╤Л╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В ╤Б ╨╜╨░╤В╤П╨╜╤Г╤В╤Л╨╝╨╕ ╤Б╤В╤А╤Г╨╜╨░╨╝╨╕.'),(34,'╨и╨░╨╗╨╝╨╡╨╣','2 ╨╖╨╝','1 ╤Д╨╜╤В.','╨Ф╤А╨╡╨▓╨╜╨╕╨╣ ╨┤╤Г╤Е╨╛╨▓╨╛╨╣ ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В, ╨╜╨░╨┐╨╛╨╝╨╕╨╜╨░╤О╤Й╨╕╨╣ ╨│╨╛╨▒╨╛╨╣.'),(35,'╨Э╨░╨▒╨╛╤А ╨┤╨╗╤П ╨│╤А╨╕╨╝╨░','25 ╨╖╨╝','3 ╤Д╨╜╤В.','╨б╨╛╨┤╨╡╤А╨╢╨╕╤В ╨║╤А╨░╤Б╨║╨╕, ╨║╨╕╤Б╤В╨╕ ╨╕ ╨╜╨░╨║╨╗╨░╨┤╨╜╤Л╨╡ ╤Н╨╗╨╡╨╝╨╡╨╜╤В╤Л ╨┤╨╗╤П ╨╕╨╖╨╝╨╡╨╜╨╡╨╜╨╕╤П ╨▓╨╜╨╡╤И╨╜╨╛╤Б╤В╨╕.'),(36,'╨Э╨░╨▒╨╛╤А ╨┤╨╗╤П ╤Д╨░╨╗╤М╤Б╨╕╤Д╨╕╨║╨░╤Ж╨╕╨╕','15 ╨╖╨╝','5 ╤Д╨╜╤В.','╨Т╨║╨╗╤О╤З╨░╨╡╤В ╨▒╤Г╨╝╨░╨│╨╕, ╤З╨╡╤А╨╜╨╕╨╗╨░, ╨┐╨╡╤З╨░╤В╨╕ ╨┤╨╗╤П ╤Б╨╛╨╖╨┤╨░╨╜╨╕╤П ╨┐╨╛╨┤╨┤╨╡╨╗╤М╨╜╤Л╤Е ╨┤╨╛╨║╤Г╨╝╨╡╨╜╤В╨╛╨▓.'),(37,'╨Э╨░╨▒╨╛╤А ╤В╤А╨░╨▓╨╜╨╕╨║╨░','5 ╨╖╨╝','3 ╤Д╨╜╤В.','╨б╨╛╨┤╨╡╤А╨╢╨╕╤В ╨╕╨╜╤Б╤В╤А╤Г╨╝╨╡╨╜╤В╤Л ╨┤╨╗╤П ╤Б╨▒╨╛╤А╨░ ╨╕ ╨┐╨╡╤А╨╡╤А╨░╨▒╨╛╤В╨║╨╕ ╤В╤А╨░╨▓, ╨┐╨╛╨╖╨▓╨╛╨╗╤П╨╡╤В ╤Б╨╛╨╖╨┤╨░╨▓╨░╤В╤М ╨╗╨╡╨║╨░╤А╤Б╤В╨▓╨░ ╨╕ ╨╖╨╡╨╗╤М╤П.');
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trinkets`
--

DROP TABLE IF EXISTS `trinkets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trinkets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trinkets`
--

LOCK TABLES `trinkets` WRITE;
/*!40000 ALTER TABLE `trinkets` DISABLE KEYS */;
INSERT INTO `trinkets` VALUES (1,'╨Ь╤Г╨╝╨╕╤Д╨╕╤Ж╨╕╤А╨╛╨▓╨░╨╜╨╜╨░╤П ╤А╤Г╨║╨░ ╨│╨╛╨▒╨╗╨╕╨╜╨░'),(2,'╨Ъ╤Г╤Б╨╛╤З╨╡╨║ ╨║╤А╨╕╤Б╤В╨░╨╗╨╗╨░, ╤Б╨╗╨░╨▒╨╛ ╤Б╨▓╨╡╤В╤П╤Й╨╕╨╣╤Б╤П ╨▓ ╨╗╤Г╨╜╨╜╨╛╨╝ ╤Б╨▓╨╡╤В╨╡'),(3,'╨Ч╨╛╨╗╨╛╤В╨░╤П ╨╝╨╛╨╜╨╡╤В╨░, ╨╛╤В╤З╨╡╨║╨░╨╜╨╡╨╜╨╜╨░╤П ╨▓ ╨╜╨╡╨╕╨╖╨▓╨╡╤Б╤В╨╜╨╛╨╣ ╤Б╤В╤А╨░╨╜╨╡'),(4,'╨Ф╨╜╨╡╨▓╨╜╨╕╨║, ╨╜╨░╨┐╨╕╤Б╨░╨╜╨╜╤Л╨╣ ╨╜╨░ ╨╜╨╡╨╕╨╖╨▓╨╡╤Б╤В╨╜╨╛╨╝ ╨▓╨░╨╝ ╤П╨╖╤Л╨║╨╡'),(5,'╨Ы╨░╤В╤Г╨╜╨╜╨╛╨╡ ╨║╨╛╨╗╤М╤Ж╨╛, ╨║╨╛╤В╨╛╤А╨╛╨╡ ╨╜╨╡ ╤В╨╡╨╝╨╜╨╡╨╡╤В ╤Б╨╛ ╨▓╤А╨╡╨╝╨╡╨╜╨╡╨╝'),(6,'╨б╤В╨░╤А╨░╤П ╤Б╤В╨╡╨║╨╗╤П╨╜╨╜╨░╤П ╤И╨░╤Е╨╝╨░╤В╨╜╨░╤П ╤Д╨╕╨│╤Г╤А╨░'),(7,'╨Я╨░╤А╨░ ╨╕╨│╤А╨░╨╗╤М╨╜╤Л╤Е ╨║╨╛╤Б╤В╨╡╨╣, ╤Г ╨╛╨▒╨╡╨╕╤Е ╨▓╨╝╨╡╤Б╤В╨╛ ╤И╨╡╤Б╤В╤С╤А╨╛╨║ ╨╜╨░╤А╨╕╤Б╨╛╨▓╨░╨╜╤Л ╤З╨╡╤А╨╡╨┐╨░'),(8,'╨Э╨╡╨▒╨╛╨╗╤М╤И╨╛╨╣ ╨╕╨┤╨╛╨╗, ╨╕╨╖╨╛╨▒╤А╨░╨╢╨░╤О╤Й╨╕╨╣ ╤Б╤В╤А╨░╤И╨╜╨╛╨╡ ╤З╤Г╨┤╨╛╨▓╨╕╤Й╨╡, ╨╜╨░╤Б╤Л╨╗╨░╤О╤Й╨╕╨╣ ╨║╨╛╤И╨╝╨░╤А╤Л, ╨║╨╛╨│╨┤╨░ ╨▓╤Л ╤Б╨┐╨╕╤В╨╡ ╤А╤П╨┤╨╛╨╝ ╤Б ╨╜╨╕╨╝'),(9,'╨Т╨╡╤А╤С╨▓╨╛╤З╨╜╨╛╨╡ ╨╛╨╢╨╡╤А╨╡╨╗╤М╨╡, ╨╜╨░ ╨║╨╛╤В╨╛╤А╨╛╨╝ ╨▓╨╕╤Б╤П╤В ╤З╨╡╤В╤Л╤А╨╡ ╨╝╤Г╨╝╨╕╤Д╨╕╤Ж╨╕╤А╨╛╨▓╨░╨╜╨╜╤Л╤Е ╤Н╨╗╤М╤Д╨╕╨╣╤Б╨║╨╕╤Е ╨┐╨░╨╗╤М╤Ж╨░'),(10,'╨Ъ╨▓╨╕╤В╨░╨╜╤Ж╨╕╤П ╨┤╨╗╤П ╨┐╨╛╨╗╤Г╤З╨╡╨╜╨╕╤П ╨┐╨╛╤Б╤Л╨╗╨║╨╕ ╨▓ ╨╜╨╡╨╕╨╖╨▓╨╡╤Б╤В╨╜╨╛╨╝ ╨▓╨░╨╝ ╨║╨╛╤А╨╛╨╗╨╡╨▓╤Б╤В╨▓╨╡'),(11,'30-╨│╤А╨░╨╝╨╝╨╛╨▓╤Л╨╣ ╨║╤Г╤Б╨╛╤З╨╡╨║ ╨╜╨╡╨╕╨╖╨▓╨╡╤Б╤В╨╜╨╛╨│╨╛ ╨╝╨░╤В╨╡╤А╨╕╨░╨╗╨░'),(12,'╨Ь╨░╨╗╨╡╨╜╤М╨║╨░╤П ╤В╤А╤П╨┐╨╕╤З╨╜╨░╤П ╨║╤Г╨║╨╗╨░, ╤Г╤В╤Л╨║╨░╨╜╨╜╨░╤П ╨╕╨│╨╛╨╗╨║╨░╨╝╨╕'),(13,'╨Ч╤Г╨▒ ╨╜╨╡╨╕╨╖╨▓╨╡╤Б╤В╨╜╨╛╨│╨╛ ╨╖╨▓╨╡╤А╤П'),(14,'╨Ю╨│╤А╨╛╨╝╨╜╨░╤П ╤З╨╡╤И╤Г╨╣╨║╨░, ╨▓╨╛╨╖╨╝╨╛╨╢╨╜╨╛, ╨┤╤А╨░╨║╨╛╨╜╤М╤П'),(15,'╨п╤А╨║╨╛-╨╖╨╡╨╗╤С╨╜╨╛╨╡ ╨┐╨╡╤А╨╛'),(16,'╨б╤В╨░╤А╨░╤П ╨│╨░╨┤╨░╨╗╤М╨╜╨░╤П ╨║╨░╤А╤В╨░ ╤Б ╨╗╨╕╤Ж╨╛╨╝, ╨┐╨╛╤Е╨╛╨╢╨╕╨╝ ╨╜╨░ ╨▓╨░╤И╨╡'),(17,'╨б╤В╨╡╨║╨╗╤П╨╜╨╜╨░╤П ╤Б╤Д╨╡╤А╨░, ╨╖╨░╨┐╨╛╨╗╨╜╨╡╨╜╨╜╨░╤П ╨┤╤Л╨╝╨╛╨╝'),(18,'╨Я╨╛╨╗╤Г╨║╨╕╨╗╨╛╨│╤А╨░╨╝╨╝╨╛╨▓╨╛╨╡ ╤П╨╣╤Ж╨╛ ╤Б ╤П╤А╨║╨╛-╨║╤А╨░╤Б╨╜╨╛╨╣ ╤Б╨║╨╛╤А╨╗╤Г╨┐╨╛╨╣'),(19,'╨Ъ╤Г╤А╨╕╤В╨╡╨╗╤М╨╜╨░╤П ╤В╤А╤Г╨▒╨║╨░, ╨╕╨╖ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨▓╤Л╨╗╨╡╤В╨░╤О╤В ╨┐╤Г╨╖╤Л╤А╨╕'),(20,'╨б╤В╨╡╨║╨╗╤П╨╜╨╜╤Л╨╣ ╨│╤А╨░╤Д╨╕╨╜ ╤Б ╨╝╤Г╤В╨╜╨╛╨╣ ╨╢╨╕╨┤╨║╨╛╤Б╤В╤М╤О, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨┐╨╗╨░╨▓╨░╨╡╤В ╤Б╤В╤А╨░╨╜╨╜╤Л╨╣ ╨║╤Г╤Б╨╛╤З╨╡╨║ ╨╝╤П╤Б╨░'),(21,'╨Ъ╤А╨╛╤И╨╡╤З╨╜╨░╤П ╨╝╤Г╨╖╤Л╨║╨░╨╗╤М╨╜╨░╤П ╤И╨║╨░╤В╤Г╨╗╨║╨░ ╨│╨╜╨╛╨╝╤М╨╡╨╣ ╤А╨░╨▒╨╛╤В╤Л, ╨╜╨░╨╕╨│╤А╤Л╨▓╨░╤О╤Й╨░╤П ╨╝╨╡╨╗╨╛╨┤╨╕╤О, ╨╜╨░╨┐╨╛╨╝╨╕╨╜╨░╤О╤Й╤Г╤О ╨▓╨░╨╝ ╨╛ ╨┤╨╡╤В╤Б╤В╨▓╨╡'),(22,'╨Ь╨░╨╗╨╡╨╜╤М╨║╨░╤П ╨┤╨╡╤А╨╡╨▓╤П╨╜╨╜╨░╤П ╤Б╤В╨░╤В╤Г╤Н╤В╨║╨░ ╨╜╨░╤А╤П╨┤╨╜╨╛╨│╨╛ ╨┐╨╛╨╗╤Г╤А╨╛╤Б╨╗╨╕╨║╨░'),(23,'╨Ы╨░╤В╤Г╨╜╨╜╨░╤П ╤Б╤Д╨╡╤А╨░, ╨┐╨╛╨║╤А╤Л╤В╨░╤П ╤Б╤В╤А╨░╨╜╨╜╤Л╨╝╨╕ ╤А╤Г╨╜╨░╨╝╨╕'),(24,'╨а╨░╨╖╨╜╨╛╤Ж╨▓╨╡╤В╨╜╤Л╨╣ ╨║╨░╨╝╨╡╨╜╨╜╤Л╨╣ ╨┤╨╕╤Б╨║'),(25,'╨Ъ╤А╨╛╤И╨╡╤З╨╜╤Л╨╣ ╤Б╨╡╤А╨╡╨▒╤А╤П╨╜╤Л╨╣ ╨▓╨╛╤А╨╛╨╜'),(26,'╨б╤Г╨╝╨║╨░, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨╗╨╡╨╢╨░╤В 47 ╤З╨╡╨╗╨╛╨▓╨╡╤З╨╡╤Б╨║╨╕╤Е ╨╖╤Г╨▒╨╛╨▓. ╨Ю╨┤╨╕╨╜ ╤Б ╨║╨░╤А╨╕╨╡╤Б╨╛╨╝'),(27,'╨Ъ╤Г╤Б╨╛╨║ ╨╛╨▒╤Б╨╕╨┤╨╕╨░╨╜╨░, ╨▓╤Б╨╡╨│╨┤╨░ ╤В╤С╨┐╨╗╤Л╨╣ ╨╜╨░ ╨╛╤Й╤Г╨┐╤М'),(28,'╨Ъ╨╛╨│╨╛╤В╤М ╨┤╤А╨░╨║╨╛╨╜╨░, ╨┐╨╛╨┤╨▓╨╡╤И╨╡╨╜╨╜╤Л╨╣ ╨╜╨░ ╨┐╤А╨╛╤Б╤В╨╛╨╝ ╨║╨╛╨╢╨░╨╜╨╛╨╝ ╤И╨╜╤Г╤А╨║╨╡'),(29,'╨Я╨░╤А╨░ ╤Б╤В╨░╤А╤Л╤Е ╨╜╨╛╤Б╨║╨╛╨▓'),(30,'╨з╨╕╤Б╤В╨░╤П ╨║╨╜╨╕╨│╨░, ╨╜╨░ ╤Б╤В╤А╨░╨╜╨╕╤Ж╨░╤Е ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨╜╨╡ ╨┐╨╛╨╗╤Г╤З╨░╨╡╤В╤Б╤П ╨┐╨╕╤Б╨░╤В╤М ╨╜╨╕ ╤З╨╡╤А╨╜╨╕╨╗╨░╨╝╨╕, ╨╜╨╕ ╨╝╨╡╨╗╨╛╨╝, ╨╜╨╕ ╤Г╨│╨╗╤С╨╝, ╨╕ ╨╜╨╕╨║╨░╨║╨╕╨╝╨╕ ╨┤╤А╤Г╨│╨╕╨╝╨╕ ╨╛╨▒╤Л╤З╨╜╤Л╨╝╨╕ ╤Б╤А╨╡╨┤╤Б╤В╨▓╨░╨╝╨╕'),(31,'╨б╨╡╤А╨╡╨▒╤А╤П╨╜╤Л╨╣ ╨╖╨╜╨░╤З╨╛╨║ ╨▓ ╤Д╨╛╤А╨╝╨╡ ╨┐╤П╤В╨╕╨║╨╛╨╜╨╡╤З╨╜╨╛╨╣ ╨╖╨▓╨╡╨╖╨┤╤Л'),(32,'╨Э╨╛╨╢, ╨┐╤А╨╕╨╜╨░╨┤╨╗╨╡╨╢╨░╨▓╤И╨╕╨╣ ╤А╨╛╨┤╤Б╤В╨▓╨╡╨╜╨╜╨╕╨║╤Г'),(33,'╨б╤В╨╡╨║╨╗╤П╨╜╨╜╤Л╨╣ ╤Д╨╗╨░╨║╨╛╨╜ ╤Б ╨╛╨▒╤А╨╡╨╖╨║╨░╨╝╨╕ ╨╜╨╛╨│╤В╨╡╨╣'),(34,'╨Я╤А╤П╨╝╨╛╤Г╨│╨╛╨╗╤М╨╜╨╛╨╡ ╨╝╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨╛╨╡ ╤Г╤Б╤В╤А╨╛╨╣╤Б╤В╨▓╨╛ ╤Б ╨┤╨▓╤Г╨╝╤П ╨║╤А╨╛╤И╨╡╤З╨╜╤Л╨╝╨╕ ╨╝╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨╕╨╝╨╕ ╨║╨╛╨╗╨┐╨░╤З╨║╨░╨╝╨╕ ╨╜╨░ ╨╛╨┤╨╜╨╛╨╣ ╤Б╤В╨╛╤А╨╛╨╜╨╡. ╨Х╤Б╨╗╨╕ ╨╡╨│╨╛ ╨╜╨░╨╝╨╛╤З╨╕╤В╤М, ╨╛╨╜╨╛ ╤Б╤Л╨┐╨╡╤В ╨╕╤Б╨║╤А╤Л'),(35,'╨С╨╡╨╗╤Л╨╡ ╨┐╨╡╤А╤З╨░╤В╨║╨╕ ╤Б ╨▒╨╗╤С╤Б╤В╨║╨░╨╝╨╕'),(36,'╨Ю╨┤╨╡╤П╨╜╨╕╨╡ ╤Б ╤Б╨╛╤В╨╜╨╡╨╣ ╨║╤А╨╛╤Е╨╛╤В╨╜╤Л╤Е ╨║╨░╤А╨╝╨░╨╜╨╛╨▓'),(37,'╨Ь╨░╨╗╨╡╨╜╤М╨║╨╕╨╣ ╨║╨░╨╝╨╡╨╜╨╜╤Л╨╣ ╨║╨╕╤А╨┐╨╕╤З, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╨╜╨╕╤З╨╡╨│╨╛ ╨╜╨╡ ╨▓╨╡╤Б╨╕╤В'),(38,'╨Ъ╤А╨╛╤Е╨╛╤В╨╜╤Л╨╣ ╨╜╨░╨▒╤А╨╛╤Б╨╛╨║ ╨┐╨╛╤А╤В╤А╨╡╤В╨░ ╨│╨╛╨▒╨╗╨╕╨╜╨░'),(39,'╨Я╤Г╤Б╤В╨╛╨╣ ╤Д╨╗╨░╨║╨╛╨╜, ╨┐╨░╤Е╨╜╤Г╤Й╨╕╨╣ ╨┤╤Г╤Е╨░╨╝╨╕ ╨┐╤А╨╕ ╨╛╤В╨║╤А╤Л╤В╨╕╨╕'),(40,'╨Ф╤А╨░╨│╨╛╤Ж╨╡╨╜╨╜╤Л╨╣ ╨║╨░╨╝╨╡╨╜╤М, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╨▓╤Б╨╡╨╝ ╨║╤А╨╛╨╝╨╡ ╨▓╨░╤Б ╨║╨░╨╢╨╡╤В╤Б╤П ╨║╤Г╤Б╨║╨╛╨╝ ╤Г╨│╨╗╤П'),(41,'╨Ъ╤Г╤Б╨╛╨║ ╤Б╤В╨░╤А╨╛╨│╨╛ ╨╖╨╜╨░╨╝╨╡╨╜╨╕'),(42,'╨Ч╨╜╨░╨║ ╤А╨░╨╖╨╗╨╕╤З╨╕╤П ╨┤╤А╨╡╨▓╨╜╨╡╨│╨╛ ╨╗╨╡╨│╨╕╨╛╨╜╨░'),(43,'╨Ъ╤А╨╛╤Е╨╛╤В╨╜╤Л╨╣ ╤Б╨╡╤А╨╡╨▒╤А╤П╨╜╤Л╨╣ ╨║╨╛╨╗╨╛╨║╨╛╨╗╤М╤З╨╕╨║ ╨▒╨╡╨╖ ╤П╨╖╤Л╤З╨║╨░'),(44,'╨Ь╨╡╤Е╨░╨╜╨╕╤З╨╡╤Б╨║╨░╤П ╨║╨░╨╜╨░╤А╨╡╨╣╨║╨░ ╨▓ ╨│╨╜╨╛╨╝╤М╨╡╨╣ ╨╗╨░╨╝╨┐╨╡'),(45,'╨Ъ╤А╨╛╤Е╨╛╤В╨╜╤Л╨╣ ╤Б╤Г╨╜╨┤╤Г╨║, ╨▓╤Л╤А╨╡╨╖╨░╨╜╨╜╤Л╨╣ ╤В╨░╨║, ╤З╤В╨╛ ╨║╨░╨╢╨╡╤В╤Б╤П, ╤З╤В╨╛ ╤Г ╨╜╨╡╨│╨╛ ╨╜╨╡╨▓╨╡╤А╨╛╤П╤В╨╜╨╛ ╨│╨╗╤Г╨▒╨╛╨║╨╛╨╡ ╨┤╨╜╨╛'),(46,'╨Ь╤С╤А╤В╨▓╤Л╨╣ ╤Б╨┐╤А╨░╨╣╤В ╨▓ ╤З╨╕╤Б╤В╨╛╨╣ ╤Б╤В╨╡╨║╨╗╤П╨╜╨╜╨╛╨╣ ╨▒╤Г╤В╤Л╨╗╨║╨╡'),(47,'╨Ч╨░╨┐╨░╤П╨╜╨╜╨░╤П ╨╝╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨░╤П ╨▒╨░╨╜╨║╨░, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╣, ╤Б╤Г╨┤╤П ╨┐╨╛ ╨╖╨▓╤Г╨║╨░╨╝, ╨╜╨░╤Е╨╛╨┤╨╕╤В╤Б╤П ╨╢╨╕╨┤╨║╨╛╤Б╤В╤М, ╨┐╨╡╤Б╨╛╨║, ╨┐╨░╤Г╨║╨╕ ╨╕╨╗╨╕ ╨▒╨╕╤В╨╛╨╡ ╤Б╤В╨╡╨║╨╗╨╛ (╨╜╨░ ╨▓╨░╤И ╨▓╤Л╨▒╨╛╤А)'),(48,'╨б╤В╨╡╨║╨╗╤П╨╜╨╜╨░╤П ╤Б╤Д╨╡╤А╨░ ╤Б ╨▓╨╛╨┤╨╛╨╣, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨┐╨╗╨░╨▓╨░╨╡╤В ╨╝╨╡╤Е╨░╨╜╨╕╤З╨╡╤Б╨║╨░╤П ╨╖╨╛╨╗╨╛╤В╨░╤П ╤А╤Л╨▒╨║╨░'),(49,'╨б╨╡╤А╨╡╨▒╤А╤П╨╜╨░╤П ╨╗╨╛╨╢╨║╨░ ╤Б ╨▓╤Л╨│╤А╨░╨▓╨╕╤А╨╛╨▓╨░╨╜╨╜╨╛╨╣ ╨╜╨░ ╤А╤Г╤З╨║╨╡ ╨▒╤Г╨║╨▓╨╛╨╣ ┬л╨Ь┬╗'),(50,'╨б╨▓╨╕╤Б╤В╨╛╨║ ╨╕╨╖ ╨┤╨╡╤А╨╡╨▓╨░ ╨╖╨╛╨╗╨╛╤В╨╛╨│╨╛ ╤Ж╨▓╨╡╤В╨░'),(51,'╨Ь╤С╤А╤В╨▓╤Л╨╣ ╤Б╨║╨░╤А╨░╨▒╨╡╨╣ ╤А╨░╨╖╨╝╨╡╤А╨╛╨╝ ╤Б ╨╗╨░╨┤╨╛╨╜╤М'),(52,'╨Ф╨▓╨░ ╨╕╨│╤А╤Г╤И╨╡╤З╨╜╤Л╤Е ╤Б╨╛╨╗╨┤╨░╤В╨╕╨║╨░, ╨╛╨┤╨╕╨╜ ╨▒╨╡╨╖ ╨│╨╛╨╗╨╛╨▓╤Л'),(53,'╨Э╨╡╨▒╨╛╨╗╤М╤И╨░╤П ╨║╨╛╤А╨╛╨▒╨║╨░ ╤Б ╨┐╤Г╨│╨╛╨▓╨╕╤Ж╨░╨╝╨╕ ╤А╨░╨╖╨╜╨╛╨│╨╛ ╤А╨░╨╖╨╝╨╡╤А╨░'),(54,'╨б╨▓╨╡╤З╨░, ╨║╨╛╤В╨╛╤А╨░╤П ╨╜╨╕╨║╨░╨║ ╨╜╨╡ ╨╖╨░╨│╨╛╤А╨░╨╡╤В╤Б╤П'),(55,'╨Ъ╤А╨╛╤Е╨╛╤В╨╜╨░╤П ╨║╨╗╨╡╤В╨║╨░ ╨▒╨╡╨╖ ╨┤╨▓╨╡╤А╤Ж╤Л'),(56,'╨б╤В╨░╤А╤Л╨╣ ╨║╨╗╤О╤З'),(57,'╨Э╨╡ ╨┐╨╛╨┤╨┤╨░╤О╤Й╨░╤П╤Б╤П ╤А╨░╤Б╤И╨╕╤Д╤А╨╛╨▓╨║╨╡ ╨║╨░╤А╤В╨░ ╤Б╨╛╨║╤А╨╛╨▓╨╕╤Й'),(58,'╨а╤Г╨║╨╛╤П╤В╨║╨░ ╨╛╤В ╤Б╨╗╨╛╨╝╨░╨╜╨╜╨╛╨│╨╛ ╨╝╨╡╤З╨░'),(59,'╨Ъ╤А╨╛╨╗╨╕╤З╤М╤П ╨╗╨░╨┐╨║╨░'),(60,'╨б╤В╨╡╨║╨╗╤П╨╜╨╜╤Л╨╣ ╨│╨╗╨░╨╖'),(61,'╨Ъ╨░╨╝╨╡╤П ╤Б ╤А╨╡╨╖╨╜╤Л╨╝ ╨┐╨╛╤А╤В╤А╨╡╤В╨╛╨╝ ╤Г╨╢╨░╤Б╨╜╨╛╨│╨╛ ╨╗╨╕╤Ж╨░'),(62,'╨б╨╡╤А╨╡╨▒╤А╤П╨╜╤Л╨╣ ╤З╨╡╤А╨╡╨┐ ╤А╨░╨╖╨╝╨╡╤А╨╛╨╝ ╤Б ╨╝╨╛╨╜╨╡╤В╤Г'),(63,'╨Р╨╗╨╡╨▒╨░╤Б╤В╤А╨╛╨▓╨░╤П ╨╝╨░╤Б╨║╨░'),(64,'╨Я╨╕╤А╨░╨╝╨╕╨┤╨║╨░ ╨║╨╗╨╡╨╣╨║╨╛╨│╨╛ ╤З╤С╤А╨╜╨╛╨│╨╛ ╨┤╤Г╤А╨╜╨╛ ╨┐╨░╤Е╨╜╤Г╤Й╨╡╨│╨╛ ╨▒╨╗╨░╨│╨╛╨▓╨╛╨╜╨╕╤П'),(65,'╨Э╨╛╤З╨╜╨╛╨╣ ╨║╨╛╨╗╨┐╨░╨║, ╨┤╨░╤А╤Г╤О╤Й╨╕╨╣ ╨┐╤А╨╕╤П╤В╨╜╤Л╨╡ ╤Б╨╜╤Л'),(66,'╨Ю╨┤╨╕╨╜ ╨║╨╛╤Б╤В╤П╨╜╨╛╨╣ ╨║╨░╨╗╤В╤А╨╛╨┐'),(67,'╨Ч╨╛╨╗╨╛╤В╨░╤П ╨╛╨┐╤А╨░╨▓╨░ ╨╝╨╛╨╜╨╛╨║╨╗╤П ╨▒╨╡╨╖ ╨╗╨╕╨╜╨╖╤Л'),(68,'╨Ъ╤Г╨▒╨╕╨║ ╤Б ╨┤╨╗╨╕╨╜╨╛╨╣ ╤А╨╡╨▒╤А╨░ 2 ╤Б╨░╨╜╤В╨╕╨╝╨╡╤В╤А╨░, ╨▓╤Б╨╡ ╤Б╤В╨╛╤А╨╛╨╜╤Л ╤А╨░╤Б╨║╤А╨░╤И╨╡╨╜╤Л ╨▓ ╤А╨░╨╖╨╜╤Л╨╡ ╤Ж╨▓╨╡╤В╨░'),(69,'╨е╤А╤Г╤Б╤В╨░╨╗╤М╨╜╨░╤П ╨┤╨▓╨╡╤А╨╜╨░╤П ╤А╤Г╤З╨║╨░'),(70,'╨Я╨░╨║╨╡╤В╨╕╨║ ╤А╨╛╨╖╨╛╨▓╨╛╨╣ ╨┐╤Л╨╗╨╕'),(71,'╨Ф╨▓╨░ ╨╗╨╕╤Б╤В╨░ ╨┐╨╡╤А╨│╨░╨╝╨╡╨╜╤В╨░ ╤Б ╤Д╤А╨░╨│╨╝╨╡╨╜╤В╨╛╨╝ ╨╜╨╛╤В ╨┐╤А╨╡╨║╤А╨░╤Б╨╜╨╛╨╣ ╨┐╨╡╤Б╨╜╨╕'),(72,'╨б╨╡╤А╨╡╨▒╤А╤П╨╜╨░╤П ╤Б╨╡╤А╤М╨│╨░ ╨▓ ╨▓╨╕╨┤╨╡ ╤Б╨╗╨╡╨╖╨╕╨╜╨║╨╕, ╤Б╨┤╨╡╨╗╨░╨╜╨╜╨░╤П ╨╕╨╖ ╨╜╨░╤Б╤В╨╛╤П╤Й╨╡╨╣ ╤Б╨╗╨╡╨╖╨╕╨╜╨║╨╕'),(73,'╨п╨╕╤З╨╜╨░╤П ╤Б╨║╨╛╤А╨╗╤Г╨┐╨░, ╤А╨░╨╖╤А╨╕╤Б╨╛╨▓╨░╨╜╨╜╨░╤П ╤Б ╨╢╤Г╤В╨║╨╕╨╝╨╕ ╨┐╨╛╨┤╤А╨╛╨▒╨╜╨╛╤Б╤В╤П╨╝╨╕ ╤Б╤Ж╨╡╨╜╨░╨╝╨╕ ╤З╨╡╨╗╨╛╨▓╨╡╤З╨╡╤Б╨║╨╕╤Е ╨╝╤Г╨║'),(74,'╨Т╨╡╨╡╤А, ╨╜╨░ ╨║╨╛╤В╨╛╤А╨╛╨╝ ╨▓ ╤А╨░╤Б╨║╤А╤Л╤В╨╛╨╝ ╤Б╨╛╤Б╤В╨╛╤П╨╜╨╕╨╕ ╨▓╨╕╨┤╨╜╨╛ ╤Б╨┐╤П╤Й╤Г╤О ╨║╨╛╤И╨║╤Г'),(75,'╨Э╨░╨▒╨╛╤А ╨║╨╛╤Б╤В╤П╨╜╤Л╤Е ╤В╤А╤Г╨▒╨╛╤З╨╡╨║'),(76,'╨з╨╡╤В╤Л╤А╤С╤Е╨╗╨╕╤Б╤В╨╜╤Л╨╣ ╨║╨╗╨╡╨▓╨╡╤А, ╨╖╨░╤Б╤Г╤И╨╡╨╜╨╜╤Л╨╣ ╨▓ ╨║╨╜╨╕╨│╨╡ ╨╛ ╨╝╨░╨╜╨╡╤А╨░╤Е ╨╕ ╤Н╤В╨╕╨║╨╡╤В╨╡'),(77,'╨Ы╨╕╤Б╤В ╨┐╨╡╤А╨│╨░╨╝╨╡╨╜╤В╨░, ╨╜╨░ ╨║╨╛╤В╨╛╤А╨╛╨╝ ╨╕╨╖╨╛╨▒╤А╨░╨╢╨╡╨╜╨░ ╤Б╨╗╨╛╨╢╨╜╨░╤П ╨╝╨╡╤Е╨░╨╜╨╕╤З╨╡╤Б╨║╨░╤П ╨║╨╛╨╜╤Б╤В╤А╤Г╨║╤Ж╨╕╤П'),(78,'╨а╨░╨╖╤Г╨║╤А╨░╤И╨╡╨╜╨╜╤Л╨╡ ╨╜╨╛╨╢╨╜╤Л, ╨┐╨╛╨┤ ╨║╨╛╤В╨╛╤А╤Л╨╡ ╨▓╤Л ╨╜╨╕╨║╨░╨║ ╨╜╨╡ ╨╝╨╛╨╢╨╡╤В╨╡ ╨╜╨░╨╣╤В╨╕ ╨┐╨╛╨┤╤Е╨╛╨┤╤П╤Й╨╕╨╣ ╨║╨╗╨╕╨╜╨╛╨║'),(79,'╨Я╤А╨╕╨│╨╗╨░╤И╨╡╨╜╨╕╨╡ ╨╜╨░ ╨▓╨╡╤З╨╡╤А╨╕╨╜╨║╤Г, ╨╜╨░ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨┐╤А╨╛╨╕╨╖╨╛╤И╨╗╨╛ ╤Г╨▒╨╕╨╣╤Б╤В╨▓╨╛'),(80,'╨С╤А╨╛╨╜╨╖╨╛╨▓╨░╤П ╨┐╨╡╨╜╤В╨░╨│╤А╨░╨╝╨╝╨░ ╤Б ╨▓╤Л╨│╤А╨░╨▓╨╕╤А╨╛╨▓╨░╨╜╨╜╨╛╨╣ ╨▓ ╤Ж╨╡╨╜╤В╤А╨╡ ╨║╤А╤Л╤Б╨╕╨╜╨╛╨╣ ╨│╨╛╨╗╨╛╨▓╨╛╨╣'),(81,'╨д╨╕╨╛╨╗╨╡╤В╨╛╨▓╤Л╨╣ ╨╜╨╛╤Б╨╛╨▓╨╛╨╣ ╨┐╨╗╨░╤В╨╛╨║ ╤Б ╨▓╤Л╤И╨╕╤В╤Л╨╝ ╨╕╨╝╨╡╨╜╨╡╨╝ ╨▓╨╡╨╗╨╕╨║╨╛╨│╨╛ ╨░╤А╤Е╨╕╨╝╨░╨│╨░'),(82,'╨Я╨╛╨╗╨╛╨▓╨╕╨╜╨║╨░ ╨┐╨╗╨░╨╜╨░ ╤Е╤А╨░╨╝╨░, ╨╖╨░╨╝╨║╨░ ╨╕╨╗╨╕ ╨┤╤А╤Г╨│╨╛╨│╨╛ ╤Б╤В╤А╨╛╨╡╨╜╨╕╤П'),(83,'╨Ъ╤Г╤Б╨╛╤З╨╡╨║ ╤Б╨╗╨╛╨╢╨╡╨╜╨╜╨╛╨╣ ╤В╨║╨░╨╜╨╕, ╨║╨╛╤В╨╛╤А╤Л╨╣, ╨╡╤Б╨╗╨╕ ╤А╨░╨╖╨▓╨╡╤А╨╜╤Г╤В╤М, ╨┐╤А╨╡╨▓╤А╨░╤Й╨░╨╡╤В╤Б╤П ╨▓ ╨╝╨╛╨┤╨╜╤Г╤О ╨║╨╡╨┐╨║╤Г'),(84,'╨Ъ╨▓╨╕╤В╨░╨╜╤Ж╨╕╤П ╨╛ ╨┤╨╡╨┐╨╛╨╖╨╕╤В╨╡ ╨▓ ╨▒╨░╨╜╨║╨╡ ╨┤╨░╨╗╤С╨║╨╛╨│╨╛ ╨│╨╛╤А╨╛╨┤╨░'),(85,'╨Ф╨╜╨╡╨▓╨╜╨╕╨║, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╝ ╨╜╨╡ ╤Е╨▓╨░╤В╨░╨╡╤В ╤Б╨╡╨╝╤М ╤Б╤В╤А╨░╨╜╨╕╤Ж'),(86,'╨Я╤Г╤Б╤В╨░╤П ╤Б╨╡╤А╨╡╨▒╤А╤П╨╜╨░╤П ╤В╨░╨▒╨░╨║╨╡╤А╨║╨░ ╤Б ╨╜╨░╨┤╨┐╨╕╤Б╤М╤О ╨╜╨░ ╨┐╨╛╨▓╨╡╤А╤Е╨╜╨╛╤Б╤В╨╕ ┬л╨│╤А╤С╨╖╤Л┬╗'),(87,'╨Ц╨╡╨╗╨╡╨╖╨╜╤Л╨╣ ╤Б╨▓╤П╤В╨╛╨╣ ╤Б╨╕╨╝╨▓╨╛╨╗ ╨╜╨╡╨╕╨╖╨▓╨╡╤Б╤В╨╜╨╛╨│╨╛ ╨▒╨╛╨╢╨╡╤Б╤В╨▓╨░'),(88,'╨Ъ╨╜╨╕╨│╨░ ╨╛ ╨▓╨╛╤Б╤Е╨╛╨╢╨┤╨╡╨╜╨╕╨╕ ╨╕ ╤Б╨▓╨╡╤А╨╢╨╡╨╜╨╕╨╕ ╨╗╨╡╨│╨╡╨╜╨┤╨░╤А╨╜╨╛╨│╨╛ ╨│╨╡╤А╨╛╤П, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨╜╨╡╤В ╨┐╨╛╤Б╨╗╨╡╨┤╨╜╨╡╨╣ ╨│╨╗╨░╨▓╤Л'),(89,'╨б╨╛╤Б╤Г╨┤ ╤Б ╨┤╤А╨░╨║╨╛╨╜╤М╨╡╨╣ ╨║╤А╨╛╨▓╤М╤О'),(90,'╨Ф╤А╨╡╨▓╨╜╤П╤П ╤Н╨╗╤М╤Д╨╕╨╣╤Б╨║╨░╤П ╤Б╤В╤А╨╡╨╗╨░'),(91,'╨Ш╨│╨╛╨╗╨║╨░, ╨║╨╛╤В╨╛╤А╨░╤П ╨╜╨╕╨║╨╛╨│╨┤╨░ ╨╜╨╡ ╨│╨╜╤С╤В╤Б╤П'),(92,'╨Ъ╤А╨░╤Б╨╕╨▓╨░╤П ╨┤╨▓╨░╤А╤Д╤Б╨║╨░╤П ╨▒╤А╨╛╤И╤М'),(93,'╨Я╤Г╤Б╤В╨░╤П ╨▒╤Г╤В╤Л╨╗╨║╨░ ╨╕╨╖-╨┐╨╛╨┤ ╨▓╨╕╨╜╨░ ╤Б ╨╜╨╡╨▒╨╛╨╗╤М╤И╨╛╨╣ ╨╜╨░╨║╨╗╨╡╨╣╨║╨╛╨╣ ┬л╨Т╨╕╨╜╨╛╨║╤Г╤А╨╜╤П ╨Т╨╕╨╜╨╜╨╛╨│╨╛ ╨Т╨╛╨╗╤И╨╡╨▒╨╜╨╕╨║╨░, ╨Ъ╤А╨░╤Б╨╜╨╛╨╡ ╨┤╤А╨░╨║╨╛╨╜╤М╨╡, 331422-╨Т┬╗'),(94,'╨Я╨╗╨╕╤В╨║╨░ ╨╝╨╛╨╖╨░╨╕╨║╨╕ ╤Б ╤А╨░╨╖╨╜╨╛╤Ж╨▓╨╡╤В╨╜╨╛╨╣ ╨│╨╗╨░╨╖╨╕╤А╨╛╨▓╨░╨╜╨╜╨╛╨╣ ╨┐╨╛╨▓╨╡╤А╤Е╨╜╨╛╤Б╤В╤М╤О'),(95,'╨Ю╨║╨░╨╝╨╡╨╜╨╡╨▓╤И╨░╤П ╨╝╤Л╤И╤М'),(96,'╨з╤С╤А╨╜╤Л╨╣ ╨┐╨╕╤А╨░╤В╤Б╨║╨╕╨╣ ╤Д╨╗╨░╨│ ╤Б ╤З╨╡╤А╨╡╨┐╨╛╨╝ ╨╕ ╨║╨╛╤Б╤В╤П╨╝╨╕ ╨┤╤А╨░╨║╨╛╨╜╨░'),(97,'╨Ъ╤А╨╛╤Е╨╛╤В╨╜╤Л╨╣ ╨╝╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨╕╨╣ ╨║╤А╨░╨▒ ╨╕╨╗╨╕ ╨┐╨░╤Г╨║, ╨║╨╛╤В╨╛╤А╤Л╨╣ ╨┤╨▓╨╕╨│╨░╨╡╤В╤Б╤П, ╨║╨╛╨│╨┤╨░ ╨╜╨░ ╨╜╨╡╨│╨╛ ╨╜╨╡ ╤Б╨╝╨╛╤В╤А╤П╤В'),(98,'╨б╤В╨╡╨║╨╗╤П╨╜╨╜╨░╤П ╨▒╤Г╤В╤Л╨╗╨║╨░ ╤Б╨░╨╗╨░ ╤Б ╤Н╤В╨╕╨║╨╡╤В╨║╨╛╨╣ ┬л╨Ц╨╕╤А ╨│╤А╨╕╤Д╨╛╨╜╨░┬╗'),(99,'╨Ф╨╡╤А╨╡╨▓╤П╨╜╨╜╨░╤П ╨║╨╛╤А╨╛╨▒╨║╨░ ╤Б ╨║╨╡╤А╨░╨╝╨╕╤З╨╡╤Б╨║╨╕╨╝ ╨┤╨╜╨╛╨╝, ╨▓ ╨║╨╛╤В╨╛╤А╨╛╨╣ ╨╢╨╕╨▓╤С╤В ╤З╨╡╤А╨▓╤П╨║ ╤Б ╨┤╨▓╤Г╨╝╤П ╨│╨╛╨╗╨╛╨▓╨░╨╝╨╕ ╨╜╨░ ╨║╨░╨╢╨┤╨╛╨╝ ╨║╨╛╨╜╤Ж╨╡ ╤В╨╡╨╗╨░'),(100,'╨Ь╨╡╤В╨░╨╗╨╗╨╕╤З╨╡╤Б╨║╨░╤П ╤Г╤А╨╜╨░ ╤Б ╨┐╤А╨░╤Е╨╛╨╝ ╨│╨╡╤А╨╛╤П');
/*!40000 ALTER TABLE `trinkets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_classes`
--

DROP TABLE IF EXISTS `user_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_classes` (
  `user_id` int NOT NULL,
  `class_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`class_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `user_classes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_classes_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_classes`
--

LOCK TABLES `user_classes` WRITE;
/*!40000 ALTER TABLE `user_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Getm1st'),(2,'MeatKotya');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `id` int NOT NULL,
  `name_weapon` varchar(50) DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `damage_dice` varchar(10) DEFAULT NULL,
  `damage_type` varchar(20) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `features` text,
  `type_weapon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,'╨С╨╛╨╡╨▓╨╛╨╣ ╨┐╨╛╤Б╨╛╤Е','2 ╤Б╨╝','1╨║6','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',4.00,'╤Г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗╤М╨╜╨╛╨╡ (1╨║8)','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(2,'╨С╤Г╨╗╨░╨▓╨░','5 ╨╖╨╝','1╨║6','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',4.00,'тАФ','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(3,'╨Ф╤Г╨▒╨╕╨╜╨║╨░','1 ╤Б╨╝','1╨║4','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',2.00,'╨╗╤С╨│╨║╨╛╨╡','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(4,'╨Ъ╨╕╨╜╨╢╨░╨╗','2 ╨╖╨╝','1╨║4','╨║╨╛╨╗╤О╤Й╨╕╨╣',1.00,'╨╗╤С╨│╨║╨╛╨╡, ╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (20/60), ╤Д╨╡╤Е╤В╨╛╨▓╨░╨╗╤М╨╜╨╛╨╡','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(5,'╨Ъ╨╛╨┐╤М╤С','1 ╨╖╨╝','1╨║6','╨║╨╛╨╗╤О╤Й╨╕╨╣',3.00,'╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (20/60), ╤Г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗╤М╨╜╨╛╨╡ (1╨║8)','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(6,'╨Ы╤С╨│╨║╨╕╨╣ ╨╝╨╛╨╗╨╛╤В','2 ╨╖╨╝','1╨║4','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',2.00,'╨╗╤С╨│╨║╨╛╨╡, ╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (20/60)','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(7,'╨Ь╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ ╨║╨╛╨┐╤М╤С','5 ╤Б╨╝','1╨║6','╨║╨╛╨╗╤О╤Й╨╕╨╣',2.00,'╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (30/120)','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(8,'╨Я╨░╨╗╨╕╤Ж╨░','2 ╤Б╨╝','1╨║8','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',10.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(9,'╨а╤Г╤З╨╜╨╛╨╣ ╤В╨╛╨┐╨╛╤А','5 ╨╖╨╝','1╨║6','╤А╤Г╨▒╤П╤Й╨╕╨╣',2.00,'╨╗╤С╨│╨║╨╛╨╡, ╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (20/60)','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(10,'╨б╨╡╤А╨┐','1 ╨╖╨╝','1╨║4','╤А╤Г╨▒╤П╤Й╨╕╨╣',2.00,'╨╗╤С╨│╨║╨╛╨╡','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(11,'╨Р╤А╨▒╨░╨╗╨╡╤В, ╨╗╤С╨│╨║╨╕╨╣','25 ╨╖╨╝','1╨║8','╨║╨╛╨╗╤О╤Й╨╕╨╣',5.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (80/320), ╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╨┐╨╡╤А╨╡╨╖╨░╤А╤П╨┤╨║╨░','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(12,'╨Ф╤А╨╛╤В╨╕╨║','5 ╨╝╨╝','1╨║4','╨║╨╛╨╗╤О╤Й╨╕╨╣',0.25,'╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (20/60), ╤Д╨╡╤Е╤В╨╛╨▓╨░╨╗╤М╨╜╨╛╨╡','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(13,'╨Ъ╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╗╤Г╨║','25 ╨╖╨╝','1╨║6','╨║╨╛╨╗╤О╤Й╨╕╨╣',2.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (80/320), ╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(14,'╨Я╤А╨░╤Й╨░','1 ╤Б╨╝','1╨║4','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',0.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (30/120)','╨┐╤А╨╛╤Б╤В╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(15,'╨Р╨╗╨╡╨▒╨░╤А╨┤╨░','20 ╨╖╨╝','1╨║10','╤А╤Г╨▒╤П╤Й╨╕╨╣',6.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╨┤╨╛╤Б╤П╨│╨░╨╡╨╝╨╛╤Б╤В╤М, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(16,'╨С╨╛╨╡╨▓╨░╤П ╨║╨╕╤А╨║╨░','5 ╨╖╨╝','1╨║8','╨║╨╛╨╗╤О╤Й╨╕╨╣',2.00,'тАФ','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(17,'╨С╨╛╨╡╨▓╨╛╨╣ ╨╝╨╛╨╗╨╛╤В','15 ╨╖╨╝','1╨║8','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',2.00,'╤Г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗╤М╨╜╨╛╨╡ (1╨║10)','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(18,'╨С╨╛╨╡╨▓╨╛╨╣ ╤В╨╛╨┐╨╛╤А','10 ╨╖╨╝','1╨║8','╤А╤Г╨▒╤П╤Й╨╕╨╣',4.00,'╤Г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗╤М╨╜╨╛╨╡ (1╨║10)','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(19,'╨У╨╗╨╡╤Д╨░','20 ╨╖╨╝','1╨║10','╤А╤Г╨▒╤П╤Й╨╕╨╣',6.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╨┤╨╛╤Б╤П╨│╨░╨╡╨╝╨╛╤Б╤В╤М, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(20,'╨Ф╨▓╤Г╤А╤Г╤З╨╜╤Л╨╣ ╨╝╨╡╤З','50 ╨╖╨╝','2╨║6','╤А╤Г╨▒╤П╤Й╨╕╨╣',6.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(21,'╨Ф╨╗╨╕╨╜╨╜╨╛╨╡ ╨║╨╛╨┐╤М╤С','10 ╨╖╨╝','1╨║12','╨║╨╛╨╗╤О╤Й╨╕╨╣',6.00,'╨┤╨╛╤Б╤П╨│╨░╨╡╨╝╨╛╤Б╤В╤М, ╨╛╤Б╨╛╨▒╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(22,'╨Ф╨╗╨╕╨╜╨╜╤Л╨╣ ╨╝╨╡╤З','15 ╨╖╨╝','1╨║8','╤А╤Г╨▒╤П╤Й╨╕╨╣',3.00,'╤Г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗╤М╨╜╨╛╨╡ (1╨║10)','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(23,'╨Ъ╨╜╤Г╤В','2 ╨╖╨╝','1╨║4','╤А╤Г╨▒╤П╤Й╨╕╨╣',3.00,'╨┤╨╛╤Б╤П╨│╨░╨╡╨╝╨╛╤Б╤В╤М, ╤Д╨╡╤Е╤В╨╛╨▓╨░╨╗╤М╨╜╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(24,'╨Ъ╨╛╤А╨╛╤В╨║╨╕╨╣ ╨╝╨╡╤З','10 ╨╖╨╝','1╨║6','╨║╨╛╨╗╤О╤Й╨╕╨╣',2.00,'╨╗╤С╨│╨║╨╛╨╡, ╤Д╨╡╤Е╤В╨╛╨▓╨░╨╗╤М╨╜╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(25,'╨Ь╨╛╨╗╨╛╤В','10 ╨╖╨╝','2╨║6','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',10.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(26,'╨Ь╨╛╤А╨│╨╡╨╜╤И╤В╨╡╤А╨╜','15 ╨╖╨╝','1╨║8','╨║╨╛╨╗╤О╤Й╨╕╨╣',4.00,'тАФ','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(27,'╨Я╨╕╨║╨░','5 ╨╖╨╝','1╨║10','╨║╨╛╨╗╤О╤Й╨╕╨╣',18.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╨┤╨╛╤Б╤П╨│╨░╨╡╨╝╨╛╤Б╤В╤М, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(28,'╨а╨░╨┐╨╕╤А╨░','25 ╨╖╨╝','1╨║8','╨║╨╛╨╗╤О╤Й╨╕╨╣',2.00,'╤Д╨╡╤Е╤В╨╛╨▓╨░╨╗╤М╨╜╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(29,'╨б╨╡╨║╨╕╤А╨░','30 ╨╖╨╝','1╨║12','╤А╤Г╨▒╤П╤Й╨╕╨╣',7.00,'╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(30,'╨б╨║╨╕╨╝╨╕╤В╨░╤А','25 ╨╖╨╝','1╨║6','╤А╤Г╨▒╤П╤Й╨╕╨╣',3.00,'╨╗╤С╨│╨║╨╛╨╡, ╤Д╨╡╤Е╤В╨╛╨▓╨░╨╗╤М╨╜╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(31,'╨в╤А╨╡╨╖╤Г╨▒╨╡╤Ж','5 ╨╖╨╝','1╨║6','╨║╨╛╨╗╤О╤Й╨╕╨╣',4.00,'╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (20/60), ╤Г╨╜╨╕╨▓╨╡╤А╤Б╨░╨╗╤М╨╜╨╛╨╡ (1╨║8)','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(32,'╨ж╨╡╨┐','10 ╨╖╨╝','1╨║8','╨┤╤А╨╛╨▒╤П╤Й╨╕╨╣',2.00,'тАФ','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╤А╤Г╨║╨╛╨┐╨░╤И╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(33,'╨Р╤А╨▒╨░╨╗╨╡╤В, ╤А╤Г╤З╨╜╨╛╨╣','75 ╨╖╨╝','1╨║6','╨║╨╛╨╗╤О╤Й╨╕╨╣',3.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (30/120), ╨╗╤С╨│╨║╨╛╨╡, ╨┐╨╡╤А╨╡╨╖╨░╤А╤П╨┤╨║╨░','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(34,'╨Р╤А╨▒╨░╨╗╨╡╤В, ╤В╤П╨╢╤С╨╗╤Л╨╣','50 ╨╖╨╝','1╨║10','╨║╨╛╨╗╤О╤Й╨╕╨╣',18.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (100/400), ╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╨┐╨╡╤А╨╡╨╖╨░╤А╤П╨┤╨║╨░, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(35,'╨Ф╨╗╨╕╨╜╨╜╤Л╨╣ ╨╗╤Г╨║','50 ╨╖╨╝','1╨║8','╨║╨╛╨╗╤О╤Й╨╕╨╣',2.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (150/600), ╨┤╨▓╤Г╤А╤Г╤З╨╜╨╛╨╡, ╤В╤П╨╢╤С╨╗╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(36,'╨Ф╤Г╤Е╨╛╨▓╨░╤П ╤В╤А╤Г╨▒╨║╨░','10 ╨╖╨╝','1','╨║╨╛╨╗╤О╤Й╨╕╨╣',1.00,'╨▒╨╛╨╡╨┐╤А╨╕╨┐╨░╤Б (25/100), ╨┐╨╡╤А╨╡╨╖╨░╤А╤П╨┤╨║╨░','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡'),(37,'╨б╨╡╤В╤М','1 ╨╖╨╝','тАФ','тАФ',3.00,'╨╝╨╡╤В╨░╤В╨╡╨╗╤М╨╜╨╛╨╡ (5/15), ╨╛╤Б╨╛╨▒╨╛╨╡','╨▓╨╛╨╕╨╜╤Б╨║╨╛╨╡ ╨┤╨░╨╗╤М╨╜╨╛╨▒╨╛╨╣╨╜╨╛╨╡ ╨╛╤А╤Г╨╢╨╕╨╡');
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 23:04:30
