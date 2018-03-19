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
-- Table structure for table `modalityimage`
--

DROP TABLE IF EXISTS `modalityimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalityimage` (
  `modalityImageID` int(11) NOT NULL AUTO_INCREMENT,
  `modalityImageBlob` blob,
  `modalityImagecol` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  PRIMARY KEY (`modalityImageID`,`procedure_procedureId`),
  KEY `fk_modalityImage_procedure1_idx` (`procedure_procedureId`),
  CONSTRAINT `fk_modalityImage_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `modalityProcedureTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `modalityProcedureTypeDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL,
  PRIMARY KEY (`modalityProcedureTypeId`,`modalityType_modalityTypeId`),
  KEY `fk_modalityproceduretype_modalityequipment1_idx` (`modalityType_modalityTypeId`),
  CONSTRAINT `fk_modalityproceduretype_modalityequipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalityproceduretype`
--

LOCK TABLES `modalityproceduretype` WRITE;
/*!40000 ALTER TABLE `modalityproceduretype` DISABLE KEYS */;
INSERT INTO `modalityproceduretype` VALUES (1,'Left Arm',1),(2,'Right Arm',1),(3,'Left Leg',1),(4,'Right Leg',1),(5,'Torso',1),(6,'Groin',1),(7,'Brain',3);
/*!40000 ALTER TABLE `modalityproceduretype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalitytype`
--

DROP TABLE IF EXISTS `modalitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalitytype` (
  `modalityTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `modalityTypeName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`modalityTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalitytype`
--

LOCK TABLES `modalitytype` WRITE;
/*!40000 ALTER TABLE `modalitytype` DISABLE KEYS */;
INSERT INTO `modalitytype` VALUES (1,'Xray'),(2,'CT Scan'),(3,'MRI');
/*!40000 ALTER TABLE `modalitytype` ENABLE KEYS */;
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
  `modalityType_modalityTypeId` int(11) NOT NULL,
  PRIMARY KEY (`modalityWarningID`,`modalityType_modalityTypeId`),
  KEY `fk_modalityWarning_modalityEquipment1_idx` (`modalityType_modalityTypeId`),
  CONSTRAINT `fk_modalityWarning_modalityEquipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (3,'Test','T','ies','x',0,0,0,'2018-03-15');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedurelist`
--

DROP TABLE IF EXISTS `procedurelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedurelist` (
  `procedureId` int(11) NOT NULL AUTO_INCREMENT,
  `staffID_technician` int(11) NOT NULL,
  `modalityProcedureTypeId` int(11) NOT NULL,
  `patient_patientID` int(11) NOT NULL,
  `procedureScheduledTime` time DEFAULT NULL,
  `procedureScheduledDate` date DEFAULT NULL,
  `procedureStatusID` int(11) NOT NULL DEFAULT '0',
  `physicianNotes` varchar(45) DEFAULT NULL,
  `procedureDateOfRequest` datetime DEFAULT NULL,
  PRIMARY KEY (`procedureId`,`staffID_technician`,`modalityProcedureTypeId`,`patient_patientID`,`procedureStatusID`),
  KEY `fk_procedure_staff1_idx` (`staffID_technician`),
  KEY `fk_procedure_patient1_idx` (`patient_patientID`),
  KEY `fk_procedure_modalityProcedureType1_idx` (`modalityProcedureTypeId`),
  KEY `fk_procedure_procedureStatus1_idx` (`procedureStatusID`),
  CONSTRAINT `fk_procedure_modalityProcedureType1` FOREIGN KEY (`modalityProcedureTypeId`) REFERENCES `modalityproceduretype` (`modalityProcedureTypeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_patient1` FOREIGN KEY (`patient_patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_procedure_procedureStatus1` FOREIGN KEY (`procedureStatusID`) REFERENCES `procedurestatus` (`procedureStatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_procedure_staff1` FOREIGN KEY (`staffID_technician`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedurelist`
--

LOCK TABLES `procedurelist` WRITE;
/*!40000 ALTER TABLE `procedurelist` DISABLE KEYS */;
INSERT INTO `procedurelist` VALUES (1,4,6,3,NULL,NULL,0,'Test','2018-03-15 00:00:00'),(2,3,1,3,NULL,NULL,0,'Test2','2018-03-15 00:00:00');
/*!40000 ALTER TABLE `procedurelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedurestatus`
--

DROP TABLE IF EXISTS `procedurestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedurestatus` (
  `procedureStatusID` int(11) NOT NULL AUTO_INCREMENT,
  `procedureStatusDesc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`procedureStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedurestatus`
--

LOCK TABLES `procedurestatus` WRITE;
/*!40000 ALTER TABLE `procedurestatus` DISABLE KEYS */;
INSERT INTO `procedurestatus` VALUES (0,'Not Scheduled'),(1,'Scheduled'),(2,'In Progress'),(3,'Procedure Complete'),(4,'Report Complete');
/*!40000 ALTER TABLE `procedurestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `reportID` int(11) NOT NULL AUTO_INCREMENT,
  `reportText` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `staffid_Radiologist` int(11) NOT NULL,
  `staffid_RefferingMD` int(11) NOT NULL,
  `refferingMD_notes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`reportID`,`procedure_procedureId`,`staffid_Radiologist`,`staffid_RefferingMD`),
  KEY `fk_report_procedure1_idx` (`procedure_procedureId`),
  KEY `fk_report_staff1_idx` (`staffid_Radiologist`),
  KEY `fk_report_staff2_idx` (`staffid_RefferingMD`),
  CONSTRAINT `fk_report_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `staffName` varchar(45) DEFAULT NULL,
  `StaffRole_staffRoleID` int(11) NOT NULL,
  PRIMARY KEY (`staffID`,`StaffRole_staffRoleID`),
  KEY `fk_staff_StaffRole1_idx` (`StaffRole_staffRoleID`),
  CONSTRAINT `fk_staff_StaffRole1` FOREIGN KEY (`StaffRole_staffRoleID`) REFERENCES `staffrole` (`staffRoleID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Doctor',4),(2,'Radiologist',3),(3,'Technician',2),(4,'Rob The Tech',2),(5,'Rob The Doctor',4);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffrole`
--

DROP TABLE IF EXISTS `staffrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffrole` (
  `staffRoleID` int(11) NOT NULL AUTO_INCREMENT,
  `staffRoleName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staffRoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffrole`
--

LOCK TABLES `staffrole` WRITE;
/*!40000 ALTER TABLE `staffrole` DISABLE KEYS */;
INSERT INTO `staffrole` VALUES (0,'Admin'),(1,'Receptionist '),(2,'Modality Technician'),(3,'Radiologist'),(4,'Physician');
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

-- Dump completed on 2018-03-19 11:08:17
