-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annual_incomes`
--

LOCK TABLES `annual_incomes` WRITE;
/*!40000 ALTER TABLE `annual_incomes` DISABLE KEYS */;
INSERT INTO `annual_incomes` VALUES (1,'表示しない'),(2,'200万円未満'),(3,'200万円以上～400万円未満'),(4,'400万円以上～600万円未満'),(5,'600万円以上～800万円未満'),(6,'800万円以上～1000万円未満'),(7,'1000万円以上～1500万円未満'),(8,'1500万円以上～2000万円未満'),(9,'2000万円以上～3000万円未満');
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
  `prefecture` varchar(4) DEFAULT NULL,
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
  `send_by` int NOT NULL,
  `send_to` int NOT NULL,
  `text` text NOT NULL,
  `check_read` int NOT NULL DEFAULT '1',
  `sent_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupations`
--

LOCK TABLES `occupations` WRITE;
/*!40000 ALTER TABLE `occupations` DISABLE KEYS */;
INSERT INTO `occupations` VALUES (1,'大手企業'),(2,'公務員'),(3,'受付'),(4,'事務員'),(5,'看護師'),(6,'保育士'),(7,'客室乗務員'),(8,'秘書'),(9,'教育関連'),(10,'福祉・介護'),(11,'調理師・栄養士'),(12,'アパレル・ショップ'),(13,'美容関係'),(14,'ブライダル'),(15,'金融'),(16,'保険'),(17,'広告'),(18,'マスコミ'),(19,'WEB業界'),(20,'上場企業'),(21,'経営者・役員'),(22,'医師'),(23,'弁護士'),(24,'公認会計士'),(25,'パイロット'),(26,'大手商社'),(27,'コンサル'),(28,'大手外資'),(29,'外資金融'),(30,'IT関連'),(31,'クリエイター'),(32,'アナウンサー'),(33,'芸能・モデル'),(34,'イベントコンパニオン'),(35,'スポーツ選手'),(36,'接客業'),(37,'不動産'),(38,'建築関連'),(39,'通信'),(40,'流通'),(41,'製薬'),(42,'食品関連'),(43,'旅行関係'),(44,'エンターテインメント'),(45,'会社員'),(46,'学生'),(47,'自由業'),(48,'税理士'),(49,'エンジニア'),(50,'建築士'),(51,'美容師'),(52,'歯科医師'),(53,'歯科衛生士'),(54,'その他');
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
  `like_point` int DEFAULT '30',
  `registed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_basic_details`
--

LOCK TABLES `user_basic_details` WRITE;
/*!40000 ALTER TABLE `user_basic_details` DISABLE KEYS */;
INSERT INTO `user_basic_details` VALUES (1,2,26,'山田花子',NULL,'2022-09-20 00:00:00'),(2,1,32,'風の銀次',NULL,'2022-09-26 23:01:06'),(3,2,20,'なつみ',30,'2022-09-26 23:20:15'),(4,1,51,'キムタクにぃ',30,'2022-09-26 23:22:46'),(5,2,20,'紗奈',30,'2022-09-26 23:36:21'),(6,1,40,'きなこもち',30,'2022-09-26 23:36:21'),(7,2,51,'ゆきちゃん',30,'2022-09-26 23:36:21'),(8,2,26,'みにー☆',30,'2022-09-26 23:45:40'),(9,2,19,'じじ',30,'2022-09-26 23:50:13'),(10,1,22,'りょーた',30,'2022-09-27 08:47:23'),(11,1,19,'タダナリ',30,'2022-09-27 08:56:14'),(12,1,42,'はやぶさ',30,'2022-09-27 15:13:30'),(13,2,26,'ひなこ',30,'2022-09-27 15:17:38'),(14,1,45,'ツッキー',30,'2022-09-28 13:56:13'),(15,2,22,'あいこ',30,'2022-09-28 13:59:18'),(16,2,28,'ゆきみ',30,'2022-09-30 11:45:52'),(17,2,31,'たまみ',30,'2022-09-30 11:48:30'),(18,2,23,'わかな',30,'2022-09-30 11:48:30'),(19,2,42,'あや',30,'2022-09-30 11:48:30'),(20,1,35,'よしだ',30,'2022-09-30 11:48:30'),(21,1,25,'はやと',30,'2022-09-30 11:48:30'),(22,1,22,'ピエール',30,'2022-09-30 11:48:30'),(23,1,51,'よしくに',30,'2022-09-30 12:42:16'),(24,1,41,'明夫',30,'2022-10-02 21:07:52'),(25,2,24,'つづ',30,'2022-10-02 21:14:57'),(26,1,37,'yuu',30,'2022-10-02 21:24:21'),(27,2,28,'もえ。',30,'2022-10-02 21:30:47'),(28,1,27,'竜',30,'2022-10-02 21:40:11'),(29,2,29,'まどか',30,'2022-10-02 21:43:20'),(30,2,29,'ずっこ',30,'2022-10-02 21:46:59'),(31,2,29,'れーこ',30,'2022-10-02 21:50:39'),(32,1,28,'いたチャイ',30,'2022-10-02 22:16:10'),(33,1,27,'ヒロシ',30,'2022-10-02 22:27:10'),(34,1,37,'とっしー',30,'2022-10-02 22:31:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_free_details`
--

