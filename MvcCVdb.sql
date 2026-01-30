-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: dbcv
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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `KullaniciAdi` varchar(20) DEFAULT NULL,
  `Sifre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'yamancylnn','514514'),(2,'GOGO','Gugu');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldeneyimlerim`
--

DROP TABLE IF EXISTS `tbldeneyimlerim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldeneyimlerim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Baslik` varchar(100) DEFAULT NULL,
  `AltBaslik` varchar(100) DEFAULT NULL,
  `Aciklama` varchar(1000) DEFAULT NULL,
  `Tarih` varchar(100) DEFAULT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DENEYIM_kulID_idx` (`kullaniciID`),
  CONSTRAINT `FK_DENEYIM_kulID` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldeneyimlerim`
--

LOCK TABLES `tbldeneyimlerim` WRITE;
/*!40000 ALTER TABLE `tbldeneyimlerim` DISABLE KEYS */;
INSERT INTO `tbldeneyimlerim` VALUES (1,'Yazılım Geliştirme Stajeri','Go Battery Enerji A.Ş.','- Kotlin programlama dili ile veri girişi yapılarak kayıt tutulabilir, güncellenebilir, silinebilir ve kayıtlı verileri menü düzeninde listeleyerek herbir verinin detaylarını görselleriyle beraber kullanıcıya sunan Android tabanlı basit otomasyon uygulaması geliştirme,\r\n- Yenilenebilir enerji kaynaklarının batarya üretiminde kullanımı ve bu bataryaları dijitalde yazılımsal yardımlar ile kontrolünü sağlama konusunda araştırmalar','Temmuz 2023 – Ağustos 2023',1),(2,'Yazılım Uzmanı (Yarı Zamanlı)','Aksoy Çözüm','- eBA İş Akışı ve Döküman Yönetim Sistemi ile iş akışı süreçleri\r\ndaha düzenli yürütülebilmesi ve kontrol edilebilmesi için süreç\r\nformlarının tasarlanması ve düzenlenmesi,\r\n- Belge Yönetimi,\r\n- İş Süreci Yönetimi,\r\n- C# programlama dili ile .NET framework kullanarak süreç formlarının back-end kısmında gerekli fonksiyonların ayarlanması, veri tabanından verilerin getirilmesi ve hataların düzenlenmesi işlemleri,\r\n- Microsoft SQL Server veri tabanı sistemi kullanılarak verilerin oluşturulması, düzenlenmesi ve süreç formlarının fonksiyomlarına uygun SQL sorgu cümlelerin yazılması ve programa bağlantı oluşturulması işlemleri\r\n- Oluşturulan süreçlerin projelerini export ve import işlemleri ile canlıya taşınması ve sunucu bağlantılarının oluşturulması','Ekim 2022 – Ocak 2023',1),(3,'Yazılım Stajeri','Aksoy Çözüm','- C#, .NET ve SQL becerilerini kullanarak eBA İş Akışı ve Döküman Yönetim Sistemi ve MS SQL Server programlarının yardımıyla döküman ve iş süreci yönetimi konularında hem öğrenerek, hem de geliştirerek basit iş akışı süreçleri geliştirme\r\n- İş süreçlerinin form raporlarını SQL sorguları yardımıyla oluşturma','Temmuz 2022 – Ekim 2022',1);
/*!40000 ALTER TABLE `tbldeneyimlerim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblegitimlerim`
--

DROP TABLE IF EXISTS `tblegitimlerim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblegitimlerim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Baslik` varchar(100) DEFAULT NULL,
  `AltBaslik1` varchar(100) DEFAULT NULL,
  `AltBaslik2` varchar(100) DEFAULT NULL,
  `GNO` varchar(10) DEFAULT NULL,
  `Tarih` varchar(100) DEFAULT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EGITIM_kulID_idx` (`kullaniciID`),
  CONSTRAINT `FK_EGITIM_kulID` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblegitimlerim`
--

LOCK TABLES `tblegitimlerim` WRITE;
/*!40000 ALTER TABLE `tblegitimlerim` DISABLE KEYS */;
INSERT INTO `tblegitimlerim` VALUES (1,'Kocaeli Üniversitesi','Teknoloji Fakültesi','Bilişim Sistemleri Mühendisliği','2.25','2018 – Halen',1),(2,'Mehmet Murat İşler Mesleki ve Teknik Anadolu Lisesi','Bilişim Teknolojileri Alanı','Web Programlama Dalı','78.75','2013 – 2017',1);
/*!40000 ALTER TABLE `tblegitimlerim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhakkimda`
--

DROP TABLE IF EXISTS `tblhakkimda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhakkimda` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(30) DEFAULT NULL,
  `Soyad` varchar(30) DEFAULT NULL,
  `Adres` varchar(100) DEFAULT NULL,
  `Telefon` varchar(20) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Aciklama` varchar(1000) DEFAULT NULL,
  `Resim` varchar(100) DEFAULT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_HAKKIMDA_idx` (`kullaniciID`),
  CONSTRAINT `FK_HAKKIMDA` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhakkimda`
--

LOCK TABLES `tblhakkimda` WRITE;
/*!40000 ALTER TABLE `tblhakkimda` DISABLE KEYS */;
INSERT INTO `tblhakkimda` VALUES (1,'Yaman','Ceylan','Kabaoğlu, Baki Komsuoğlu bulvarı No:515, Umuttepe, 41001 İzmit/Kocaeli','+90 (552) 348 29 01','yamancylnn@gmail.com','Sürekli gelişime önem veren ve yeniliklere hızlı adapte olan biriyim.\r\nYeni şeyler öğrenmeyi, analitik düşünerek sorgulamayı, yeteneklerimi geliştirmeyi önemsiyor ve öğretici bilgileri araştırmaktan zevk alıyorum. Kendimi mühendislik ve yazılım geliştirme alanında geliştirmekteyim ve öğrendiklerimi uygulayarak daha da geliştirmeyi, teknik bilgi ve becerilerimi ortaya koyup faydalı olabileceğim ve bunları geliştirebileceğim, çalıştığım kurumun hedeflerine ulaşabilmesi için görev ve sorumluluk alabileceğim, problem çözme yeteneğimi, mühendislik becerilerimi kullanabileceğim bir pozisyonda başarılı işler yapmak hedefindeyim.','https://i.hizliresim.com/4a99rzh.jpg',1),(4,'Utku','Ceylan','mvmvwmrp','054564894561','kmkmpmbpmbp',NULL,NULL,2);
/*!40000 ALTER TABLE `tblhakkimda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhobilerim`
--

DROP TABLE IF EXISTS `tblhobilerim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhobilerim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Aciklama1` varchar(1000) DEFAULT NULL,
  `Aciklama2` varchar(1000) DEFAULT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_HOBI_kulID_idx` (`kullaniciID`),
  CONSTRAINT `FK_HOBI_kulID` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhobilerim`
--

LOCK TABLES `tblhobilerim` WRITE;
/*!40000 ALTER TABLE `tblhobilerim` DISABLE KEYS */;
INSERT INTO `tblhobilerim` VALUES (1,'Hobilerimden bahsedecek olursam doğa yürüyüşü, kamp kısaca doğada yapılabilecek birçok aktivite tam bana göre ayrıca futbol, kick boks, yüzme ve okçuluk gibi sportif ve hareketli aktiviteler yaparım kısaca hareketli olmayı severim.','Hareketli aktiviteler dışında yeni bilgiler öğrenme konusunda araştırmalar yapmak da benim için hobi niteliğindedir, özellikle astronomi, tarih ve coğrafya konularına üst düzey bir merakım ve araştırma hevesim hep olmuştur ve bu konularda kitaplar, makaleler vb. kaynaklarla ilgilenirim, özellikle astronomi konusunda bana ilham veren uç seviye fikirler ile hayallerim olmuştur ve hayatta başka konularla ilgili de ufkumu açan yaratıcı fikirlerimin olmasında çokça etkisi olmuştur.',1);
/*!40000 ALTER TABLE `tblhobilerim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbliletisim`
--

DROP TABLE IF EXISTS `tbliletisim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbliletisim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdSoyad` varchar(100) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Konu` varchar(100) DEFAULT NULL,
  `Mesaj` varchar(1000) DEFAULT NULL,
  `Tarih` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbliletisim`
--

LOCK TABLES `tbliletisim` WRITE;
/*!40000 ALTER TABLE `tbliletisim` DISABLE KEYS */;
INSERT INTO `tbliletisim` VALUES (1,'Yaman Ceylan','yamancylnn@gmail.com','Deneme','Merhaba, Test denemesi yapıyoruz.','2024-08-07 12:00:00'),(2,'Yaman Ceylan','ceylannedis59@gmail.com','Deneme Hk.','Merhaba, Test denemesi yapıyoruz.','2024-08-09 14:45:00'),(3,'Muhammed Yıldız','muhammedyildiz@gmail.com','Teşekkür','Merhaba, Test denemesi yapıyoruz.','2024-08-09 15:30:00'),(4,'Arda Ceylan','ardaceylan@gmail.com','Proje Hk.','Merhaba, Proje denemesi yapıyoruz.','2024-08-14 16:25:00'),(5,'Utku Ceylan','utkuceylan@gmail.com','Proje Hk.','Merhaba, Proje denemesi yapıyoruz.','2024-08-14 17:15:00'),(6,'Bora Ceylan','boraceylan@gmail.com','Proje Deneme Hk. ','Merhaba, Proje denemesini tamamladım.','2024-08-14 10:00:00'),(7,'Yaman Ceylan','nbum_nb@outlook.com','Test Hk.','Merhaba, Proje testini başarıyla tamamladım..','2024-08-14 09:35:00'),(8,'Yaman Ceylan','yamancylnn@gmail.com','Deneme','Merhaba, Test denemesi yapıyoruz.','2024-09-07 00:00:00');
/*!40000 ALTER TABLE `tbliletisim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsertifikalarim`
--

DROP TABLE IF EXISTS `tblsertifikalarim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsertifikalarim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tarih` varchar(30) DEFAULT NULL,
  `Aciklama` varchar(250) DEFAULT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SERTIFIKA_kulID_idx` (`kullaniciID`),
  CONSTRAINT `FK_SERTIFIKA_kulID` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsertifikalarim`
--

LOCK TABLES `tblsertifikalarim` WRITE;
/*!40000 ALTER TABLE `tblsertifikalarim` DISABLE KEYS */;
INSERT INTO `tblsertifikalarim` VALUES (1,'Temmuz 2024','C# Programalama Dili : Temel, Orta, İleri Seviye Eğitim Sertifikası',1),(2,'Ocak 2024','BTK Akademi “Algoritma ve Veri Yapıları İleri Seviye” Eğitim Sertifikası',1),(3,'Nisan 2023','Girişimcilikte Eğitim Programı (GEP) “Proje Yönetimi” Eğitimi Sertifikası',1),(4,'Aralık 2022','Girişimcilikte Eğitim Programı (GEP) “Liderlik” Eğitimi Sertifikası',1);
/*!40000 ALTER TABLE `tblsertifikalarim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsosyalmedya`
--

DROP TABLE IF EXISTS `tblsosyalmedya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsosyalmedya` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(30) DEFAULT NULL,
  `Ikon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsosyalmedya`
--

LOCK TABLES `tblsosyalmedya` WRITE;
/*!40000 ALTER TABLE `tblsosyalmedya` DISABLE KEYS */;
INSERT INTO `tblsosyalmedya` VALUES (1,'Linkedin','fab fa-linkedin-in'),(2,'E-Posta','fas fa-envelope'),(3,'WhatsApp','fab fa-whatsapp'),(4,'GitHub','fab fa-github'),(5,'Instagram','fab fa-instagram'),(6,'Telegram','fab fa-telegram'),(7,'Facebook','fab fa-facebook-f'),(8,'X','fab fa-twitter');
/*!40000 ALTER TABLE `tblsosyalmedya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsosyalmedyahesap`
--

DROP TABLE IF EXISTS `tblsosyalmedyahesap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsosyalmedyahesap` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Link` varchar(250) DEFAULT NULL,
  `sosyalmedyaID` int NOT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SOSYAL_kulID_idx` (`kullaniciID`),
  KEY `FK_SOSYAL_sosyalID_idx` (`sosyalmedyaID`),
  CONSTRAINT `FK_SOSYAL_kulID` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_SOSYAL_sosyalID` FOREIGN KEY (`sosyalmedyaID`) REFERENCES `tblsosyalmedya` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsosyalmedyahesap`
--

LOCK TABLES `tblsosyalmedyahesap` WRITE;
/*!40000 ALTER TABLE `tblsosyalmedyahesap` DISABLE KEYS */;
INSERT INTO `tblsosyalmedyahesap` VALUES (1,'https://www.linkedin.com/in/yamancyln/',1,1),(2,'mailto:yamancylnn@gmail.com',2,1),(3,'https://wa.me/qr/5M2PDVKJXMXLG1',3,1),(4,'https://github.com/Yamancyln',4,1),(5,'https://www.instagram.com/yamancylnn/',5,1),(6,'https://t.me/yamancylnn',6,1),(9,'https://www.facebook.com/utku.ceylan.9887',7,2),(11,'https://www.facebook.com/profile.php?id=100091791723595',7,1);
/*!40000 ALTER TABLE `tblsosyalmedyahesap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblyeteneklerim`
--

DROP TABLE IF EXISTS `tblyeteneklerim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblyeteneklerim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Yetenek` varchar(100) DEFAULT NULL,
  `Oran` tinyint DEFAULT NULL,
  `kullaniciID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_YETENEK_kulID_idx` (`kullaniciID`),
  CONSTRAINT `FK_YETENEK_kulID` FOREIGN KEY (`kullaniciID`) REFERENCES `tbladmin` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblyeteneklerim`
--

LOCK TABLES `tblyeteneklerim` WRITE;
/*!40000 ALTER TABLE `tblyeteneklerim` DISABLE KEYS */;
INSERT INTO `tblyeteneklerim` VALUES (1,'Microsoft Office Programları',95,1),(2,'Visual Studio IDE',90,1),(3,'C# Programlama Dili',90,1),(4,'.NET Framework',85,1),(5,'ADO.NET',95,1),(6,'ASP.NET',75,1),(7,'ASP.NET MVC',80,1),(8,'Entity Framework',75,1),(9,'LINQ',85,1),(10,'SQL (T-SQL / PL-SQL)',95,1),(11,'MS SQL Veri Tabanı',75,1),(12,'MySQL Veri Tabanı',90,1),(13,'HTML',95,1),(14,'CSS',90,1),(15,'JavaScript',50,1),(16,'PHP Programlama Dili',50,1),(17,'Kotlin Programlama Dili',55,1),(18,'eBA İş Akışı ve Doküman Yönetim Sistemi',80,1),(19,'Linux (Bash/Shell)',65,1),(20,'MATLAB',75,1);
/*!40000 ALTER TABLE `tblyeteneklerim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbcv'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02  1:35:59
