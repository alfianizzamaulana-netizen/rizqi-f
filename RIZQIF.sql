-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: RIZQIF
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daftar_bus`
--

DROP TABLE IF EXISTS `daftar_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar_bus` (
  `nama_bus` varchar(50) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `jadwal` varchar(100) DEFAULT NULL,
  `harga` int(50) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_bus`
--

LOCK TABLES `daftar_bus` WRITE;
/*!40000 ALTER TABLE `daftar_bus` DISABLE KEYS */;
INSERT INTO `daftar_bus` VALUES ('eka','jati-solo','12.00-00.00',2000,'kalem'),('kepet','bogem-simbang','13.15-13.30',50000,'roni'),('bagong','solo-jogja','12.00-12.30',2000,'topo'),('eko','SBY-SDA','13.00-14.00',3000,'kurnia'),('eki','SDA-SBY','11.00-11.30',12000,'yuski'),('tp','mjk-sda','06.00-12.00',1000,'tono'),('mbg','sby-mjk','07.00-08.00',3000,'tini'),('mbu','mjk-sby','09.00-10.00',1000,'tana'),('yoa','solo-jati','11.00-20.00',10000,'tani'),('eker','sembarang-jkt','12.00-00.00',20000,'tuna');
/*!40000 ALTER TABLE `daftar_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftar_penumpang`
--

DROP TABLE IF EXISTS `daftar_penumpang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar_penumpang` (
  `id_penumpang` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `riwayat_penyakit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_penumpang`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_penumpang`
--

LOCK TABLES `daftar_penumpang` WRITE;
/*!40000 ALTER TABLE `daftar_penumpang` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftar_penumpang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_bus`
--

DROP TABLE IF EXISTS `info_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_bus` (
  `kode_bus` varchar(50) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL,
  `terakhir_dilihat` varchar(50) DEFAULT NULL,
  `warna_bus` varchar(50) DEFAULT NULL,
  `aktivitas_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_bus`
--

LOCK TABLES `info_bus` WRITE;
/*!40000 ALTER TABLE `info_bus` DISABLE KEYS */;
INSERT INTO `info_bus` VALUES ('1','kalem','18.00','biru','berangkat'),('2','roni','17.45','merah','menunggu'),('3','topo','16.30','hijau','berangkat'),('4','kurnia','19.10','kuning','parkir'),('5','yuski','15.20','biru','service'),('6','tono','20.00','hitam','berangkat'),('7','tini','14.50','putih','menunggu'),('8','tana','21.00','merah','berangkat'),('9','tani','13.10','silver','parkir'),('10','tuna','12.00','hijau','service');
/*!40000 ALTER TABLE `info_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keberangkatan`
--

DROP TABLE IF EXISTS `keberangkatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keberangkatan` (
  `nama_depan` varchar(50) DEFAULT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `stasiun_keberangkatan` varchar(50) DEFAULT NULL,
  `kedatangan` varchar(50) DEFAULT NULL,
  `boarding` varchar(50) DEFAULT NULL,
  `sampai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keberangkatan`
--

LOCK TABLES `keberangkatan` WRITE;
/*!40000 ALTER TABLE `keberangkatan` DISABLE KEYS */;
INSERT INTO `keberangkatan` VALUES ('rizqi','firmansyah','bungurasih','surabaya','12.30','13.00'),('aulia','pratiwi','waru','sidoarjo kota','08.30','09.15'),('budi','santoso','bungurasih','gresik','10.00','11.00'),('dimas','saputra','porong','malang','07.45','09.00'),('indah','larasati','sidoarjo','mojokerto','14.00','15.00'),('tono','supriyadi','wonokromo','bangkalan','09.30','10.10'),('tini','sulastri','surabaya','lamongan','13.20','14.30'),('bagas','pratama','kedurus','gresik','11.00','11.45'),('fajar','adi','keputih','sidoarjo','16.00','17.10'),('putri','maulidah','kenjeran','surabaya','19.00','22.00');
/*!40000 ALTER TABLE `keberangkatan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-02 11:32:50