LOCK TABLES `user_free_details` WRITE;
/*!40000 ALTER TABLE `user_free_details` DISABLE KEYS */;
INSERT INTO `user_free_details` VALUES (1,4,3,7,4,6,'東京農業大学','Webエンジニア',3,4,4,4,3,2,2,4,'漫画','ゲーム','スイーツ巡り',1),(2,4,2,1,2,2,'コメダ大学','ひみつ',2,2,2,1,1,1,3,1,'音楽','バンド','マッサージ',1),(3,5,2,5,2,2,'麦茶大学',NULL,3,3,3,2,2,2,2,2,'映画','小説','音楽',1),(4,2,3,8,3,3,'扇風機女子短大',NULL,2,2,3,3,3,1,1,3,'散歩','旅行','ディズニー',2),(5,4,5,1,1,3,NULL,NULL,1,2,2,1,4,3,2,1,'ゲーム','アニメ','漫画',1),(6,2,4,2,2,2,'ニベア高校',NULL,2,2,2,2,2,2,2,2,'ソシャゲ','ゲーム','家事',2),(7,1,2,3,1,2,'ラーメン専門学校','うどん屋',1,2,3,1,2,3,3,4,'キャンプ','料理','掃除',2),(8,3,2,2,3,4,NULL,NULL,2,2,5,3,4,1,2,4,'サウナ','温泉','旅行',2),(9,4,3,37,1,1,'緑茶大学',NULL,3,2,4,2,3,3,3,3,'映画','カフェ','ビリヤード',1),(10,2,4,38,3,2,NULL,NULL,3,3,3,4,1,1,2,3,'youtube','tiktok','instagram',1),(11,2,5,39,2,1,'ミンティア高校','ひみつ',2,2,2,3,2,1,3,3,'カフェ','水族館','演劇鑑賞',2),(12,3,3,40,1,2,NULL,NULL,2,4,3,3,4,1,4,4,'野球','テニス','サッカー',1),(13,4,2,8,3,2,'日本タケノコの里大学',NULL,3,4,1,1,5,1,2,2,'ゴルフ','フットサル','ダーツ',3),(14,5,4,12,1,3,NULL,NULL,2,1,4,3,3,2,2,3,NULL,NULL,NULL,1),(15,4,5,30,2,4,NULL,NULL,3,2,3,1,3,1,2,2,NULL,NULL,NULL,1),(16,5,3,36,1,2,NULL,NULL,2,3,4,2,2,2,1,3,NULL,NULL,NULL,1),(17,5,2,31,1,1,'ハンカチ高専',NULL,2,2,2,1,1,1,2,1,NULL,NULL,NULL,2),(18,2,5,35,2,2,NULL,NULL,2,3,1,4,4,2,1,4,NULL,NULL,NULL,1),(19,4,4,34,2,3,'ひよこ高校',NULL,2,4,3,1,3,1,2,1,NULL,NULL,NULL,3),(20,2,2,2,3,3,NULL,NULL,2,2,1,4,2,1,4,2,NULL,NULL,NULL,1),(21,2,2,34,1,2,'アップル大学',NULL,2,5,5,3,2,2,2,3,NULL,NULL,NULL,2),(22,3,3,33,2,2,NULL,NULL,2,3,2,2,4,1,3,4,NULL,NULL,NULL,3),(23,3,4,32,1,2,NULL,NULL,2,2,2,2,2,1,2,2,NULL,NULL,NULL,1),(24,4,3,39,3,4,NULL,NULL,3,4,3,2,4,1,4,4,NULL,NULL,NULL,3),(25,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(26,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(27,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(28,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(29,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(30,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(31,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(32,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(33,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1),(34,1,1,1,1,1,NULL,NULL,1,1,1,1,1,1,1,1,NULL,NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_required_details`
--

LOCK TABLES `user_required_details` WRITE;
/*!40000 ALTER TABLE `user_required_details` DISABLE KEYS */;
INSERT INTO `user_required_details` VALUES (1,149,10,20,5,2,3,2,1,1),(2,180,8,1,5,1,1,1,1,1),(3,155,9,2,4,2,4,1,2,1),(4,162,13,33,2,2,5,5,7,5),(5,145,16,54,2,3,2,4,3,4),(6,160,5,10,1,2,1,1,1,1),(7,180,2,1,3,1,2,2,2,2),(8,156,5,43,4,2,1,2,1,4),(9,165,45,13,6,2,6,2,7,3),(10,177,38,10,4,2,5,3,5,4),(11,181,13,48,5,2,4,4,3,4),(12,169,47,31,3,3,6,4,3,2),(13,152,17,6,3,2,1,2,1,4),(14,167,15,45,5,2,5,2,3,2),(15,156,27,46,2,2,4,2,2,2),(16,153,20,54,3,2,2,4,3,2),(17,160,31,25,2,2,2,2,2,2),(18,163,14,5,4,2,3,4,3,2),(19,157,14,4,1,1,1,1,4,2),(20,165,17,10,2,2,2,2,2,2),(21,174,15,20,3,3,3,3,5,3),(22,175,16,30,4,1,4,4,6,4),(23,172,28,22,7,2,4,3,4,5),(24,157,46,17,6,2,3,4,3,4),(25,164,45,36,4,3,4,3,2,2),(26,163,23,2,5,3,4,2,2,2),(27,174,37,43,3,2,3,2,2,3),(28,181,4,35,6,2,6,2,2,2),(29,154,32,47,4,2,2,2,2,2),(30,150,25,5,3,2,3,2,2,2),(31,153,33,4,3,2,4,2,2,2),(32,163,23,43,5,2,2,2,2,4),(33,176,6,9,3,3,6,5,4,4),(34,178,43,48,5,2,5,2,6,5);
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
INSERT INTO `user_roles` VALUES (1,1),(2,1),(2,2),(3,1),(4,1),(5,1),(6,1),(6,2),(7,1),(8,1),(9,1),(9,2),(10,1),(11,1),(11,2),(12,1),(13,1),(14,1),(15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'aaa@aaa.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(2,'bbb@bbb.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(3,'ccc@ccc.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(4,'ddd@ddd.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(5,'eee@eee.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(6,'fff@fff.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(7,'ggg@ggg.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(8,'hhh@hhh.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(9,'iii@iii.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(10,'jjj@jjj.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(11,'kkk@kkk.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(12,'lll@lll.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(13,'mmm@mmm.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(14,'nnn@nnn.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(15,'ooo@ooo.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(16,'ppp@ppp.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(17,'rrr@rrr.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(18,'sss@sss.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(19,'ttt@ttt.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(20,'uuu@uuu.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(21,'vvv@vvv.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(22,'qqq@qqq.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(23,'www@www.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(24,'xxx@xxx.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(26,'yyy@yyy.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(27,'zzz@zzz.jp','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(28,'abc@abc.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(29,'bb@bb.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(30,'cc@cc.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(31,'dd@dd.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(32,'ee@ee.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(33,'ff@ff.com','$2a$08$n6CnJeewPt7acXCj4lazz.Qv8zZA0RZVOuishzmpyIx0YhcYgUM9u'),(34,'gg@gg.com','$2a$10$eRpkcT/K2bCPF61OHmNIb.5UYGW3nwJWFB17P/ptHMfM8R2nmjsHC'),(35,'hh@hh.com','$2a$10$boac4t3UA7yyigyfUHgxd.3ca5Z3Fk/zJMrOhyLmX6K0hA8wG9ogO');
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z15_matchings`
--

LOCK TABLES `z15_matchings` WRITE;
/*!40000 ALTER TABLE `z15_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z16_matchings`
--

LOCK TABLES `z16_matchings` WRITE;
/*!40000 ALTER TABLE `z16_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z17_matchings`
--

LOCK TABLES `z17_matchings` WRITE;
/*!40000 ALTER TABLE `z17_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z1_matchings`
--

LOCK TABLES `z1_matchings` WRITE;
/*!40000 ALTER TABLE `z1_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z26_matchings`
--

LOCK TABLES `z26_matchings` WRITE;
/*!40000 ALTER TABLE `z26_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z27_matchings`
--

LOCK TABLES `z27_matchings` WRITE;
/*!40000 ALTER TABLE `z27_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z31_matchings`
--

LOCK TABLES `z31_matchings` WRITE;
/*!40000 ALTER TABLE `z31_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
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
-- Table structure for table `z3_matchings`
--

DROP TABLE IF EXISTS `z3_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z3_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z3_matchings`
--

LOCK TABLES `z3_matchings` WRITE;
/*!40000 ALTER TABLE `z3_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z3_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z4_matchings`
--

DROP TABLE IF EXISTS `z4_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z4_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT NULL,
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
-- Table structure for table `z5_matchings`
--

DROP TABLE IF EXISTS `z5_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z5_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z5_matchings`
--

LOCK TABLES `z5_matchings` WRITE;
/*!40000 ALTER TABLE `z5_matchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `z5_matchings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z6_matchings`
--

DROP TABLE IF EXISTS `z6_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z6_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT NULL,
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
-- Table structure for table `z7_matchings`
--

DROP TABLE IF EXISTS `z7_matchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `z7_matchings` (
  `id` int NOT NULL,
  `matching` int DEFAULT NULL,
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
  `matching` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z8_matchings`
--

LOCK TABLES `z8_matchings` WRITE;
/*!40000 ALTER TABLE `z8_matchings` DISABLE KEYS */;
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
  `matching` int DEFAULT NULL,
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

-- Dump completed on 2022-10-02 22:55:26
