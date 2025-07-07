-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: OMBRE_AFRIQUE
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
-- Current Database: `OMBRE_AFRIQUE`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `OMBRE_AFRIQUE` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `OMBRE_AFRIQUE`;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `ID_client` int DEFAULT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adress` varchar(50) DEFAULT NULL,
  `Fonction` varchar(50) DEFAULT NULL,
  `Salaire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Hawa','Moha','hawamoha@gmail.com','Developpeur_Web&Mobile','1500000'),(2,'Salima','Noha','salimanoha@gmail.com','Graphiste_Concepteur','1000000'),(2,'Hissein','Blais','hisseinblais@gmail.com','Architecte_réseaux','1500000'),(4,'HBatul','Moham','hbatul@gmail.com','Nutritionniste','100000'),(5,'Weddeih','Moussa','warda@gmail.com','Génicologue','1000000'),(6,'Ikhlass','Mahamat','ikh@gmail.com','Infermiére','100000');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commande`
--

DROP TABLE IF EXISTS `Commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Commande` (
  `ID_commande_Commande` int DEFAULT NULL,
  `Date_heure_Commande` varchar(50) DEFAULT NULL,
  `Type_Commande` varchar(50) DEFAULT NULL,
  `ID_employé_Employé` int DEFAULT NULL,
  `ID_plat_Plat` int DEFAULT NULL,
  `ID_facture_Facture` int DEFAULT NULL,
  `ID_client_Client` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commande`
--

LOCK TABLES `Commande` WRITE;
/*!40000 ALTER TABLE `Commande` DISABLE KEYS */;
INSERT INTO `Commande` VALUES (2,'14_05_2025/16h','Fritt_poisson',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employé`
--

DROP TABLE IF EXISTS `Employé`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employé` (
  `ID_employé` int DEFAULT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adress` varchar(50) DEFAULT NULL,
  `Poste` varchar(50) DEFAULT NULL,
  `Salaire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employé`
--

LOCK TABLES `Employé` WRITE;
/*!40000 ALTER TABLE `Employé` DISABLE KEYS */;
INSERT INTO `Employé` VALUES (5,'Emad','Sanad','chef@gmail.com','Chef_partie','1500000'),(4,'Issa','Rawan','caiss@gmail.com','Caissier','1000000'),(2,'Muaz','Husny','gera@gmail.com','Gérant','1200000'),(1,'Khaleed','Waled','hot@gmail.com','Hote','500000'),(6,'AlKhali','Issa','plong@gmail.com','Plongeur','250000'),(2,'Kareem','Hafiz','barman@gmail.com','Barman','1000000'),(2,'Buny','Rahma','shef@gmail.com','Sous_chef','1200000'),(2,'Leela','Othman','lelman@gmail.com','Cuisinier','1500000'),(2,'Cevan','Nardi','Cevan@gmail.com','Serveur','500000');
/*!40000 ALTER TABLE `Employé` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facture`
--

DROP TABLE IF EXISTS `Facture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facture` (
  `ID_facture` int DEFAULT NULL,
  `Date_payement` varchar(50) DEFAULT NULL,
  `Montant` int DEFAULT NULL,
  `Mode_payement` varchar(50) DEFAULT NULL,
  `Detail_plant` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facture`
--

LOCK TABLES `Facture` WRITE;
/*!40000 ALTER TABLE `Facture` DISABLE KEYS */;
INSERT INTO `Facture` VALUES (5,'02-06-2025',3000000,'Virement_bancaire','Réglement_sous_30jrs'),(6,'14-07-2025',5000000,'Prélevement','Réglement_par_prélevement'),(7,'14-06-2025',10000000,'Carte_bancaire','Réglement_par_carte_bancaire');
/*!40000 ALTER TABLE `Facture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fournisseur`
--

DROP TABLE IF EXISTS `Fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fournisseur` (
  `ID_fournisseur` int DEFAULT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `Adress` varchar(50) DEFAULT NULL,
  `Spécialité` varchar(50) DEFAULT NULL,
  `Condition_payement` varchar(50) DEFAULT NULL,
  `Salaire` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fournisseur`
--

LOCK TABLES `Fournisseur` WRITE;
/*!40000 ALTER TABLE `Fournisseur` DISABLE KEYS */;
INSERT INTO `Fournisseur` VALUES (2,'Lamin','Yamal','Cevan@gmail.com','Fournisseur_viande','Payement_livraison','500000'),(2,'Isra','Hassan','Isra@gmail.com','Fournisseur_fruits_légumes','Payement_différé','1500000'),(3,'Khaza','Hassan','Khaza@gmail.com','Fournisseur_fruits_produits_mer','Payement_échéances','1000000'),(4,'Ryffa','Ali','Ryffa@gmail.com','Fournisseur_vins_spirutieux','Payement_anticipés','2000000'),(5,'Khassim','Abdallah','khabdallah@gmail.com','Fournisseur_matériels_cuisine','Prélevement_automatique','1200000');
/*!40000 ALTER TABLE `Fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredient` (
  `ID_ingredient` int DEFAULT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Quantité` varchar(50) DEFAULT NULL,
  `Prix` varchar(20) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (5,'Poisson','500g','50000f','poisson_fraiches'),(10,'Legume','120kg','1500f','legume_tendre_savoureux'),(9,'Tomate','70g','2500f','tomate_fraiche'),(11,'Sel','20kg','1000f','sel'),(8,'Pomme_terre','100g','10000f','pomme_terre'),(7,'Poulet','500g','50000f','poulet_fraiche'),(6,'Huile','50l','30000f','huile_arachide');
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plat`
--

DROP TABLE IF EXISTS `Plat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plat` (
  `ID_plat` int DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Prix` varchar(50) DEFAULT NULL,
  `Code_plat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plat`
--

LOCK TABLES `Plat` WRITE;
/*!40000 ALTER TABLE `Plat` DISABLE KEYS */;
INSERT INTO `Plat` VALUES (5,'Plat_fraiche_avec_poisson_sauce_tomate','Plat_principal','5000f','001'),(5,'laitue_poulet_grillé_sauce','Entrée','4000f','002'),(4,'Dessert_chocolatté','Dessert','2500f','003'),(5,'poisson_fraiche_viande_haché','Entrée','5000f','004'),(6,'frittes_sauce_tomate','Plat_principal','6500f','005');
/*!40000 ALTER TABLE `Plat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tables`
--

DROP TABLE IF EXISTS `Tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tables` (
  `ID_tables` int DEFAULT NULL,
  `Capacité` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `Zone_emplacement` varchar(50) DEFAULT NULL,
  `Num` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tables`
--

LOCK TABLES `Tables` WRITE;
/*!40000 ALTER TABLE `Tables` DISABLE KEYS */;
INSERT INTO `Tables` VALUES (5,'4','Occupé','Terasse','1'),(6,'6','Libre','Salle_principale','2'),(7,'8','Réservée','Salon_privé','3'),(8,'2','Libre','Bar','4'),(9,'4','En_attente','Salle_principale','5');
/*!40000 ALTER TABLE `Tables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-07 11:06:48
