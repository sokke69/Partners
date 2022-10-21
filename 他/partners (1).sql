-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: partners
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `alcohols`
--

DROP TABLE IF EXISTS `alcohols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alcohols` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alcohol` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alcohols`
--

LOCK TABLES `alcohols` WRITE;
/*!40000 ALTER TABLE `alcohols` DISABLE KEYS */;
INSERT INTO `alcohols` VALUES (1,'選択しない'),(2,'飲まない'),(3,'飲む'),(4,'ときどき飲む');
/*!40000 ALTER TABLE `alcohols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annual_incomes`
--

DROP TABLE IF EXISTS `annual_incomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `annual_incomes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annual_income` varchar(20) DEFAULT NULL,
  `annual_income_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annual_incomes`
--

LOCK TABLES `annual_incomes` WRITE;
/*!40000 ALTER TABLE `annual_incomes` DISABLE KEYS */;
INSERT INTO `annual_incomes` VALUES (1,'表示しない',NULL),(2,'200万円未満',100),(3,'200万円以上～400万円未満',200),(4,'400万円以上～600万円未満',400),(5,'600万円以上～800万円未満',600),(6,'800万円以上～1000万円未満',800),(7,'1000万円以上～1500万円未満',1000),(8,'1500万円以上～2000万円未満',1500),(9,'2000万円以上～3000万円未満',2000);
/*!40000 ALTER TABLE `annual_incomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_places`
--

DROP TABLE IF EXISTS `birth_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_places` (
  `id` int NOT NULL AUTO_INCREMENT,
  `birth_place` varchar(4) DEFAULT NULL,
  `prefecture_kana` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_places`
--

LOCK TABLES `birth_places` WRITE;
/*!40000 ALTER TABLE `birth_places` DISABLE KEYS */;
INSERT INTO `birth_places` VALUES (1,'北海道','ホッカイドウ'),(2,'青森県','アオモリケン'),(3,'岩手県','イワテケン'),(4,'宮城県','ミヤギケン'),(5,'秋田県','アキタケン'),(6,'山形県','ヤマガタケン'),(7,'福島県','フクシマケン'),(8,'茨城県','イバラキケン'),(9,'栃木県','トチギケン'),(10,'群馬県','グンマケン'),(11,'埼玉県','サイタマケン'),(12,'千葉県','チバケン'),(13,'東京都','トウキョウト'),(14,'神奈川県','カナガワケン'),(15,'新潟県','ニイガタケン'),(16,'富山県','トヤマケン'),(17,'石川県','イシカワケン'),(18,'福井県','フクイケン'),(19,'山梨県','ヤマナシケン'),(20,'長野県','ナガノケン'),(21,'岐阜県','ギフケン'),(22,'静岡県','シズオカケン'),(23,'愛知県','アイチケン'),(24,'三重県','ミエケン'),(25,'滋賀県','シガケン'),(26,'京都府','キョウトフ'),(27,'大阪府','オオサカフ'),(28,'兵庫県','ヒョウゴケン'),(29,'奈良県','ナラケン'),(30,'和歌山県','ワカヤマケン'),(31,'鳥取県','トットリケン'),(32,'島根県','シマネケン'),(33,'岡山県','オカヤマケン'),(34,'広島県','ヒロシマケン'),(35,'山口県','ヤマグチケン'),(36,'徳島県','トクシマケン'),(37,'香川県','カガワケン'),(38,'愛媛県','エヒメケン'),(39,'高知県','コウチケン'),(40,'福岡県','フクオカケン'),(41,'佐賀県','サガケン'),(42,'長崎県','ナガサキケン'),(43,'熊本県','クマモトケン'),(44,'大分県','オオイタケン'),(45,'宮崎県','ミヤザキケン'),(46,'鹿児島県','カゴシマケン'),(47,'沖縄県','オキナワケン');
/*!40000 ALTER TABLE `birth_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_types`
--

DROP TABLE IF EXISTS `blood_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blood_type` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_types`
--

LOCK TABLES `blood_types` WRITE;
/*!40000 ALTER TABLE `blood_types` DISABLE KEYS */;
INSERT INTO `blood_types` VALUES (1,'選択しない'),(2,'A型'),(3,'B型'),(4,'O型'),(5,'AB型'),(6,'わからない');
/*!40000 ALTER TABLE `blood_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_reads`
--

DROP TABLE IF EXISTS `check_reads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_reads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `check_read` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_reads`
--

LOCK TABLES `check_reads` WRITE;
/*!40000 ALTER TABLE `check_reads` DISABLE KEYS */;
INSERT INTO `check_reads` VALUES (1,'未読'),(2,'既読');
/*!40000 ALTER TABLE `check_reads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desire_to_getchilds`
--

DROP TABLE IF EXISTS `desire_to_getchilds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desire_to_getchilds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desire_to_getchild` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desire_to_getchilds`
--

LOCK TABLES `desire_to_getchilds` WRITE;
/*!40000 ALTER TABLE `desire_to_getchilds` DISABLE KEYS */;
INSERT INTO `desire_to_getchilds` VALUES (1,'選択しない'),(2,'子どもは欲しくない'),(3,'子どもは欲しい'),(4,'相手と相談して決める'),(5,'わからない');
/*!40000 ALTER TABLE `desire_to_getchilds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desire_to_marries`
--

DROP TABLE IF EXISTS `desire_to_marries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desire_to_marries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desire_to_marry` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desire_to_marries`
--

LOCK TABLES `desire_to_marries` WRITE;
/*!40000 ALTER TABLE `desire_to_marries` DISABLE KEYS */;
INSERT INTO `desire_to_marries` VALUES (1,'選択しない'),(2,'すぐにでもしたい'),(3,'2～3年のうちに'),(4,'良い人がいればしたい'),(5,'相手と相談して考えたい'),(6,'わからない');
/*!40000 ALTER TABLE `desire_to_marries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desire_to_marrys`
--

DROP TABLE IF EXISTS `desire_to_marrys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desire_to_marrys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desire_to_marry` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desire_to_marrys`
--

LOCK TABLES `desire_to_marrys` WRITE;
/*!40000 ALTER TABLE `desire_to_marrys` DISABLE KEYS */;
INSERT INTO `desire_to_marrys` VALUES (1,'選択しない'),(2,'すぐにでもしたい'),(3,'2～3年のうちに'),(4,'良い人がいればしたい'),(5,'相手と相談して考えたい'),(6,'わからない');
/*!40000 ALTER TABLE `desire_to_marrys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationals`
--

DROP TABLE IF EXISTS `educationals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `educational` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationals`
--

LOCK TABLES `educationals` WRITE;
/*!40000 ALTER TABLE `educationals` DISABLE KEYS */;
INSERT INTO `educationals` VALUES (1,'選択しない'),(2,'短大/専門学校/高専卒'),(3,'高校卒'),(4,'大学卒'),(5,'大学院卒'),(6,'その他');
/*!40000 ALTER TABLE `educationals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `figures`
--

DROP TABLE IF EXISTS `figures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `figures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `figure` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `figures`
--

LOCK TABLES `figures` WRITE;
/*!40000 ALTER TABLE `figures` DISABLE KEYS */;
INSERT INTO `figures` VALUES (1,'選択しない'),(2,'スリム'),(3,'やや細め'),(4,'普通'),(5,'グラマー'),(6,'筋肉質'),(7,'ややぽっちゃり'),(8,'ぽっちゃり');
/*!40000 ALTER TABLE `figures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `have_childrens`
--

DROP TABLE IF EXISTS `have_childrens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `have_childrens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `have_children` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `have_childrens`
--

LOCK TABLES `have_childrens` WRITE;
/*!40000 ALTER TABLE `have_childrens` DISABLE KEYS */;
INSERT INTO `have_childrens` VALUES (1,'選択しない'),(2,'なし'),(3,'同居中'),(4,'別居中');
/*!40000 ALTER TABLE `have_childrens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `holiday` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
INSERT INTO `holidays` VALUES (1,'選択しない'),(2,'土日'),(3,'平日'),(4,'不定期'),(5,'その他');
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housemates`
--

DROP TABLE IF EXISTS `housemates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `housemates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `housemate` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housemates`
--

LOCK TABLES `housemates` WRITE;
/*!40000 ALTER TABLE `housemates` DISABLE KEYS */;
INSERT INTO `housemates` VALUES (1,'選択しない'),(2,'一人暮らし'),(3,'友達と一緒'),(4,'ペットと一緒'),(5,'実家暮らし'),(6,'その他');
/*!40000 ALTER TABLE `housemates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houseworks`
--

DROP TABLE IF EXISTS `houseworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `houseworks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `housework` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houseworks`
--

LOCK TABLES `houseworks` WRITE;
/*!40000 ALTER TABLE `houseworks` DISABLE KEYS */;
INSERT INTO `houseworks` VALUES (1,'選択しない'),(2,'積極的に参加したい'),(3,'できれば参加したい'),(4,'二人でシェアしたい'),(5,'できれば相手に任せたい'),(6,'相手に任せたい');
/*!40000 ALTER TABLE `houseworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imgs`
--

DROP TABLE IF EXISTS `imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imgs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imgs`
--

LOCK TABLES `imgs` WRITE;
/*!40000 ALTER TABLE `imgs` DISABLE KEYS */;
INSERT INTO `imgs` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,0),(8,0),(9,0),(10,1),(11,1),(12,1),(13,0),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,0),(24,0),(25,0),(26,1),(27,1),(28,0),(29,1),(30,1),(31,1),(32,0),(33,0),(34,0),(35,1),(36,0),(37,0),(38,1),(39,1),(40,0),(41,0),(42,1),(43,1),(44,0),(45,0),(46,0),(47,1),(48,0),(49,0),(50,0),(51,1),(52,1),(53,1),(54,0),(55,1),(56,0),(57,1),(58,1),(59,0),(60,0),(61,0),(62,1),(63,1),(64,0),(65,0),(66,0),(67,0),(68,1),(69,0),(70,0),(71,0),(72,0),(73,1),(74,1),(75,1);
/*!40000 ALTER TABLE `imgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_times`
--

DROP TABLE IF EXISTS `like_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `like_time` varchar(8) NOT NULL,
  `count` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_times`
--

LOCK TABLES `like_times` WRITE;
/*!40000 ALTER TABLE `like_times` DISABLE KEYS */;
INSERT INTO `like_times` VALUES (1,'00時～02時',0),(2,'02時～04時',0),(3,'04時～06時',0),(4,'06時～08時',0),(5,'08時～10時',0),(6,'10時～12時',0),(7,'12時～14時',0),(8,'14時～16時',0),(9,'16時～18時',0),(10,'18時～20時',0),(11,'20時～22時',0),(12,'22時～24時',0);
/*!40000 ALTER TABLE `like_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `like_from` int NOT NULL,
  `like_to` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marital_statuses`
--

DROP TABLE IF EXISTS `marital_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marital_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marital_status` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marital_statuses`
--

LOCK TABLES `marital_statuses` WRITE;
/*!40000 ALTER TABLE `marital_statuses` DISABLE KEYS */;
INSERT INTO `marital_statuses` VALUES (1,'選択しない'),(2,'独身(未婚)'),(3,'独身(離婚)'),(4,'独身(死別)');
/*!40000 ALTER TABLE `marital_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching_statuses`
--

DROP TABLE IF EXISTS `matching_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_statuses` (
  `id` int NOT NULL,
  `mathing_status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching_statuses`
--

LOCK TABLES `matching_statuses` WRITE;
/*!40000 ALTER TABLE `matching_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `matching_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matching_times`
--

DROP TABLE IF EXISTS `matching_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matching_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matching_time` varchar(8) NOT NULL,
  `count` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matching_times`
--

LOCK TABLES `matching_times` WRITE;
/*!40000 ALTER TABLE `matching_times` DISABLE KEYS */;
INSERT INTO `matching_times` VALUES (1,'00時～02時',0),(2,'02時～04時',0),(3,'04時～06時',0),(4,'06時～08時',0),(5,'08時～10時',0),(6,'10時～12時',0),(7,'12時～14時',0),(8,'14時～16時',0),(9,'16時～18時',0),(10,'18時～20時',0),(11,'20時～22時',0),(12,'22時～24時',0);
/*!40000 ALTER TABLE `matching_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_statuses`
--

DROP TABLE IF EXISTS `member_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_status` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_statuses`
--

LOCK TABLES `member_statuses` WRITE;
/*!40000 ALTER TABLE `member_statuses` DISABLE KEYS */;
INSERT INTO `member_statuses` VALUES (1,'ノーマル'),(2,'プレミアム');
/*!40000 ALTER TABLE `member_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_times`
--

DROP TABLE IF EXISTS `message_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_times` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_time` varchar(8) NOT NULL,
  `count` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_times`
--

LOCK TABLES `message_times` WRITE;
/*!40000 ALTER TABLE `message_times` DISABLE KEYS */;
INSERT INTO `message_times` VALUES (1,'00時～02時',0),(2,'02時～04時',0),(3,'04時～06時',0),(4,'06時～08時',0),(5,'08時～10時',0),(6,'10時～12時',0),(7,'12時～14時',0),(8,'14時～16時',0),(9,'16時～18時',0),(10,'18時～20時',0),(11,'20時～22時',0),(12,'22時～24時',0);
/*!40000 ALTER TABLE `message_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `message` varchar(500) NOT NULL DEFAULT ' ',
  `checked_message` int NOT NULL DEFAULT '0',
  `sent_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,73,75,'はじめまして！マッチングありがとうございます！',1,'2022-10-19 14:28:59'),(2,75,73,'ども',1,'2022-10-19 14:38:59'),(3,73,75,'ご趣味は何ですか？^0^',1,'2022-10-19 14:48:59'),(4,75,73,'別に',1,'2022-10-19 14:58:59'),(5,73,75,'好きな食べ物はなんですか？^-^',1,'2022-10-19 15:08:59'),(6,75,73,'別に',1,'2022-10-19 15:18:59'),(7,73,75,'好きな芸能人はどなたですか？^_^',1,'2022-10-19 15:28:59'),(8,75,73,'別に',1,'2022-10-19 15:38:59'),(9,73,75,'好きな漫画やアニメはなんですか？^3^',1,'2022-10-19 15:48:20'),(10,75,73,'よろです',1,'2022-10-19 14:40:59'),(11,73,74,'おはつです！',0,'2022-10-19 14:41:08'),(12,73,75,'僕は鬼滅の刃と呪術回線とチェンソーマンが好きです！',1,'2022-10-19 15:48:40'),(13,73,75,'この間も鬼滅の刃を全部観かえしたんですがやっぱり煉獄さんが死んじゃうところは本当に泣けるし熱いしタンジェロの心が折れそうなところに伊之助が奮起かけるところか本当に涙が出そうになったしタンジェロが「卑怯者ー！」って猗窩座に叫んだときは本当にそうだよなって共感したし逃げんなよって本気で思って…そんな気持ちもあって煉獄さんが死んじゃったところでは本当に号泣しちゃったんですよね^_^;',1,'2022-10-19 15:48:50'),(14,73,75,'嫌いなキャラは善逸です。',1,'2022-10-19 15:48:55');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupations`
--

DROP TABLE IF EXISTS `occupations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occupations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `occupation` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupations`
--

LOCK TABLES `occupations` WRITE;
/*!40000 ALTER TABLE `occupations` DISABLE KEYS */;
INSERT INTO `occupations` VALUES (1,'選択しない'),(2,'大手企業'),(3,'公務員'),(4,'受付'),(5,'事務員'),(6,'看護師'),(7,'保育士'),(8,'客室乗務員'),(9,'秘書'),(10,'教育関連'),(11,'福祉・介護'),(12,'調理師・栄養士'),(13,'アパレル・ショップ'),(14,'美容関係'),(15,'ブライダル'),(16,'金融'),(17,'保険'),(18,'広告'),(19,'マスコミ'),(20,'WEB業界'),(21,'上場企業'),(22,'経営者・役員'),(23,'医師'),(24,'弁護士'),(25,'公認会計士'),(26,'パイロット'),(27,'大手商社'),(28,'コンサル'),(29,'大手外資'),(30,'外資金融'),(31,'IT関連'),(32,'クリエイター'),(33,'アナウンサー'),(34,'芸能・モデル'),(35,'イベントコンパニオン'),(36,'スポーツ選手'),(37,'接客業'),(38,'不動産'),(39,'建築関連'),(40,'通信'),(41,'流通'),(42,'製薬'),(43,'食品関連'),(44,'旅行関係'),(45,'エンターテインメント'),(46,'会社員'),(47,'学生'),(48,'自由業'),(49,'税理士'),(50,'エンジニア'),(51,'建築士'),(52,'美容師'),(53,'歯科医師'),(54,'歯科衛生士'),(55,'その他');
/*!40000 ALTER TABLE `occupations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'選択しない'),(2,'割り勘'),(3,'自分が全て払う'),(4,'自分が多めに払う'),(5,'お相手にすべて払ってほしい'),(6,'お相手に多めに払ってほしい'),(7,'持っているほうが払う'),(8,'お相手と相談して決める');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residences`
--

DROP TABLE IF EXISTS `residences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `residence` varchar(4) DEFAULT NULL,
  `prefecture_kana` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residences`
--

LOCK TABLES `residences` WRITE;
/*!40000 ALTER TABLE `residences` DISABLE KEYS */;
INSERT INTO `residences` VALUES (1,'北海道','ホッカイドウ'),(2,'青森県','アオモリケン'),(3,'岩手県','イワテケン'),(4,'宮城県','ミヤギケン'),(5,'秋田県','アキタケン'),(6,'山形県','ヤマガタケン'),(7,'福島県','フクシマケン'),(8,'茨城県','イバラキケン'),(9,'栃木県','トチギケン'),(10,'群馬県','グンマケン'),(11,'埼玉県','サイタマケン'),(12,'千葉県','チバケン'),(13,'東京都','トウキョウト'),(14,'神奈川県','カナガワケン'),(15,'新潟県','ニイガタケン'),(16,'富山県','トヤマケン'),(17,'石川県','イシカワケン'),(18,'福井県','フクイケン'),(19,'山梨県','ヤマナシケン'),(20,'長野県','ナガノケン'),(21,'岐阜県','ギフケン'),(22,'静岡県','シズオカケン'),(23,'愛知県','アイチケン'),(24,'三重県','ミエケン'),(25,'滋賀県','シガケン'),(26,'京都府','キョウトフ'),(27,'大阪府','オオサカフ'),(28,'兵庫県','ヒョウゴケン'),(29,'奈良県','ナラケン'),(30,'和歌山県','ワカヤマケン'),(31,'鳥取県','トットリケン'),(32,'島根県','シマネケン'),(33,'岡山県','オカヤマケン'),(34,'広島県','ヒロシマケン'),(35,'山口県','ヤマグチケン'),(36,'徳島県','トクシマケン'),(37,'香川県','カガワケン'),(38,'愛媛県','エヒメケン'),(39,'高知県','コウチケン'),(40,'福岡県','フクオカケン'),(41,'佐賀県','サガケン'),(42,'長崎県','ナガサキケン'),(43,'熊本県','クマモトケン'),(44,'大分県','オオイタケン'),(45,'宮崎県','ミヤザキケン'),(46,'鹿児島県','カゴシマケン'),(47,'沖縄県','オキナワケン');
/*!40000 ALTER TABLE `residences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (3,'ROLE_ADMIN'),(2,'ROLE_PREMIUM'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexs`
--

DROP TABLE IF EXISTS `sexs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sex` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexs`
--

LOCK TABLES `sexs` WRITE;
/*!40000 ALTER TABLE `sexs` DISABLE KEYS */;
INSERT INTO `sexs` VALUES (1,'男性'),(2,'女性');
/*!40000 ALTER TABLE `sexs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siblings`
--

DROP TABLE IF EXISTS `siblings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siblings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sibling` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siblings`
--

LOCK TABLES `siblings` WRITE;
/*!40000 ALTER TABLE `siblings` DISABLE KEYS */;
INSERT INTO `siblings` VALUES (1,'選択しない'),(2,'長男'),(3,'次男'),(4,'三男'),(5,'長女'),(6,'次女'),(7,'三女'),(8,'一人っ子'),(9,'その他');
/*!40000 ALTER TABLE `siblings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smokings`
--

DROP TABLE IF EXISTS `smokings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smokings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `smoking` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smokings`
--

LOCK TABLES `smokings` WRITE;
/*!40000 ALTER TABLE `smokings` DISABLE KEYS */;
INSERT INTO `smokings` VALUES (1,'選択しない'),(2,'吸わない'),(3,'吸う'),(4,'電子タバコ'),(5,'非喫煙者の前では吸わない'),(6,'相手が嫌ならやめる'),(7,'ときどき吸う');
/*!40000 ALTER TABLE `smokings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociabilities`
--

DROP TABLE IF EXISTS `sociabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sociabilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sociability` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociabilities`
--

LOCK TABLES `sociabilities` WRITE;
/*!40000 ALTER TABLE `sociabilities` DISABLE KEYS */;
INSERT INTO `sociabilities` VALUES (1,'選択しない'),(2,'大人数が好き'),(3,'少人数が好き'),(4,'一人が好き'),(5,'すぐに仲良くなる'),(6,'徐々に仲良くなる');
/*!40000 ALTER TABLE `sociabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_details`
--

DROP TABLE IF EXISTS `time_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_detail` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_details`
--

LOCK TABLES `time_details` WRITE;
/*!40000 ALTER TABLE `time_details` DISABLE KEYS */;
INSERT INTO `time_details` VALUES (1,'00時～02時'),(2,'02時～04時'),(3,'04時～06時'),(4,'06時～08時'),(5,'08時～10時'),(6,'10時～12時'),(7,'12時～14時'),(8,'14時～16時'),(9,'16時～18時'),(10,'18時～20時'),(11,'20時～22時'),(12,'22時～24時');
/*!40000 ALTER TABLE `time_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_to_meets`
--

DROP TABLE IF EXISTS `time_to_meets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_to_meets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_to_meet` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_to_meets`
--

LOCK TABLES `time_to_meets` WRITE;
/*!40000 ALTER TABLE `time_to_meets` DISABLE KEYS */;
INSERT INTO `time_to_meets` VALUES (1,'選択しない'),(2,'マッチング後にまずは会いたい'),(3,'気が合えば会いたい'),(4,'メッセージを重ねてから会いたい'),(5,'まずはビデオデートで');
/*!40000 ALTER TABLE `time_to_meets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_basic_details`
--

DROP TABLE IF EXISTS `user_basic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_basic_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sex` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `like_point` int DEFAULT '30',
  `registered` datetime DEFAULT NULL,
  `lasttime_of_got_lp_day` date DEFAULT NULL,
  `lasttime_of_got_lp_month` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_basic_details`
--

LOCK TABLES `user_basic_details` WRITE;
/*!40000 ALTER TABLE `user_basic_details` DISABLE KEYS */;
INSERT INTO `user_basic_details` VALUES (1,2,26,'はなちゃん','1980-07-01',NULL,'2022-09-20 00:00:00','2022-09-20','2022-09-20'),(2,1,32,'ミナト','1981-08-02',NULL,'2022-09-26 23:01:06','2022-09-20','2022-09-20'),(3,2,20,'なつみ','1982-09-03',30,'2022-09-26 23:20:15','2022-09-20','2022-09-20'),(4,1,51,'キムタクにぃ','1984-10-04',30,'2022-09-26 23:22:46','2022-09-20','2022-09-20'),(5,2,20,'紗奈','1985-11-05',30,'2022-09-26 23:36:21','2022-09-20','2022-09-20'),(6,1,40,'きなこもち','1986-12-06',30,'2022-09-26 23:36:21','2022-09-20','2022-09-20'),(7,2,51,'ゆきちゃん','1987-01-07',30,'2022-09-26 23:36:21','2022-09-20','2022-09-20'),(8,2,26,'みにー☆','1988-02-08',30,'2022-09-26 23:45:40','2022-09-20','2022-09-20'),(9,2,19,'じじ','1989-03-09',30,'2022-09-26 23:50:13','2022-09-20','2022-09-20'),(10,1,22,'りょーた','1990-04-10',30,'2022-09-27 08:47:23','2022-09-20','2022-09-20'),(11,1,19,'タダナリ','1991-05-11',30,'2022-09-27 08:56:14','2022-09-20','2022-09-20'),(12,1,42,'はやぶさ','1992-06-12',30,'2022-09-27 15:13:30','2022-09-20','2022-09-20'),(13,2,26,'ひなこ','1993-07-13',30,'2022-09-27 15:17:38','2022-09-20','2022-09-20'),(14,1,45,'ツッキー','1994-08-14',30,'2022-09-28 13:56:13','2022-09-20','2022-09-20'),(15,2,22,'あいこ','1995-09-15',30,'2022-09-28 13:59:18','2022-09-20','2022-09-20'),(16,2,28,'ゆきみ','1996-10-16',30,'2022-09-30 11:45:52','2022-09-20','2022-09-20'),(17,2,31,'たまみ','1997-11-17',30,'2022-09-30 11:48:30','2022-09-20','2022-09-20'),(18,2,23,'わかな','1998-12-18',30,'2022-09-30 11:48:30','2022-09-20','2022-09-20'),(19,2,42,'あや','1999-01-19',30,'2022-09-30 11:48:30','2022-09-20','2022-09-20'),(20,1,35,'よしだ','2000-02-20',30,'2022-09-30 11:48:30','2022-09-20','2022-09-20'),(21,1,25,'はやと','2001-03-21',30,'2022-09-30 11:48:30','2022-09-20','2022-09-20'),(22,1,22,'ピエール','2002-04-22',30,'2022-09-30 11:48:30','2022-09-20','2022-09-20'),(23,1,51,'よしくに','2003-05-23',30,'2022-09-30 12:42:16','2022-09-20','2022-09-20'),(24,1,41,'明夫','2004-05-25',30,'2022-10-02 21:07:52','2022-09-20','2022-09-20'),(25,2,24,'つづ','1970-06-26',30,'2022-10-02 21:14:57','2022-09-20','2022-09-20'),(26,1,37,'yuu','1973-07-27',30,'2022-10-02 21:24:21','2022-09-20','2022-09-20'),(27,2,28,'もえ。','1976-08-29',30,'2022-10-02 21:30:47','2022-09-20','2022-09-20'),(28,1,27,'竜','1979-09-30',30,'2022-10-02 21:40:11','2022-09-20','2022-09-20'),(29,2,29,'まどか','1980-10-01',30,'2022-10-02 21:43:20','2022-09-20','2022-09-20'),(30,2,29,'ずっこ','1981-11-02',30,'2022-10-02 21:46:59','2022-09-20','2022-09-20'),(31,2,29,'れーこ','1982-12-03',30,'2022-10-02 21:50:39','2022-09-20','2022-09-20'),(32,1,28,'いたチャイ','1983-01-04',30,'2022-10-02 22:16:10','2022-09-20','2022-09-20'),(33,1,27,'ヒロシ','1984-02-05',30,'2022-10-02 22:27:10','2022-09-20','2022-09-20'),(34,1,37,'とっしー','1985-03-06',30,'2022-10-02 22:31:27','2022-09-20','2022-09-20'),(35,2,22,'薫','1986-04-07',30,'2022-10-02 23:18:46','2022-09-20','2022-09-20'),(36,1,28,'TAKUMA','1987-05-08',30,'2022-10-02 23:27:09','2022-09-20','2022-09-20'),(37,1,20,'いそべ','1988-06-09',30,'2022-10-02 23:27:09','2022-09-20','2022-09-20'),(38,2,29,'sachiko','1989-07-10',30,'2022-10-03 11:37:02','2022-09-20','2022-09-20'),(39,2,34,'ねぎま','1990-08-11',30,'2022-10-03 11:42:31','2022-09-20','2022-09-20'),(40,1,28,'だるお','1991-09-12',30,'2022-10-03 11:47:29','2022-09-20','2022-09-20'),(41,1,21,'すんげ','1992-10-13',30,'2022-10-03 15:12:15','2022-09-20','2022-09-20'),(42,2,22,'かりん','1993-11-14',30,'2022-10-03 15:12:15','2022-09-20','2022-09-20'),(43,2,23,'きゅーわ','1994-12-15',30,'2022-10-03 15:12:15','2022-09-20','2022-09-20'),(44,1,24,'たろー','1995-01-16',30,'2022-10-03 15:12:15','2022-09-20','2022-09-20'),(45,1,20,'まーくん','1996-02-17',30,'2022-10-03 15:12:15','2022-09-20','2022-09-20'),(46,1,25,'ジョン','1997-03-18',30,'2022-10-03 15:12:15','2022-09-20','2022-09-20'),(47,2,25,'あかり','1998-04-19',30,'2022-10-03 15:19:09','2022-09-20','2022-09-20'),(48,1,25,'でゅーてぃー','1999-05-20',30,'2022-10-03 15:25:18','2022-09-20','2022-09-20'),(49,1,22,'なかじま','2000-06-21',30,'2022-10-04 10:47:25','2022-09-20','2022-09-20'),(50,1,28,'たくむげ','2001-07-22',30,'2022-10-04 11:43:00','2022-09-20','2022-09-20'),(51,2,28,'ゆっきー','2002-08-23',30,'2022-10-04 11:46:35','2022-09-20','2022-09-20'),(52,2,28,'スナイパー','2003-09-24',30,'2022-10-04 11:50:10','2022-09-20','2022-09-20'),(53,2,32,'しげ','1990-10-25',30,'2022-10-05 12:54:10','2022-09-20','2022-09-20'),(54,1,22,'だっち','1991-11-26',30,'2022-10-05 13:01:31','2022-09-20','2022-09-20'),(55,2,22,'エリ','1992-12-27',30,'2022-10-05 13:04:43','2022-09-20','2022-09-20'),(56,1,29,'コースケ','1993-01-28',30,'2022-10-05 13:09:46','2022-09-20','2022-09-20'),(57,2,26,'Yukina','1994-02-01',30,'2022-10-05 20:29:56','2022-09-20','2022-09-20'),(58,2,28,'みき','1995-03-02',30,'2022-10-05 20:41:00','2022-09-20','2022-09-20'),(59,1,47,'西岡義弘','1996-04-03',30,'2022-10-05 20:49:58','2022-09-20','2022-09-20'),(60,1,48,'中島孝之','1997-05-04',30,'2022-10-05 20:49:58','2022-09-20','2022-09-20'),(61,1,51,'よしぴ！！！','1998-06-05',30,'2022-10-05 20:53:18','2022-09-20','2022-09-20'),(62,2,25,'おもち','1999-07-06',30,'2022-10-06 12:46:38','2022-09-20','2022-09-20'),(63,2,45,'ケンシロウ','2000-08-07',30,'2022-10-06 12:50:17','2022-09-20','2022-09-20'),(64,1,28,'スター☆','2001-09-08',30,'2022-10-06 12:55:20','2022-09-20','2022-09-20'),(65,1,29,'田中 聡','2002-10-09',30,'2022-10-06 12:57:23','2022-09-20','2022-09-20'),(66,1,42,'ひむらけんしん','2003-11-10',30,'2022-10-06 12:59:28','2022-09-20','2022-09-20'),(67,1,34,'ここいち','1990-12-11',30,'2022-10-08 01:22:58','2022-09-20','2022-09-20'),(68,2,27,'ティファ','1991-01-12',34,'2022-10-08 10:17:43','2022-09-20','2022-09-20'),(69,1,22,'須田','2000-01-01',125,'2022-09-10 21:45:43','2022-10-13','2022-10-11'),(70,2,47,'ちょこれーと','1975-04-01',30,'2022-10-13 13:41:43','2022-10-13','2022-10-13'),(71,1,25,'ミンティア','1980-05-05',30,'2022-10-13 13:41:43','2022-10-13','2022-10-13'),(72,2,30,'スナフキン','1992-01-10',30,'2022-10-13 13:51:39','2022-10-13','2022-10-13'),(73,1,31,'そっけ','1991-04-04',25,'2022-10-13 14:01:17','2022-10-21','2022-10-13'),(74,2,21,'あいちゃん','2000-11-05',30,'2022-10-17 21:27:41','2022-10-17','2022-10-17'),(75,2,27,'杏。','1995-08-08',25,'2022-10-17 22:15:48','2022-10-21','2022-10-17');
/*!40000 ALTER TABLE `user_basic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_free_details`
--

DROP TABLE IF EXISTS `user_free_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_free_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `figure` int DEFAULT '1',
  `blood_type` int DEFAULT '1',
  `birth_place` int DEFAULT '1',
  `educational` int DEFAULT '1',
  `sibling` int DEFAULT '1',
  `school_name` varchar(20) DEFAULT NULL,
  `job_name` varchar(20) DEFAULT NULL,
  `have_children` int DEFAULT '1',
  `desire_to_getchild` int DEFAULT '1',
  `housework` int DEFAULT '1',
  `time_to_meet` int DEFAULT '1',
  `payment` int DEFAULT '1',
  `character_type` int DEFAULT '1',
  `sociability` int DEFAULT '1',
  `alcohol` int DEFAULT '1',
  `hobby_one` varchar(15) DEFAULT NULL,
  `hobby_two` varchar(15) DEFAULT NULL,
  `hobby_three` varchar(15) DEFAULT NULL,
  `vaccination` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_free_details`
--

LOCK TABLES `user_free_details` WRITE;
/*!40000 ALTER TABLE `user_free_details` DISABLE KEYS */;
INSERT INTO `user_free_details` VALUES (1,4,3,7,4,6,'東京農業大学','Webエンジニア',3,4,4,4,3,2,2,4,'漫画','ゲーム','スイーツ巡り',1),(2,4,2,1,2,2,'コメダ大学','ひみつ',2,2,2,1,1,1,3,1,'音楽','バンド','マッサージ',1),(3,5,2,5,2,2,'麦茶大学',NULL,3,3,3,2,2,2,2,2,'映画','小説','音楽',1),(4,2,3,8,3,3,'扇風機女子短大',NULL,2,2,3,3,3,1,1,3,'散歩','旅行','ディズニー',2),(5,4,5,1,1,3,NULL,NULL,1,2,2,1,4,3,2,1,'ゲーム','アニメ','漫画',1),(6,2,4,2,2,2,'ニベア高校',NULL,2,2,2,2,2,2,2,2,'ソシャゲ','ゲーム','家事',2),(7,1,2,3,1,2,'ラーメン専門学校','うどん屋',1,2,3,1,2,3,3,4,'キャンプ','料理','掃除',2),(8,3,2,2,3,4,NULL,NULL,2,2,5,3,4,1,2,4,'サウナ','温泉','旅行',2),(9,4,3,37,1,1,'緑茶大学',NULL,3,2,4,2,3,3,3,3,'映画','カフェ','ビリヤード',1),(10,2,4,38,3,2,NULL,NULL,3,3,3,4,1,1,2,3,'youtube','tiktok','instagram',1),(11,2,5,39,2,1,'ミンティア高校','ひみつ',2,2,2,3,2,1,3,3,'カフェ','水族館','演劇鑑賞',2),(12,3,3,40,1,2,NULL,NULL,2,4,3,3,4,1,4,4,'野球','テニス','サッカー',1),(13,4,2,8,3,2,'日本タケノコの里大学',NULL,3,4,1,1,5,1,2,2,'ゴルフ','フットサル','ダーツ',3),(14,5,4,12,1,3,NULL,NULL,2,1,4,3,3,2,2,3,NULL,NULL,NULL,1),(15,4,5,30,2,4,NULL,NULL,3,2,3,1,3,1,2,2,NULL,NULL,NULL,1),(16,5,3,36,1,2,NULL,NULL,2,3,4,2,2,2,1,3,NULL,NULL,NULL,1),(17,5,2,31,1,1,'ハンカチ高専',NULL,2,2,2,1,1,1,2,1,NULL,NULL,NULL,2),(18,2,5,35,2,2,NULL,NULL,2,3,1,4,4,2,1,4,NULL,NULL,NULL,1),(19,4,4,34,2,3,'ひよこ高校',NULL,2,4,3,1,3,1,2,1,NULL,NULL,NULL,3),(20,2,2,2,3,3,NULL,NULL,2,2,1,4,2,1,4,2,NULL,NULL,NULL,1),(21,2,2,34,1,2,'アップル大学',NULL,2,5,5,3,2,2,2,3,NULL,NULL,NULL,2),(22,3,3,33,2,2,NULL,NULL,2,3,2,2,4,1,3,4,NULL,NULL,NULL,3),(23,3,4,32,2,2,NULL,NULL,2,2,2,2,2,1,2,2,NULL,NULL,NULL,1),(24,4,3,39,3,4,NULL,NULL,3,4,3,2,4,1,4,4,NULL,NULL,NULL,3),(25,3,2,20,1,2,NULL,NULL,2,2,2,2,3,1,2,2,NULL,NULL,NULL,2),(26,4,3,21,3,4,NULL,NULL,3,3,3,3,4,1,3,3,NULL,NULL,NULL,2),(27,5,4,22,4,3,NULL,NULL,2,4,4,4,4,1,4,4,NULL,NULL,NULL,2),(28,2,3,23,2,2,NULL,NULL,3,5,2,2,3,1,3,3,NULL,NULL,NULL,2),(29,3,4,24,2,3,NULL,NULL,1,2,1,3,2,1,2,2,NULL,NULL,NULL,2),(30,4,2,25,3,2,NULL,NULL,2,3,3,4,1,1,1,1,NULL,NULL,NULL,2),(31,5,1,26,2,1,NULL,NULL,3,4,4,1,2,1,2,2,NULL,NULL,NULL,1),(32,2,3,27,4,3,NULL,NULL,2,5,2,3,3,1,3,3,NULL,NULL,NULL,2),(33,3,2,28,3,3,NULL,NULL,1,2,3,2,4,1,4,4,NULL,NULL,NULL,2),(34,4,3,29,2,1,NULL,NULL,3,3,4,4,3,1,3,2,NULL,NULL,NULL,1),(35,5,4,30,4,2,NULL,NULL,2,4,2,3,2,1,2,4,NULL,NULL,NULL,2),(36,2,3,31,3,4,NULL,NULL,1,5,3,2,1,1,1,3,NULL,NULL,NULL,3),(37,2,3,23,2,3,NULL,NULL,2,3,2,3,3,2,3,3,NULL,NULL,NULL,2),(38,3,2,24,2,3,NULL,NULL,1,5,2,2,3,2,1,2,NULL,NULL,NULL,1),(39,4,3,25,3,4,NULL,NULL,2,4,3,3,3,1,2,2,NULL,NULL,NULL,2),(40,2,4,26,4,2,NULL,NULL,3,3,4,3,3,2,1,3,NULL,NULL,NULL,1),(41,3,2,27,2,3,NULL,NULL,1,2,4,1,2,2,2,1,NULL,NULL,NULL,2),(42,4,3,28,3,4,NULL,NULL,2,3,5,4,3,1,2,2,NULL,NULL,NULL,1),(43,2,4,29,4,3,NULL,NULL,3,4,4,1,1,2,1,3,NULL,NULL,NULL,2),(44,3,1,30,2,2,NULL,NULL,3,3,3,3,2,1,1,4,NULL,NULL,NULL,3),(45,4,2,31,3,3,NULL,NULL,2,2,2,1,1,1,1,1,NULL,NULL,NULL,1),(46,5,3,32,4,3,NULL,NULL,2,1,2,2,1,2,2,3,NULL,NULL,NULL,2),(47,2,4,33,5,3,NULL,NULL,2,2,3,1,2,1,2,4,NULL,NULL,NULL,3),(48,3,2,34,2,2,NULL,NULL,3,3,4,2,2,1,3,2,NULL,NULL,NULL,1),(49,2,3,35,2,2,NULL,NULL,3,4,2,2,3,1,4,2,NULL,NULL,NULL,3),(50,3,2,10,2,2,NULL,NULL,2,2,2,2,4,1,5,2,NULL,NULL,NULL,1),(51,4,3,11,3,3,NULL,NULL,2,3,2,3,2,1,6,3,NULL,NULL,NULL,1),(52,2,4,12,4,4,NULL,NULL,2,4,2,4,3,1,6,4,NULL,NULL,NULL,2),(53,3,2,13,2,2,NULL,NULL,2,2,2,2,4,1,5,2,NULL,NULL,NULL,2),(54,4,3,14,3,3,NULL,NULL,2,3,2,3,5,1,6,3,NULL,NULL,NULL,2),(55,2,4,15,4,4,NULL,NULL,2,4,2,4,2,1,5,4,NULL,NULL,NULL,2),(56,2,2,16,5,2,'ファブリーズ大学','Webエンジニア',2,2,2,2,3,1,4,2,'漫画','アニメ','ゲーム',2),(57,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(58,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(59,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(60,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(61,2,5,1,4,1,'スターボックス大学院','大学事務',3,2,2,3,6,1,4,3,'食う','寝る','タバコ',2),(62,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(63,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(64,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(65,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(66,1,1,1,1,1,'','',1,1,1,1,1,1,1,1,'','','',1),(67,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(68,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(69,1,1,2,4,1,'','営業',1,1,1,1,1,1,1,1,'女装','美容ケア','',1),(70,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(71,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(72,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(73,7,5,11,3,4,'株式会社ジードライブ新大久保校','リラクゼーションセラピスト',2,3,2,4,4,1,4,2,'','','',3),(74,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(75,1,1,1,1,1,'','',1,1,1,1,1,1,1,1,'','','',1);
/*!40000 ALTER TABLE `user_free_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_required_details`
--

DROP TABLE IF EXISTS `user_required_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_required_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `height` int NOT NULL,
  `residence` int NOT NULL,
  `occupation` int NOT NULL,
  `annual_income` int NOT NULL,
  `marital_status` int NOT NULL,
  `desire_to_marry` int NOT NULL,
  `holiday` int NOT NULL,
  `smoking` int NOT NULL,
  `housemate` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_required_details`
--

LOCK TABLES `user_required_details` WRITE;
/*!40000 ALTER TABLE `user_required_details` DISABLE KEYS */;
INSERT INTO `user_required_details` VALUES (1,149,10,20,5,2,3,2,1,1),(2,180,8,1,5,1,1,1,1,1),(3,155,9,2,4,2,4,1,2,1),(4,162,13,33,2,2,5,5,7,5),(5,145,16,54,2,3,2,4,3,4),(6,160,5,10,1,2,1,1,1,1),(7,180,2,1,3,1,2,2,2,2),(8,156,5,43,4,2,1,2,1,4),(9,165,45,13,6,2,6,2,7,3),(10,177,38,10,4,2,5,3,5,4),(11,181,13,48,5,2,4,4,3,4),(12,169,47,31,3,3,6,4,3,2),(13,152,17,6,3,2,1,2,1,4),(14,167,15,45,5,2,5,2,3,2),(15,156,27,46,2,2,4,2,2,2),(16,153,20,54,3,2,2,4,3,2),(17,160,31,25,2,2,2,2,2,2),(18,163,14,5,4,2,3,4,3,2),(19,157,14,4,1,1,1,1,4,2),(20,165,17,10,2,2,2,2,2,2),(21,174,15,20,3,3,3,3,5,3),(22,175,16,30,4,1,4,4,6,4),(23,172,28,22,7,2,4,3,4,5),(24,157,46,17,6,2,3,4,3,4),(25,164,45,36,4,3,4,3,2,2),(26,163,23,2,5,3,4,2,2,2),(27,174,37,43,3,2,3,2,2,3),(28,181,4,35,6,2,6,2,2,2),(29,154,32,47,4,2,2,2,2,2),(30,150,25,5,3,2,3,2,2,2),(31,153,33,4,3,2,4,2,2,2),(32,163,23,43,5,2,2,2,2,4),(33,176,6,9,3,3,6,5,4,4),(34,178,43,48,5,2,5,2,6,5),(35,170,30,12,4,2,4,2,2,2),(36,168,5,39,4,3,3,4,2,2),(37,171,10,40,3,2,3,3,2,2),(38,154,40,51,3,2,5,2,3,3),(39,158,37,15,4,2,4,4,7,5),(40,171,1,5,4,3,2,2,3,5),(41,134,5,5,5,4,3,4,3,3),(42,160,2,2,2,2,2,2,2,2),(43,161,3,3,3,3,3,3,3,3),(44,162,4,4,4,4,4,4,4,2),(45,163,5,5,2,2,2,2,2,3),(46,164,6,6,3,3,3,3,3,4),(47,163,9,9,6,3,3,3,2,2),(48,173,10,44,3,2,2,2,3,3),(49,173,8,7,7,3,3,4,4,4),(50,167,12,42,5,2,2,2,2,2),(51,166,41,13,4,2,3,2,2,2),(52,158,8,5,3,2,3,2,2,3),(53,160,35,51,3,2,4,2,2,2),(54,168,27,20,4,2,5,2,5,2),(55,153,13,3,4,2,3,2,3,2),(56,165,13,31,4,2,4,2,3,5),(57,153,26,4,3,2,6,2,2,5),(58,154,9,25,5,2,3,4,4,2),(59,182,4,32,4,3,4,3,4,4),(60,174,5,3,6,2,2,2,2,5),(61,165,12,5,2,2,4,2,2,5),(62,153,10,6,4,2,5,4,5,2),(63,151,8,7,3,2,3,2,3,2),(64,169,13,5,4,2,2,2,3,3),(65,175,11,13,3,2,3,3,2,2),(66,173,11,46,3,2,4,2,7,2),(67,174,11,38,3,2,4,2,2,2),(68,163,13,5,3,2,6,2,2,2),(69,174,13,1,5,4,4,2,2,6),(70,157,13,5,2,2,2,2,2,4),(71,160,13,3,4,3,3,4,3,4),(72,152,12,13,3,2,6,4,3,2),(73,173,11,37,3,2,3,2,2,2),(74,154,11,40,3,2,6,2,2,2),(75,160,13,23,5,2,6,4,2,5);
/*!40000 ALTER TABLE `user_required_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(2,1),(2,2),(3,1),(4,1),(5,1),(6,1),(6,2),(7,1),(8,1),(9,1),(9,2),(10,1),(11,1),(11,2),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_statisticses`
--

DROP TABLE IF EXISTS `user_statisticses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_statisticses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matching_count_normal` int DEFAULT '0',
  `matching_count_premium` int DEFAULT '0',
  `visited` int DEFAULT '0',
  `send_like_count` int DEFAULT '0',
  `receive_like_count_normal` int DEFAULT '0',
  `receive_like_count_premium` int DEFAULT '0',
  `send_message_count` int DEFAULT '0',
  `receive_message_count` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_statisticses`
--

LOCK TABLES `user_statisticses` WRITE;
/*!40000 ALTER TABLE `user_statisticses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_statisticses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_texts`
--

DROP TABLE IF EXISTS `user_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_texts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `one_word` varchar(24) DEFAULT ' ',
  `self_introduction` varchar(1000) DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_texts`
--

LOCK TABLES `user_texts` WRITE;
/*!40000 ALTER TABLE `user_texts` DISABLE KEYS */;
INSERT INTO `user_texts` VALUES (1,'こんにちは',' '),(2,'ありがとう',' '),(3,'こんばんは',' '),(4,'よろしくおねがいします！',' '),(5,'おなか減った！',' '),(6,'つかれた～',' '),(7,'今日もいい一日でした！',' '),(8,'いい男いないかな',' '),(9,'むかつく',' '),(10,'俺のせいでエラーがおきてたようだ','俺のカラムが存在しなかったらしい。それはエラー起こるわ。'),(11,'映画いきたい',' '),(12,'adoちゃんかわいい～',' '),(13,'焼肉たべたいなー',' '),(14,'男友達がほしいです',' '),(15,'えっ？',' '),(16,'こんにちは～',' '),(17,'こんばんは～',' '),(18,'おはよー！',' '),(19,'働きたくない',' '),(20,'ダイエットしなきゃ',' '),(21,'ミンティアおいしい',' '),(22,'漫画かった！',' '),(23,'スマホ新しくしたい',' '),(24,'それな',' '),(25,'ジャスミン茶しか勝たん',' '),(26,'ゲームしたい',' '),(27,'ゲームする気力がない',' '),(28,'そーらんそーらん',' '),(29,'は～',' '),(30,'こんにちは！',' '),(31,'よろしくおねがいします！',' '),(32,'おっすおっす',' '),(33,'ダイエット～',' '),(34,'甘いもの食べたい！',' '),(35,'猫が好き！',' '),(36,'ねこ～',' '),(37,'犬が好き',' '),(38,'動物が好き！',' '),(39,'つかれた',' '),(40,'早く寝たい',' '),(41,'眠い',' '),(42,'出勤したくない',' '),(43,'サッカー観に行きたい',' '),(44,'ディズニーいきたいな～',' '),(45,'ユニバって面白いの？',' '),(46,'ねむねむねむ',' '),(47,'よ～',' '),(48,'ざわ・・・',' '),(49,'チョコはおいしい',' '),(50,'チョコ食べたい',' '),(51,'チョコねー',' '),(52,'冬だね！',' '),(53,'金木製ちっちゃったー',' '),(54,'こたつ出す・・・？',' '),(55,'あったかくて眠い',' '),(56,'アイスたべたい',' '),(57,'はとむぎげんまい月見草',' '),(58,'寒くなってきましたね',' '),(59,'写真撮りに行きたい',' '),(60,'キャンプいってきました！',' '),(61,'働きたくないでござる',' '),(62,'英語習いたい',' '),(63,'勉強したくない',' '),(64,'チェンソーマン最高！',' '),(65,'色々不安・・・',' '),(66,'おろ～',' '),(67,'アニメ見ないとな',' '),(68,'時間が足りない',' '),(69,'女装が好きというわけではないです',' '),(70,' おっす',' '),(71,' おー',' '),(72,' よろしく～',NULL),(73,'かたこり辛い','よね～'),(74,' ',' '),(75,'はじめてみました','よろぽっくる');
/*!40000 ALTER TABLE `user_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_times`
--

DROP TABLE IF EXISTS `user_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_times` (
  `id` int NOT NULL,
  `registered` date DEFAULT NULL,
  `latest_login` timestamp NULL DEFAULT NULL,
  `got_lp_day` timestamp NULL DEFAULT NULL,
  `got_lp_month` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_times`
--

LOCK TABLES `user_times` WRITE;
/*!40000 ALTER TABLE `user_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_id` varchar(256) NOT NULL,
  `login_pass` char(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aaa@aaa.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(2,'bbb@bbb.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(3,'ccc@ccc.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(4,'ddd@ddd.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(5,'eee@eee.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(6,'fff@fff.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(7,'ggg@ggg.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(8,'hhh@hhh.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(9,'iii@iii.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(10,'jjj@jjj.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(11,'kkk@kkk.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(12,'lll@lll.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(13,'mmm@mmm.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(14,'nnn@nnn.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(15,'ooo@ooo.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(16,'ppp@ppp.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(17,'rrr@rrr.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(18,'sss@sss.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(19,'ttt@ttt.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(20,'uuu@uuu.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(21,'vvv@vvv.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(22,'qqq@qqq.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(23,'www@www.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(24,'xxx@xxx.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(26,'yyy@yyy.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(27,'zzz@zzz.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(28,'aa@aa.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(29,'bb@bb.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(30,'cc@cc.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(31,'dd@dd.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(32,'ee@ee.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(33,'ff@ff.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(34,'gg@gg.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(35,'hh@hh.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(36,'ii@ii.com','$2a$10$Pux6aX0a7XB9vsgIKP8yrOwHocveYt.KnKToldA1xI5Dp5BhvD9Du'),(37,'jj@jj.com','$2a$10$DV8LiQz4gNrl6nlvAWQ7GOwZA1IPSOFSNkFwmAmZC5dNsybr5zOXm'),(38,'kk@kk.com','$2a$10$9Myt4cbsd5Ek8U6rvDl8cOT3dX6lbdJv9V777Z3DgxhSXKX1NN3SG'),(39,'ll@ll.com','$2a$10$QJVqOoD90iIxb.GNC306YeqDZEYmNuNy31uiH8SC2Xi2HsGRTXPfG'),(40,'mm@mm.com','$2a$10$xhgGz9eUdC3/N3YJcLSgOempczL0izz4mw3An9wqNFyrPt.Ku7yFu'),(41,'nn@nn.com','$2a$10$KoKz95vQ15cl1pdG6cguOeOwy0TSNcmHmjf.vO69L0vA1NIznzwHW'),(42,'oo@oo.com','$2a$10$KoKz95vQ15cl1pdG6cguOeOwy0TSNcmHmjf.vO69L0vA1NIznzwHW'),(43,'pp@pp.com','$2a$10$KoKz95vQ15cl1pdG6cguOeOwy0TSNcmHmjf.vO69L0vA1NIznzwHW'),(44,'qq@qq.com','$2a$10$KoKz95vQ15cl1pdG6cguOeOwy0TSNcmHmjf.vO69L0vA1NIznzwHW'),(45,'rr@rr.com','$2a$10$KoKz95vQ15cl1pdG6cguOeOwy0TSNcmHmjf.vO69L0vA1NIznzwHW'),(46,'ss@ss.com','$2a$10$KoKz95vQ15cl1pdG6cguOeOwy0TSNcmHmjf.vO69L0vA1NIznzwHW'),(47,'tt@tt.com','$2a$10$6F/Sh2SjqfkmDPT3GovkR.BwEa2F87B/zSp/Ec72puFc2ReUXh54S'),(48,'uu@uu.com','$2a$10$AY9O/x/WSocg7OWgYqTHzeGU9vM5LToJjVNXLDyEwiPwgf5rmyaKG'),(49,'vv@vv.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(50,'ww@ww.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(51,'xx@xx.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(52,'yy@yy.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(53,'zz@zz.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(54,'111@111.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(55,'222@222.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(56,'333@333.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(57,'444@444.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(58,'555@555.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(59,'666@6666.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(60,'777@777.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(61,'888@888.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(62,'999@999.jp','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(63,'abcd@abcd.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(64,'bcde@bcde.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(65,'cdef@cdef.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(66,'defg@defg.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(67,'efgh@efgh.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(68,'fghi@fghi.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(69,'ghij@ghij.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(70,'hijk@hijk.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(71,'ijkl@ijkl.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(72,'jklm@jklm.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(73,'sokke.school@gmail.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(74,'klmn@klmn.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq'),(75,'sokke.school2@gmail.com','$2a$10$6h/QFk2vSOdvUmBTF08lqe90.HPGdbFgXEYz.NRN1Ns0W7suRviqq');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccinations`
--

DROP TABLE IF EXISTS `vaccinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccinations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vaccination` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccinations`
--

LOCK TABLES `vaccinations` WRITE;
/*!40000 ALTER TABLE `vaccinations` DISABLE KEYS */;
INSERT INTO `vaccinations` VALUES (1,'選択しない'),(2,'接種済み'),(3,'接種中');
/*!40000 ALTER TABLE `vaccinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z10_matchings`
--

DROP TABLE IF EXISTS `z10_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z10_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z10_matchings`
--

LOCK TABLES `z10_matchings` WRITE;
/*!40000 ALTER TABLE `z10_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z10_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z11_matchings`
--

DROP TABLE IF EXISTS `z11_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z11_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z11_matchings`
--

LOCK TABLES `z11_matchings` WRITE;
/*!40000 ALTER TABLE `z11_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z11_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z12_matchings`
--

DROP TABLE IF EXISTS `z12_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z12_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z12_matchings`
--

LOCK TABLES `z12_matchings` WRITE;
/*!40000 ALTER TABLE `z12_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z12_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z13_matchings`
--

DROP TABLE IF EXISTS `z13_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z13_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z13_matchings`
--

LOCK TABLES `z13_matchings` WRITE;
/*!40000 ALTER TABLE `z13_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z13_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z14_matchings`
--

DROP TABLE IF EXISTS `z14_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z14_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z14_matchings`
--

LOCK TABLES `z14_matchings` WRITE;
/*!40000 ALTER TABLE `z14_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z14_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z15_matchings`
--

DROP TABLE IF EXISTS `z15_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z15_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z15_matchings`
--

LOCK TABLES `z15_matchings` WRITE;
/*!40000 ALTER TABLE `z15_matchings` DISABLE KEYS */;
INSERT INTO `z15_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z15_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z16_matchings`
--

DROP TABLE IF EXISTS `z16_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z16_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z16_matchings`
--

LOCK TABLES `z16_matchings` WRITE;
/*!40000 ALTER TABLE `z16_matchings` DISABLE KEYS */;
INSERT INTO `z16_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z16_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z17_matchings`
--

DROP TABLE IF EXISTS `z17_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z17_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z17_matchings`
--

LOCK TABLES `z17_matchings` WRITE;
/*!40000 ALTER TABLE `z17_matchings` DISABLE KEYS */;
INSERT INTO `z17_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z17_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z18_matchings`
--

DROP TABLE IF EXISTS `z18_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z18_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z18_matchings`
--

LOCK TABLES `z18_matchings` WRITE;
/*!40000 ALTER TABLE `z18_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z18_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z19_matchings`
--

DROP TABLE IF EXISTS `z19_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z19_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z19_matchings`
--

LOCK TABLES `z19_matchings` WRITE;
/*!40000 ALTER TABLE `z19_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z19_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z1_matchings`
--

DROP TABLE IF EXISTS `z1_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z1_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z1_matchings`
--

LOCK TABLES `z1_matchings` WRITE;
/*!40000 ALTER TABLE `z1_matchings` DISABLE KEYS */;
INSERT INTO `z1_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z1_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z20_matchings`
--

DROP TABLE IF EXISTS `z20_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z20_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z20_matchings`
--

LOCK TABLES `z20_matchings` WRITE;
/*!40000 ALTER TABLE `z20_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z20_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z21_matchings`
--

DROP TABLE IF EXISTS `z21_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z21_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z21_matchings`
--

LOCK TABLES `z21_matchings` WRITE;
/*!40000 ALTER TABLE `z21_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z21_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z22_matchings`
--

DROP TABLE IF EXISTS `z22_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z22_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z22_matchings`
--

LOCK TABLES `z22_matchings` WRITE;
/*!40000 ALTER TABLE `z22_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z22_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z23_matchings`
--

DROP TABLE IF EXISTS `z23_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z23_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z23_matchings`
--

LOCK TABLES `z23_matchings` WRITE;
/*!40000 ALTER TABLE `z23_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z23_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z24_matchings`
--

DROP TABLE IF EXISTS `z24_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z24_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z24_matchings`
--

LOCK TABLES `z24_matchings` WRITE;
/*!40000 ALTER TABLE `z24_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z24_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z25_matchings`
--

DROP TABLE IF EXISTS `z25_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z25_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z25_matchings`
--

LOCK TABLES `z25_matchings` WRITE;
/*!40000 ALTER TABLE `z25_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z25_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z26_matchings`
--

DROP TABLE IF EXISTS `z26_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z26_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z26_matchings`
--

LOCK TABLES `z26_matchings` WRITE;
/*!40000 ALTER TABLE `z26_matchings` DISABLE KEYS */;
INSERT INTO `z26_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z26_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z27_matchings`
--

DROP TABLE IF EXISTS `z27_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z27_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z27_matchings`
--

LOCK TABLES `z27_matchings` WRITE;
/*!40000 ALTER TABLE `z27_matchings` DISABLE KEYS */;
INSERT INTO `z27_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z27_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z28_matchings`
--

DROP TABLE IF EXISTS `z28_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z28_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z28_matchings`
--

LOCK TABLES `z28_matchings` WRITE;
/*!40000 ALTER TABLE `z28_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z28_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z29_matchings`
--

DROP TABLE IF EXISTS `z29_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z29_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z29_matchings`
--

LOCK TABLES `z29_matchings` WRITE;
/*!40000 ALTER TABLE `z29_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z29_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z2_matchings`
--

DROP TABLE IF EXISTS `z2_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z2_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z2_matchings`
--

LOCK TABLES `z2_matchings` WRITE;
/*!40000 ALTER TABLE `z2_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z2_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z30_matchings`
--

DROP TABLE IF EXISTS `z30_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z30_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z30_matchings`
--

LOCK TABLES `z30_matchings` WRITE;
/*!40000 ALTER TABLE `z30_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z30_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z31_matchings`
--

DROP TABLE IF EXISTS `z31_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z31_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z31_matchings`
--

LOCK TABLES `z31_matchings` WRITE;
/*!40000 ALTER TABLE `z31_matchings` DISABLE KEYS */;
INSERT INTO `z31_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z31_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z32_matchings`
--

DROP TABLE IF EXISTS `z32_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z32_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z32_matchings`
--

LOCK TABLES `z32_matchings` WRITE;
/*!40000 ALTER TABLE `z32_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z32_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z33_matchings`
--

DROP TABLE IF EXISTS `z33_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z33_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z33_matchings`
--

LOCK TABLES `z33_matchings` WRITE;
/*!40000 ALTER TABLE `z33_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z33_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z34_matchings`
--

DROP TABLE IF EXISTS `z34_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z34_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z34_matchings`
--

LOCK TABLES `z34_matchings` WRITE;
/*!40000 ALTER TABLE `z34_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z34_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z35_matchings`
--

DROP TABLE IF EXISTS `z35_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z35_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z35_matchings`
--

LOCK TABLES `z35_matchings` WRITE;
/*!40000 ALTER TABLE `z35_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z35_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z36_matchings`
--

DROP TABLE IF EXISTS `z36_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z36_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z36_matchings`
--

LOCK TABLES `z36_matchings` WRITE;
/*!40000 ALTER TABLE `z36_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z36_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z37_matchings`
--

DROP TABLE IF EXISTS `z37_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z37_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z37_matchings`
--

LOCK TABLES `z37_matchings` WRITE;
/*!40000 ALTER TABLE `z37_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z37_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z38_matchings`
--

DROP TABLE IF EXISTS `z38_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z38_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z38_matchings`
--

LOCK TABLES `z38_matchings` WRITE;
/*!40000 ALTER TABLE `z38_matchings` DISABLE KEYS */;
INSERT INTO `z38_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z38_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z39_matchings`
--

DROP TABLE IF EXISTS `z39_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z39_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z39_matchings`
--

LOCK TABLES `z39_matchings` WRITE;
/*!40000 ALTER TABLE `z39_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z39_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z3_matchings`
--

DROP TABLE IF EXISTS `z3_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z3_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z3_matchings`
--

LOCK TABLES `z3_matchings` WRITE;
/*!40000 ALTER TABLE `z3_matchings` DISABLE KEYS */;
INSERT INTO `z3_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z3_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z40_matchings`
--

DROP TABLE IF EXISTS `z40_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z40_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z40_matchings`
--

LOCK TABLES `z40_matchings` WRITE;
/*!40000 ALTER TABLE `z40_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z40_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z41_matchings`
--

DROP TABLE IF EXISTS `z41_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z41_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z41_matchings`
--

LOCK TABLES `z41_matchings` WRITE;
/*!40000 ALTER TABLE `z41_matchings` DISABLE KEYS */;
INSERT INTO `z41_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z41_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z42_matchings`
--

DROP TABLE IF EXISTS `z42_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z42_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z42_matchings`
--

LOCK TABLES `z42_matchings` WRITE;
/*!40000 ALTER TABLE `z42_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z42_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z43_matchings`
--

DROP TABLE IF EXISTS `z43_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z43_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z43_matchings`
--

LOCK TABLES `z43_matchings` WRITE;
/*!40000 ALTER TABLE `z43_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z43_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z44_matchings`
--

DROP TABLE IF EXISTS `z44_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z44_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z44_matchings`
--

LOCK TABLES `z44_matchings` WRITE;
/*!40000 ALTER TABLE `z44_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z44_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z45_matchings`
--

DROP TABLE IF EXISTS `z45_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z45_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z45_matchings`
--

LOCK TABLES `z45_matchings` WRITE;
/*!40000 ALTER TABLE `z45_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z45_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z46_matchings`
--

DROP TABLE IF EXISTS `z46_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z46_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z46_matchings`
--

LOCK TABLES `z46_matchings` WRITE;
/*!40000 ALTER TABLE `z46_matchings` DISABLE KEYS */;
INSERT INTO `z46_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z46_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z47_matchings`
--

DROP TABLE IF EXISTS `z47_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z47_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z47_matchings`
--

LOCK TABLES `z47_matchings` WRITE;
/*!40000 ALTER TABLE `z47_matchings` DISABLE KEYS */;
INSERT INTO `z47_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z47_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z48_matchings`
--

DROP TABLE IF EXISTS `z48_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z48_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z48_matchings`
--

LOCK TABLES `z48_matchings` WRITE;
/*!40000 ALTER TABLE `z48_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z48_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z49_matchings`
--

DROP TABLE IF EXISTS `z49_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z49_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z49_matchings`
--

LOCK TABLES `z49_matchings` WRITE;
/*!40000 ALTER TABLE `z49_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z49_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z4_matchings`
--

DROP TABLE IF EXISTS `z4_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z4_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z4_matchings`
--

LOCK TABLES `z4_matchings` WRITE;
/*!40000 ALTER TABLE `z4_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z4_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z50_matchings`
--

DROP TABLE IF EXISTS `z50_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z50_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z50_matchings`
--

LOCK TABLES `z50_matchings` WRITE;
/*!40000 ALTER TABLE `z50_matchings` DISABLE KEYS */;
INSERT INTO `z50_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z50_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z51_matchings`
--

DROP TABLE IF EXISTS `z51_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z51_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z51_matchings`
--

LOCK TABLES `z51_matchings` WRITE;
/*!40000 ALTER TABLE `z51_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z51_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z52_matchings`
--

DROP TABLE IF EXISTS `z52_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z52_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z52_matchings`
--

LOCK TABLES `z52_matchings` WRITE;
/*!40000 ALTER TABLE `z52_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z52_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z53_matchings`
--

DROP TABLE IF EXISTS `z53_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z53_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z53_matchings`
--

LOCK TABLES `z53_matchings` WRITE;
/*!40000 ALTER TABLE `z53_matchings` DISABLE KEYS */;
INSERT INTO `z53_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z53_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z54_matchings`
--

DROP TABLE IF EXISTS `z54_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z54_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z54_matchings`
--

LOCK TABLES `z54_matchings` WRITE;
/*!40000 ALTER TABLE `z54_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z54_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z55_matchings`
--

DROP TABLE IF EXISTS `z55_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z55_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z55_matchings`
--

LOCK TABLES `z55_matchings` WRITE;
/*!40000 ALTER TABLE `z55_matchings` DISABLE KEYS */;
INSERT INTO `z55_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z55_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z56_matchings`
--

DROP TABLE IF EXISTS `z56_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z56_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z56_matchings`
--

LOCK TABLES `z56_matchings` WRITE;
/*!40000 ALTER TABLE `z56_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z56_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z57_matchings`
--

DROP TABLE IF EXISTS `z57_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z57_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z57_matchings`
--

LOCK TABLES `z57_matchings` WRITE;
/*!40000 ALTER TABLE `z57_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z57_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z58_matchings`
--

DROP TABLE IF EXISTS `z58_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z58_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z58_matchings`
--

LOCK TABLES `z58_matchings` WRITE;
/*!40000 ALTER TABLE `z58_matchings` DISABLE KEYS */;
INSERT INTO `z58_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z58_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z59_matchings`
--

DROP TABLE IF EXISTS `z59_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z59_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z59_matchings`
--

LOCK TABLES `z59_matchings` WRITE;
/*!40000 ALTER TABLE `z59_matchings` DISABLE KEYS */;
INSERT INTO `z59_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z59_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z5_matchings`
--

DROP TABLE IF EXISTS `z5_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z5_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z5_matchings`
--

LOCK TABLES `z5_matchings` WRITE;
/*!40000 ALTER TABLE `z5_matchings` DISABLE KEYS */;
INSERT INTO `z5_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z5_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z60_matchings`
--

DROP TABLE IF EXISTS `z60_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z60_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z60_matchings`
--

LOCK TABLES `z60_matchings` WRITE;
/*!40000 ALTER TABLE `z60_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z60_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z61_matchings`
--

DROP TABLE IF EXISTS `z61_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z61_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z61_matchings`
--

LOCK TABLES `z61_matchings` WRITE;
/*!40000 ALTER TABLE `z61_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z61_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z62_matchings`
--

DROP TABLE IF EXISTS `z62_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z62_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z62_matchings`
--

LOCK TABLES `z62_matchings` WRITE;
/*!40000 ALTER TABLE `z62_matchings` DISABLE KEYS */;
INSERT INTO `z62_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z62_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z63_matchings`
--

DROP TABLE IF EXISTS `z63_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z63_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z63_matchings`
--

LOCK TABLES `z63_matchings` WRITE;
/*!40000 ALTER TABLE `z63_matchings` DISABLE KEYS */;
INSERT INTO `z63_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z63_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z64_matchings`
--

DROP TABLE IF EXISTS `z64_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z64_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z64_matchings`
--

LOCK TABLES `z64_matchings` WRITE;
/*!40000 ALTER TABLE `z64_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z64_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z65_matchings`
--

DROP TABLE IF EXISTS `z65_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z65_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z65_matchings`
--

LOCK TABLES `z65_matchings` WRITE;
/*!40000 ALTER TABLE `z65_matchings` DISABLE KEYS */;
INSERT INTO `z65_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z65_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z66_matchings`
--

DROP TABLE IF EXISTS `z66_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z66_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z66_matchings`
--

LOCK TABLES `z66_matchings` WRITE;
/*!40000 ALTER TABLE `z66_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z66_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z67_matchings`
--

DROP TABLE IF EXISTS `z67_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z67_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z67_matchings`
--

LOCK TABLES `z67_matchings` WRITE;
/*!40000 ALTER TABLE `z67_matchings` DISABLE KEYS */;
INSERT INTO `z67_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z67_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z68_matchings`
--

DROP TABLE IF EXISTS `z68_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z68_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z68_matchings`
--

LOCK TABLES `z68_matchings` WRITE;
/*!40000 ALTER TABLE `z68_matchings` DISABLE KEYS */;
INSERT INTO `z68_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z68_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z69_matchings`
--

DROP TABLE IF EXISTS `z69_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z69_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z69_matchings`
--

LOCK TABLES `z69_matchings` WRITE;
/*!40000 ALTER TABLE `z69_matchings` DISABLE KEYS */;
INSERT INTO `z69_matchings` VALUES (75,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z69_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z6_matchings`
--

DROP TABLE IF EXISTS `z6_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z6_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z6_matchings`
--

LOCK TABLES `z6_matchings` WRITE;
/*!40000 ALTER TABLE `z6_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z6_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z70_matchings`
--

DROP TABLE IF EXISTS `z70_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z70_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z70_matchings`
--

LOCK TABLES `z70_matchings` WRITE;
/*!40000 ALTER TABLE `z70_matchings` DISABLE KEYS */;
INSERT INTO `z70_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z70_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z71_matchings`
--

DROP TABLE IF EXISTS `z71_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z71_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z71_matchings`
--

LOCK TABLES `z71_matchings` WRITE;
/*!40000 ALTER TABLE `z71_matchings` DISABLE KEYS */;
INSERT INTO `z71_matchings` VALUES (75,0,0,0,1,0,0);
/*!40000 ALTER TABLE `z71_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z72_matchings`
--

DROP TABLE IF EXISTS `z72_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z72_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z72_matchings`
--

LOCK TABLES `z72_matchings` WRITE;
/*!40000 ALTER TABLE `z72_matchings` DISABLE KEYS */;
INSERT INTO `z72_matchings` VALUES (73,0,0,0,1,0,0);
/*!40000 ALTER TABLE `z72_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z73_matchings`
--

DROP TABLE IF EXISTS `z73_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z73_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z73_matchings`
--

LOCK TABLES `z73_matchings` WRITE;
/*!40000 ALTER TABLE `z73_matchings` DISABLE KEYS */;
INSERT INTO `z73_matchings` VALUES (1,0,0,0,0,0,0),(3,0,0,0,0,0,0),(5,0,0,0,0,0,0),(8,0,0,0,0,0,0),(15,0,0,0,0,0,0),(16,0,0,0,0,0,0),(17,0,0,0,0,0,0),(27,0,0,0,0,0,0),(31,0,0,0,0,0,0),(38,0,0,0,0,0,0),(47,0,0,0,0,0,0),(53,0,0,0,0,0,0),(55,0,0,0,0,0,0),(58,0,0,1,0,0,0),(62,0,0,1,0,0,0),(63,0,0,1,0,0,0),(68,0,0,1,0,0,0),(70,0,0,0,0,0,0),(72,0,1,0,0,0,0),(74,0,1,0,0,0,0),(75,1,1,0,1,0,0);
/*!40000 ALTER TABLE `z73_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z74_matchings`
--

DROP TABLE IF EXISTS `z74_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z74_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z74_matchings`
--

LOCK TABLES `z74_matchings` WRITE;
/*!40000 ALTER TABLE `z74_matchings` DISABLE KEYS */;
INSERT INTO `z74_matchings` VALUES (73,0,0,0,1,0,0);
/*!40000 ALTER TABLE `z74_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z75_matchings`
--

DROP TABLE IF EXISTS `z75_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z75_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z75_matchings`
--

LOCK TABLES `z75_matchings` WRITE;
/*!40000 ALTER TABLE `z75_matchings` DISABLE KEYS */;
INSERT INTO `z75_matchings` VALUES (26,0,0,0,0,0,0),(41,0,0,0,0,0,0),(46,0,0,0,1,0,1),(50,0,0,0,0,0,0),(59,0,0,0,0,0,0),(65,0,0,0,0,0,0),(67,0,0,0,0,0,0),(69,0,0,0,0,0,0),(71,0,0,0,0,0,0),(73,1,0,1,1,0,1);
/*!40000 ALTER TABLE `z75_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z7_matchings`
--

DROP TABLE IF EXISTS `z7_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z7_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z7_matchings`
--

LOCK TABLES `z7_matchings` WRITE;
/*!40000 ALTER TABLE `z7_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z7_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z8_matchings`
--

DROP TABLE IF EXISTS `z8_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z8_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z8_matchings`
--

LOCK TABLES `z8_matchings` WRITE;
/*!40000 ALTER TABLE `z8_matchings` DISABLE KEYS */;
INSERT INTO `z8_matchings` VALUES (73,0,0,0,0,0,0);
/*!40000 ALTER TABLE `z8_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z9_matchings`
--

DROP TABLE IF EXISTS `z9_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z9_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT '0',
  `sended_nice` int DEFAULT '0',
  `favorite` int DEFAULT '0',
  `received_nice` int DEFAULT '0',
  `blocking` int DEFAULT '0',
  `checked_received_nice` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z9_matchings`
--

LOCK TABLES `z9_matchings` WRITE;
/*!40000 ALTER TABLE `z9_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z9_matchings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 15:18:49
