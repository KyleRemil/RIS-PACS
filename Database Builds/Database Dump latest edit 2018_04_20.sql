-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2018 at 06:51 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `risdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `modalityimage`
--

CREATE TABLE IF NOT EXISTS `modalityimage` (
  `modalityImageID` int(11) NOT NULL,
  `modalityImageBlob` longblob,
  `modalityImageName` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `modalityImageNotes` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modalityproceduretype`
--

CREATE TABLE IF NOT EXISTS `modalityproceduretype` (
  `modalityProcedureTypeId` int(11) NOT NULL,
  `modalityProcedureTypeDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalityproceduretype`
--

INSERT INTO `modalityproceduretype` (`modalityProcedureTypeId`, `modalityProcedureTypeDesc`, `modalityType_modalityTypeId`) VALUES
(1, 'Left Arm', 1),
(2, 'Right Arm', 1),
(3, 'Left Leg', 1),
(4, 'Right Leg', 1),
(5, 'Torso', 1),
(6, 'Groin', 1),
(7, 'Brain', 3),
(8, 'Chest Cavity', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modalitytype`
--

CREATE TABLE IF NOT EXISTS `modalitytype` (
  `modalityTypeId` int(11) NOT NULL,
  `modalityTypeName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalitytype`
--

INSERT INTO `modalitytype` (`modalityTypeId`, `modalityTypeName`) VALUES
(1, 'Xray'),
(2, 'CT Scan'),
(3, 'MRI');

-- --------------------------------------------------------

--
-- Table structure for table `modalitywarning`
--

CREATE TABLE IF NOT EXISTS `modalitywarning` (
  `modalityWarningID` int(11) NOT NULL,
  `modalityWarningDesc` varchar(45) DEFAULT NULL,
  `modalityType_modalityTypeId` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modalitywarning`
--

INSERT INTO `modalitywarning` (`modalityWarningID`, `modalityWarningDesc`, `modalityType_modalityTypeId`) VALUES
(3, 'Insure Patient is able to have XRAY', 1),
(4, 'Patient must not have any metal items', 3),
(5, 'Patient must have Dye injection', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patientID` int(11) NOT NULL,
  `patientFirstName` varchar(45) NOT NULL,
  `patientMiddleName` varchar(45) DEFAULT NULL,
  `patientLastName` varchar(45) NOT NULL,
  `patientGender` char(1) DEFAULT NULL,
  `patientSSN` int(9) DEFAULT NULL,
  `patinetHeight` int(11) DEFAULT NULL,
  `patientWeight` int(11) DEFAULT NULL,
  `patientDOB` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `procedurelist`
--

CREATE TABLE IF NOT EXISTS `procedurelist` (
  `procedureId` int(11) NOT NULL,
  `staffID_technician` int(11) NOT NULL,
  `modalityProcedureTypeId` int(11) NOT NULL,
  `patient_patientID` int(11) NOT NULL,
  `procedureScheduledDate` timestamp NULL DEFAULT NULL,
  `procedurestatus_procedureStatusID` int(11) NOT NULL DEFAULT '0',
  `physicianNotes` varchar(45) DEFAULT NULL,
  `procedureDateOfRequest` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `patientPaid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `procedurestatus`
--

CREATE TABLE IF NOT EXISTS `procedurestatus` (
  `procedureStatusID` int(11) NOT NULL,
  `procedureStatusDesc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `procedurestatus`
--

INSERT INTO `procedurestatus` (`procedureStatusID`, `procedureStatusDesc`) VALUES
(0, 'Not Scheduled'),
(1, 'Scheduled'),
(2, 'In Progress'),
(3, 'Procedure Complete'),
(4, 'Report Complete');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `reportID` int(11) NOT NULL,
  `reportText` varchar(45) DEFAULT NULL,
  `procedure_procedureId` int(11) NOT NULL,
  `staffid_Radiologist` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffID` int(11) NOT NULL,
  `staffName` varchar(45) DEFAULT NULL,
  `StaffRole_staffRoleID` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'use hash'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffName`, `StaffRole_staffRoleID`, `username`, `password`) VALUES
(1, 'Doctor', 4, 'doc1', 'a5beb9d1b0e50129affe6e13e42d9e5f5942cda7'),
(2, 'Radiologist', 3, 'rad', 'bade5d26b78d94e5efb27f8cf03d43b298f69915'),
(3, 'Technician', 2, 'tech1', '40807e40aa0602559be12b1ee786e225d17a8dd6'),
(4, 'Rob The Tech', 2, 'tech_rob', '42938e89eeef40be506453f2825813bb920abf32'),
(5, 'Rob The Doctor', 4, 'doc_rob', '4dac8dff73ea957392686e7bbd7a36c491a3e482'),
(6, '#1 Admin', 0, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `staffrole`
--

CREATE TABLE IF NOT EXISTS `staffrole` (
  `staffRoleID` int(11) NOT NULL,
  `staffRoleName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffrole`
--

INSERT INTO `staffrole` (`staffRoleID`, `staffRoleName`) VALUES
(0, 'Admin'),
(1, 'Receptionist '),
(2, 'Modality Technician'),
(3, 'Radiologist'),
(4, 'Physician');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modalityimage`
--
ALTER TABLE `modalityimage`
  ADD PRIMARY KEY (`modalityImageID`,`procedure_procedureId`),
  ADD KEY `fk_modalityImage_procedure1_idx` (`procedure_procedureId`);

--
-- Indexes for table `modalityproceduretype`
--
ALTER TABLE `modalityproceduretype`
  ADD PRIMARY KEY (`modalityProcedureTypeId`,`modalityType_modalityTypeId`),
  ADD KEY `fk_modalityproceduretype_modalityequipment1_idx` (`modalityType_modalityTypeId`);

--
-- Indexes for table `modalitytype`
--
ALTER TABLE `modalitytype`
  ADD PRIMARY KEY (`modalityTypeId`);

--
-- Indexes for table `modalitywarning`
--
ALTER TABLE `modalitywarning`
  ADD PRIMARY KEY (`modalityWarningID`,`modalityType_modalityTypeId`),
  ADD KEY `fk_modalityWarning_modalityEquipment1_idx` (`modalityType_modalityTypeId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`),
  ADD UNIQUE KEY `idmasterPatientList_UNIQUE` (`patientID`);

--
-- Indexes for table `procedurelist`
--
ALTER TABLE `procedurelist`
  ADD PRIMARY KEY (`procedureId`,`staffID_technician`,`modalityProcedureTypeId`,`patient_patientID`,`procedurestatus_procedureStatusID`),
  ADD KEY `fk_procedure_staff1_idx` (`staffID_technician`),
  ADD KEY `fk_procedure_patient1_idx` (`patient_patientID`),
  ADD KEY `fk_procedure_modalityProcedureType1_idx` (`modalityProcedureTypeId`),
  ADD KEY `fk_procedure_procedureStatus1_idx` (`procedurestatus_procedureStatusID`);

--
-- Indexes for table `procedurestatus`
--
ALTER TABLE `procedurestatus`
  ADD PRIMARY KEY (`procedureStatusID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`reportID`,`procedure_procedureId`,`staffid_Radiologist`),
  ADD KEY `fk_report_procedure1_idx` (`procedure_procedureId`),
  ADD KEY `fk_report_staff1_idx` (`staffid_Radiologist`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`,`StaffRole_staffRoleID`),
  ADD KEY `fk_staff_StaffRole1_idx` (`StaffRole_staffRoleID`);

--
-- Indexes for table `staffrole`
--
ALTER TABLE `staffrole`
  ADD PRIMARY KEY (`staffRoleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modalityimage`
--
ALTER TABLE `modalityimage`
  MODIFY `modalityImageID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `modalityproceduretype`
--
ALTER TABLE `modalityproceduretype`
  MODIFY `modalityProcedureTypeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `modalitytype`
--
ALTER TABLE `modalitytype`
  MODIFY `modalityTypeId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `modalitywarning`
--
ALTER TABLE `modalitywarning`
  MODIFY `modalityWarningID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `procedurelist`
--
ALTER TABLE `procedurelist`
  MODIFY `procedureId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `procedurestatus`
--
ALTER TABLE `procedurestatus`
  MODIFY `procedureStatusID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `staffrole`
--
ALTER TABLE `staffrole`
  MODIFY `staffRoleID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `modalityimage`
--
ALTER TABLE `modalityimage`
  ADD CONSTRAINT `fk_modalityImage_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modalityproceduretype`
--
ALTER TABLE `modalityproceduretype`
  ADD CONSTRAINT `fk_modalityproceduretype_modalityequipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modalitywarning`
--
ALTER TABLE `modalitywarning`
  ADD CONSTRAINT `fk_modalityWarning_modalityEquipment1` FOREIGN KEY (`modalityType_modalityTypeId`) REFERENCES `modalitytype` (`modalityTypeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `procedurelist`
--
ALTER TABLE `procedurelist`
  ADD CONSTRAINT `fk_procedure_modalityProcedureType1` FOREIGN KEY (`modalityProcedureTypeId`) REFERENCES `modalityproceduretype` (`modalityProcedureTypeId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_procedure_patient1` FOREIGN KEY (`patient_patientID`) REFERENCES `patient` (`patientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_procedure_procedureStatus1` FOREIGN KEY (`procedurestatus_procedureStatusID`) REFERENCES `procedurestatus` (`procedureStatusID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_procedure_staff1` FOREIGN KEY (`staffID_technician`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `fk_report_procedure1` FOREIGN KEY (`procedure_procedureId`) REFERENCES `procedurelist` (`procedureId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_report_staff1` FOREIGN KEY (`staffid_Radiologist`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_staff_StaffRole1` FOREIGN KEY (`StaffRole_staffRoleID`) REFERENCES `staffrole` (`staffRoleID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
