-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: test_db
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) DEFAULT NULL,
  `FirstName` text,
  `LastName` text,
  `Gender` text,
  `Country` text,
  `Age` int(11) DEFAULT NULL,
  `Date` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1562,'Dulce','Abril','Female','United States',32,'15/10/2017'),(1582,'Mara','Hashimoto','Female','Great Britain',25,'16/08/2016'),(2587,'Philip','Gent','Male','Newzealand',36,'21/05/2015'),(3549,'Kathleen','Hanner','Female','United States',25,'15/10/2017'),(2468,'Nereida','Magwood','Female','United States',58,'16/08/2016'),(2554,'Gaston','Brumm','Male','United States',24,'21/05/2015'),(3598,'Etta','Hurn','Female','Great Britain',56,'15/10/2017'),(2456,'Earlean','Melgar','Female','United States',27,'16/08/2016'),(6548,'Vincenza','Weiland','Female','United States',40,'21/05/2015'),(5486,'Fallon','Winward','Female','Great Britain',28,'16/08/2016'),(1258,'Arcelia','Bouska','Female','Great Britain',39,'21/05/2015'),(2579,'Franklyn','Unknow','Male','Australia',38,'15/10/2017'),(3256,'Sherron','Ascencio','Female','Great Britain',32,'16/08/2016'),(2587,'Marcel','Zabriskie','Male','Great Britain',26,'21/05/2015'),(3259,'Kina','Hazelton','Female','Great Britain',31,'16/08/2016'),(1546,'Shavonne','Pia','Female','Australia',24,'21/05/2015'),(3579,'Shavon','Benito','Female','Indonasia',39,'15/10/2017'),(6597,'Lauralee','Perrine','Female','Great Britain',28,'16/08/2016'),(9654,'Loreta','Curren','Female','Australia',26,'21/05/2015'),(3569,'Teresa','Strawn','Female','Australia',46,'21/05/2015'),(2564,'Belinda','Partain','Female','United States',37,'15/10/2017'),(8561,'Holly','Eudy','Female','United States',52,'16/08/2016'),(5489,'Many','Cuccia','Female','Great Britain',46,'21/05/2015'),(5489,'Libbie','Dalby','Female','Finland',42,'21/05/2015'),(6574,'Lester','Prothro','Male','Poland',21,'15/10/2017'),(5555,'Marvel','Hail','Female','Great Britain',28,'16/08/2016'),(6125,'Angelyn','Vong','Female','United States',29,'21/05/2015'),(5412,'Francesca','Beaudreau','Female','Australia',23,'15/10/2017'),(3256,'Garth','Gangi','Male','United States',41,'16/08/2016'),(3264,'Carla','Trumbull','Female','Great Britain',28,'21/05/2015'),(4569,'Veta','Muntz','Female','Great Britain',37,'15/10/2017'),(7521,'Stasia','Becker','Female','Great Britain',34,'16/08/2016'),(6458,'Jona','Grindle','Female','Great Britain',26,'21/05/2015'),(7569,'Judie','Claywell','Female','portugul',35,'16/08/2016'),(8514,'Dewitt','Borger','Male','United States',36,'21/05/2015'),(8563,'Nena','Hacker','Female','United States',29,'15/10/2017'),(8642,'Kelsie','Wachtel','Female','Itly',27,'16/08/2016'),(9536,'Sau','Pfau','Female','United States',25,'21/05/2015'),(2567,'Shanice','Mccrystal','Female','United States',36,'21/05/2015'),(2154,'Chase','Karner','Male','United States',37,'15/10/2017'),(3265,'Tommie','Underdahl','Male','United States',26,'16/08/2016'),(8765,'Dorcas','Darity','Female','United States',37,'21/05/2015'),(3259,'Angel','Sanor','Male','France',24,'15/10/2017'),(3567,'Willodean','Harn','Female','United States',39,'16/08/2016'),(6540,'Weston','Martina','Male','United States',26,'21/05/2015'),(2654,'Roma','Lafollette','Female','United States',34,'15/10/2017'),(6525,'Felisa','Cail','Female','United States',28,'16/08/2016'),(3265,'Demetria','Abbey','Female','United States',32,'21/05/2015'),(3265,'Jeromy','Danz','Male','United States',39,'15/10/2017'),(6125,'Rasheeda','Alkire','Female','United States',29,'16/08/2016'),(1562,'Dulce','Abril','Female','United States',32,'15/10/2017'),(1582,'Mara','Hashimoto','Female','Great Britain',25,'16/08/2016'),(2587,'Philip','Gent','Male','France',36,'21/05/2015'),(3549,'Kathleen','Hanner','Female','United States',25,'15/10/2017'),(2468,'Nereida','Magwood','Female','United States',58,'16/08/2016'),(2554,'Gaston','Brumm','Male','United States',24,'21/05/2015'),(3598,'Etta','Hurn','Female','Great Britain',56,'15/10/2017'),(2456,'Earlean','Melgar','Female','United States',27,'16/08/2016'),(6548,'Vincenza','Weiland','Female','United States',40,'21/05/2015'),(5486,'Fallon','Winward','Female','Great Britain',28,'16/08/2016'),(1258,'Arcelia','Bouska','Female','Great Britain',39,'21/05/2015'),(2579,'Franklyn','Unknow','Male','France',38,'15/10/2017'),(3256,'Sherron','Ascencio','Female','Great Britain',32,'16/08/2016'),(2587,'Marcel','Zabriskie','Male','Great Britain',26,'21/05/2015'),(3259,'Kina','Hazelton','Female','Great Britain',31,'16/08/2016'),(1546,'Shavonne','Pia','Female','France',24,'21/05/2015'),(3579,'Shavon','Benito','Female','France',39,'15/10/2017'),(6597,'Lauralee','Perrine','Female','Great Britain',28,'16/08/2016'),(9654,'Loreta','Curren','Female','France',26,'21/05/2015'),(3569,'Teresa','Strawn','Female','France',46,'21/05/2015'),(2564,'Belinda','Partain','Female','United States',37,'15/10/2017'),(8561,'Holly','Eudy','Female','United States',52,'16/08/2016'),(5489,'Many','Cuccia','Female','Great Britain',46,'21/05/2015'),(5489,'Libbie','Dalby','Female','France',42,'21/05/2015'),(6574,'Lester','Prothro','Male','France',21,'15/10/2017'),(5555,'Marvel','Hail','Female','Great Britain',28,'16/08/2016'),(6125,'Angelyn','Vong','Female','United States',29,'21/05/2015'),(5412,'Francesca','Beaudreau','Female','France',23,'15/10/2017'),(3256,'Garth','Gangi','Male','United States',41,'16/08/2016'),(3264,'Carla','Trumbull','Female','Great Britain',28,'21/05/2015'),(4569,'Veta','Muntz','Female','Great Britain',37,'15/10/2017'),(7521,'Stasia','Becker','Female','Great Britain',34,'16/08/2016'),(6458,'Jona','Grindle','Female','Great Britain',26,'21/05/2015'),(7569,'Judie','Claywell','Female','France',35,'16/08/2016'),(8514,'Dewitt','Borger','Male','United States',36,'21/05/2015'),(8563,'Nena','Hacker','Female','United States',29,'15/10/2017'),(8642,'Kelsie','Wachtel','Female','France',27,'16/08/2016'),(9536,'Sau','Pfau','Female','United States',25,'21/05/2015'),(2567,'Shanice','Mccrystal','Female','United States',36,'21/05/2015'),(2154,'Chase','Karner','Male','United States',37,'15/10/2017'),(3265,'Tommie','Underdahl','Male','United States',26,'16/08/2016'),(8765,'Dorcas','Darity','Female','United States',37,'21/05/2015'),(3259,'Angel','Sanor','Male','France',24,'15/10/2017'),(3567,'Willodean','Harn','Female','United States',39,'16/08/2016'),(6540,'Weston','Martina','Male','United States',26,'21/05/2015'),(2654,'Roma','Lafollette','Female','United States',34,'15/10/2017'),(6525,'Felisa','Cail','Female','United States',28,'16/08/2016'),(3265,'Demetria','Abbey','Female','United States',32,'21/05/2015'),(3265,'Jeromy','Danz','Male','United States',39,'15/10/2017'),(6125,'Rasheeda','Alkire','Female','United States',29,'16/08/2016');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 12:09:33
