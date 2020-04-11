-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 
-- Версия на сървъра: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrp 0.21`
--

-- --------------------------------------------------------

--
-- Структура на таблица `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Username` varchar(24) DEFAULT NULL,
  `Password` varchar(129) DEFAULT NULL,
  `RegisterDate` varchar(36) DEFAULT NULL,
  `LoginDate` varchar(36) DEFAULT NULL,
  `IP` varchar(16) DEFAULT 'n/a',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `arrestpoints`
--

DROP TABLE IF EXISTS `arrestpoints`;
CREATE TABLE IF NOT EXISTS `arrestpoints` (
  `arrestID` int(11) NOT NULL AUTO_INCREMENT,
  `arrestX` float NOT NULL,
  `arrestY` float NOT NULL,
  `arrestZ` float NOT NULL,
  `arrestInterior` int(11) NOT NULL,
  `arrestWorld` int(11) NOT NULL,
  PRIMARY KEY (`arrestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `atm`
--

DROP TABLE IF EXISTS `atm`;
CREATE TABLE IF NOT EXISTS `atm` (
  `atmID` int(11) NOT NULL AUTO_INCREMENT,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL,
  `atmWorld` int(11) NOT NULL,
  PRIMARY KEY (`atmID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `backpackitems`
--

DROP TABLE IF EXISTS `backpackitems`;
CREATE TABLE IF NOT EXISTS `backpackitems` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `backpackitems`
--

INSERT INTO `backpackitems` (`ID`, `itemID`, `itemName`, `itemModel`, `itemQuantity`) VALUES
(1, 1, 'Magazine', 2039, 1),
(1, 2, 'Cocaine', 1575, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `backpacks`
--

DROP TABLE IF EXISTS `backpacks`;
CREATE TABLE IF NOT EXISTS `backpacks` (
  `backpackID` int(12) NOT NULL AUTO_INCREMENT,
  `backpackPlayer` int(12) DEFAULT '0',
  `backpackX` float DEFAULT '0',
  `backpackY` float DEFAULT '0',
  `backpackZ` float DEFAULT '0',
  `backpackInterior` int(12) DEFAULT '0',
  `backpackWorld` int(12) DEFAULT '0',
  `backpackHouse` int(12) DEFAULT '0',
  `backpackVehicle` int(12) DEFAULT '0',
  PRIMARY KEY (`backpackID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `backpacks`
--

INSERT INTO `backpacks` (`backpackID`, `backpackPlayer`, `backpackX`, `backpackY`, `backpackZ`, `backpackInterior`, `backpackWorld`, `backpackHouse`, `backpackVehicle`) VALUES
(1, 0, 2183.54, -1696.58, 13.5424, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `billboards`
--

DROP TABLE IF EXISTS `billboards`;
CREATE TABLE IF NOT EXISTS `billboards` (
  `bbID` int(12) NOT NULL AUTO_INCREMENT,
  `bbExists` int(12) DEFAULT '0',
  `bbName` varchar(32) DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT '0',
  `bbPrice` int(12) NOT NULL DEFAULT '0',
  `bbRange` int(12) DEFAULT '10',
  `bbPosX` float DEFAULT '0',
  `bbPosY` float DEFAULT '0',
  `bbPosZ` float DEFAULT '0',
  `bbMessage` varchar(230) DEFAULT NULL,
  PRIMARY KEY (`bbID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE IF NOT EXISTS `blacklist` (
  `IP` varchar(16) DEFAULT '0.0.0.0',
  `Username` varchar(24) DEFAULT NULL,
  `BannedBy` varchar(24) DEFAULT NULL,
  `Reason` varchar(128) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `businesses`
--

DROP TABLE IF EXISTS `businesses`;
CREATE TABLE IF NOT EXISTS `businesses` (
  `bizID` int(12) NOT NULL AUTO_INCREMENT,
  `bizName` varchar(32) DEFAULT NULL,
  `bizOwner` int(12) DEFAULT '0',
  `bizType` int(12) DEFAULT '0',
  `bizPrice` int(12) DEFAULT '0',
  `bizPosX` float DEFAULT '0',
  `bizPosY` float DEFAULT '0',
  `bizPosZ` float DEFAULT '0',
  `bizPosA` float DEFAULT '0',
  `bizIntX` float DEFAULT '0',
  `bizIntY` float DEFAULT '0',
  `bizIntZ` float DEFAULT '0',
  `bizIntA` float DEFAULT '0',
  `bizInterior` int(12) DEFAULT '0',
  `bizExterior` int(12) DEFAULT '0',
  `bizExteriorVW` int(12) DEFAULT '0',
  `bizLocked` int(4) DEFAULT '0',
  `bizVault` int(12) DEFAULT '0',
  `bizProducts` int(12) DEFAULT '0',
  `bizPrice1` int(12) DEFAULT '0',
  `bizPrice2` int(12) DEFAULT '0',
  `bizPrice3` int(12) DEFAULT '0',
  `bizPrice4` int(12) DEFAULT '0',
  `bizPrice5` int(12) DEFAULT '0',
  `bizPrice6` int(12) DEFAULT '0',
  `bizPrice7` int(12) DEFAULT '0',
  `bizPrice8` int(12) DEFAULT '0',
  `bizPrice9` int(12) DEFAULT '0',
  `bizPrice10` int(12) DEFAULT '0',
  `bizSpawnX` float DEFAULT '0',
  `bizSpawnY` float DEFAULT '0',
  `bizSpawnZ` float DEFAULT '0',
  `bizSpawnA` float DEFAULT '0',
  `bizDeliverX` float DEFAULT '0',
  `bizDeliverY` float DEFAULT '0',
  `bizDeliverZ` float DEFAULT '0',
  `bizMessage` varchar(128) DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT '0',
  `bizPrice12` int(12) DEFAULT '0',
  `bizPrice13` int(12) DEFAULT '0',
  `bizPrice14` int(12) DEFAULT '0',
  `bizPrice15` int(12) DEFAULT '0',
  `bizPrice16` int(12) DEFAULT '0',
  `bizPrice17` int(12) DEFAULT '0',
  `bizPrice18` int(12) DEFAULT '0',
  `bizPrice19` int(12) DEFAULT '0',
  `bizPrice20` int(12) DEFAULT '0',
  `bizShipment` int(4) DEFAULT '0',
  PRIMARY KEY (`bizID`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `businesses`
--

INSERT INTO `businesses` (`bizID`, `bizName`, `bizOwner`, `bizType`, `bizPrice`, `bizPosX`, `bizPosY`, `bizPosZ`, `bizPosA`, `bizIntX`, `bizIntY`, `bizIntZ`, `bizIntA`, `bizInterior`, `bizExterior`, `bizExteriorVW`, `bizLocked`, `bizVault`, `bizProducts`, `bizPrice1`, `bizPrice2`, `bizPrice3`, `bizPrice4`, `bizPrice5`, `bizPrice6`, `bizPrice7`, `bizPrice8`, `bizPrice9`, `bizPrice10`, `bizSpawnX`, `bizSpawnY`, `bizSpawnZ`, `bizSpawnA`, `bizDeliverX`, `bizDeliverY`, `bizDeliverZ`, `bizMessage`, `bizPrice11`, `bizPrice12`, `bizPrice13`, `bizPrice14`, `bizPrice15`, `bizPrice16`, `bizPrice17`, `bizPrice18`, `bizPrice19`, `bizPrice20`, `bizShipment`) VALUES
(112, 'Unnamed Business', 0, 9, 1, 1390.29, -1749.55, 13.3828, 7.8457, -107.243, 2021.82, 901.086, 0, 3, 0, 0, 0, 0, 100, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1390.29, -1749.55, 13.3828, 7.8457, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 'Unnamed Business', 0, 6, 10000, 661.005, -573.399, 16.3359, 273.096, -27.3383, -57.6908, 1003.55, 0, 6, 0, 0, 1, 0, 100, 75, 115, 15, 90, 3, 2, 10, 90, 20, 10, 635.074, -595.452, 16.3359, 243.016, 0, 0, 0, 'Welcome to Snow\'s Seven Eleven.', 140, 150, 50, 40, 5, 10, 5, 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `carID` int(12) NOT NULL AUTO_INCREMENT,
  `carModel` int(12) DEFAULT '0',
  `carOwner` int(12) DEFAULT '0',
  `carPosX` float DEFAULT '0',
  `carPosY` float DEFAULT '0',
  `carPosZ` float DEFAULT '0',
  `carPosR` float DEFAULT '0',
  `carColor1` int(12) DEFAULT '0',
  `carColor2` int(12) DEFAULT '0',
  `carPaintjob` int(12) DEFAULT '-1',
  `carLocked` int(4) DEFAULT '0',
  `carMod1` int(12) DEFAULT '0',
  `carMod2` int(12) DEFAULT '0',
  `carMod3` int(12) DEFAULT '0',
  `carMod4` int(12) DEFAULT '0',
  `carMod5` int(12) DEFAULT '0',
  `carMod6` int(12) DEFAULT '0',
  `carMod7` int(12) DEFAULT '0',
  `carMod8` int(12) DEFAULT '0',
  `carMod9` int(12) DEFAULT '0',
  `carMod10` int(12) DEFAULT '0',
  `carMod11` int(12) DEFAULT '0',
  `carMod12` int(12) DEFAULT '0',
  `carMod13` int(12) DEFAULT '0',
  `carMod14` int(12) DEFAULT '0',
  `carImpounded` int(12) DEFAULT '0',
  `carWeapon1` int(12) DEFAULT '0',
  `carAmmo1` int(12) DEFAULT '0',
  `carWeapon2` int(12) DEFAULT '0',
  `carAmmo2` int(12) DEFAULT '0',
  `carWeapon3` int(12) DEFAULT '0',
  `carAmmo3` int(12) DEFAULT '0',
  `carWeapon4` int(12) DEFAULT '0',
  `carAmmo4` int(12) DEFAULT '0',
  `carWeapon5` int(12) DEFAULT '0',
  `carAmmo5` int(12) DEFAULT '0',
  `carImpoundPrice` int(12) DEFAULT '0',
  `carFaction` int(12) DEFAULT '0',
  `carSiren` int(12) DEFAULT '0',
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `cars`
--

INSERT INTO `cars` (`carID`, `carModel`, `carOwner`, `carPosX`, `carPosY`, `carPosZ`, `carPosR`, `carColor1`, `carColor2`, `carPaintjob`, `carLocked`, `carMod1`, `carMod2`, `carMod3`, `carMod4`, `carMod5`, `carMod6`, `carMod7`, `carMod8`, `carMod9`, `carMod10`, `carMod11`, `carMod12`, `carMod13`, `carMod14`, `carImpounded`, `carWeapon1`, `carAmmo1`, `carWeapon2`, `carAmmo2`, `carWeapon3`, `carAmmo3`, `carWeapon4`, `carAmmo4`, `carWeapon5`, `carAmmo5`, `carImpoundPrice`, `carFaction`, `carSiren`) VALUES
(1, 411, 1, 1233.34, -1713.56, 13.1098, 270.759, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1010, 0, 1080, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 560, 0, -2679.92, 217.785, 3.884, 33.4288, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(3, 560, 1, 1853.25, 55.1038, 36.6588, 51.6449, 50, 88, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `carstorage`
--

DROP TABLE IF EXISTS `carstorage`;
CREATE TABLE IF NOT EXISTS `carstorage` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `carstorage`
--

INSERT INTO `carstorage` (`ID`, `itemID`, `itemName`, `itemModel`, `itemQuantity`) VALUES
(243, 3, 'Ammo Cartridge', 2358, 10);

-- --------------------------------------------------------

--
-- Структура на таблица `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Username` varchar(24) DEFAULT NULL,
  `Character` varchar(24) DEFAULT NULL,
  `Created` int(4) DEFAULT '0',
  `Gender` int(4) DEFAULT '0',
  `Birthdate` varchar(32) DEFAULT '01/01/1970',
  `Origin` varchar(32) DEFAULT 'Not Specified',
  `Skin` int(12) DEFAULT '0',
  `Glasses` int(12) DEFAULT '0',
  `Hat` int(12) DEFAULT '0',
  `Bandana` int(12) DEFAULT '0',
  `Vest` int(12) DEFAULT '0',
  `PosX` float DEFAULT '0',
  `PosY` float DEFAULT '0',
  `PosZ` float DEFAULT '0',
  `PosA` float DEFAULT '0',
  `Interior` int(12) DEFAULT '0',
  `World` int(12) DEFAULT '0',
  `GlassesPos` varchar(100) DEFAULT NULL,
  `HatPos` varchar(100) DEFAULT NULL,
  `BandanaPos` varchar(100) DEFAULT NULL,
  `Hospital` int(12) DEFAULT '-1',
  `HospitalInt` int(12) DEFAULT '0',
  `Money` int(12) DEFAULT '0',
  `BankMoney` int(12) DEFAULT '0',
  `OwnsBillboard` int(12) DEFAULT '-1',
  `Savings` int(12) DEFAULT '0',
  `Admin` int(12) DEFAULT '0',
  `JailTime` int(12) DEFAULT '0',
  `Muted` int(4) DEFAULT '0',
  `CreateDate` int(12) DEFAULT '0',
  `LastLogin` int(12) DEFAULT '0',
  `Helper` int(4) DEFAULT '0',
  `Gun1` int(12) DEFAULT '0',
  `Gun2` int(12) DEFAULT '0',
  `Gun3` int(12) DEFAULT '0',
  `Gun4` int(12) DEFAULT '0',
  `Gun5` int(12) DEFAULT '0',
  `Gun6` int(12) DEFAULT '0',
  `Gun7` int(12) DEFAULT '0',
  `Gun8` int(12) DEFAULT '0',
  `Gun9` int(12) DEFAULT '0',
  `Gun10` int(12) DEFAULT '0',
  `Gun11` int(12) DEFAULT '0',
  `Gun12` int(12) DEFAULT '0',
  `Gun13` int(12) DEFAULT '0',
  `Ammo1` int(12) DEFAULT '0',
  `Ammo2` int(12) DEFAULT '0',
  `Ammo3` int(12) DEFAULT '0',
  `Ammo4` int(12) DEFAULT '0',
  `Ammo5` int(12) DEFAULT '0',
  `Ammo6` int(12) DEFAULT '0',
  `Ammo7` int(12) DEFAULT '0',
  `Ammo8` int(12) DEFAULT '0',
  `Ammo9` int(12) DEFAULT '0',
  `Ammo10` int(12) DEFAULT '0',
  `Ammo11` int(12) DEFAULT '0',
  `Ammo12` int(12) DEFAULT '0',
  `Ammo13` int(12) DEFAULT '0',
  `House` int(12) DEFAULT '-1',
  `Business` int(12) DEFAULT '-1',
  `Phone` int(12) DEFAULT '0',
  `Lottery` int(12) DEFAULT '0',
  `Hunger` int(12) DEFAULT '100',
  `Thirst` int(12) DEFAULT '100',
  `PlayingHours` int(12) DEFAULT '0',
  `Minutes` int(12) DEFAULT '0',
  `ArmorStatus` float DEFAULT '0',
  `Entrance` int(12) DEFAULT '0',
  `Job` int(12) DEFAULT '0',
  `Faction` int(12) DEFAULT '-1',
  `FactionRank` int(12) DEFAULT '0',
  `FactionDivision` int(12) DEFAULT '0',
  `Prisoned` int(4) DEFAULT '0',
  `Warrants` int(12) DEFAULT '0',
  `Injured` int(4) DEFAULT '0',
  `Health` float DEFAULT '0',
  `Channel` int(12) DEFAULT '0',
  `Accent` varchar(24) DEFAULT NULL,
  `Bleeding` int(4) DEFAULT '0',
  `Warnings` int(12) DEFAULT '0',
  `Warn1` varchar(32) DEFAULT NULL,
  `Warn2` varchar(32) DEFAULT NULL,
  `ForumName` varchar(30) DEFAULT NULL,
  `Donator` int(12) DEFAULT '0',
  `FightStyle` int(11) NOT NULL DEFAULT '4',
  `MaskID` int(12) DEFAULT '0',
  `FactionMod` int(12) DEFAULT '0',
  `SwatMember` int(12) DEFAULT '0',
  `Capacity` int(12) DEFAULT '35',
  `Channel2` int(12) DEFAULT '0',
  `Channel3` int(12) DEFAULT '0',
  `Channel4` int(12) DEFAULT '0',
  `AdminHide` int(4) DEFAULT '0',
  `LotteryB` int(11) DEFAULT NULL,
  `SpawnPoint` int(11) NOT NULL DEFAULT '2',
  `Clothes1` int(12) DEFAULT '0',
  `Clothes2` int(12) DEFAULT '0',
  `Clothes3` int(12) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `ID` int(12) DEFAULT '0',
  `contactID` int(12) NOT NULL AUTO_INCREMENT,
  `contactName` varchar(32) DEFAULT NULL,
  `contactNumber` int(12) DEFAULT '0',
  PRIMARY KEY (`contactID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `contacts`
--

INSERT INTO `contacts` (`ID`, `contactID`, `contactName`, `contactNumber`) VALUES
(1, 1, 'Yo', 2);

-- --------------------------------------------------------

--
-- Структура на таблица `crates`
--

DROP TABLE IF EXISTS `crates`;
CREATE TABLE IF NOT EXISTS `crates` (
  `crateID` int(12) NOT NULL AUTO_INCREMENT,
  `crateType` int(12) DEFAULT '0',
  `crateX` float DEFAULT '0',
  `crateY` float DEFAULT '0',
  `crateZ` float DEFAULT '0',
  `crateA` float DEFAULT '0',
  `crateInterior` int(12) DEFAULT '0',
  `crateWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`crateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `dealervehicles`
--

DROP TABLE IF EXISTS `dealervehicles`;
CREATE TABLE IF NOT EXISTS `dealervehicles` (
  `ID` int(12) DEFAULT '0',
  `vehID` int(12) NOT NULL AUTO_INCREMENT,
  `vehModel` int(12) DEFAULT '0',
  `vehPrice` int(12) DEFAULT '0',
  PRIMARY KEY (`vehID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `dealervehicles`
--

INSERT INTO `dealervehicles` (`ID`, `vehID`, `vehModel`, `vehPrice`) VALUES
(18, 19, 400, 5000),
(18, 20, 401, 2300),
(18, 21, 405, 7650),
(18, 22, 413, 3000),
(18, 23, 562, 12000),
(18, 24, 541, 20000),
(18, 25, 415, 17000),
(18, 26, 402, 5000),
(18, 27, 451, 15000),
(18, 28, 580, 12000),
(18, 29, 426, 3000),
(18, 30, 566, 2500),
(18, 31, 458, 1500),
(18, 32, 496, 3200),
(18, 33, 559, 10000),
(18, 34, 517, 4000),
(18, 35, 550, 4000),
(18, 36, 560, 8000),
(18, 37, 468, 1500),
(18, 38, 461, 2000),
(18, 39, 471, 1000),
(18, 40, 521, 2000),
(18, 41, 522, 2500),
(18, 42, 445, 1500),
(18, 43, 534, 1800),
(18, 44, 500, 4000),
(37, 45, 400, 3700),
(37, 46, 401, 1650),
(37, 48, 404, 1200),
(37, 49, 405, 3100),
(37, 50, 409, 7000),
(37, 51, 410, 2400),
(37, 53, 412, 4000),
(37, 54, 413, 3200),
(37, 57, 418, 4600),
(37, 58, 419, 1000),
(37, 59, 426, 12000),
(37, 60, 420, 4200),
(37, 61, 422, 800),
(37, 62, 445, 8000),
(37, 63, 421, 3450),
(37, 64, 458, 9000),
(37, 66, 579, 42000),
(37, 68, 562, 24000),
(53, 69, 462, 350),
(53, 70, 463, 650),
(53, 71, 468, 1000),
(53, 72, 586, 950),
(53, 73, 581, 1750),
(54, 74, 487, 175000),
(54, 75, 511, 280000),
(54, 76, 593, 95000),
(37, 77, 566, 7500),
(37, 78, 463, 1200),
(37, 79, 481, 500),
(62, 80, 414, 57500),
(62, 81, 413, 35000),
(62, 82, 440, 2350),
(62, 83, 455, 17500),
(62, 84, 456, 27500),
(62, 85, 498, 17850),
(62, 86, 609, 23500),
(62, 87, 525, 3500),
(37, 89, 439, 4300),
(37, 90, 467, 2300),
(37, 91, 475, 4800),
(37, 92, 479, 2300),
(37, 93, 489, 6500),
(37, 94, 559, 23500),
(37, 95, 565, 16500),
(37, 96, 567, 6550),
(37, 97, 576, 4300),
(37, 98, 580, 4500),
(37, 99, 585, 4600),
(37, 100, 600, 2990),
(37, 101, 602, 8500),
(37, 102, 603, 9500),
(64, 105, 463, 700),
(64, 106, 461, 2350),
(64, 108, 468, 1750),
(64, 109, 586, 600),
(37, 110, 525, 10000),
(89, 111, 566, 3500),
(89, 112, 525, 8500),
(89, 113, 401, 2600),
(89, 115, 405, 11000),
(89, 116, 521, 28000),
(89, 117, 400, 14000),
(89, 118, 404, 4300),
(89, 119, 410, 2000),
(89, 120, 412, 6800),
(89, 121, 421, 9100),
(89, 122, 426, 14500),
(89, 123, 422, 3000),
(89, 124, 442, 6700),
(89, 125, 445, 8700),
(89, 126, 458, 8900),
(89, 127, 463, 6000),
(89, 128, 462, 1000),
(89, 129, 467, 4100),
(89, 130, 475, 8000),
(89, 131, 478, 900),
(89, 132, 482, 5000),
(89, 133, 491, 4000),
(89, 134, 492, 3000),
(89, 135, 516, 8700),
(89, 136, 540, 4500),
(89, 137, 546, 5900),
(89, 138, 551, 6000),
(89, 139, 550, 3900),
(89, 140, 499, 4000),
(89, 141, 508, 7000),
(89, 142, 547, 4000),
(64, 143, 481, 400),
(64, 144, 521, 2800),
(64, 145, 581, 2650),
(37, 146, 560, 75000),
(37, 147, 414, 7000),
(110, 148, 560, 2);

-- --------------------------------------------------------

--
-- Структура на таблица `detectors`
--

DROP TABLE IF EXISTS `detectors`;
CREATE TABLE IF NOT EXISTS `detectors` (
  `detectorID` int(12) NOT NULL AUTO_INCREMENT,
  `detectorX` float DEFAULT '0',
  `detectorY` float DEFAULT '0',
  `detectorZ` float DEFAULT '0',
  `detectorAngle` float DEFAULT '0',
  `detectorInterior` int(12) DEFAULT '0',
  `detectorWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`detectorID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `dropped`
--

DROP TABLE IF EXISTS `dropped`;
CREATE TABLE IF NOT EXISTS `dropped` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemX` float DEFAULT '0',
  `itemY` float DEFAULT '0',
  `itemZ` float DEFAULT '0',
  `itemInt` int(12) DEFAULT '0',
  `itemWorld` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  `itemAmmo` int(12) DEFAULT '0',
  `itemWeapon` int(12) DEFAULT '0',
  `itemPlayer` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `dropped`
--

INSERT INTO `dropped` (`ID`, `itemName`, `itemModel`, `itemX`, `itemY`, `itemZ`, `itemInt`, `itemWorld`, `itemQuantity`, `itemAmmo`, `itemWeapon`, `itemPlayer`) VALUES
(1, 'MP5', 353, 1782.4, 725.101, 13.0899, 0, 0, 1, 0, 0, 'Benjamin Johnson'),
(2, 'Desert Eagle', 348, 1788.88, 1290.91, 5.8419, 0, 0, 2, 0, 0, 'Benjamin Johnson'),
(5, 'Desert Eagle', 348, -109.41, 2018.36, 900.086, 3, 6110, 1, 7, 24, 'Jackson Young'),
(7, 'Desert Eagle', 348, 1634.33, -2317.69, 12.7518, 0, 0, 1, 120, 24, 'Jack Jones');

-- --------------------------------------------------------

--
-- Структура на таблица `entrances`
--

DROP TABLE IF EXISTS `entrances`;
CREATE TABLE IF NOT EXISTS `entrances` (
  `entranceID` int(12) NOT NULL AUTO_INCREMENT,
  `entranceName` varchar(32) DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT '0',
  `entrancePosX` float DEFAULT '0',
  `entrancePosY` float DEFAULT '0',
  `entrancePosZ` float DEFAULT '0',
  `entrancePosA` float DEFAULT '0',
  `entranceIntX` float DEFAULT '0',
  `entranceIntY` float DEFAULT '0',
  `entranceIntZ` float DEFAULT '0',
  `entranceIntA` float DEFAULT '0',
  `entranceInterior` int(12) DEFAULT '0',
  `entranceExterior` int(12) DEFAULT '0',
  `entranceExteriorVW` int(12) DEFAULT '0',
  `entranceType` int(12) DEFAULT '0',
  `entrancePass` varchar(32) DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT '0',
  `entranceCustom` int(4) DEFAULT '0',
  `entranceWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`entranceID`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `entrances`
--

INSERT INTO `entrances` (`entranceID`, `entranceName`, `entranceIcon`, `entrancePosX`, `entrancePosY`, `entrancePosZ`, `entrancePosA`, `entranceIntX`, `entranceIntY`, `entranceIntZ`, `entranceIntA`, `entranceInterior`, `entranceExterior`, `entranceExteriorVW`, `entranceType`, `entrancePass`, `entranceLocked`, `entranceCustom`, `entranceWorld`) VALUES
(7, 'San Fierro Roleplay', 0, -1605.49, 711.306, 13.8671, 182.47, 1587.61, -1709.62, -36.8138, 182.455, 1, 0, 0, 0, '', 0, 0, 0),
(8, 'Department of Motor Vehicles', 0, -2026.62, -101.736, 35.164, 172.514, -2029.55, -118.8, 1035.17, 0, 3, 0, 0, 1, 'San Fierro Roleplay', 0, 0, 7008),
(10, 'Downtown Bank', 0, -2055.41, 455.282, 35.1717, 141.754, 1456.19, -987.942, 996.105, 90, 6, 0, 0, 2, 'Department of Motor Vehicles', 0, 0, 7010),
(12, 'San Andreas City Hall', 0, 1481.01, -1771.27, 18.7957, 179.814, 390.169, 173.807, 1008.38, 90, 3, 0, 0, 4, 'San Fierro Cityhall', 0, 0, 7012),
(14, 'Downtown Apartment Complex', 0, -1754.19, 962.555, 24.8828, 3.8796, 2214.8, -1150.34, 1025.8, 276.821, 15, 0, 0, 0, 'San Fierro Cityhall', 0, 0, 7014),
(54, 'Master Bedroom', 0, 134.639, 1379.96, 1088.37, 93.0609, 134.639, 1379.96, 11088.4, 0, 0, 5, 5006, 0, '', 0, 0, 7054),
(55, 'Los Santos Stadium', 0, 2695.35, -1704.55, 11.8437, 227.137, -1464.28, 1557.01, 1052.53, 342.974, 14, 0, 0, 0, '', 0, 0, 7055),
(56, '23', 0, 1920.51, -1759.85, 13.5468, 276.067, 1920.16, -1760.06, 13.5468, 6.0669, 0, 0, 0, 0, '', 0, 0, 7056),
(57, 'werehouse', 0, 1644.59, -2322.29, 13.3828, 353.733, 1291.82, 5.8713, 1001.01, 180, 18, 0, 0, 3, '', 0, 0, 7057),
(58, 'Government Loan Office', 0, 1378.63, -1753.1, 14.1406, 92.8215, 93.7265, 1781.9, -23.7571, 179.336, 0, 0, 0, 0, '', 0, 1, 7058),
(60, 'Vault Entrance', 0, 1435.43, -981.282, 983.646, 359.759, 1435.19, -979.587, 983.537, 355.854, 6, 6, 7010, 0, '', 0, 1, 7060),
(61, 'Law Company Office', 0, 1328.1, -1271.76, 13.5468, 0, 29.881, 42.5103, 1000.09, 181.906, 0, 0, 0, 0, '', 0, 1, 7061),
(62, 'Unity Station', 0, 1734.98, -1858.36, 13.6759, 52.1239, 1733.44, -1857.21, 13.7159, 52.1239, 0, 0, 0, 0, '', 0, 1, 7062);

-- --------------------------------------------------------

--
-- Структура на таблица `factions`
--

DROP TABLE IF EXISTS `factions`;
CREATE TABLE IF NOT EXISTS `factions` (
  `factionID` int(12) NOT NULL AUTO_INCREMENT,
  `factionName` varchar(32) DEFAULT NULL,
  `factionColor` int(12) DEFAULT '0',
  `factionType` int(12) DEFAULT '0',
  `factionRanks` int(12) DEFAULT '0',
  `factionDivisions` int(12) DEFAULT '0',
  `factionLockerX` float DEFAULT '0',
  `factionLockerY` float DEFAULT '0',
  `factionLockerZ` float DEFAULT '0',
  `factionLockerInt` int(12) DEFAULT '0',
  `factionLockerWorld` int(12) DEFAULT '0',
  `factionWeapon1` int(12) DEFAULT '0',
  `factionAmmo1` int(12) DEFAULT '0',
  `factionWeapon2` int(12) DEFAULT '0',
  `factionAmmo2` int(12) DEFAULT '0',
  `factionWeapon3` int(12) DEFAULT '0',
  `factionAmmo3` int(12) DEFAULT '0',
  `factionWeapon4` int(12) DEFAULT '0',
  `factionAmmo4` int(12) DEFAULT '0',
  `factionWeapon5` int(12) DEFAULT '0',
  `factionAmmo5` int(12) DEFAULT '0',
  `factionWeapon6` int(12) DEFAULT '0',
  `factionAmmo6` int(12) DEFAULT '0',
  `factionWeapon7` int(12) DEFAULT '0',
  `factionAmmo7` int(12) DEFAULT '0',
  `factionWeapon8` int(12) DEFAULT '0',
  `factionAmmo8` int(12) DEFAULT '0',
  `factionWeapon9` int(12) DEFAULT '0',
  `factionAmmo9` int(12) DEFAULT '0',
  `factionWeapon10` int(12) DEFAULT '0',
  `factionAmmo10` int(12) DEFAULT '0',
  `factionRank1` varchar(32) DEFAULT NULL,
  `factionRank2` varchar(32) DEFAULT NULL,
  `factionRank3` varchar(32) DEFAULT NULL,
  `factionRank4` varchar(32) DEFAULT NULL,
  `factionRank5` varchar(32) DEFAULT NULL,
  `factionRank6` varchar(32) DEFAULT NULL,
  `factionRank7` varchar(32) DEFAULT NULL,
  `factionRank8` varchar(32) DEFAULT NULL,
  `factionRank9` varchar(32) DEFAULT NULL,
  `factionRank10` varchar(32) DEFAULT NULL,
  `factionRank11` varchar(32) DEFAULT NULL,
  `factionRank12` varchar(32) DEFAULT NULL,
  `factionRank13` varchar(32) DEFAULT NULL,
  `factionRank14` varchar(32) DEFAULT NULL,
  `factionRank15` varchar(32) DEFAULT NULL,
  `factionDivision1` varchar(32) DEFAULT NULL,
  `factionDivision2` varchar(32) DEFAULT NULL,
  `factionDivision3` varchar(32) DEFAULT NULL,
  `factionDivision4` varchar(32) DEFAULT NULL,
  `factionDivision5` varchar(32) DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT '0',
  `factionSkin2` int(12) DEFAULT '0',
  `factionSkin3` int(12) DEFAULT '0',
  `factionSkin4` int(12) DEFAULT '0',
  `factionSkin5` int(12) DEFAULT '0',
  `factionSkin6` int(12) DEFAULT '0',
  `factionSkin7` int(12) DEFAULT '0',
  `factionSkin8` int(12) DEFAULT '0',
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnInterior` int(11) NOT NULL,
  `SpawnVW` int(1) NOT NULL,
  PRIMARY KEY (`factionID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `furniture`
--

DROP TABLE IF EXISTS `furniture`;
CREATE TABLE IF NOT EXISTS `furniture` (
  `ID` int(12) DEFAULT '0',
  `furnitureID` int(12) NOT NULL AUTO_INCREMENT,
  `furnitureName` varchar(32) DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT '0',
  `furnitureX` float DEFAULT '0',
  `furnitureY` float DEFAULT '0',
  `furnitureZ` float DEFAULT '0',
  `furnitureRX` float DEFAULT '0',
  `furnitureRY` float DEFAULT '0',
  `furnitureRZ` float DEFAULT '0',
  `furnitureType` int(12) DEFAULT '0',
  PRIMARY KEY (`furnitureID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `furniture`
--

INSERT INTO `furniture` (`ID`, `furnitureID`, `furnitureName`, `furnitureModel`, `furnitureX`, `furnitureY`, `furnitureZ`, `furnitureRX`, `furnitureRY`, `furnitureRZ`, `furnitureType`) VALUES
(289, 2, 'Chair 1', 1671, 231.289, 1196.88, 1079.69, 0, 0, 6.2666, 0),
(289, 3, 'Book', 2894, 233.88, 1198.7, 1080.26, 0, 0, 0, 0),
(7, 4, 'Chair 9', 1727, 2264.88, -1210.32, 1047.56, 0, 0, 89.9999, 0),
(212, 7, 'Chair 1', 1671, 225.045, 1293.39, 1081.61, 0, 0, 332.426, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `garbage`
--

DROP TABLE IF EXISTS `garbage`;
CREATE TABLE IF NOT EXISTS `garbage` (
  `garbageID` int(12) NOT NULL AUTO_INCREMENT,
  `garbageModel` int(12) DEFAULT '1236',
  `garbageCapacity` int(12) DEFAULT '0',
  `garbageX` float DEFAULT '0',
  `garbageY` float DEFAULT '0',
  `garbageZ` float DEFAULT '0',
  `garbageA` float DEFAULT '0',
  `garbageInterior` int(12) DEFAULT '0',
  `garbageWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`garbageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `gates`
--

DROP TABLE IF EXISTS `gates`;
CREATE TABLE IF NOT EXISTS `gates` (
  `gateID` int(12) NOT NULL AUTO_INCREMENT,
  `gateModel` int(12) DEFAULT '0',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int(12) DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int(12) DEFAULT '0',
  `gateWorld` int(12) DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int(12) DEFAULT '0',
  `gateFaction` int(12) DEFAULT '0',
  `gatePass` varchar(32) DEFAULT NULL,
  `gateRadius` float DEFAULT '0',
  PRIMARY KEY (`gateID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `gps`
--

DROP TABLE IF EXISTS `gps`;
CREATE TABLE IF NOT EXISTS `gps` (
  `ID` int(12) DEFAULT '0',
  `locationID` int(12) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(32) DEFAULT NULL,
  `locationX` float DEFAULT '0',
  `locationY` float DEFAULT '0',
  `locationZ` float DEFAULT '0',
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `gps`
--

INSERT INTO `gps` (`ID`, `locationID`, `locationName`, `locationX`, `locationY`, `locationZ`) VALUES
(1, 1, 'Yo', 1810.5, 1299.66, 6.5527);

-- --------------------------------------------------------

--
-- Структура на таблица `graffiti`
--

DROP TABLE IF EXISTS `graffiti`;
CREATE TABLE IF NOT EXISTS `graffiti` (
  `graffitiID` int(12) NOT NULL AUTO_INCREMENT,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiAngle` float DEFAULT '0',
  `graffitiColor` int(12) DEFAULT '0',
  `graffitiText` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`graffitiID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `graffiti`
--

INSERT INTO `graffiti` (`graffitiID`, `graffitiX`, `graffitiY`, `graffitiZ`, `graffitiAngle`, `graffitiColor`, `graffitiText`) VALUES
(1, 1268.02, 357.45, 19.5546, 64.6973, -65536, '413 KINGS');

-- --------------------------------------------------------

--
-- Структура на таблица `gunracks`
--

DROP TABLE IF EXISTS `gunracks`;
CREATE TABLE IF NOT EXISTS `gunracks` (
  `rackID` int(12) NOT NULL AUTO_INCREMENT,
  `rackHouse` int(12) DEFAULT '0',
  `rackX` float DEFAULT '0',
  `rackY` float DEFAULT '0',
  `rackZ` float DEFAULT '0',
  `rackA` float DEFAULT '0',
  `rackInterior` int(12) DEFAULT '0',
  `rackWorld` int(12) DEFAULT '0',
  `rackWeapon1` int(12) DEFAULT '0',
  `rackAmmo1` int(12) DEFAULT '0',
  `rackWeapon2` int(12) DEFAULT '0',
  `rackAmmo2` int(12) DEFAULT '0',
  `rackWeapon3` int(12) DEFAULT '0',
  `rackAmmo3` int(12) DEFAULT '0',
  `rackWeapon4` int(12) DEFAULT '0',
  `rackAmmo4` int(12) DEFAULT '0',
  PRIMARY KEY (`rackID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `houses`
--

DROP TABLE IF EXISTS `houses`;
CREATE TABLE IF NOT EXISTS `houses` (
  `houseID` int(12) NOT NULL AUTO_INCREMENT,
  `houseOwner` int(12) DEFAULT '0',
  `housePrice` int(12) DEFAULT '0',
  `houseAddress` varchar(32) DEFAULT NULL,
  `housePosX` float DEFAULT '0',
  `housePosY` float DEFAULT '0',
  `housePosZ` float DEFAULT '0',
  `housePosA` float DEFAULT '0',
  `houseIntX` float DEFAULT '0',
  `houseIntY` float DEFAULT '0',
  `houseIntZ` float DEFAULT '0',
  `houseIntA` float DEFAULT '0',
  `houseInterior` int(12) DEFAULT '0',
  `houseExterior` int(12) DEFAULT '0',
  `houseExteriorVW` int(12) DEFAULT '0',
  `houseLocked` int(4) DEFAULT '0',
  `houseWeapon1` int(12) DEFAULT '0',
  `houseAmmo1` int(12) DEFAULT '0',
  `houseWeapon2` int(12) DEFAULT '0',
  `houseAmmo2` int(12) DEFAULT '0',
  `houseWeapon3` int(12) DEFAULT '0',
  `houseAmmo3` int(12) DEFAULT '0',
  `houseWeapon4` int(12) DEFAULT '0',
  `houseAmmo4` int(12) DEFAULT '0',
  `houseWeapon5` int(12) DEFAULT '0',
  `houseAmmo5` int(12) DEFAULT '0',
  `houseWeapon6` int(12) DEFAULT '0',
  `houseAmmo6` int(12) DEFAULT '0',
  `houseWeapon7` int(12) DEFAULT '0',
  `houseAmmo7` int(12) DEFAULT '0',
  `houseWeapon8` int(12) DEFAULT '0',
  `houseAmmo8` int(12) DEFAULT '0',
  `houseWeapon9` int(12) DEFAULT '0',
  `houseAmmo9` int(12) DEFAULT '0',
  `houseWeapon10` int(12) DEFAULT '0',
  `houseAmmo10` int(12) DEFAULT '0',
  `houseMoney` int(12) DEFAULT '0',
  PRIMARY KEY (`houseID`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `houses`
--

INSERT INTO `houses` (`houseID`, `houseOwner`, `housePrice`, `houseAddress`, `housePosX`, `housePosY`, `housePosZ`, `housePosA`, `houseIntX`, `houseIntY`, `houseIntZ`, `houseIntA`, `houseInterior`, `houseExterior`, `houseExteriorVW`, `houseLocked`, `houseWeapon1`, `houseAmmo1`, `houseWeapon2`, `houseAmmo2`, `houseWeapon3`, `houseAmmo3`, `houseWeapon4`, `houseAmmo4`, `houseWeapon5`, `houseAmmo5`, `houseWeapon6`, `houseAmmo6`, `houseWeapon7`, `houseAmmo7`, `houseWeapon8`, `houseAmmo8`, `houseWeapon9`, `houseAmmo9`, `houseWeapon10`, `houseAmmo10`, `houseMoney`) VALUES
(2, 0, 1, '2065 Campanella Park', 2066.29, -1272.27, 23.8203, 105.428, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 1, '424 Echo Parque', 2095.36, -1145.09, 26.5928, 276.9, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 1, '300 Echo Parque', 2092.24, -1166.35, 26.5858, 267.187, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 1, '625 Dead End, El Corona', -2002.55, 338.108, 35.0156, 319.696, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 1, '732 Richman Hills', 189.637, -1308.13, 70.2491, 94.0185, 140.309, 1366.82, 1083.86, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50000),
(7, 1, 1, '527 Cardinal Park', 2150.92, -1419.09, 25.9218, 279.49, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 1, '765 Richman Hills', 253.185, -1270.02, 74.43, 216.22, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 1, '162 Temple Drive', 1325.95, -1067.66, 31.5545, 92.6201, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 1, '1030 Idlewood', 2067.05, -1731.53, 14.2066, 89.8861, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 1, '1031 Idlewood', 2066.24, -1717.09, 14.1363, 91.6212, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 1, '1032 Idlewood', 2065.1, -1703.57, 14.1484, 95.068, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 24, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, 5000, '1033 Idlewood', 2066.74, -1656.6, 14.1328, 89.4279, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 5000, '1034 Idlewood', 2067.56, -1643.71, 14.1363, 85.9812, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 5000, '1035 Idlewood', 2067.7, -1628.86, 14.2066, 89.4279, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 24, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 5000, '1036 Idlewood', 2018.05, -1629.92, 14.0424, 269.283, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 5000, '1037 Idlewood', 2016.54, -1641.55, 14.1127, 272.416, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 5000, '1038 Idlewood', 2013.58, -1656.45, 14.1363, 267.863, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 0, 5000, '1039 Idlewood', 2018.24, -1703.28, 14.2341, 274.296, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 5000, '1040 Idlewood', 2016.2, -1716.93, 14.125, 267.716, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 33, 5, 29, 40, 30, 142, 4, 21, 0, 0, 31, 194, 29, 198, 25, 50, 24, 196, 30, 2000, 0),
(21, 0, 5000, '1041 Idlewood', 2015.35, -1732.63, 14.2341, 272.103, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 5000, 'Campanella Park.', 2139.09, -1697.51, 15.0859, 5.4773, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1255),
(23, 0, 0, '2064 Campanella Park.', 2140.62, -1708.31, 15.0859, 185.309, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 5000, '2066 Campanella Park.', 2155.62, -1698.51, 15.0859, 7.044, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 5000, '2067 Campanella Park.', 2165.9, -1671.22, 15.0731, 44.6441, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 5000, 'Ganton 1', 2326.99, -1716.7, 14.2377, 14.0402, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(27, 0, 5000, 'Ganton 2', 2308.83, -1714.33, 14.9799, 353.673, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 0, 5000, 'Ganton 3', 2385.41, -1711.66, 14.2419, 7.7733, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, 5000, 'Ganton 4', 2402.61, -1715.15, 14.1328, 359.941, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2798),
(30, 0, 5000, 'Ganton 5', 2409.04, -1674.94, 14.375, 180.108, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 0, 5000, 'Ganton 6', 2384.81, -1675.84, 15.2454, 212.141, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 0, 5000, 'Ganton 7', 2368.22, -1675.34, 14.1681, 186.375, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50),
(33, 0, 5000, 'Ganton 8', 2362.79, -1643.36, 14.3079, 326.87, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 0, 5000, 'Ganton 9', 2393.28, -1646.03, 13.9048, 357.143, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 0, 5000, 'Ganton 10', 2413.98, -1646.79, 14.0115, 5.6034, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 24, 42, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 5000, 'Ganton 11', 2459.45, -1691.66, 13.5458, 180.758, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 33, 5, 24, 7, 24, 7, 24, 7, 24, 7, 24, 7, 24, 7, 33, 5, 24, 7, 0, 0, 0),
(37, 0, 5000, 'Ganton 12', 2495.2, -1691.14, 14.7656, 183.578, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, 5000, 'Ganton 13', 2514.37, -1691.55, 14.0459, 222.745, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, 5000, 'Ganton 14', 2523.27, -1679.44, 15.4968, 263.166, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 0, 5000, 'Ganton 15', 2513.81, -1650.34, 14.3556, 338.366, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 0, 5000, 'Ganton 16', 2498.65, -1642.26, 14.1127, 4.0598, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 0, 5000, 'Ganton 17', 2486.51, -1644.53, 14.0768, 358.42, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 22, 85, 25, 28, 22, 85, 30, 150, 22, 170, 30, 150, 30, 150, 33, 100, 32, 250, 29, 150, 0),
(43, 0, 5000, 'Ganton 18', 2469.58, -1646.35, 13.7798, 41.0335, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, 5000, 'Ganton 19', 2451.92, -1641.41, 14.0662, 349.647, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 0, 1, '133 Cardinal Park', 2190.72, -1470.33, 25.9139, 87.8824, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 0, 5000, '1 Jefferson', 2153.83, -1243.71, 25.367, 180, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 5, 1, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14227),
(47, 0, 5000, '2 Jefferson', 2133.4, -1233, 24.4218, 174.385, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 0, 5000, '3 Jefferson', 2191.62, -1239.23, 24.4878, 174.555, 309.227, 313.337, 1003.3, 189.641, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, 5000, '4 Jefferson', 2209.73, -1240.25, 24.4799, 183.015, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, 5000, '5 Jefferson', 2229.61, -1241.61, 25.6562, 180.195, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67),
(51, 0, 5000, '6 Jefferson', 2249.86, -1238.91, 25.8983, 180.822, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, 1, '10 Jefferson', 2307.01, -1679.16, 14.3316, 174.808, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, 5000, '11 Jefferson', 2132.25, -1280.05, 25.8906, 353.37, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 0, 5000, '12 Jefferson', 2111.31, -1278.98, 25.8358, 4, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 0, 5000, '14 Jefferson', 2100.94, -1321.89, 25.9531, 172.552, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, 5000, '16 Jefferson', 2148.48, -1320.08, 26.0736, 177.542, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 22, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, 5000, '17 Jefferson', 2191.58, -1275.6, 25.1562, 0.2167, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 0, 5000, '18 Jefferson', 2208, -1280.82, 25.1205, 359.591, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, 5000, '19 Jefferson', 2230.17, -1280.06, 25.6284, 2.723, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400),
(62, 0, 5000, '20 Jefferson', 2250.27, -1280.05, 25.4764, 1.8558, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, 5000, '21 Jefferson', 2185.07, -1363.71, 26.1597, 8.0155, 225.646, 1022.84, 1084.01, 350.817, 7, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, 5000, '22 Jefferson', 2202.83, -1363.67, 26.1909, 8.0155, 225.646, 1022.84, 1084.01, 350.817, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, 5000, '23 Jefferson', 2129.65, -1361.69, 26.1361, 7.0755, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, 5000, '24 Jefferson', 2147.7, -1366.12, 25.9722, 356.422, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 0, 5000, '25 Jefferson', 2151.19, -1400.68, 26.1284, 274.642, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 0, 5000, '26 Cardinal', 2149.86, -1433.76, 26.0701, 276.835, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 0, 5000, '27 Cardinal', 2152.22, -1446.29, 26.1049, 275.582, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 0, 5000, '28 Cardinal', 2146.8, -1470.48, 26.0424, 270.882, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, 5000, '29 Cardinal', 2148.94, -1485, 26.6238, 266.182, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 0, 5000, '1 Willowfield', 2238.12, -1906.83, 14.9375, 186.338, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, 5000, '2 Willowfield', 2261.48, -1906.76, 14.9375, 189.784, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 0, 5000, '3 Willowfield', 2284.53, -1906.6, 14.9294, 182.264, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 0, 5000, '4 Willowfield', 2296.74, -1882.01, 14.2341, 1.4687, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 0, 5000, '5 Willowfield', 2269.28, -1882.01, 14.2341, 2.4089, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 0, 5000, '6 Willowfield', 2241.89, -1882.01, 14.2341, 356.142, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 0, 5000, '1 Seville Boulevard', 2637.15, -1991.63, 14.324, 45.0227, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000),
(79, 0, 5000, '2 Seville Boulevard', 2635.75, -2013.13, 14.1443, 150.28, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 0, 5000, '3 Seville Boulevard', 2650.7, -2021.75, 14.1766, 275.615, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 0, 5000, '4 Seville Boulevard', 2653.01, -1989.42, 13.9988, 0.8421, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20000),
(82, 0, 5000, '5 Seville Boulevard', 2672.77, -1989.47, 14.324, 2.4089, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 0, 5000, '6 Seville Boulevard', 2673.07, -2020.29, 14.1681, 172.527, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 0, 5000, '7 Seville Boulevard', 2695.25, -2020.55, 14.0221, 191.328, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 0, 5000, '8 Seville Boulevard', 2696.31, -1990.36, 14.2228, 358.649, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 5000, '9 Seville Boulevard', 2751.5, -1962.87, 13.5466, 91.7098, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 5000, '10 Seville Boulevard', 2751.5, -1936.4, 13.5389, 96.0967, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 5000, '11 Seville Boulevard', 2787.08, -1926.12, 13.5466, 274.675, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 5000, '12 Seville Boulevard', 2787.07, -1952.43, 13.5466, 275.302, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, 5000, '30 Willowfield', 2522.76, -2018.99, 14.074, 218.999, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91, 0, 5000, '31 Willowfield', 2524.17, -1998.12, 14.1127, 349.323, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, 5000, '32 Willowfield', 2508.49, -1998.37, 13.9025, 7.8104, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 0, 5000, '33 Willowfield', 2483.48, -1995.34, 13.8343, 356.217, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(94, 0, 5000, '34 Willowfield', 2465.12, -1995.75, 14.0193, 359.35, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 0, 5000, '35 Willowfield', 2437.92, -2020.85, 13.9025, 182.663, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, 5000, '36 Willowfield', 2465.53, -2020.79, 14.1239, 186.109, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 0, 5000, '37 Willowfield', 2486.39, -2021.55, 13.9988, 187.363, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 0, 5000, '38 Willowfield', 2507.67, -2021.05, 14.2101, 186.736, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 0, 3000, 'Apartment - B1', 2275.83, -1785.77, 13.5466, 266.19, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 0, 3000, 'Apartment - B2', 2247.07, -1795.85, 13.5466, 95.4216, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 0, 2000, 'Apartment C1', 1179.89, -1260.87, 15.1795, 91.7779, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 0, 2000, 'Apartment C2', 1187.44, -1260.92, 15.1794, 269.416, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 0, 2000, 'Apartment C3', 1187.36, -1254.73, 15.1794, 270.356, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 0, 2000, 'Apartment C4', 1187.36, -1254.9, 18.8906, 237.022, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 30, 150, 30, 150, 28, 250, 32, 250, 24, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 0, 2000, 'Apartment C5', 1179.8, -1254.44, 18.8906, 86.4278, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 0, 2000, 'Apartment C6', 1179.89, -1260.82, 18.8983, 95.5146, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 0, 2000, 'Apartment C7', 1187.44, -1261.08, 18.8983, 273.49, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 0, 2000, 'Apartment C8', 1179.89, -1233.32, 22.1406, 93.6578, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 0, 2000, 'Apartment C9', 1187.44, -1233.35, 22.1406, 268.79, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 0, 2000, 'Apartment C10', 1187.36, -1227.3, 22.1329, 274.743, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 0, 2000, 'Apartment C11', 1179.81, -1227.07, 18.5545, 93.6578, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 0, 2000, 'Apartment C12', 1187.36, -1227.32, 18.5545, 265.366, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 24, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 0, 2000, 'Apartment C13', 1187.45, -1233.54, 18.5545, 256.906, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 0, 2000, 'Apartment C14', 1179.81, -1254.62, 15.1795, 88.6446, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 0, 2000, 'El Corona 1', 1870.76, -2019.6, 13.5466, 94.7565, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 0, 2000, 'El Corona 2', 1870.76, -2021.43, 13.5466, 94.7565, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 0, 2000, 'El Corona 3', 1895.53, -2021.63, 13.5466, 277.408, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7500),
(118, 0, 2000, 'El Corona 4', 1895.53, -2019.4, 13.5466, 277.408, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 0, 2000, 'El Corona 5', 1895.48, -2068.92, 15.6688, 179.334, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 0, 2000, 'El Corona 6', 1873.35, -2070.76, 15.4968, 181.527, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25000),
(121, 0, 2000, 'El Corona 7', 1851.8, -2070.45, 15.4812, 181.214, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 0, 2000, 'El Corona 8', 1857.16, -2040.85, 13.5466, 351.982, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 24, 65, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 0, 2000, 'El Corona 9', 1867.87, -1985.4, 13.5466, 0.1764, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500),
(124, 0, 2000, 'El Corona 10', 1865.72, -1998.09, 13.5466, 170.922, 2468.26, -1698.24, 1013.51, 90, 2, 0, 0, 1, 8, 1, 0, 0, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 0),
(125, 0, 2000, 'El Corona 11', 1900.32, -1985.39, 13.5466, 359.551, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 0, 2000, 'El Corona 12', 1898.34, -1998.06, 13.5466, 177.188, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 0, 2000, 'El Corona 13', 1913.95, -1993.3, 13.5466, 275.576, 295.148, 1473.11, 1080.26, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 0, 2000, 'El Corona 14', 1852.28, -1990.19, 13.5466, 91.9607, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4500),
(129, 0, 2000, 'El Corona 15', 1853.99, -1914.26, 15.2566, 359.926, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500),
(130, 0, 2000, 'El Corona 16', 1872.36, -1911.79, 15.2566, 2.1149, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 0, 2000, 'El Corona 17', 1891.95, -1914.39, 15.2566, 358.355, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 0, 2000, 'El Corona 18', 1913.58, -1911.9, 15.2566, 1.1749, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 0, 2000, 'El Corona 19', 1928.74, -1915.9, 15.2566, 3.3682, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 0, 2000, 'El Corona 20', 1938.54, -1911.45, 15.2566, 273.754, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 0, 1, '210 Vinewood Hills', 1258.68, -785.378, 92.0298, 264.674, 1260.87, -785.61, 1091.91, 279.859, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 0, 150000, 'LSPD TRAIN - HOUSE', 251.431, -1220.21, 76.1023, 29.3019, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 0, 1, 'Martin Luther King Apartment 1', 2228.43, -1150.72, 1025.8, 276.194, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 0, 1, '3 Martin Luther King Jr Apartme', 2242.52, -1170.67, 1029.8, 283.478, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 0, 1, '159 Dead End, El Corona', 1684.86, -2098.53, 13.8343, 3.6054, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 0, 1, '2 Martin Luther King Apartment', 2235.46, -1162.57, 1029.8, 179.253, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 0, 5000, '472 Oak Hill Road', 2408, -1106.97, 40.2957, 183.102, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 0, 5000, '473 Oak Hill Road', 2457.07, -1102.5, 43.867, 216.606, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 0, 5000, '474 Oak Hill Road', 2470.72, -1105.32, 44.4878, 95.2723, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 0, 5000, '473 Oak Hill Road', 2438.63, -1105.28, 42.7509, 187.212, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 0, 10000, '475 Oak Hill Road', 2519.02, -1112.73, 56.5924, 86.8846, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 0, 10000, '476 Oak Hill Road', 2572.29, -1091.87, 67.2257, 234.443, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 0, 10000, '477 Oak Hill Road', 2576.68, -1070.79, 69.8321, 269.536, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 0, 1, '4 Martin Luther King Apartment', 2238.93, -1192.74, 1033.8, 93.3809, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 0, 1, '911 Vinewood Road', 1111.5, -976.408, 42.7653, 189.737, 2496.08, -1692.21, 1014.74, 176.409, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 0, 1, '5 Martin Luther King Apartment', 2225.39, -1189.96, 1029.8, 175.083, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 0, 1, '632 Temple Drive', 993.813, -1059.03, 33.6995, 179.87, 2807.42, -1174.64, 1025.57, 2.9567, 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 0, 5000, '424 Echo parque.', 2091.56, -1184.29, 27.0569, 352.559, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 0, 5000, 'Echo parque.', 2093.99, -1122.68, 27.6898, 353.186, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 0, 5000, 'Jefferson St.', 2090.62, -1235.18, 26.0191, 181.832, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 0, 5000, '3030 Jefferson St', 2110.88, -1244.4, 25.8514, 176.818, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 0, 5000, '3020 Jefferson St', 2230.37, -1397.24, 24.5736, 186.532, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 0, 5000, '3010 Jefferson St', 2243.4, -1397.24, 24.5736, 183.085, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 0, 5000, '3000 Jefferson St', 2256.42, -1397.24, 24.5736, 181.205, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 0, 1000, 'Room 1.', 2228.43, -1150.49, 1025.8, 271.822, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7020, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 0, 1000, 'Room 2.', 2242.52, -1170.77, 1029.8, 267.122, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7020, 1, 25, 97, 0, 0, 30, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 0, 1000, 'Red County st.', 1451.69, 375.744, 19.4004, 343.424, 301.965, 301.119, 999.148, 329.847, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 0, 1000, 'El Corona - Room 1', 2228.41, -1150.43, 1025.8, 268.166, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7021, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 0, 1000, 'El Corona - Room 2', 2242.52, -1170.78, 1029.8, 264.72, 244.148, 304.842, 999.148, 79.818, 1, 15, 7021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 0, 1000, 'El Corona - Room 3', 2225.73, -1189.96, 1029.8, 178.961, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 0, 1000, 'El Corona - Room 4', 2209.65, -1187.37, 1029.8, 11.8807, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7021, 0, 32, 250, 0, 0, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 0, 1000, 'El Corona - Room 5', 2191.89, -1173.03, 1029.8, 82.6946, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7021, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 0, 1000, 'El Corona - Room 6', 2193.46, -1138.62, 1029.8, 354.647, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7021, 1, 24, 42, 0, 0, 24, 42, 24, 42, 24, 42, 24, 42, 32, 250, 8, 1, 0, 0, 0, 0, 0),
(175, 0, 1000, 'El Corona - Room 7', 2193.25, -1147.67, 1033.8, 174.479, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 0, 1, 'Apartment 27', 2228.43, -1150.53, 1025.8, 272.112, 295.148, 1473.11, 1080.26, 0, 15, 15, 7053, 1, 30, 36, 33, 3, 30, 30, 33, 85, 25, 128, 25, 108, 0, 0, 25, 8, 24, 7, 25, 100, 0),
(177, 0, 1, '786 Red County Hills', 980.31, -677.371, 121.976, 218.824, 2324.42, -1148.94, 1050.71, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 0, 1, '614 Brooksdale Avenue', 2551.12, -1233.79, 49.3316, 1.1088, 235.292, 1187.37, 1080.26, 0, 3, 0, 0, 1, 24, 1362, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 0, 1, '613 Brooksdale Avenue', 2536.83, -1235.61, 43.7218, 183.085, 235.292, 1187.37, 1080.26, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 0, 1, '467 Brooksdale Avenue', 2434, -1274.96, 24.7565, 88.9494, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 25, 50, 25, 100, 29, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 0, 5000, 'Ganton 20', 2327.49, -1681.84, 14.9294, 91.3973, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 0, 45000, '290 Vinewood Hills', 1540.41, -851.46, 64.3358, 270.75, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 0, 30000, '289 Vinewood Hills', 1535.03, -800.241, 72.8494, 271.812, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 0, 30000, '288 Vinewood Hills', 1527.82, -772.586, 80.5781, 321.632, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 0, 30000, '291 Vinewood Hills', 1535.77, -885.294, 57.6572, 133.63, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 0, 30000, '292 Vinewood Hills', 1468.6, -906.169, 54.8358, 180.944, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 0, 30000, '293 Vinewood Hills', 1421.8, -886.232, 50.6861, 179.691, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 0, 50000, '172 Vinewood Hills', 1045.15, -642.707, 120.117, 254.866, 1260.64, -785.275, 1091.91, 94.529, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 0, 12000, '13 Jefferson', 2090.91, -1277.83, 26.1795, 213.122, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 0, 17500, '15 Jefferson', 2126.76, -1320.75, 26.624, 359.239, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 0, 75000, '752 Vinewood Hills', 1095.13, -647.43, 113.648, 144.842, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 24, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 0, 1, '173 Willowfield', 2333.25, -1883.56, 15, 176.716, 2495.87, -1693.1, 1014.74, 180, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 0, 950000, '895 Richman Hills', 1496.84, -687.898, 95.5633, 2.591, 1261.47, -785.267, 1091.91, 267.014, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 0, 1, '173 Vinewood Hills ', 1331.94, -633.231, 109.135, 202.812, 2324.42, -1148.94, 1050.71, 0, 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 0, 1, '27 Jefferson', 2050.72, -1065.77, 25.7835, 51.9308, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 25, 28, 0, 0, 24, 42, 24, 42, 24, 42, 24, 42, 209600),
(196, 0, 1, '4000', 2232.48, -1469.34, 24.5816, 1.4982, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 0, 1, '4010 Seville Bvld.', 2736.65, -1952.56, 13.5467, 275.912, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 0, 1, '4020 Jefferson St', 2263.88, -1469.34, 24.3705, 2.1484, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 0, 10000, '107 Burbon Street', 497.411, -1095.07, 82.3591, 179.813, 497.405, -1094.55, 82.3591, 180.898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 0, 25000, 'East Los Santos Car Wash', 2494.14, -1464.71, 24.0254, 186.41, 1062.15, 2077.08, 10.8203, 187.71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 0, 2500, '147 Suger Hill', 1106.55, -299.86, 74.539, 264.17, 2317.8, -1026.21, 1050.22, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 0, 2, '478 Oak Hill Road', 2579.67, -1033.45, 69.58, 359.409, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 0, 1000, '479 Oak Hill Road', 2561.81, -1034.28, 69.8692, 268.855, 2233.79, -1114.27, 1050.88, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 0, 1000, '480 Oak Hill Road', 2549.41, -1032.38, 69.5789, 183.482, 2233.79, -1114.27, 1050.88, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 0, 1500, '481 Oak Hill Road', 2526.79, -1033.52, 69.5792, 352.829, 223.162, 1287.52, 1082.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 0, 4000, '482 Oak Hill Road', 2512.75, -1027.16, 70.0858, 352.202, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(208, 0, 1000, '483 Oak Hill Road', 2534.48, -1063.39, 69.5652, 264.782, 2233.79, -1114.27, 1050.88, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 0, 1000, '484 Oak Hill Road', 2526.09, -1060.61, 69.9707, 90.5895, 2233.79, -1114.27, 1050.88, 0, 5, 0, 0, 1, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 24, 42, 0),
(210, 0, 2000, '485 Oak Hill Road', 2499.75, -1065.52, 70.2359, 254.465, 223.162, 1287.52, 1082.14, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(211, 0, 3000, '1 Dillimore', 743.217, -509.318, 18.0128, 0.7634, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(212, 1, 3000, '2 Dillimore', 768.311, -503.482, 18.0128, 1.077, 223.162, 1287.52, 1082.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(213, 0, 3000, '3 Dillimore', 795.222, -506.15, 18.0128, 0.7634, 225.7, 1022, 1084.02, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(214, 0, 3000, '4 Dillimore', 818.277, -509.318, 18.0128, 2.6435, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(215, 0, 3000, '5 Dillimore', 766.636, -556.784, 18.0128, 179.98, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(216, 0, 3000, '6 Dillimore', 745.13, -556.785, 18.0128, 181.535, 23.9584, 1340.61, 1084.38, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(217, 0, 3000, '7 Dillimore', 745.673, -591.091, 18.0128, 268.329, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(218, 0, 7000, '57 Glen Park', 2023.03, -1120.26, 26.4209, 1.5147, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(219, 0, 7000, '56 Glen Park', 2045.57, -1116.65, 26.3617, 174.622, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(221, 0, 1, '31 El Monte', 2459.45, -948.157, 80.0822, 351.893, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 0, 1, '32 El Monte', 2454.18, -964.925, 80.0729, 98.7406, 318.754, 1116.47, 1083.88, 348.432, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 0, 3000, '58 Glen Park', 1999.94, -1114.15, 27.125, 6.1142, 223.162, 1287.52, 1082.14, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 500, 0, 0, 0, 0, 0, 0, 0),
(224, 0, 3000, '59 Glen Park', 1955.44, -1115.37, 27.8304, 91.4866, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 0, 3000, '60 Glen Park', 1939.1, -1114.48, 27.4521, 2.354, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 0, 3000, '61 Glen Park', 1921.56, -1115.1, 27.0883, 93.3666, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 0, 3000, '62 Glen Park', 1905.93, -1113.1, 26.6639, 1.559, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 24, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16000),
(228, 0, 3000, '63 Glen Park', 1886.15, -1113.8, 26.2758, 89.9197, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 0, 1, 'STORAGE', -823.495, 534.756, 1356.86, 312.217, 2269.88, -1210.32, 1047.56, 90, 10, 1, 6032, 0, 0, 0, 23, 20, 23, 20, 23, 20, 23, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(230, 0, 1000, '1 Normandy Projects', 2468.45, -1409.83, 28.8335, 177.269, 222.042, 1140.76, 1082.61, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 0, 1000, '2 Normandy Projects', 2473.11, -1410.01, 28.8337, 180.088, 22.9675, 1403.84, 1084.43, 0, 5, 0, 0, 1, 22, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 0, 1000, '3 Normandy Projects', 2476.28, -1410.02, 28.8337, 180.088, 222.042, 1140.76, 1082.61, 0, 4, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 0, 1000, '4 Normandy Projects', 2468.28, -1399.11, 28.8281, 1.1741, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 0, 1000, '5 Normandy Projects', 2473.1, -1399.07, 28.8339, 0.5475, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 24, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 0, 1000, '6 Normandy Projects', 2476.31, -1399.09, 28.8346, 0.5475, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 0, 1000, '7 Normandy Projects', 2487.39, -1399.1, 28.8374, 1.5104, 235.292, 1187.37, 1080.26, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 0, 1000, '8 Normandy Projects', 2492.25, -1399.09, 28.8386, 359.944, 222.042, 1140.76, 1082.61, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 0, 1000, '9 Normandy Projects', 2495.42, -1399.08, 28.8393, 358.064, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 0, 1000, '10 Normandy Projects', 2495.37, -1410.03, 28.8393, 177.896, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 0, 1000, '11 Normandy Projects', 2492.12, -1410.04, 28.8386, 180.088, 2495.87, -1693.1, 1014.74, 180, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(241, 0, 1000, '12 Normandy Projects', 2487.32, -1410.03, 28.8374, 179.776, 295.148, 1473.11, 1080.26, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(242, 0, 7500, '747 East Beach, Jacksonville', 2808.08, -1175.92, 25.3801, 359.154, 2495.87, -1693.1, 1014.74, 180, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 0, 7500, '746 East Beach, Jacksonville', 2808.06, -1190.79, 25.3418, 180.793, 2495.87, -1693.1, 1014.74, 180, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 0, 1, '420 Idlewood Avenue', 1980.38, -1719.04, 17.0303, 77.1138, 140.309, 1366.82, 1083.86, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 0, 1, '33 El Monte', 2472.3, -962.44, 80.5252, 358.559, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 0, 5000, '468 Brooksdale Avenue', 2434.8, -1289.36, 25.3477, 82.2798, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 0, 5000, '469 Brooksdale Avenue', 2434.25, -1303.4, 24.9764, 87.2826, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 0, 5000, '170 Brooksdale Avenue', 2434.42, -1320.64, 24.9337, 96.6595, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(254, 0, 5000, '171 Brooksdale Avenue', 2439.94, -1338.37, 24.1079, 176.247, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 0, 5000, '172 Brooksdale Avenue', 2439.94, -1357.02, 24.1002, 89.0669, 318.708, 1115.47, 1083.88, 6.339, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 0, 5000, '164 Temple Drive', 1326.26, -1090.75, 27.9765, 92.0129, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 0, 5000, '1 Brooksdale Avenue', 2594.82, -1200.03, 59.2187, 88.3675, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 0, 5000, '2 Brooksdale Avenue', 2594.89, -1203.07, 58.4375, 88.1104, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 0, 5000, '3 Brooksdale Avenue', 2594.8, -1207.59, 57.5078, 86.5999, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 0, 5000, '4 Brooksdale Avenue', 2594.95, -1211.89, 56.375, 89.4761, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 0, 5000, '5 Brooksdale Avenue', 2594.83, -1216.26, 54.9765, 87.6523, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 0, 5000, '6 Brooksdale Avenue', 2594.96, -1220.63, 53.6693, 85.8847, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 0, 5000, '7 Brooksdale Avenue', 2595.03, -1224.64, 52.3763, 88.4476, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 0, 5000, '8 Brooksdale Avenue', 2594.76, -1229.18, 51.0468, 93.1476, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 0, 5000, '9 Brooksdale Avenue', 2595.12, -1233.49, 49.8203, 92.2638, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 0, 5000, '10 Brooksdale Avenue', 2594.7, -1237.98, 48.4218, 91.9505, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 0, 5000, '11 Brooksdale Avenue', 2600.9, -1238.14, 48.6836, 273.059, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 0, 5000, '12 Brooksdale Avenue', 2600.71, -1233.47, 49.8203, 267.788, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 0, 5000, '13 Brooksdale Avenue', 2600.47, -1229.22, 51.0468, 273.485, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 0, 5000, '14 Brooksdale Avenue', 2600.81, -1224.69, 52.341, 272.858, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 0, 5000, '15 Brooksdale Avenue', 2600.67, -1220.61, 53.6372, 273.798, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 0, 5000, '16 Brooksdale Avenue', 2600.38, -1216.36, 54.9765, 271.604, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 0, 5000, '17 Brooksdale Avenue', 2600.89, -1211.74, 56.6269, 269.467, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 0, 5000, '18 Brooksdale Avenue', 2600.71, -1207.67, 57.5078, 274.481, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 0, 5000, '19 Brooksdale Avenue', 2600.58, -1203.06, 58.4375, 268.27, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 0, 5000, '20 Brooksdale Avenue', 2600.83, -1200.14, 59.2187, 268.013, 2269.88, -1210.32, 1047.56, 90, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 0, 4000, 'Apartment 290', 2240.05, -1170.63, 1029.8, 91.0041, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 0, 4000, 'Apartment 291', 2242.36, -1170.67, 1029.8, 271.237, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 0, 4000, 'Apartment 289', 2239.89, -1159.66, 1029.8, 95.564, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 0, 4000, 'Apartment 288', 2242.57, -1159.86, 1029.8, 271.949, 2269.88, -1210.32, 1047.56, 90, 10, 15, 7053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 0, 5000, '633 Dead End, El Corona', 1801.86, -2099.41, 14.021, 352.112, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000),
(283, 0, 5000, '634 Dead End, El Corona', 1782.15, -2126.17, 14.0678, 181.826, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 0, 5000, '636 Dead End, El Corona', 1761.19, -2125.43, 14.0566, 180.572, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 0, 5000, '638 Dead End, El Corona', 1734.75, -2130.19, 14.021, 178.547, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 0, 5000, '640 Dead End, El Corona', 1715.09, -2125.15, 14.0566, 181.849, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 0, 5000, '642 Dead End, El Corona', 1695.56, -2125.69, 13.81, 178.571, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 0, 5000, '644 Dead End, El Corona', 1673.74, -2122.34, 14.146, 133.619, 226.291, 1240.06, 1082.14, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 0, 2, '5555', 1811.9, 1294.88, 6.7343, 247.302, 235.292, 1187.37, 1080.26, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `housestorage`
--

DROP TABLE IF EXISTS `housestorage`;
CREATE TABLE IF NOT EXISTS `housestorage` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `impoundlots`
--

DROP TABLE IF EXISTS `impoundlots`;
CREATE TABLE IF NOT EXISTS `impoundlots` (
  `impoundID` int(12) NOT NULL AUTO_INCREMENT,
  `impoundLotX` float DEFAULT '0',
  `impoundLotY` float DEFAULT '0',
  `impoundLotZ` float DEFAULT '0',
  `impoundReleaseX` float DEFAULT '0',
  `impoundReleaseY` float DEFAULT '0',
  `impoundReleaseZ` float DEFAULT '0',
  `impoundReleaseInt` int(12) DEFAULT '0',
  `impoundReleaseWorld` int(12) DEFAULT '0',
  `impoundReleaseA` float DEFAULT '0',
  PRIMARY KEY (`impoundID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `impoundlots`
--

INSERT INTO `impoundlots` (`impoundID`, `impoundLotX`, `impoundLotY`, `impoundLotZ`, `impoundReleaseX`, `impoundReleaseY`, `impoundReleaseZ`, `impoundReleaseInt`, `impoundReleaseWorld`, `impoundReleaseA`) VALUES
(1, 2890.64, -1263.47, 10.875, 2891.87, -1259.97, 10.875, 0, 0, 104.793);

-- --------------------------------------------------------

--
-- Структура на таблица `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `ID` int(12) DEFAULT '0',
  `invID` int(12) NOT NULL AUTO_INCREMENT,
  `invItem` varchar(32) DEFAULT NULL,
  `invModel` int(12) DEFAULT '0',
  `invQuantity` int(12) DEFAULT '0',
  PRIMARY KEY (`invID`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
(1, 195, 'Weapon License B', 1581, 1),
(1, 196, 'Weapon License C', 1581, 1),
(1, 203, 'Weapon License A', 1581, 1),
(1, 204, 'Car License', 1581, 1),
(1, 205, 'Motorbike License', 1581, 1),
(1, 206, 'Truck License', 1581, 1),
(1, 207, 'Airplane License', 1581, 1),
(1, 208, 'Helicopter License', 1581, 1),
(1, 209, 'Magazine', 2039, 4997),
(1, 210, 'Ammo Cartridge', 2358, 4989),
(1, 211, 'Portable Radio', 18868, 1);

-- --------------------------------------------------------

--
-- Структура на таблица `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `jobID` int(12) NOT NULL AUTO_INCREMENT,
  `jobPosX` float DEFAULT '0',
  `jobPosY` float DEFAULT '0',
  `jobPosZ` float DEFAULT '0',
  `jobPointX` float DEFAULT '0',
  `jobPointY` float DEFAULT '0',
  `jobPointZ` float DEFAULT '0',
  `jobDeliverX` float DEFAULT '0',
  `jobDeliverY` float DEFAULT '0',
  `jobDeliverZ` float DEFAULT '0',
  `jobInterior` int(12) DEFAULT '0',
  `jobWorld` int(12) DEFAULT '0',
  `jobType` int(12) DEFAULT '0',
  `jobPointInt` int(12) DEFAULT '0',
  `jobPointWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `jobs`
--

INSERT INTO `jobs` (`jobID`, `jobPosX`, `jobPosY`, `jobPosZ`, `jobPointX`, `jobPointY`, `jobPointZ`, `jobDeliverX`, `jobDeliverY`, `jobDeliverZ`, `jobInterior`, `jobWorld`, `jobType`, `jobPointInt`, `jobPointWorld`) VALUES
(13, 1899.71, -2051.89, 13.3828, 1903.7, -2051.56, 13.3828, 1901.63, -2055, 13.3828, 0, 0, 5, 0, 0),
(17, 1511.49, -1740.2, 6.2512, 629.076, 1661.9, 6.9921, 1503.43, -1741.77, 6.425, 0, 0, 1, 0, 0),
(18, 790.254, -1620.72, 13.3905, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(19, 1537.31, -1742.11, 5.4398, 2184.69, -1988.42, 13.5499, 0, 0, 0, 0, 0, 4, 0, 0),
(20, 1526.48, -1738.36, 5.7926, 1502.77, -1736.56, 6.4635, 1501.5, -1739.87, 6.4657, 0, 0, 9, 0, 0),
(31, 853.789, -1407.87, 13.1888, 1230.8, 233.674, 19.4062, 0, 0, 0, 0, 0, 9, 0, 0),
(32, 2562.13, -1293.56, 1044.12, 0, 0, 0, 0, 0, 0, 2, 7049, 9, 0, 0),
(34, 2562.26, -1293.47, 1044.12, 0, 0, 0, 0, 0, 0, 2, 0, 9, 0, 0),
(35, -2658.51, 470.478, 10.8071, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0);

-- --------------------------------------------------------

--
-- Структура на таблица `namechanges`
--

DROP TABLE IF EXISTS `namechanges`;
CREATE TABLE IF NOT EXISTS `namechanges` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `OldName` varchar(24) DEFAULT NULL,
  `NewName` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `namechanges`
--

INSERT INTO `namechanges` (`ID`, `OldName`, `NewName`, `Date`) VALUES
(1, 'Benjamin_Johnson', 'Jackson_Young', '12/04/2016, 22:41');

-- --------------------------------------------------------

--
-- Структура на таблица `plants`
--

DROP TABLE IF EXISTS `plants`;
CREATE TABLE IF NOT EXISTS `plants` (
  `plantID` int(12) NOT NULL AUTO_INCREMENT,
  `plantType` int(12) DEFAULT '0',
  `plantDrugs` int(12) DEFAULT '0',
  `plantX` float DEFAULT '0',
  `plantY` float DEFAULT '0',
  `plantZ` float DEFAULT '0',
  `plantA` float DEFAULT '0',
  `plantInterior` int(12) DEFAULT '0',
  `plantWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`plantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `pumps`
--

DROP TABLE IF EXISTS `pumps`;
CREATE TABLE IF NOT EXISTS `pumps` (
  `ID` int(12) DEFAULT '0',
  `pumpID` int(12) NOT NULL AUTO_INCREMENT,
  `pumpPosX` float DEFAULT '0',
  `pumpPosY` float DEFAULT '0',
  `pumpPosZ` float DEFAULT '0',
  `pumpPosA` float DEFAULT '0',
  `pumpFuel` int(12) DEFAULT '0',
  PRIMARY KEY (`pumpID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `pumps`
--

INSERT INTO `pumps` (`ID`, `pumpID`, `pumpPosX`, `pumpPosY`, `pumpPosZ`, `pumpPosA`, `pumpFuel`) VALUES
(113, 1, 655.794, -571.067, 17.0015, 270.59, 1000);

-- --------------------------------------------------------

--
-- Структура на таблица `speedcameras`
--

DROP TABLE IF EXISTS `speedcameras`;
CREATE TABLE IF NOT EXISTS `speedcameras` (
  `speedID` int(12) NOT NULL AUTO_INCREMENT,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedAngle` float DEFAULT '0',
  PRIMARY KEY (`speedID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `speedcameras`
--

INSERT INTO `speedcameras` (`speedID`, `speedRange`, `speedLimit`, `speedX`, `speedY`, `speedZ`, `speedAngle`) VALUES
(8, 30, 20, 1844.61, 56.5866, 34.4795, 68.1554);

-- --------------------------------------------------------

--
-- Структура на таблица `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `ID` int(12) DEFAULT '0',
  `ticketID` int(12) NOT NULL AUTO_INCREMENT,
  `ticketFee` int(12) DEFAULT '0',
  `ticketBy` varchar(24) DEFAULT NULL,
  `ticketDate` varchar(36) DEFAULT NULL,
  `ticketReason` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ticketID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `tickets`
--

INSERT INTO `tickets` (`ID`, `ticketID`, `ticketFee`, `ticketBy`, `ticketDate`, `ticketReason`) VALUES
(1, 1, 157, NULL, '16/04/2016, 02:52', 'Speeding (77/20 mph)');

-- --------------------------------------------------------

--
-- Структура на таблица `vendors`
--

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE IF NOT EXISTS `vendors` (
  `vendorID` int(12) NOT NULL AUTO_INCREMENT,
  `vendorType` int(12) DEFAULT '0',
  `vendorX` float DEFAULT '0',
  `vendorY` float DEFAULT '0',
  `vendorZ` float DEFAULT '0',
  `vendorA` float DEFAULT '0',
  `vendorInterior` int(12) DEFAULT '0',
  `vendorWorld` int(12) DEFAULT '0',
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура на таблица `warrants`
--

DROP TABLE IF EXISTS `warrants`;
CREATE TABLE IF NOT EXISTS `warrants` (
  `ID` int(12) NOT NULL AUTO_INCREMENT,
  `Suspect` varchar(24) DEFAULT NULL,
  `Username` varchar(24) DEFAULT NULL,
  `Date` varchar(36) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Схема на данните от таблица `warrants`
--

INSERT INTO `warrants` (`ID`, `Suspect`, `Username`, `Date`, `Description`) VALUES
(1, 'Benjamin_Johnson', 'Benjamin_Johnson', '11/05/2015, 15:53', 'Yolo'),
(2, 'Benjamin_Johnson', 'Benjamin_Johnson', '13/03/2016, 21:18', 'Zdr'),
(3, 'Benjamin_Johnson', 'Benjamin_Johnson', '17/03/2016, 15:55', 'zzz');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
