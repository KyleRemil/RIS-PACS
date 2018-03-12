-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: risdatabase
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `modalityequipment`
--

DROP TABLE IF EXISTS `modalityequipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalityequipment` (
  `modalityEquipmentId` int(11) NOT NULL,
  `modalityEquipmentName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`modalityEquipmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityequipment`
--

LOCK TABLES `modalityequipment` WRITE;
/*!40000 ALTER TABLE `modalityequipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalityequipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalityimage`
--

DROP TABLE IF EXISTS `modalityimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalityimage` (
  `modalityImageID` int(11) NOT NULL,
  `modalityImageBlob` blob,
  `modalityImagecol` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  PRIMARY KEY (`modalityImageID`,`procedure_procedureId`),
  KEY `fk_modalityImage_procedure1_idx` (`procedure_procedureId`),
  CONSTRAINT `fk_modalityImage_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedure` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityimage`
--

LOCK TABLES `modalityimage` WRITE;
/*!40000 ALTER TABLE `modalityimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalityimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalityproceduretype`
--

DROP TABLE IF EXISTS `modalityproceduretype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalityproceduretype` (
  `modalityProcedureTypeId` int(11) NOT NULL,
  `modalityProcedureTypeDesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`modalityProcedureTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityproceduretype`
--

LOCK TABLES `modalityproceduretype` WRITE;
/*!40000 ALTER TABLE `modalityproceduretype` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalityproceduretype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalitywarning`
--

DROP TABLE IF EXISTS `modalitywarning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalitywarning` (
  `modalityWarningID` int(11) NOT NULL AUTO_INCREMENT,
  `modalityWarningDesc` varchar(45) DEFAULT NULL,
  `modalityEquipment_modalityEquipmentId` int(11) NOT NULL,
  PRIMARY KEY (`modalityWarningID`,`modalityEquipment_modalityEquipmentId`),
  KEY `fk_modalityWarning_modalityEquipment1_idx` (`modalityEquipment_modalityEquipmentId`),
  CONSTRAINT `fk_modalityWarning_modalityEquipment1` FOREIGN KEY (`modalityEquipment_modalityEquipmentId`) REFERENCES `modalityequipment` (`modalityEquipmentId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalitywarning`
--

LOCK TABLES `modalitywarning` WRITE;
/*!40000 ALTER TABLE `modalitywarning` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalitywarning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL AUTO_INCREMENT,
  `patientFirstName` varchar(45) NOT NULL,
  `patientMiddleName` varchar(45) DEFAULT NULL,
  `patientLastName` varchar(45) NOT NULL,
  `patientGender` char(1) DEFAULT NULL,
  `patientSSN` int(9) DEFAULT NULL,
  `patinetHeight` int(11) DEFAULT NULL,
  `patientWeight` int(11) DEFAULT NULL,
  `patientDOB` date DEFAULT NULL,
  PRIMARY KEY (`patientID`),
  UNIQUE KEY `idmasterPatientList_UNIQUE` (`patientID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (2,'Testy','T','Testerson','x',0,72,185,'2018-03-09');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedure`
--

DROP TABLE IF EXISTS `procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedure` (
  `procedureId` int(11) NOT NULL AUTO_INCREMENT,
  `modalityEquipment_modalityEquipmentId` int(11) NOT NULL,
  `staffID_technician` int(11) NOT NULL,
  `modalityProcedureType_modalityProcedureTypeId` int(11) NOT NULL,
  `patient_patientID` int(11) NOT NULL,
  PRIMARY KEY (`procedureId`,`modalityEquipment_modalityEquipmentId`,`staffID_technician`,`modalityProcedureType_modalityProcedureTypeId`,`patient_patientID`),
  KEY `fk_procedure_modalityEquipment1_idx` (`modalityEquipment_modalityEquipmentId`),
  KEY `fk_procedure_staff1_idx` (`staffID_technician`),
  KEY `fk_procedure_modalityProcedureType1_idx` (`modalityProcedureType_modalityProcedureTypeId`),
  KEY `fk_procedure_patient1_idx` (`patient_patientID`),
  CONSTRAINT `fk_procedure_modalityEquipment1` FOREIGN KEY (`modalityEquipment_modalityEquipmentId`) REFERENCES `modalityequipment` (`modalityEquipmentId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_modalityProcedureType1` FOREIGN KEY (`modalityProcedureType_modalityProcedureTypeId`) REFERENCES `modalityproceduretype` (`modalityProcedureTypeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_patient1` FOREIGN KEY (`patient_patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_staff1` FOREIGN KEY (`staffID_technician`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure`
--

LOCK TABLES `procedure` WRITE;
/*!40000 ALTER TABLE `procedure` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `reportID` int(11) NOT NULL,
  `reportText` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `staffid_Radiologist` int(11) NOT NULL,
  `staffid_RefferingMD` int(11) NOT NULL,
  `refferingMD_notes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reportID`,`procedure_procedureId`,`staffid_Radiologist`,`staffid_RefferingMD`),
  KEY `fk_report_procedure1_idx` (`procedure_procedureId`),
  KEY `fk_report_staff1_idx` (`staffid_Radiologist`),
  KEY `fk_report_staff2_idx` (`staffid_RefferingMD`),
  CONSTRAINT `fk_report_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedure` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_report_staff1` FOREIGN KEY (`staffid_Radiologist`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_report_staff2` FOREIGN KEY (`staffid_RefferingMD`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `staffName` varchar(45) DEFAULT NULL,
  `StaffRole_staffRoleID` int(11) NOT NULL,
  PRIMARY KEY (`staffID`,`StaffRole_staffRoleID`),
  KEY `fk_staff_StaffRole1_idx` (`StaffRole_staffRoleID`),
  CONSTRAINT `fk_staff_StaffRole1` FOREIGN KEY (`StaffRole_staffRoleID`) REFERENCES `staffrole` (`staffRoleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffrole`
--

DROP TABLE IF EXISTS `staffrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffrole` (
  `staffRoleID` int(11) NOT NULL,
  `staffRoleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staffRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffrole`
--

LOCK TABLES `staffrole` WRITE;
/*!40000 ALTER TABLE `staffrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffrole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-12 16:12:56
