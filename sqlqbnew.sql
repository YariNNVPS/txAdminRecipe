-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping structure for table fxzsql.addon_account
DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.addon_account: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table fxzsql.addon_account_data
DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.addon_account_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table fxzsql.addon_inventory
DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.addon_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table fxzsql.addon_inventory_items
DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.addon_inventory_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table fxzsql.aircrafts
DROP TABLE IF EXISTS `aircrafts`;
CREATE TABLE IF NOT EXISTS `aircrafts` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.aircrafts: ~0 rows (approximately)
/*!40000 ALTER TABLE `aircrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aircrafts` ENABLE KEYS */;

-- Dumping structure for table fxzsql.aircraft_categories
DROP TABLE IF EXISTS `aircraft_categories`;
CREATE TABLE IF NOT EXISTS `aircraft_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.aircraft_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `aircraft_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aircraft_categories` ENABLE KEYS */;

-- Dumping structure for table fxzsql.apartments
DROP TABLE IF EXISTS `apartments`;
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.apartments: ~1 rows (approximately)
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` (`id`, `name`, `type`, `label`, `citizenid`) VALUES
	(1, 'apartment13868', 'apartment1', 'Alta Street 3868', 'JMO01004');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;

-- Dumping structure for table fxzsql.bags
DROP TABLE IF EXISTS `bags`;
CREATE TABLE IF NOT EXISTS `bags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.bags: ~0 rows (approximately)
/*!40000 ALTER TABLE `bags` DISABLE KEYS */;
/*!40000 ALTER TABLE `bags` ENABLE KEYS */;

-- Dumping structure for table fxzsql.bans
DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;

-- Dumping structure for table fxzsql.barnfind
DROP TABLE IF EXISTS `barnfind`;
CREATE TABLE IF NOT EXISTS `barnfind` (
  `owner` varchar(250) DEFAULT NULL,
  `model` varchar(250) DEFAULT NULL,
  `copper` int(11) DEFAULT NULL,
  `aluminum` int(11) DEFAULT NULL,
  `steel` int(11) DEFAULT NULL,
  `plastic` int(11) DEFAULT NULL,
  `glass` int(11) DEFAULT NULL,
  `rubber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.barnfind: ~0 rows (approximately)
/*!40000 ALTER TABLE `barnfind` DISABLE KEYS */;
/*!40000 ALTER TABLE `barnfind` ENABLE KEYS */;

-- Dumping structure for table fxzsql.billing
DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.billing: ~0 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table fxzsql.boats
DROP TABLE IF EXISTS `boats`;
CREATE TABLE IF NOT EXISTS `boats` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.boats: ~0 rows (approximately)
/*!40000 ALTER TABLE `boats` DISABLE KEYS */;
/*!40000 ALTER TABLE `boats` ENABLE KEYS */;

-- Dumping structure for table fxzsql.boat_categories
DROP TABLE IF EXISTS `boat_categories`;
CREATE TABLE IF NOT EXISTS `boat_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.boat_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `boat_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `boat_categories` ENABLE KEYS */;

-- Dumping structure for table fxzsql.bongs
DROP TABLE IF EXISTS `bongs`;
CREATE TABLE IF NOT EXISTS `bongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `tolerance` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `high` tinyint(11) NOT NULL,
  `time` int(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQUE KEY` (`citizenid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.bongs: ~0 rows (approximately)
/*!40000 ALTER TABLE `bongs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bongs` ENABLE KEYS */;

-- Dumping structure for table fxzsql.boosting
DROP TABLE IF EXISTS `boosting`;
CREATE TABLE IF NOT EXISTS `boosting` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(255) NOT NULL,
  `BNE` text NOT NULL DEFAULT '0',
  `background` varchar(255) DEFAULT NULL,
  `vin` int(11) DEFAULT NULL,
  PRIMARY KEY (`#`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.boosting: ~1 rows (approximately)
/*!40000 ALTER TABLE `boosting` DISABLE KEYS */;
INSERT INTO `boosting` (`#`, `citizenid`, `BNE`, `background`, `vin`) VALUES
	(1, 'JMO01004', '0', NULL, NULL);
/*!40000 ALTER TABLE `boosting` ENABLE KEYS */;

-- Dumping structure for table fxzsql.boost_queue
DROP TABLE IF EXISTS `boost_queue`;
CREATE TABLE IF NOT EXISTS `boost_queue` (
  `identifier` varchar(60) NOT NULL,
  `pSrc` int(11) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.boost_queue: ~1 rows (approximately)
/*!40000 ALTER TABLE `boost_queue` DISABLE KEYS */;
INSERT INTO `boost_queue` (`identifier`, `pSrc`) VALUES
	('JMO01004', 1);
/*!40000 ALTER TABLE `boost_queue` ENABLE KEYS */;

-- Dumping structure for table fxzsql.cameras
DROP TABLE IF EXISTS `cameras`;
CREATE TABLE IF NOT EXISTS `cameras` (
  `cid` varchar(50) DEFAULT NULL,
  `cameradata` longtext DEFAULT NULL,
  `camID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.cameras: ~0 rows (approximately)
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;

-- Dumping structure for table fxzsql.cardealer_vehicles
DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.characters
DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table fxzsql.character_current
DROP TABLE IF EXISTS `character_current`;
CREATE TABLE IF NOT EXISTS `character_current` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawables` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawtextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proptextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.character_current: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_current` ENABLE KEYS */;

-- Dumping structure for table fxzsql.character_face
DROP TABLE IF EXISTS `character_face`;
CREATE TABLE IF NOT EXISTS `character_face` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hairColor` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headBlend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headOverlay` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headStructure` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.character_face: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_face` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_face` ENABLE KEYS */;

-- Dumping structure for table fxzsql.character_outfits
DROP TABLE IF EXISTS `character_outfits`;
CREATE TABLE IF NOT EXISTS `character_outfits` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slot` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawables` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `props` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawtextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proptextures` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hairColor` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.character_outfits: ~0 rows (approximately)
/*!40000 ALTER TABLE `character_outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_outfits` ENABLE KEYS */;

-- Dumping structure for table fxzsql.crypto
DROP TABLE IF EXISTS `crypto`;
CREATE TABLE IF NOT EXISTS `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.crypto: ~1 rows (approximately)
/*!40000 ALTER TABLE `crypto` DISABLE KEYS */;
INSERT INTO `crypto` (`crypto`, `worth`, `history`) VALUES
	('qbit', 46, '[{"NewWorth":46,"PreviousWorth":38},{"NewWorth":9,"PreviousWorth":16},{"NewWorth":10,"PreviousWorth":9},{"NewWorth":3,"PreviousWorth":10}]');
/*!40000 ALTER TABLE `crypto` ENABLE KEYS */;

-- Dumping structure for table fxzsql.crypto_transactions
DROP TABLE IF EXISTS `crypto_transactions`;
CREATE TABLE IF NOT EXISTS `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.crypto_transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `crypto_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crypto_transactions` ENABLE KEYS */;

-- Dumping structure for table fxzsql.datastore
DROP TABLE IF EXISTS `datastore`;
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.datastore: ~0 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table fxzsql.datastore_data
DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.datastore_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table fxzsql.dealers
DROP TABLE IF EXISTS `dealers`;
CREATE TABLE IF NOT EXISTS `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.dealers: ~0 rows (approximately)
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;

-- Dumping structure for table fxzsql.disc_ammo
DROP TABLE IF EXISTS `disc_ammo`;
CREATE TABLE IF NOT EXISTS `disc_ammo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.disc_ammo: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_ammo` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_ammo` ENABLE KEYS */;

-- Dumping structure for table fxzsql.disc_inventory
DROP TABLE IF EXISTS `disc_inventory`;
CREATE TABLE IF NOT EXISTS `disc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.disc_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory` ENABLE KEYS */;

-- Dumping structure for table fxzsql.disc_inventory_itemdata
DROP TABLE IF EXISTS `disc_inventory_itemdata`;
CREATE TABLE IF NOT EXISTS `disc_inventory_itemdata` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `closeonuse` tinyint(1) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 1,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.disc_inventory_itemdata: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_inventory_itemdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory_itemdata` ENABLE KEYS */;

-- Dumping structure for table fxzsql.dopeplants
DROP TABLE IF EXISTS `dopeplants`;
CREATE TABLE IF NOT EXISTS `dopeplants` (
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plant` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.dopeplants: ~0 rows (approximately)
/*!40000 ALTER TABLE `dopeplants` DISABLE KEYS */;
/*!40000 ALTER TABLE `dopeplants` ENABLE KEYS */;

-- Dumping structure for table fxzsql.dpkeybinds
DROP TABLE IF EXISTS `dpkeybinds`;
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.dpkeybinds: ~0 rows (approximately)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Dumping structure for table fxzsql.ethicalpixel_admin
DROP TABLE IF EXISTS `ethicalpixel_admin`;
CREATE TABLE IF NOT EXISTS `ethicalpixel_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) DEFAULT NULL,
  `favorite` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`favorite`)),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.ethicalpixel_admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `ethicalpixel_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ethicalpixel_admin` ENABLE KEYS */;

-- Dumping structure for table fxzsql.ethicalpixel_admin_banned
DROP TABLE IF EXISTS `ethicalpixel_admin_banned`;
CREATE TABLE IF NOT EXISTS `ethicalpixel_admin_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `length` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `DisplayName` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.ethicalpixel_admin_banned: ~0 rows (approximately)
/*!40000 ALTER TABLE `ethicalpixel_admin_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ethicalpixel_admin_banned` ENABLE KEYS */;

-- Dumping structure for table fxzsql.ethicalpixel_admin_log
DROP TABLE IF EXISTS `ethicalpixel_admin_log`;
CREATE TABLE IF NOT EXISTS `ethicalpixel_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Identifier` varchar(50) DEFAULT NULL,
  `log` longtext DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.ethicalpixel_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `ethicalpixel_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ethicalpixel_admin_log` ENABLE KEYS */;

-- Dumping structure for table fxzsql.fine_types
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.fine_types: ~0 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table fxzsql.fine_types_ems
DROP TABLE IF EXISTS `fine_types_ems`;
CREATE TABLE IF NOT EXISTS `fine_types_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.fine_types_ems: ~0 rows (approximately)
/*!40000 ALTER TABLE `fine_types_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `fine_types_ems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.gloveboxitems
DROP TABLE IF EXISTS `gloveboxitems`;
CREATE TABLE IF NOT EXISTS `gloveboxitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.gloveboxitems: ~1 rows (approximately)
/*!40000 ALTER TABLE `gloveboxitems` DISABLE KEYS */;
INSERT INTO `gloveboxitems` (`id`, `plate`, `items`) VALUES
	(1, '6XH467ZA', '[]');
/*!40000 ALTER TABLE `gloveboxitems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.helmets
DROP TABLE IF EXISTS `helmets`;
CREATE TABLE IF NOT EXISTS `helmets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.helmets: ~0 rows (approximately)
/*!40000 ALTER TABLE `helmets` DISABLE KEYS */;
/*!40000 ALTER TABLE `helmets` ENABLE KEYS */;

-- Dumping structure for table fxzsql.houselocations
DROP TABLE IF EXISTS `houselocations`;
CREATE TABLE IF NOT EXISTS `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.houselocations: ~0 rows (approximately)
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;

-- Dumping structure for table fxzsql.house_plants
DROP TABLE IF EXISTS `house_plants`;
CREATE TABLE IF NOT EXISTS `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` varchar(50) DEFAULT 'stage-a',
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.house_plants: ~0 rows (approximately)
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;

-- Dumping structure for table fxzsql.imports
DROP TABLE IF EXISTS `imports`;
CREATE TABLE IF NOT EXISTS `imports` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inshop` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.imports: ~0 rows (approximately)
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;

-- Dumping structure for table fxzsql.imports_categories
DROP TABLE IF EXISTS `imports_categories`;
CREATE TABLE IF NOT EXISTS `imports_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.imports_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `imports_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports_categories` ENABLE KEYS */;

-- Dumping structure for table fxzsql.imports_display
DROP TABLE IF EXISTS `imports_display`;
CREATE TABLE IF NOT EXISTS `imports_display` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` int(11) NOT NULL DEFAULT 10,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.imports_display: ~0 rows (approximately)
/*!40000 ALTER TABLE `imports_display` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports_display` ENABLE KEYS */;

-- Dumping structure for table fxzsql.imports_for_sale
DROP TABLE IF EXISTS `imports_for_sale`;
CREATE TABLE IF NOT EXISTS `imports_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.imports_for_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `imports_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports_for_sale` ENABLE KEYS */;

-- Dumping structure for table fxzsql.impounded_vehicles
DROP TABLE IF EXISTS `impounded_vehicles`;
CREATE TABLE IF NOT EXISTS `impounded_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `impounded_at` int(11) DEFAULT NULL,
  `finance` int(32) NOT NULL DEFAULT 0,
  `financetimer` int(32) NOT NULL DEFAULT 0,
  `retailprice` int(32) NOT NULL DEFAULT 30000,
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.impounded_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `impounded_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `impounded_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.items
DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `price` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.items: ~0 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table fxzsql.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table fxzsql.job_grades
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.job_grades: ~0 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table fxzsql.jsfour_criminaluserinfo
DROP TABLE IF EXISTS `jsfour_criminaluserinfo`;
CREATE TABLE IF NOT EXISTS `jsfour_criminaluserinfo` (
  `identifier` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aliases` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recordid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eyecolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `haircolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.jsfour_criminaluserinfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `jsfour_criminaluserinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `jsfour_criminaluserinfo` ENABLE KEYS */;

-- Dumping structure for table fxzsql.lapraces
DROP TABLE IF EXISTS `lapraces`;
CREATE TABLE IF NOT EXISTS `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.lapraces: ~0 rows (approximately)
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;

-- Dumping structure for table fxzsql.licenses
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table fxzsql.logs
DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `Type` text DEFAULT NULL,
  `Steam` varchar(255) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp(),
  `Log` text DEFAULT NULL,
  `Cid` varchar(50) DEFAULT NULL,
  `Data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.logs: ~53 rows (approximately)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`Type`, `Steam`, `Date`, `Log`, `Cid`, `Data`) VALUES
	('Player Logged In', 'steam:11000011c433ecf', '2022-07-19 19:28:15', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-07-19 19:45:25', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-07-20 12:16:32', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-07-20 12:21:08', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-07-20 15:18:49', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-07-20 15:49:11', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-03 13:21:55', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-04 13:49:24', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-04 14:52:56', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-04 14:58:01', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-04 15:33:10', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-04 23:39:45', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-04 23:58:57', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 11:23:08', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 12:52:27', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 13:05:11', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 13:07:49', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 13:10:43', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 13:16:58', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-05 14:40:22', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-07 21:34:50', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 11:19:39', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 11:46:12', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 12:21:31', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 19:04:01', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 20:23:52', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 23:18:53', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-08 23:48:54', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-09 19:12:15', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-10 11:12:17', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-10 11:17:11', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-10 12:31:04', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-10 16:42:36', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-11 01:58:36', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 17:23:58', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 18:16:37', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 19:33:52', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 19:37:22', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 20:17:39', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 20:53:38', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 21:18:33', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 21:42:51', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-13 22:58:19', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 00:14:24', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 03:04:23', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 15:47:26', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 16:31:17', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 17:16:51', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 19:10:11', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 19:20:50', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 20:09:59', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 20:40:52', 'Player Logged In', 'JMO01004', NULL),
	('Player Logged In', 'steam:11000011c433ecf', '2022-08-14 21:27:21', 'Player Logged In', 'JMO01004', NULL);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Dumping structure for table fxzsql.management_funds
DROP TABLE IF EXISTS `management_funds`;
CREATE TABLE IF NOT EXISTS `management_funds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `type` enum('business','organization') NOT NULL DEFAULT 'business',
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`name`) USING BTREE,
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.management_funds: ~2 rows (approximately)
/*!40000 ALTER TABLE `management_funds` DISABLE KEYS */;
INSERT INTO `management_funds` (`id`, `name`, `amount`, `type`) VALUES
	(1, 'tuner', 9962329, 'business'),
	(12, 'police', 200, 'business');
/*!40000 ALTER TABLE `management_funds` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_bolos
DROP TABLE IF EXISTS `mdt_bolos`;
CREATE TABLE IF NOT EXISTS `mdt_bolos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `plate` longtext NOT NULL,
  `owner` longtext NOT NULL,
  `individual` longtext NOT NULL,
  `detail` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `gallery` longtext NOT NULL,
  `officers` longtext NOT NULL,
  `time` longtext NOT NULL,
  `author` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_bolos: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_bolos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_bolos` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_bulletin
DROP TABLE IF EXISTS `mdt_bulletin`;
CREATE TABLE IF NOT EXISTS `mdt_bulletin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `jobtype` varchar(25) DEFAULT 'police',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_bulletin: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_bulletin` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_bulletins
DROP TABLE IF EXISTS `mdt_bulletins`;
CREATE TABLE IF NOT EXISTS `mdt_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_bulletins: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_bulletins` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_bulletins` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_dashmessage
DROP TABLE IF EXISTS `mdt_dashmessage`;
CREATE TABLE IF NOT EXISTS `mdt_dashmessage` (
  `message` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `author` longtext DEFAULT NULL,
  `profilepic` longtext DEFAULT NULL,
  `job` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_dashmessage: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_dashmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_dashmessage` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_incidents
DROP TABLE IF EXISTS `mdt_incidents`;
CREATE TABLE IF NOT EXISTS `mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `information` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `officers` longtext NOT NULL,
  `civilians` longtext NOT NULL,
  `evidence` longtext NOT NULL,
  `associated` longtext NOT NULL,
  `time` longtext NOT NULL,
  `author` longtext DEFAULT NULL,
  `type` longtext DEFAULT 'police',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_incidents: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_incidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_incidents` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_logs
DROP TABLE IF EXISTS `mdt_logs`;
CREATE TABLE IF NOT EXISTS `mdt_logs` (
  `log` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_logs: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_logs` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_missing
DROP TABLE IF EXISTS `mdt_missing`;
CREATE TABLE IF NOT EXISTS `mdt_missing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext NOT NULL,
  `name` longtext NOT NULL,
  `date` longtext NOT NULL,
  `age` longtext NOT NULL,
  `lastseen` longtext NOT NULL,
  `image` longtext DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_missing: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_missing` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_missing` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_report
DROP TABLE IF EXISTS `mdt_report`;
CREATE TABLE IF NOT EXISTS `mdt_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext DEFAULT NULL,
  `reporttype` longtext DEFAULT NULL,
  `author` longtext DEFAULT NULL,
  `detail` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `officers` longtext DEFAULT NULL,
  `civilians` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_report` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_reports
DROP TABLE IF EXISTS `mdt_reports`;
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incident` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.mdt_reports: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_reports_ems
DROP TABLE IF EXISTS `mdt_reports_ems`;
CREATE TABLE IF NOT EXISTS `mdt_reports_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `incident` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.mdt_reports_ems: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_reports_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports_ems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_vehicleinfo
DROP TABLE IF EXISTS `mdt_vehicleinfo`;
CREATE TABLE IF NOT EXISTS `mdt_vehicleinfo` (
  `plate` varchar(50) NOT NULL DEFAULT '',
  `code5` longtext NOT NULL,
  `stolen` longtext NOT NULL,
  `info` longtext NOT NULL,
  `image` longtext NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_vehicleinfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_vehicleinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_vehicleinfo` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_warrants
DROP TABLE IF EXISTS `mdt_warrants`;
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.mdt_warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_warrants` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_warrants` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_warrants_ems
DROP TABLE IF EXISTS `mdt_warrants_ems`;
CREATE TABLE IF NOT EXISTS `mdt_warrants_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charges` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.mdt_warrants_ems: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_warrants_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_warrants_ems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.mdt_weapons
DROP TABLE IF EXISTS `mdt_weapons`;
CREATE TABLE IF NOT EXISTS `mdt_weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` longtext DEFAULT NULL,
  `serialnumber` longtext DEFAULT NULL,
  `image` longtext DEFAULT 'https://cdn.discordapp.com/attachments/770324167894761522/912602343164502096/not-found.jpg',
  `owner` longtext DEFAULT NULL,
  `brand` longtext DEFAULT 'Unknown',
  `type` longtext DEFAULT 'Unknown',
  `information` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.mdt_weapons: ~0 rows (approximately)
/*!40000 ALTER TABLE `mdt_weapons` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_weapons` ENABLE KEYS */;

-- Dumping structure for table fxzsql.nitro_vehicles
DROP TABLE IF EXISTS `nitro_vehicles`;
CREATE TABLE IF NOT EXISTS `nitro_vehicles` (
  `plate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 100,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.nitro_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `nitro_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `nitro_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.objects
DROP TABLE IF EXISTS `objects`;
CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.objects: ~0 rows (approximately)
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;

-- Dumping structure for table fxzsql.occasion_vehicles
DROP TABLE IF EXISTS `occasion_vehicles`;
CREATE TABLE IF NOT EXISTS `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.occasion_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `occasion_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `occasion_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.oilrig_blender
DROP TABLE IF EXISTS `oilrig_blender`;
CREATE TABLE IF NOT EXISTS `oilrig_blender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `metadata` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.oilrig_blender: ~0 rows (approximately)
/*!40000 ALTER TABLE `oilrig_blender` DISABLE KEYS */;
/*!40000 ALTER TABLE `oilrig_blender` ENABLE KEYS */;

-- Dumping structure for table fxzsql.oilrig_cdu
DROP TABLE IF EXISTS `oilrig_cdu`;
CREATE TABLE IF NOT EXISTS `oilrig_cdu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `metadata` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.oilrig_cdu: ~0 rows (approximately)
/*!40000 ALTER TABLE `oilrig_cdu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oilrig_cdu` ENABLE KEYS */;

-- Dumping structure for table fxzsql.oilrig_position
DROP TABLE IF EXISTS `oilrig_position`;
CREATE TABLE IF NOT EXISTS `oilrig_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `oilrig_hash` varchar(50) DEFAULT NULL,
  `position` text NOT NULL DEFAULT '0',
  `metadata` text NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.oilrig_position: ~0 rows (approximately)
/*!40000 ALTER TABLE `oilrig_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `oilrig_position` ENABLE KEYS */;

-- Dumping structure for table fxzsql.oilrig_storage
DROP TABLE IF EXISTS `oilrig_storage`;
CREATE TABLE IF NOT EXISTS `oilrig_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `metadata` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.oilrig_storage: ~0 rows (approximately)
/*!40000 ALTER TABLE `oilrig_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `oilrig_storage` ENABLE KEYS */;

-- Dumping structure for table fxzsql.outfits
DROP TABLE IF EXISTS `outfits`;
CREATE TABLE IF NOT EXISTS `outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL DEFAULT '0',
  `outfit_id` int(11) DEFAULT NULL,
  `outfit_name` longtext DEFAULT NULL,
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.outfits: ~0 rows (approximately)
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;

-- Dumping structure for table fxzsql.owned_vehicles
DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'car',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'voiture',
  `jamstate` int(11) DEFAULT 0,
  `finance` int(32) NOT NULL DEFAULT 0,
  `financetimer` int(32) NOT NULL DEFAULT 0,
  `lasthouse` int(11) DEFAULT 0,
  `retailprice` int(32) NOT NULL DEFAULT 30000,
  `color` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NOT',
  `garage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'square',
  `state` int(1) unsigned NOT NULL DEFAULT 0,
  `job` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `index_owned_vehicles_owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.owned_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.paychecks
DROP TABLE IF EXISTS `paychecks`;
CREATE TABLE IF NOT EXISTS `paychecks` (
  `citizenid` varchar(250) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `collectamount` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.paychecks: ~1 rows (approximately)
/*!40000 ALTER TABLE `paychecks` DISABLE KEYS */;
INSERT INTO `paychecks` (`citizenid`, `collectamount`) VALUES
	('JMO01004', 1675);
/*!40000 ALTER TABLE `paychecks` ENABLE KEYS */;

-- Dumping structure for table fxzsql.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.permissions: ~1 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `license`, `permission`) VALUES
	(1, 'Shalev', 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'god');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_app_chat
DROP TABLE IF EXISTS `phone_app_chat`;
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_calls
DROP TABLE IF EXISTS `phone_calls`;
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_calls: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_chatrooms
DROP TABLE IF EXISTS `phone_chatrooms`;
CREATE TABLE IF NOT EXISTS `phone_chatrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_code` varchar(10) NOT NULL,
  `room_name` varchar(15) NOT NULL,
  `room_owner_id` varchar(20) DEFAULT NULL,
  `room_owner_name` varchar(60) DEFAULT NULL,
  `room_members` text DEFAULT '{}',
  `room_pin` varchar(50) DEFAULT NULL,
  `unpaid_balance` decimal(10,2) DEFAULT 0.00,
  `is_masked` tinyint(1) DEFAULT 0,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_code` (`room_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_chatrooms: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_chatrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chatrooms` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_chatroom_messages
DROP TABLE IF EXISTS `phone_chatroom_messages`;
CREATE TABLE IF NOT EXISTS `phone_chatroom_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` int(10) unsigned DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `member_name` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `is_pinned` tinyint(1) DEFAULT 0,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_chatroom_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_chatroom_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_chatroom_messages` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_contacts
DROP TABLE IF EXISTS `phone_contacts`;
CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.phone_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_contacts` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_debt
DROP TABLE IF EXISTS `phone_debt`;
CREATE TABLE IF NOT EXISTS `phone_debt` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_debt: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_debt` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_debt` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_gallery
DROP TABLE IF EXISTS `phone_gallery`;
CREATE TABLE IF NOT EXISTS `phone_gallery` (
  `citizenid` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.phone_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_gallery` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_invoices
DROP TABLE IF EXISTS `phone_invoices`;
CREATE TABLE IF NOT EXISTS `phone_invoices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `society` tinytext DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `sendercitizenid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.phone_invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_invoices` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_messages
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.phone_messages: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_note
DROP TABLE IF EXISTS `phone_note`;
CREATE TABLE IF NOT EXISTS `phone_note` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `lastupdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_note: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_note` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_tweets
DROP TABLE IF EXISTS `phone_tweets`;
CREATE TABLE IF NOT EXISTS `phone_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `url` text DEFAULT NULL,
  `picture` text DEFAULT './img/default.png',
  `tweetId` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_tweets: ~1 rows (approximately)
/*!40000 ALTER TABLE `phone_tweets` DISABLE KEYS */;
INSERT INTO `phone_tweets` (`id`, `citizenid`, `firstName`, `lastName`, `message`, `date`, `url`, `picture`, `tweetId`) VALUES
	(1, 'JMO01004', 'Shalev', 'User', '123', '2022-08-13 18:29:02', '', 'default', 'TWEET-29818586');
/*!40000 ALTER TABLE `phone_tweets` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_users_contacts
DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table fxzsql.phone_yp
DROP TABLE IF EXISTS `phone_yp`;
CREATE TABLE IF NOT EXISTS `phone_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `advert` varchar(500) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.phone_yp: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_yp` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_yp` ENABLE KEYS */;

-- Dumping structure for table fxzsql.playerhousing
DROP TABLE IF EXISTS `playerhousing`;
CREATE TABLE IF NOT EXISTS `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `furniture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.playerhousing: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing` ENABLE KEYS */;

-- Dumping structure for table fxzsql.playerhousing_keys
DROP TABLE IF EXISTS `playerhousing_keys`;
CREATE TABLE IF NOT EXISTS `playerhousing_keys` (
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.playerhousing_keys: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerhousing_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing_keys` ENABLE KEYS */;

-- Dumping structure for table fxzsql.playermotels
DROP TABLE IF EXISTS `playermotels`;
CREATE TABLE IF NOT EXISTS `playermotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `zone` varchar(50) NOT NULL,
  `door` longtext NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.playermotels: ~0 rows (approximately)
/*!40000 ALTER TABLE `playermotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `playermotels` ENABLE KEYS */;

-- Dumping structure for table fxzsql.playermotels_homeinventory
DROP TABLE IF EXISTS `playermotels_homeinventory`;
CREATE TABLE IF NOT EXISTS `playermotels_homeinventory` (
  `owner` varchar(50) NOT NULL,
  `inventory` longtext NOT NULL,
  `weapons` longtext NOT NULL,
  `dirtymoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.playermotels_homeinventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `playermotels_homeinventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `playermotels_homeinventory` ENABLE KEYS */;

-- Dumping structure for table fxzsql.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tattoos` longtext DEFAULT NULL,
  `firstname` longtext DEFAULT NULL,
  `lastname` longtext DEFAULT NULL,
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.players: ~1 rows (approximately)
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` (`id`, `citizenid`, `cid`, `license`, `name`, `money`, `charinfo`, `job`, `gang`, `position`, `metadata`, `inventory`, `last_updated`, `tattoos`, `firstname`, `lastname`) VALUES
	(1, 'JMO01004', 7, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'Shalev', '{"crypto":0,"cash":999999999986487921,"bank":2000000000000973905}', '{"nationality":"USA","lastname":"User","birthdate":"2000-01-01","backstory":"placeholder backstory","firstname":"Shalev","phone":"7396107018","gender":0,"account":"US08QBCore6965516168"}', '{"isboss":true,"payment":150,"onduty":true,"label":"6STR Tuner Shop","grade":{"name":"CEO","level":4},"name":"tuner"}', '{"isboss":false,"label":"No Gang Affiliaton","grade":{"name":"none","level":0},"name":"none"}', '{"x":132.56703186035157,"y":-3043.489990234375,"z":7.0380859375}', '{"fingerprint":"mh575d61mDa0561","craftingrep":0,"attachmentcraftingrep":0,"hunger":87.39999999999999,"methknob2":58,"methknob1":37,"ishandcuffed":false,"phone":[],"callsign":"NO CALLSIGN","isdead":false,"inside":{"apartment":[]},"licences":{"business":false,"driver":false,"weapon":false},"carboostclass":"D","injail":0,"status":[],"commandbinds":[],"armor":0,"methknob3":53,"stress":0,"dealerrep":0,"walletid":"QB-60011536","jobrep":{"trucker":0,"tow":0,"taxi":0,"hotdog":0},"laptopdata":{"apps":[],"wallpaper":"default"},"jailitems":[],"bloodtype":"B-","fitbit":[],"tracker":false,"phonedata":{"InstalledApps":[],"SerialNumber":99186492},"criminalrecord":{"hasRecord":false},"carboostrep":0,"inlaststand":false,"thirst":88.60000000000001,"currentapartment":"apartment13868"}', '[{"type":"item","info":{"quality":99},"created":1660484137,"amount":1,"slot":7,"name":"phone"},{"type":"item","info":{"quality":95},"created":1660404531,"amount":1,"slot":41,"name":"phone"}]', '2022-08-14 21:42:20', NULL, 'Shalev', 'User');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;

-- Dumping structure for table fxzsql.playerstattoos
DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tattoos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.playerstattoos: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_boats
DROP TABLE IF EXISTS `player_boats`;
CREATE TABLE IF NOT EXISTS `player_boats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `boathouse` varchar(50) DEFAULT NULL,
  `fuel` int(11) NOT NULL DEFAULT 100,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.player_boats: ~1 rows (approximately)
/*!40000 ALTER TABLE `player_boats` DISABLE KEYS */;
INSERT INTO `player_boats` (`id`, `citizenid`, `model`, `plate`, `boathouse`, `fuel`, `state`) VALUES
	(1, 'JMO01004', 'dinghy', 'QB4723', NULL, 100, 0);
/*!40000 ALTER TABLE `player_boats` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_burglaries
DROP TABLE IF EXISTS `player_burglaries`;
CREATE TABLE IF NOT EXISTS `player_burglaries` (
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `burglaries` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.player_burglaries: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_burglaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_burglaries` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_contacts
DROP TABLE IF EXISTS `player_contacts`;
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.player_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_houses
DROP TABLE IF EXISTS `player_houses`;
CREATE TABLE IF NOT EXISTS `player_houses` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.player_houses: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_mails
DROP TABLE IF EXISTS `player_mails`;
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.player_mails: ~1 rows (approximately)
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
INSERT INTO `player_mails` (`id`, `citizenid`, `sender`, `subject`, `message`, `read`, `mailid`, `date`, `button`) VALUES
	(1, 'JMO01004', 'Art Heist', 'VAR Environment', 'You have entered a VAR environment. You may exit at any time by using your F1 console. Only one terminal can be used at the same time. Contraband will be confiscated upon leaving. You have three hours to complete the VAR Heist.', 0, 283564, '2022-08-11 02:31:28', '[]');
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_pets
DROP TABLE IF EXISTS `player_pets`;
CREATE TABLE IF NOT EXISTS `player_pets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `model` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.player_pets: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_pets` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_vehicles
DROP TABLE IF EXISTS `player_vehicles`;
CREATE TABLE IF NOT EXISTS `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `noslevel` int(10) DEFAULT 0,
  `hasnitro` tinyint(4) DEFAULT 0,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  `vinnumber` varchar(50) DEFAULT NULL,
  `vinscratch` int(2) DEFAULT 0,
  `wheelfit` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.player_vehicles: ~12 rows (approximately)
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
INSERT INTO `player_vehicles` (`id`, `license`, `citizenid`, `vehicle`, `hash`, `mods`, `plate`, `fakeplate`, `garage`, `fuel`, `engine`, `body`, `state`, `depotprice`, `drivingdistance`, `noslevel`, `hasnitro`, `status`, `balance`, `paymentamount`, `paymentsleft`, `financetime`, `vinnumber`, `vinscratch`, `wheelfit`) VALUES
	(1, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'comet5', '661493923', '{"modDoorSpeaker":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"headlightColor":255,"interiorColor":93,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"wheelSize":0.0,"dirtLevel":2.38298470417284,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"tyreSmokeColor":[255,255,255],"modSpoilers":-1,"modTrimB":-1,"bodyHealth":942.8676146177221,"dashboardColor":65,"modBackWheels":-1,"engineHealth":934.9243322704792,"modSideSkirt":-1,"modAirFilter":-1,"modSuspension":-1,"modFrame":-1,"modRightFender":-1,"plate":"5TUE249","oilLevel":4.76596940834568,"modRearBumper":-1,"modHydrolic":-1,"modSeats":-1,"fuelLevel":96.11371640163806,"windows":[1,1,1,false,false,1,1,false,false,false,false,false,false],"color1":111,"modFrontWheels":-1,"modArchCover":-1,"modCustomTiresR":false,"liveryRoof":-1,"modWindows":-1,"tyres":[false,false,false,false,false,false,false],"modGrille":-1,"modAPlate":-1,"modKit17":-1,"modSpeakers":-1,"modCustomTiresF":false,"modDial":-1,"extras":[],"modEngineBlock":-1,"modFrontBumper":-1,"modFender":-1,"modExhaust":-1,"modKit49":-1,"tireHealth":{"1":999.0426025390625,"2":1000.0,"3":1000.0,"0":999.5},"doors":[false,false,false,false,false,false],"modVanityPlate":-1,"modOrnaments":-1,"wheelColor":0,"modHood":-1,"modKit21":-1,"plateIndex":0,"modTransmission":-1,"model":661493923,"modXenon":false,"wheelWidth":0.0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modStruts":-1,"modHorns":-1,"modDashboard":-1,"modTurbo":false,"tankHealth":3993.088035958963,"modRoof":-1,"modPlateHolder":-1,"modKit19":-1,"modTrunk":-1,"xenonColor":255,"neonColor":[255,0,255],"modTank":-1,"modArmor":-1,"modAerials":-1,"modBrakes":-1,"windowTint":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"modLivery":-1,"modShifterLeavers":-1,"modKit47":-1,"modEngine":-1,"wheels":0,"color2":0,"modSteeringWheel":-1,"modSmokeEnabled":false,"pearlescentColor":111,"modTrimA":-1}', '5TUE249', NULL, 'altaparking', 100, 1000, 1000, 1, 0, 4512, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(2, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', '68dart', '68dart', '{"modVanityPlate":-1,"modHood":-1,"modAerials":-1,"headlightColor":255,"xenonColor":255,"modSuspension":3,"windows":[1,1,1,false,false,1,1,false,false,false,false,false,false],"oilLevel":4.76596940834568,"fuelLevel":46.86536584873261,"modRoof":-1,"bodyHealth":986.5556675275576,"wheels":7,"modTrimA":-1,"windowTint":-1,"modWindows":-1,"modAPlate":-1,"pearlescentColor":0,"modKit19":-1,"modCustomTiresF":false,"modKit21":-1,"modSideSkirt":-1,"modSpeakers":-1,"modFrontBumper":-1,"extras":{"2":true,"9":true,"1":true},"modEngine":4,"tireHealth":{"1":999.75,"2":1000.0,"3":1000.0,"0":998.7359619140625},"modBrakes":2,"modTrimB":-1,"modExhaust":-1,"modSeats":-1,"model":-1534120590,"tyreSmokeColor":[255,255,255],"modSpoilers":-1,"modTurbo":1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"wheelColor":0,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modStruts":-1,"modSteeringWheel":-1,"plateIndex":0,"modArmor":4,"modKit17":-1,"plate":"43DFI569","modSmokeEnabled":false,"modArchCover":-1,"modAirFilter":-1,"color1":14,"modCustomTiresR":false,"dashboardColor":0,"modShifterLeavers":-1,"liveryRoof":-1,"modGrille":-1,"modDial":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modKit49":-1,"modTransmission":3,"modHydrolic":-1,"interiorColor":0,"wheelSize":1.0,"modFrame":-1,"modRightFender":-1,"modEngineBlock":-1,"modTank":-1,"engineHealth":984.967011058109,"wheelWidth":1.0,"dirtLevel":5.56029764306997,"modLivery":1,"modRearBumper":-1,"tyres":[false,false,false,false,false,false,false],"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modOrnaments":-1,"modFrontWheels":-1,"modDashboard":-1,"modXenon":false,"modPlateHolder":-1,"doors":[false,false,false,false,false,false],"modDoorSpeaker":-1,"neonColor":[255,0,255],"modTrunk":-1,"modBackWheels":-1,"modKit47":-1,"modHorns":-1,"tankHealth":998.4705910484217,"color2":0,"modFender":-1}', '43DFI569', NULL, 'altaparking', 100, 1000, 1000, 1, 0, 650481, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(3, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'gt63', '-248071157', '{"modEngine":-1,"modExhaust":-1,"modFrontWheels":-1,"wheelWidth":0.0,"modShifterLeavers":-1,"modEngineBlock":-1,"modKit17":-1,"modBackWheels":-1,"modSideSkirt":-1,"headlightColor":255,"modTurbo":false,"modStruts":-1,"modArmor":-1,"modFrontBumper":-1,"modCustomTiresF":false,"tyreSmokeColor":[255,255,255],"modAirFilter":-1,"modSuspension":-1,"plateIndex":0,"modHorns":-1,"plate":"84VRA590","modPlateHolder":-1,"modTank":-1,"color1":63,"modHood":-1,"modFrame":-1,"modVanityPlate":-1,"modAerials":-1,"modKit19":-1,"modWindows":-1,"liveryRoof":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":true,"5":true,"6":true,"7":true,"0":true},"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"modDashboard":-1,"bodyHealth":1000.0592475178704,"modSeats":-1,"modArchCover":-1,"dirtLevel":2.38298470417284,"color2":70,"modTrunk":-1,"modAPlate":-1,"modTrimA":-1,"modRightFender":-1,"modGrille":-1,"modCustomTiresR":false,"modRoof":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"neonColor":[255,0,255],"pearlescentColor":63,"modSpeakers":-1,"modTrimB":-1,"xenonColor":255,"wheelSize":0.0,"modRearBumper":-1,"windowTint":-1,"oilLevel":4.76596940834568,"modKit49":-1,"dashboardColor":0,"modSmokeEnabled":false,"wheelColor":156,"modLivery":1,"wheels":0,"interiorColor":0,"fuelLevel":100.08535757525947,"model":-248071157,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"engineHealth":1000.0592475178704,"modKit47":-1,"modKit21":-1,"modDoorSpeaker":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modXenon":false,"modSteeringWheel":-1,"modHydrolic":-1,"extras":[],"modSpoilers":-1,"modDial":-1,"modTransmission":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modBrakes":-1,"modFender":-1,"modOrnaments":-1,"tankHealth":1000.0592475178704}', '84VRA590', NULL, 'aptgarage', 100, 1000, 1000, 0, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(4, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'gt63', '-248071157', '{"modBrakes":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"tyres":[false,false,false,false,false,false,false],"modHydrolic":-1,"modRightFender":-1,"modSideSkirt":-1,"modFrame":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"doors":[false,false,false,false,false,false],"wheelSize":0.0,"headlightColor":255,"modAirFilter":-1,"modSpoilers":-1,"modKit17":-1,"modDashboard":-1,"modRoof":-1,"modStruts":-1,"modFrontBumper":-1,"modShifterLeavers":-1,"modHorns":-1,"modXenon":false,"neonColor":[255,0,255],"modEngineBlock":-1,"dirtLevel":2.38298470417284,"modFrontWheels":-1,"modHood":-1,"modCustomTiresF":false,"fuelLevel":98.4967011058109,"modArmor":-1,"modOrnaments":-1,"model":-248071157,"modPlateHolder":-1,"modExhaust":-1,"modLivery":1,"modRearBumper":-1,"modKit21":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"wheelWidth":0.0,"interiorColor":0,"modTank":-1,"modSteeringWheel":-1,"windowTint":-1,"modKit47":-1,"oilLevel":4.76596940834568,"modWindows":-1,"xenonColor":255,"modTrunk":-1,"modKit49":-1,"plateIndex":0,"modSuspension":-1,"modTrimA":-1,"modSeats":-1,"tankHealth":4000.2369900714818,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"pearlescentColor":63,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modTurbo":false,"modAerials":-1,"modArchCover":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":true,"5":true,"6":true,"7":true,"0":true},"color1":63,"modKit19":-1,"modAPlate":-1,"modTransmission":-1,"color2":70,"modGrille":-1,"modFender":-1,"extras":[],"modCustomTiresR":false,"dashboardColor":0,"modDial":-1,"modBackWheels":-1,"modDoorSpeaker":-1,"bodyHealth":1000.0592475178704,"liveryRoof":-1,"modTrimB":-1,"wheels":0,"modSpeakers":-1,"windows":[1,1,1,1,1,1,1,false,false,false,false,false,false],"wheelColor":156,"modEngine":-1,"modVanityPlate":-1,"plate":"17SMS769","modSmokeEnabled":false,"engineHealth":1000.0592475178704,"tyreSmokeColor":[255,255,255]}', '17SMS769', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 2602, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(5, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'swift', '-339587598', '{}', '5SU151UA', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 9929, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(6, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'bdragon', '-1077193305', '{"modSmokeEnabled":false,"modAerials":-1,"modWindows":-1,"modSpeakers":-1,"modDashboard":-1,"modLivery":0,"interiorColor":0,"dashboardColor":0,"modEngine":-1,"modHorns":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modKit47":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"engineHealth":1000.0592475178704,"modTrunk":-1,"liveryRoof":-1,"modAPlate":-1,"modSteeringWheel":-1,"headlightColor":255,"wheelSize":1.21000003814697,"modBackWheels":-1,"modTransmission":-1,"modKit49":-1,"modFrame":-1,"modFrontBumper":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modSpoilers":-1,"modOrnaments":-1,"modAirFilter":-1,"modBrakes":-1,"modFender":-1,"modDoorSpeaker":-1,"plate":"6XH467ZA","modKit21":-1,"modKit19":-1,"oilLevel":4.76596940834568,"modFrontWheels":-1,"wheels":0,"xenonColor":255,"modRoof":-1,"modPlateHolder":-1,"modEngineBlock":-1,"modSideSkirt":-1,"bodyHealth":1000.0592475178704,"modHydrolic":-1,"modSuspension":-1,"wheelWidth":1.08000004291534,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":true},"modKit17":-1,"plateIndex":0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modTrimB":-1,"neonColor":[255,0,255],"model":-1077193305,"tankHealth":4000.2369900714818,"windowTint":-1,"wheelColor":0,"modArchCover":-1,"modDial":-1,"modRearBumper":-1,"modStruts":-1,"dirtLevel":0.0,"modSeats":-1,"modShifterLeavers":-1,"modArmor":-1,"modCustomTiresF":false,"modGrille":-1,"modTrimA":-1,"pearlescentColor":26,"color1":26,"tyreSmokeColor":[255,255,255],"modHood":-1,"modXenon":false,"modTank":-1,"modExhaust":-1,"color2":26,"modCustomTiresR":false,"modRightFender":-1,"modTurbo":false,"fuelLevel":62.75193054321823,"extras":{"4":true,"3":false,"2":true,"1":true},"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modVanityPlate":-1}', '6XH467ZA', NULL, 'tuner', 71, 1.001, 1.001, 0, 0, 5809, 63, 1, NULL, 0, 0, 0, 0, NULL, 0, '{"rr":1.02,"rl":-1.02,"width":1.08,"flro":-0.13,"fl":-1.02,"frro":0.13,"size":1.21,"rlro":-0.13,"rrro":0.13,"fr":1.02}'),
	(7, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'rmodbugatti', '-101696514', '{"modSmokeEnabled":false,"modAerials":-1,"modWindows":-1,"modSpeakers":-1,"modDashboard":-1,"modLivery":0,"interiorColor":0,"dashboardColor":0,"modEngine":-1,"modHorns":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modKit47":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"engineHealth":1000.0592475178704,"modTrunk":-1,"liveryRoof":-1,"modAPlate":-1,"modSteeringWheel":-1,"headlightColor":255,"wheelSize":1.0,"modBackWheels":-1,"modTransmission":-1,"modKit49":-1,"modFrame":-1,"modFrontBumper":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"modSpoilers":-1,"modOrnaments":-1,"modAirFilter":-1,"modBrakes":-1,"modFender":-1,"modDoorSpeaker":-1,"plate":"8TH356HV","modKit21":-1,"modKit19":-1,"oilLevel":4.76596940834568,"modFrontWheels":-1,"wheels":7,"xenonColor":255,"modRoof":-1,"modPlateHolder":-1,"modEngineBlock":-1,"modSideSkirt":-1,"bodyHealth":1000.0592475178704,"modHydrolic":-1,"modSuspension":-1,"wheelWidth":1.0,"windowStatus":{"1":true,"2":false,"3":false,"4":false,"5":false,"6":true,"7":false,"0":true},"modKit17":-1,"plateIndex":0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modTrimB":-1,"neonColor":[255,0,255],"model":-101696514,"tankHealth":4000.2369900714818,"windowTint":-1,"wheelColor":156,"modArchCover":-1,"modDial":-1,"modRearBumper":-1,"modStruts":-1,"dirtLevel":0.0,"modSeats":-1,"modShifterLeavers":-1,"modArmor":-1,"modCustomTiresF":false,"modGrille":-1,"modTrimA":-1,"pearlescentColor":2,"color1":0,"tyreSmokeColor":[255,255,255],"modHood":-1,"modXenon":false,"modTank":-1,"modExhaust":0,"color2":70,"modCustomTiresR":false,"modRightFender":-1,"modTurbo":false,"fuelLevel":92.14207522801665,"extras":{"2":false,"1":true},"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modVanityPlate":-1}', '8TH356HV', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 155, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(8, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'seasparrow2', '1229411063', '{"modLivery":-1,"modKit19":-1,"modDial":-1,"modVanityPlate":-1,"windowTint":-1,"neonColor":[255,0,255],"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"fuelLevel":100.08535757525947,"color1":5,"modTurbo":false,"modGrille":-1,"oilLevel":7.94328234724281,"modHydrolic":-1,"modBackWheels":-1,"modHorns":-1,"modKit17":-1,"modDashboard":-1,"modDoorSpeaker":-1,"bodyHealth":1000.0592475178704,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modEngineBlock":-1,"modEngine":-1,"modSpoilers":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"color2":2,"modStruts":-1,"plateIndex":0,"engineHealth":1000.0592475178704,"tyreSmokeColor":[255,255,255],"wheels":0,"modCustomTiresR":false,"modXenon":false,"modSmokeEnabled":false,"modExhaust":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"dashboardColor":0,"modKit47":-1,"modArchCover":-1,"plate":"3CP913LK","modSideSkirt":-1,"modFender":-1,"modCustomTiresF":false,"modAerials":-1,"modArmor":-1,"wheelColor":111,"dirtLevel":6.35462587779425,"modTrimB":-1,"modTrunk":-1,"modTank":-1,"modFrontBumper":-1,"modTransmission":-1,"modShifterLeavers":-1,"model":1229411063,"modAPlate":-1,"modAirFilter":-1,"modSteeringWheel":-1,"liveryRoof":-1,"wheelWidth":0.0,"modFrame":-1,"modKit49":-1,"modBrakes":-1,"pearlescentColor":5,"tankHealth":1000.0592475178704,"modSeats":-1,"interiorColor":111,"modWindows":-1,"modRightFender":-1,"modKit21":-1,"modSpeakers":-1,"modRearBumper":-1,"modOrnaments":-1,"windowStatus":{"1":true,"2":false,"3":false,"4":false,"5":false,"6":true,"7":true,"0":true},"wheelSize":0.0,"modRoof":-1,"modTrimA":-1,"modSuspension":-1,"modFrontWheels":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"extras":{"2":true,"1":true,"7":true},"modHood":-1,"modPlateHolder":-1,"headlightColor":255,"xenonColor":255}', '3CP913LK', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 5989, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(9, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'lp670', '-306884444', '{"extras":[],"modDoorSpeaker":-1,"modDial":-1,"bodyHealth":1000.0592475178704,"color2":0,"tyreSmokeColor":[255,255,255],"color1":0,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"dirtLevel":0.0,"modPlateHolder":-1,"modRearBumper":-1,"xenonColor":255,"plateIndex":0,"modSpeakers":-1,"modSeats":-1,"modVanityPlate":-1,"modTransmission":-1,"wheelSize":0.15000000596046,"pearlescentColor":4,"modHood":-1,"oilLevel":4.76596940834568,"modAerials":-1,"modCustomTiresR":false,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modStruts":-1,"modCustomTiresF":false,"interiorColor":4,"fuelLevel":97.70237287108663,"wheelWidth":0.15999999642372,"modDashboard":-1,"neonColor":[255,0,255],"modTurbo":false,"modShifterLeavers":-1,"windowStatus":{"1":true,"2":false,"3":false,"4":false,"5":false,"6":true,"7":true,"0":true},"modRoof":-1,"windowTint":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"modSteeringWheel":-1,"modAPlate":-1,"modKit21":-1,"modAirFilter":-1,"modEngine":-1,"modTrimA":-1,"modHorns":-1,"modWindows":-1,"modTrunk":-1,"modKit49":-1,"modTrimB":-1,"modGrille":-1,"headlightColor":255,"modSideSkirt":-1,"modXenon":false,"modHydrolic":-1,"modLivery":0,"modTank":-1,"modRightFender":-1,"modArchCover":-1,"liveryRoof":-1,"modKit19":-1,"tankHealth":4000.2369900714818,"modSmokeEnabled":false,"modExhaust":-1,"modEngineBlock":-1,"modFrontWheels":-1,"model":-306884444,"modKit47":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"wheels":7,"modFender":-1,"modSuspension":-1,"wheelColor":27,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"engineHealth":1000.0592475178704,"modKit17":-1,"modSpoilers":-1,"modBackWheels":-1,"dashboardColor":0,"modFrontBumper":-1,"modFrame":-1,"modArmor":-1,"modBrakes":-1,"plate":"8WE572TA","modOrnaments":-1}', '8WE572TA', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 279, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, '{"width":0.16,"size":0.15,"rlro":-0.22,"fl":-0.89,"flro":-0.22,"rrro":0.22,"rl":-0.89,"fr":0.89,"rr":0.89,"frro":0.22}'),
	(10, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'gtr', '-1752116803', '{"tyreSmokeColor":[255,255,255],"oilLevel":4.76596940834568,"modPlateHolder":-1,"modFrontBumper":-1,"color1":64,"modSuspension":-1,"dirtLevel":0.0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modDial":-1,"headlightColor":255,"modAerials":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":false},"modDashboard":-1,"modVanityPlate":-1,"engineHealth":1000.0592475178704,"modGrille":-1,"bodyHealth":1000.0592475178704,"modKit17":-1,"modStruts":-1,"wheelColor":0,"tankHealth":4000.2369900714818,"modTrunk":-1,"interiorColor":0,"modRightFender":-1,"modExhaust":-1,"modArchCover":-1,"modSteeringWheel":-1,"modTrimB":-1,"model":-1752116803,"pearlescentColor":6,"plate":"6XF269CS","color2":0,"modAirFilter":-1,"modLivery":0,"modTurbo":false,"modSpeakers":-1,"modEngineBlock":-1,"modSideSkirt":-1,"modArmor":-1,"dashboardColor":0,"modXenon":false,"modSeats":-1,"windowTint":-1,"modWindows":-1,"modKit47":-1,"modRoof":-1,"modBackWheels":-1,"wheelWidth":1.0,"modOrnaments":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"xenonColor":255,"liveryRoof":-1,"neonColor":[255,0,255],"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"fuelLevel":98.4967011058109,"modHood":-1,"modSpoilers":-1,"modFrontWheels":-1,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modRearBumper":-1,"extras":[],"plateIndex":4,"modHydrolic":-1,"modFender":-1,"modFrame":-1,"modAPlate":-1,"modShifterLeavers":-1,"modBrakes":-1,"modCustomTiresR":false,"wheelSize":1.0,"modTank":-1,"modKit49":-1,"modKit21":-1,"modSmokeEnabled":false,"modKit19":-1,"modTransmission":-1,"modTrimA":-1,"modHorns":-1,"modCustomTiresF":false,"modDoorSpeaker":-1,"wheels":0,"modEngine":-1}', '6XF269CS', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 1238, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL),
	(11, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'impala59c', '-1432545278', '{"modKit19":-1,"modFender":-1,"modSideSkirt":-1,"wheelColor":122,"dirtLevel":7.94328234724281,"modVanityPlate":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"plateIndex":5,"modSeats":-1,"windowStatus":{"1":false,"2":true,"3":true,"4":false,"5":false,"6":true,"7":true,"0":false},"dashboardColor":0,"modFrame":-1,"modHorns":-1,"modFrontWheels":-1,"modExhaust":-1,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modKit47":-1,"modTransmission":-1,"tankHealth":3998.648333602033,"color1":31,"windows":[false,1,1,false,false,1,1,false,false,false,false,false,false],"modSpoilers":-1,"tyres":[false,false,false,false,false,false,false],"modDial":-1,"color2":27,"modSmokeEnabled":false,"modArmor":-1,"modTrunk":-1,"wheelWidth":0.0,"modRoof":-1,"bodyHealth":986.5556675275576,"modAerials":-1,"modRearBumper":-1,"extras":{"5":false,"1":false,"2":true,"3":false,"4":false},"modKit17":-1,"modGrille":-1,"modSteeringWheel":-1,"modEngine":-1,"model":-1432545278,"modKit49":-1,"windowTint":-1,"modEngineBlock":-1,"interiorColor":31,"modStruts":-1,"modHood":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"modTrimB":-1,"modRightFender":-1,"doors":[false,false,false,false,false,false],"modAirFilter":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modCustomTiresR":false,"modCustomTiresF":false,"modSpeakers":-1,"modFrontBumper":-1,"modOrnaments":-1,"wheels":2,"xenonColor":255,"liveryRoof":-1,"modWindows":-1,"modBrakes":-1,"modDoorSpeaker":-1,"modBackWheels":4,"plate":"8ZM229UC","modPlateHolder":-1,"headlightColor":255,"neonColor":[255,0,255],"modShifterLeavers":-1,"engineHealth":986.5556675275576,"fuelLevel":96.11371640163806,"wheelSize":0.0,"modAPlate":-1,"modLivery":0,"modTurbo":false,"modXenon":false,"oilLevel":4.76596940834568,"modSuspension":-1,"modTank":-1,"modArchCover":-1,"modHydrolic":-1,"modDashboard":-1,"modTrimA":-1,"modKit21":-1,"tyreSmokeColor":[255,255,255],"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"pearlescentColor":27}', '8ZM229UC', NULL, 'tuner', 96, 987, 987, 1, 0, 246, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, '{"rlro":0.00000108741892,"fl":-1.13,"flro":0.00000108741892,"rl":-0.8624130487442,"size":0.07,"frro":0.00000108741903,"rr":0.86482113599777,"fr":1.27,"width":1.48,"rrro":0.00000108741892}'),
	(12, 'license:d81557f10ff65aa04f6ba1b87bc293036a9b2d68', 'JMO01004', 'wraith', '-1095688294', '{"modSteeringWheel":-1,"tireBurstCompletely":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modAirFilter":-1,"modGrille":-1,"modPlateHolder":-1,"modTransmission":-1,"modExhaust":-1,"color1":6,"tireBurstState":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modEngine":-1,"modDoorSpeaker":-1,"model":-1095688294,"neonColor":[255,0,255],"modHydrolic":-1,"modTurbo":false,"modLivery":-1,"windowTint":-1,"dashboardColor":0,"modKit17":-1,"modDashboard":-1,"modAerials":-1,"modArmor":-1,"tankHealth":4000.2369900714818,"modBackWheels":-1,"modFrontWheels":-1,"xenonColor":255,"modFender":-1,"modHood":-1,"modTrimB":-1,"modRightFender":-1,"modHorns":-1,"tireHealth":{"1":1000.0,"2":1000.0,"3":1000.0,"0":1000.0},"plateIndex":0,"modKit19":-1,"liveryRoof":-1,"modVanityPlate":-1,"modKit21":-1,"modXenon":false,"modTrunk":-1,"engineHealth":1000.0592475178704,"modSpeakers":-1,"modStruts":-1,"modBrakes":-1,"modOrnaments":-1,"fuelLevel":65.13491524739108,"modSideSkirt":-1,"wheelColor":7,"modCustomTiresF":false,"tyreSmokeColor":[255,255,255],"modArchCover":-1,"neonEnabled":{"1":false,"2":false,"3":false,"0":false},"color2":0,"oilLevel":4.76596940834568,"wheels":7,"interiorColor":0,"modWindows":-1,"modCustomTiresR":false,"modTank":-1,"modSpoilers":-1,"modShifterLeavers":-1,"headlightColor":255,"modKit47":-1,"modSuspension":-1,"extras":{"12":false,"11":true,"1":false},"wheelSize":1.0,"modFrame":-1,"modAPlate":-1,"modDial":-1,"modFrontBumper":-1,"bodyHealth":1000.0592475178704,"pearlescentColor":1,"wheelWidth":1.0,"doorStatus":{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false},"modRearBumper":-1,"modSmokeEnabled":false,"modEngineBlock":-1,"modSeats":-1,"windowStatus":{"1":true,"2":true,"3":true,"4":true,"5":true,"6":true,"7":true,"0":true},"dirtLevel":7.14895411251853,"modKit49":-1,"plate":"2KZ420LB","modRoof":-1,"modTrimA":-1}', '2KZ420LB', NULL, 'pillboxgarage', 100, 1000, 1000, 0, 0, 1902, 0, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL);
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.player_warns
DROP TABLE IF EXISTS `player_warns`;
CREATE TABLE IF NOT EXISTS `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.player_warns: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_warns` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_warns` ENABLE KEYS */;

-- Dumping structure for table fxzsql.rented_vehicles
DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.repos_for_sale
DROP TABLE IF EXISTS `repos_for_sale`;
CREATE TABLE IF NOT EXISTS `repos_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.repos_for_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `repos_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `repos_for_sale` ENABLE KEYS */;

-- Dumping structure for table fxzsql.scenes
DROP TABLE IF EXISTS `scenes`;
CREATE TABLE IF NOT EXISTS `scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `text` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `color` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `viewdistance` int(11) DEFAULT NULL,
  `expiration` int(11) DEFAULT NULL,
  `fontsize` decimal(10,1) DEFAULT NULL,
  `fontstyle` int(11) DEFAULT NULL,
  `coords` mediumtext COLLATE utf8mb4_bin DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_deletion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table fxzsql.scenes: ~0 rows (approximately)
/*!40000 ALTER TABLE `scenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `scenes` ENABLE KEYS */;

-- Dumping structure for table fxzsql.shared_vehicles
DROP TABLE IF EXISTS `shared_vehicles`;
CREATE TABLE IF NOT EXISTS `shared_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(50) NOT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'None',
  `hash` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` varchar(50) DEFAULT 'Stored',
  `faction` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `category` (`category`),
  KEY `garage` (`garage`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.shared_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `shared_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `shared_vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.shops
DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.shops: ~0 rows (approximately)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Dumping structure for table fxzsql.society_moneywash
DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table fxzsql.stashitems
DROP TABLE IF EXISTS `stashitems`;
CREATE TABLE IF NOT EXISTS `stashitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`stash`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.stashitems: ~16 rows (approximately)
/*!40000 ALTER TABLE `stashitems` DISABLE KEYS */;
INSERT INTO `stashitems` (`id`, `stash`, `items`) VALUES
	(1, 'apartment13868', '[{"amount":1,"unique":true,"weight":1000,"slot":1,"type":"weapon","image":"weapon_knife.png","info":{"serie":"00QuG7JI075kZXx","ammo":0,"quality":43},"name":"weapon_knife","useable":false,"label":"Knife"},{"amount":1,"unique":false,"weight":500,"slot":2,"type":"item","image":"collarpet.png","info":{"quality":46},"name":"collarpet","useable":true,"label":"Pet collar"},{"amount":1,"unique":false,"weight":500,"slot":3,"type":"item","image":"petfood.png","info":{"quality":46},"name":"petfood","useable":true,"label":"pet food"},{"amount":1,"unique":true,"weight":1000,"slot":4,"type":"item","image":"petgroomingkit.png","info":{"quality":46},"name":"petgroomingkit","useable":true,"label":"Pet Grooming Kit"},{"amount":1,"unique":true,"weight":500,"slot":5,"type":"item","image":"A_C_Coyote.png","info":{"quality":46,"thirst":2.6,"variation":"brown","hash":"18yEU1ov885DvmV","owner":{"phone":"7396107018","lastname":"User","account":"US08QBCore6965516168","nationality":"USA","birthdate":"2000-01-01","firstname":"Shalev","gender":0,"backstory":"placeholder backstory"},"gender":false,"level":4,"health":125.0,"food":74.0,"name":"FXZ","age":130,"XP":105},"name":"keepcompanioncoyote","useable":true,"label":"Coyote"},{"amount":1,"unique":true,"weight":500,"slot":6,"type":"item","image":"np_casino_high_roller.png","info":{"quality":46},"name":"casino_vip","useable":false,"label":"V.I.P Membership"},{"amount":1,"unique":true,"weight":1000,"slot":7,"type":"item","image":"petwaterbottleportable.png","info":{"quality":46},"name":"petwaterbottleportable","useable":true,"label":"Portable water bottle"},{"amount":1,"unique":false,"weight":500,"slot":8,"type":"item","image":"petnametag.png","info":{"quality":46},"name":"petnametag","useable":true,"label":"Name tag"},{"amount":1,"unique":true,"weight":500,"slot":9,"type":"item","image":"np_casino_member.png","info":{"quality":46},"name":"casino_member","useable":false,"label":"Casino Membership"},{"amount":1,"unique":true,"weight":20000,"slot":10,"type":"item","image":"diving_gear.png","info":{"quality":43},"name":"diving_gear","useable":true,"label":"Diving Gear"},{"amount":9999,"unique":false,"weight":1,"slot":11,"type":"item","image":"np_gold-chip.png","info":{"quality":46},"name":"casino_goldchip","useable":false,"label":"Casino Chip"},{"amount":1,"unique":false,"weight":3000,"slot":12,"type":"item","image":"dashcam.png","info":{"quality":43},"name":"pd_dashcam","useable":true,"label":"Dash Camera [PD]"},{"amount":1,"unique":false,"weight":300,"slot":13,"type":"item","image":"lockpick.png","info":{"quality":46},"name":"lockpick","useable":true,"label":"Lockpick"},{"amount":1,"unique":false,"weight":100,"slot":14,"type":"item","image":"handcuffs.png","info":{"quality":43},"name":"handcuffs","useable":true,"label":"Handcuffs"},{"amount":1,"unique":false,"weight":100,"slot":15,"type":"item","image":"np_mobilecratekey.png","info":{"quality":43},"name":"handcuffkey","useable":true,"label":"Handcuff Key"},{"amount":1,"unique":true,"weight":2500,"slot":16,"type":"item","image":"np_wingsuit.png","info":{"quality":97},"name":"wingsuit_open","useable":true,"label":"Wingsuit Open"},{"amount":1,"unique":true,"weight":1000,"slot":17,"type":"weapon","image":"np_scar.png","info":{"serie":"07FLw2Qg645ekXy","ammo":95,"quality":87.89999999999958,"attachments":[{"label":"Flashlight","component":"COMPONENT_AT_AR_FLSH"},{"label":"3x Scope","component":"COMPONENT_AT_SCOPE_MEDIUM"}]},"name":"weapon_specialcarbine_mk2","useable":true,"label":"FN SCAR-L"},{"amount":1,"unique":true,"weight":2000,"slot":18,"type":"item","image":"np_radio.png","info":{"quality":99},"name":"radio","useable":true,"label":"Radio"},{"amount":1,"unique":true,"weight":2000,"slot":19,"type":"item","image":"np_radio.png","info":{"quality":99},"name":"radio","useable":true,"label":"Radio"},{"amount":1,"unique":true,"weight":2500,"slot":20,"type":"item","image":"np_wingsuit.png","info":{"quality":99},"name":"wingsuit_open","useable":true,"label":"Wingsuit Open"},null,{"amount":1,"unique":true,"weight":1000,"slot":22,"type":"weapon","image":"np_baseball-bat.png","info":{"serie":"12wNx7FS504nOuQ","ammo":0,"quality":99},"name":"weapon_bats","useable":false,"label":"Bat"},{"amount":1,"unique":true,"weight":1000,"slot":23,"type":"item","image":"var_usb.png","info":{"quality":90},"name":"var_usb5","useable":true,"label":"Master Key (100%)"},{"amount":36,"unique":false,"weight":100,"slot":24,"type":"item","image":"recyclablematerial.png","info":{"quality":99},"name":"recyclablematerial","useable":false,"label":"Recycle Box"},{"amount":20,"unique":false,"weight":100,"slot":25,"type":"item","image":"metalscrap.png","info":{"quality":99},"name":"metalscrap","useable":false,"label":"Metal Scrap"},{"amount":1,"unique":true,"weight":1000,"slot":26,"type":"item","image":"np_var_headset.png","info":{"quality":90},"name":"var_helmet","useable":true,"label":"VAR Headset"},{"amount":1,"unique":true,"weight":1000,"slot":27,"type":"weapon","image":"np_micro-smg2.png","info":{"serie":"27KJo1LB101ipMc","ammo":0,"quality":99},"name":"weapon_microsmg2","useable":false,"label":"Uzi"},{"amount":1,"unique":true,"weight":1000,"slot":28,"type":"weapon","image":"weapon_crowbar.png","info":{"quality":99,"ammo":0,"serie":"87YGi2Ac162ujvJ"},"name":"weapon_crowbar","useable":false,"label":"Crowbar"}]'),
	(2, 'beanmachine_Counter', '[]'),
	(3, 'boss_police', '[]'),
	(19, 'boss_tuner', '[]'),
	(30, 'Container | 5000 | 3612 |', '[null,{"amount":3,"unique":false,"weight":1000,"created":1660423588,"type":"item","slot":2,"image":"nitrous.png","info":{"quality":97},"name":"nitrous","useable":true,"label":"Nitrous"}]'),
	(31, 'Container | 5002 | 3612 |', '[{"amount":1,"unique":true,"weight":1000,"slot":1,"type":"weapon","image":"np_keyboard.png","info":{"quality":99,"serie":"59JdQ4vy405zFMz"},"name":"weapon_bat","useable":false,"label":"Model M Keyboard"}]'),
	(24, 'Container | 5450 | 4303 |', '[]'),
	(16, 'Evidence Locker | Drawer 110', '[]'),
	(6, 'Gunrack_04TYD433', '[]'),
	(9, 'pizza_Toppings', '[]'),
	(15, 'policestash_JMO01004', '[]'),
	(17, 'policetrash1', '[]'),
	(8, 'popsdiner_Counter2', '[]'),
	(7, 'popsdiner_Counter3', '[]'),
	(18, 'tunerjobstash', '[]'),
	(21, 'tunerpersonal_JMO01004', '[]');
/*!40000 ALTER TABLE `stashitems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.transaction_history
DROP TABLE IF EXISTS `transaction_history`;
CREATE TABLE IF NOT EXISTS `transaction_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` text NOT NULL,
  `trans_id` int(11) NOT NULL,
  `account` text NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_type` text NOT NULL,
  `receiver` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.transaction_history: ~9 rows (approximately)
/*!40000 ALTER TABLE `transaction_history` DISABLE KEYS */;
INSERT INTO `transaction_history` (`id`, `citizenid`, `trans_id`, `account`, `amount`, `trans_type`, `receiver`, `message`, `date`) VALUES
	(1, 'JMO01004', 46787, 'personal', 775, 'deposit', 'N/A', 'Collected Personal Paycheck', '2022-08-04 15:10:56'),
	(2, 'JMO01004', 48149, 'personal', 715, 'deposit', 'N/A', 'Collected Personal Paycheck', '2022-08-08 11:50:40'),
	(3, 'JMO01004', 95922, 'personal', 775, 'deposit', 'N/A', 'Collected Personal Paycheck', '2022-08-08 20:48:27'),
	(4, 'JMO01004', 72274, 'personal', 0, 'deposit', 'N/A', 'Collected Personal Paycheck', '2022-08-08 20:48:57'),
	(5, 'JMO01004', 20145, 'personal', 2790, 'deposit', 'N/A', 'Collected Personal Paycheck', '2022-08-13 17:31:43'),
	(6, 'JMO01004', 96849, 'business', 10000, 'deposit', '6STR Tuner Shop', 'Deposited cash into 6STR Tuner Shop\'s business account from Business Computer.', '2022-08-14 00:26:30'),
	(7, 'JMO01004', 46171, 'business', 10000, 'deposit', '6STR Tuner Shop', 'Deposited cash into 6STR Tuner Shop\'s business account from Business Computer.', '2022-08-14 00:26:38'),
	(8, 'JMO01004', 18532, 'business', -1000, 'deposit', '6STR Tuner Shop', 'Withdraw from 6STR Tuner Shop\'s account from Business Computer.', '2022-08-14 00:26:41'),
	(9, 'JMO01004', 92716, 'business', 100, 'deposit', '6STR Tuner Shop', 'Deposited cash into 6STR Tuner Shop\'s business account from Business Computer.', '2022-08-14 00:27:14');
/*!40000 ALTER TABLE `transaction_history` ENABLE KEYS */;

-- Dumping structure for table fxzsql.trucks
DROP TABLE IF EXISTS `trucks`;
CREATE TABLE IF NOT EXISTS `trucks` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.trucks: ~0 rows (approximately)
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;

-- Dumping structure for table fxzsql.truck_categories
DROP TABLE IF EXISTS `truck_categories`;
CREATE TABLE IF NOT EXISTS `truck_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.truck_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `truck_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `truck_categories` ENABLE KEYS */;

-- Dumping structure for table fxzsql.trunkitems
DROP TABLE IF EXISTS `trunkitems`;
CREATE TABLE IF NOT EXISTS `trunkitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL DEFAULT '[]',
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`plate`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.trunkitems: ~0 rows (approximately)
/*!40000 ALTER TABLE `trunkitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunkitems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.tweets
DROP TABLE IF EXISTS `tweets`;
CREATE TABLE IF NOT EXISTS `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;

-- Dumping structure for table fxzsql.twitter_likes
DROP TABLE IF EXISTS `twitter_likes`;
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table fxzsql.twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Dumping structure for table fxzsql.twitter_tweets
DROP TABLE IF EXISTS `twitter_tweets`;
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7454 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `skin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_house` int(11) DEFAULT 0,
  `hair_1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `armour` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `zetony` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_current
DROP TABLE IF EXISTS `users_current`;
CREATE TABLE IF NOT EXISTS `users_current` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `model` longtext NOT NULL,
  `drawables` longtext NOT NULL,
  `props` longtext NOT NULL,
  `drawtextures` longtext NOT NULL,
  `proptextures` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.users_current: ~1 rows (approximately)
/*!40000 ALTER TABLE `users_current` DISABLE KEYS */;
INSERT INTO `users_current` (`id`, `citizenid`, `cid`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`) VALUES
	(1, 'JMO01004', 7, '-224108667', '{"1":["masks",-1],"2":["hair",0],"3":["torsos",4],"4":["legs",8],"5":["bags",-1],"6":["shoes",1],"7":["neck",0],"8":["undershirts",-1],"9":["vest",0],"10":["decals",-1],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",0]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",7],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]');
/*!40000 ALTER TABLE `users_current` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_face
DROP TABLE IF EXISTS `users_face`;
CREATE TABLE IF NOT EXISTS `users_face` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `hairColor` longtext NOT NULL,
  `headBlend` longtext NOT NULL,
  `headOverlay` longtext NOT NULL,
  `headStructure` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.users_face: ~1 rows (approximately)
/*!40000 ALTER TABLE `users_face` DISABLE KEYS */;
INSERT INTO `users_face` (`id`, `citizenid`, `cid`, `hairColor`, `headBlend`, `headOverlay`, `headStructure`) VALUES
	(1, 'JMO01004', 7, '[-1,-1]', '[]', '{"14":{"val":-1,"name":"eyecolor"}}', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]');
/*!40000 ALTER TABLE `users_face` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_hospital_patients
DROP TABLE IF EXISTS `users_hospital_patients`;
CREATE TABLE IF NOT EXISTS `users_hospital_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `illness` varchar(50) NOT NULL DEFAULT 'none',
  `level` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.users_hospital_patients: ~1 rows (approximately)
/*!40000 ALTER TABLE `users_hospital_patients` DISABLE KEYS */;
INSERT INTO `users_hospital_patients` (`id`, `cid`, `illness`, `level`, `time`) VALUES
	(1, 0, 'none', 0, 0);
/*!40000 ALTER TABLE `users_hospital_patients` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_housing
DROP TABLE IF EXISTS `users_housing`;
CREATE TABLE IF NOT EXISTS `users_housing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `housing_id` int(11) NOT NULL,
  `Street` text NOT NULL,
  `assigned` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.users_housing: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_housing` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_housing` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_housing_keys
DROP TABLE IF EXISTS `users_housing_keys`;
CREATE TABLE IF NOT EXISTS `users_housing_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `housing_id` int(11) NOT NULL,
  `giver` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.users_housing_keys: ~0 rows (approximately)
/*!40000 ALTER TABLE `users_housing_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_housing_keys` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_motel
DROP TABLE IF EXISTS `users_motel`;
CREATE TABLE IF NOT EXISTS `users_motel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `building_type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table fxzsql.users_motel: ~1 rows (approximately)
/*!40000 ALTER TABLE `users_motel` DISABLE KEYS */;
INSERT INTO `users_motel` (`id`, `cid`, `building_type`) VALUES
	(1, 0, 1);
/*!40000 ALTER TABLE `users_motel` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_outfits
DROP TABLE IF EXISTS `users_outfits`;
CREATE TABLE IF NOT EXISTS `users_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `model` longtext NOT NULL,
  `name` longtext NOT NULL,
  `slot` longtext NOT NULL,
  `drawables` longtext NOT NULL,
  `props` longtext NOT NULL,
  `drawtextures` longtext NOT NULL,
  `proptextures` longtext NOT NULL,
  `hairColor` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.users_outfits: ~5 rows (approximately)
/*!40000 ALTER TABLE `users_outfits` DISABLE KEYS */;
INSERT INTO `users_outfits` (`id`, `citizenid`, `cid`, `model`, `name`, `slot`, `drawables`, `props`, `drawtextures`, `proptextures`, `hairColor`) VALUES
	(4, 'JMO01004', 7, '-1419785485', '', '2', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]'),
	(5, 'JMO01004', 7, '-1419785485', '1', '3', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]'),
	(6, 'JMO01004', 7, '-1419785485', '1', '4', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]'),
	(7, 'JMO01004', 7, '-1419785485', '1', '1', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]'),
	(8, 'JMO01004', 7, '1455372228', 'MY PED', '5', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",8],"7":["neck",0],"8":["undershirts",-1],"9":["vest",2],"10":["decals",1],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",0],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",0]}', '[["face",2],["masks",0],["hair",0],["torsos",0],["legs",2],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",2],["decals",0],["jackets",0]]', '[["hats",0],["glasses",2],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]');
/*!40000 ALTER TABLE `users_outfits` ENABLE KEYS */;

-- Dumping structure for table fxzsql.users_tattoos
DROP TABLE IF EXISTS `users_tattoos`;
CREATE TABLE IF NOT EXISTS `users_tattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.users_tattoos: ~1 rows (approximately)
/*!40000 ALTER TABLE `users_tattoos` DISABLE KEYS */;
INSERT INTO `users_tattoos` (`id`, `citizenid`, `cid`, `tattoos`) VALUES
	(1, 'JMO01004', 7, '[]');
/*!40000 ALTER TABLE `users_tattoos` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_accounts
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_convictions
DROP TABLE IF EXISTS `user_convictions`;
CREATE TABLE IF NOT EXISTS `user_convictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_convictions: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_convictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_convictions` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_convictions_ems
DROP TABLE IF EXISTS `user_convictions_ems`;
CREATE TABLE IF NOT EXISTS `user_convictions_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_convictions_ems: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_convictions_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_convictions_ems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_inventory
DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier_item` (`identifier`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_lastcharacter
DROP TABLE IF EXISTS `user_lastcharacter`;
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.user_lastcharacter: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_levels
DROP TABLE IF EXISTS `user_levels`;
CREATE TABLE IF NOT EXISTS `user_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `crafting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table fxzsql.user_levels: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_levels` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_licenses
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_mdt
DROP TABLE IF EXISTS `user_mdt`;
CREATE TABLE IF NOT EXISTS `user_mdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mugshot_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_mdt: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_mdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mdt` ENABLE KEYS */;

-- Dumping structure for table fxzsql.user_mdt_ems
DROP TABLE IF EXISTS `user_mdt_ems`;
CREATE TABLE IF NOT EXISTS `user_mdt_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mugshot_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.user_mdt_ems: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_mdt_ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_mdt_ems` ENABLE KEYS */;

-- Dumping structure for table fxzsql.uteknark
DROP TABLE IF EXISTS `uteknark`;
CREATE TABLE IF NOT EXISTS `uteknark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stage` int(3) unsigned NOT NULL DEFAULT 1,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `soil` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stage` (`stage`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=1165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.uteknark: ~0 rows (approximately)
/*!40000 ALTER TABLE `uteknark` DISABLE KEYS */;
/*!40000 ALTER TABLE `uteknark` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vaults
DROP TABLE IF EXISTS `vaults`;
CREATE TABLE IF NOT EXISTS `vaults` (
  `citizenid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `storagename` varchar(255) NOT NULL,
  `storage_size` int(11) DEFAULT 400000,
  `holders` text DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.vaults: ~0 rows (approximately)
/*!40000 ALTER TABLE `vaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaults` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vehicles
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inshop` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.vehicles: ~340 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `inshop`) VALUES
	('g1', '10ram', 5, 'super', 0),
	('James', '16challenger', 5, 'super', 0),
	('Charger', '69charger', 1, 'super', 0),
	('Adder', 'adder', 1300000, 'super', 1),
	('Alpha', 'alpha', 31000, 'sports', 1),
	('Ardent', 'ardent', 111100, 'sportsclassics', 1),
	('Flakey', 'arv10', 5, 'super', 0),
	('Asea', 'asea', 9500, 'sedans', 1),
	('Asterope', 'asterope', 27900, 'sedans', 1),
	('Kong', 'audirs6tk', 5, 'super', 0),
	('Autarch', 'autarch', 359000, 'super', 1),
	('Avarus', 'avarus', 26996, 'motorcycles', 1),
	('Bagger', 'bagger', 23600, 'motorcycles', 1),
	('Baller', 'baller', 39000, 'suvs', 1),
	('Baller Sport', 'baller2', 48900, 'suvs', 1),
	('Baller V.I.P.', 'baller3', 60900, 'suvs', 1),
	('Baller V.I.P XL', 'baller4', 70900, 'suvs', 1),
	('Banshee', 'banshee', 80000, 'sports', 1),
	('Banshee 900R', 'banshee2', 176000, 'super', 1),
	('Bati 801', 'bati', 21000, 'motorcycles', 1),
	('Bati 801RR', 'bati2', 35900, 'motorcycles', 1),
	('Doof', 'bchauler', 5, 'super', 0),
	('Benson', 'benson', 41440, 'utility', 1),
	('Bestia GTS', 'bestiagts', 151400, 'sports', 1),
	('Bf Injection', 'bfinjection', 11895, 'offroad', 1),
	('Bifta', 'bifta', 7750, 'offroad', 1),
	('Bison', 'bison', 36700, 'vans', 1),
	('BeeJay XL', 'bjxl', 24945, 'suvs', 1),
	('Blade', 'blade', 36500, 'muscle', 1),
	('Blazer', 'blazer', 4650, 'offroad', 1),
	('Blazer Hot Rod', 'blazer3', 5790, 'offroad', 1),
	('Blazer Sport', 'blazer4', 8550, 'offroad', 1),
	('Blista', 'blista', 9800, 'compacts', 1),
	('Blista Compact', 'blista2', 16570, 'compacts', 1),
	('BMX (velo)', 'bmx', 160, 'motorcycles', 1),
	('Bobcat XL', 'bobcatxl', 28700, 'vans', 1),
	('Bodhi', 'bodhi2', 19495, 'offroad', 1),
	('Brawler', 'brawler', 97650, 'offroad', 1),
	('Brioso R/A', 'brioso', 17590, 'compacts', 1),
	('Btype', 'btype', 39279, 'sportsclassics', 1),
	('Btype (Luxury)', 'btype3', 61340, 'sportsclassics', 1),
	('Buccaneer', 'buccaneer', 24200, 'muscle', 1),
	('Buccaneer (Low ´n´ Slow)', 'buccaneer2', 39920, 'muscle', 1),
	('Buffalo', 'buffalo', 28570, 'sports', 1),
	('Buffalo S', 'buffalo2', 39320, 'sports', 1),
	('Buffalo (race)', 'buffalo3', 51975, 'muscle', 1),
	('Bullet', 'bullet', 151195, 'super', 1),
	('Burrito', 'burrito3', 18560, 'vans', 1),
	('North2', 'c7', 5, 'super', 0),
	('Bee', 'camaro_ss', 5, 'super', 0),
	('Camper', 'camper', 42000, 'vans', 1),
	('Otto', 'can', 5, 'super', 0),
	('Carbonizzare', 'carbonizzare', 159400, 'sports', 1),
	('Carbon RS', 'carbonrs', 78510, 'motorcycles', 1),
	('Casco', 'casco', 57525, 'sportsclassics', 1),
	('02 Cavalcade', 'cavalcade', 29450, 'suvs', 1),
	('07 Cavalcade x2', 'cavalcade2', 35725, 'suvs', 1),
	('Cheburek', 'cheburek', 6500, 'cheap', 0),
	('Cheetah', 'cheetah', 261500, 'super', 1),
	('Chimera', 'chimera', 35900, 'motorcycles', 1),
	('Chino', 'chino', 13485, 'muscle', 1),
	('Chino Luxe', 'chino2', 17750, 'classic', 1),
	('Cliffhanger', 'cliffhanger', 15500, 'motorcycles', 1),
	('Clique', 'clique', 180000, 'muscle', 1),
	('Dashound', 'coach', 114000, 'utility', 0),
	('Cognoscenti Cabrio', 'cogcabrio', 54480, 'coupes', 1),
	('Cognoscenti', 'cognoscenti', 48970, 'sedans', 1),
	('Comet', 'comet2', 74600, 'sports', 1),
	('Comet Retro Custom', 'comet3', 98600, 'sportsclassics', 1),
	('Comet Safari', 'comet4', 89730, 'sports', 0),
	('Comet SR', 'comet5', 105900, 'sports', 1),
	('Contender', 'contender', 53970, 'suvs', 1),
	('Coquette', 'coquette', 110500, 'sports', 1),
	('Coquette Classic', 'coquette2', 99380, 'classic', 1),
	('Coquette BlackFin', 'coquette3', 83100, 'classic', 1),
	('Cruiser (velo)', 'cruiser', 410, 'motorcycles', 1),
	('Cyclone(Electric)', 'cyclone', 319900, 'super', 1),
	('Daemon', 'daemon', 11500, 'motorcycles', 1),
	('Daemon High', 'daemon2', 13900, 'motorcycles', 1),
	('Defiler', 'defiler', 15200, 'motorcycles', 1),
	('Deveste Eight', 'deveste', 896900, 'super', 1),
	('Deviant', 'deviant', 21500, 'muscle', 1),
	('Diablous', 'diablous', 19290, 'motorcycles', 1),
	('Diablous Custom', 'diablous2', 36290, 'motorcycles', 1),
	('Dilettante', 'dilettante', 7900, 'compacts', 1),
	('Loki', 'dilettante2', 5, 'super', 0),
	('Power Wagon', 'dloader', 23900, 'offroad', 1),
	('Dominator', 'dominator', 19890, 'muscle', 1),
	('Dominator (race)', 'dominator2', 26700, 'muscle', 1),
	('Dominator GTX', 'dominator3', 87995, 'muscle', 1),
	('Double T', 'double', 41000, 'motorcycles', 1),
	('Dubsta', 'dubsta', 68000, 'suvs', 1),
	('Dubsta Luxury', 'dubsta2', 74800, 'suvs', 1),
	('Bubsta 6x6', 'dubsta3', 299000, 'offroad', 1),
	('Dukes', 'dukes', 28910, 'muscle', 1),
	('Dune Buggy', 'dune', 8150, 'offroad', 1),
	('Clown', 'e63amg', 5, 'super', 0),
	('CMC', 'e92lb', 5, 'super', 0),
	('Elegy (Retro)', 'elegy', 87890, 'sports', 1),
	('Elegy', 'elegy2', 94590, 'sports', 1),
	('Ellie', 'ellie', 39403, 'muscle', 1),
	('Dil', 'ellie6str', 5, 'super', 0),
	('Emperor', 'emperor', 8510, 'sedans', 1),
	('Enduro', 'enduro', 5910, 'motorcycles', 1),
	('Entity XXR', 'entity2', 734900, 'super', 1),
	('Entity XF', 'entityxf', 645400, 'super', 1),
	('Esskey', 'esskey', 4200, 'motorcycles', 1),
	('Clown', 'evo9', 5, 'super', 0),
	('Exemplar', 'exemplar', 32900, 'coupes', 1),
	('F150 Raptor', 'f150', 78000, 'vip', 0),
	('F620', 'f620', 41190, 'coupes', 1),
	('Faction', 'faction', 9116, 'muscle', 1),
	('Faction (Low ´n´ Slow)', 'faction2', 29678, 'muscle', 1),
	('Faction (Big Papa)', 'faction3', 58400, 'muscle', 1),
	('Fagaloa', 'fagaloa', 5100, 'sportsclassics', 1),
	('Faggio', 'faggio', 1900, 'motorcycles', 1),
	('FUCKOFF', 'fc3s', 5, 'super', 0),
	('Felon', 'felon', 77500, 'sedans', 1),
	('FlatBed', 'flatbed3', 29180, 'utility', 0),
	('futo', 'futo', 11500, 'compacts', 1),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles', 1),
	('Gauntlet', 'gauntlet', 27220, 'muscle', 1),
	('Gauntlet (race)', 'gauntlet2', 32760, 'muscle', 1),
	('GB 200', 'gb200', 62900, 'sports', 1),
	('Gang Burrito', 'gburrito', 37200, 'vans', 1),
	('Burrito', 'gburrito2', 29000, 'vans', 1),
	('Glendale', 'glendale', 6500, 'sedans', 1),
	('GP1', 'gp1', 1432000, 'super', 1),
	('Granger', 'granger', 28700, 'suvs', 1),
	('Gresley', 'gresley', 30700, 'suvs', 1),
	('GT 500', 'gt500', 68940, 'sportsclassics', 1),
	('Nissan GTR', 'gtr', 1, 'vip', 0),
	('Jwil', 'gtrc', 5, 'super', 0),
	('Guardian', 'guardian', 71900, 'offroad', 1),
	('Hakuchou Sport', 'hakuchou2', 41800, 'motorcycles', 1),
	('Hauler', 'hauler', 68000, 'utility', 1),
	('Hermes', 'hermes', 44910, 'muscle', 1),
	('Hexer', 'hexer', 12400, 'motorcycles', 1),
	('gg', 'hondacivictr', 5, 'super', 0),
	('Hotknife', 'hotknife', 32550, 'muscle', 1),
	('Huntley S', 'huntley', 39140, 'suvs', 1),
	('Hustler', 'hustler', 39910, 'muscle', 1),
	('Impaler', 'impaler', 24500, 'muscle', 1),
	('Infernus', 'infernus', 101475, 'super', 1),
	('Infernus (Classic)', 'infernus2', 104498, 'sportsclassics', 1),
	('Ingot', 'ingot', 11497, 'sedans', 1),
	('Innovation', 'innovation', 23500, 'motorcycles', 1),
	('Intruder', 'intruder', 7500, 'sedans', 1),
	('Issi', 'issi2', 10110, 'compacts', 1),
	('Issi Clasic', 'issi3', 12320, 'compacts', 1),
	('Itali GTB', 'italigtb', 142600, 'super', 1),
	('Itali GTB (Spider)', 'italigtb2', 153800, 'super', 1),
	('Jackal', 'jackal', 26700, 'coupes', 1),
	('JB 700', 'jb700', 163900, 'sportsclassics', 1),
	('Sublime', 'jeep2012', 5, 'super', 0),
	('Jester', 'jester', 71570, 'sports', 1),
	('Jester (Racecar)', 'jester2', 82190, 'sports', 1),
	('Jester Classci', 'jester3', 94810, 'sports', 1),
	('Journey', 'journey', 6500, 'vans', 1),
	('Kalahari', 'kalahari', 14658, 'offroad', 1),
	('Kamacho', 'kamacho', 132720, 'offroad', 1),
	('Khamelion', 'khamelion (Electric)', 26920, 'sports', 1),
	('Kuruma', 'kuruma', 38495, 'sports', 1),
	('Landstalker', 'landstalker', 26245, 'suvs', 1),
	('RE-7B', 'le7b', 1317000, 'super', 0),
	('Lambo', 'lp700', 1, 'vip', 0),
	('Lurcher', 'lurcher', 38500, 'muscle', 1),
	('Lynx', 'lynx', 76800, 'sports', 1),
	('Mamba', 'mamba', 48200, 'sportsclassics', 1),
	('Manana', 'manana', 3847, 'cheap', 0),
	('Manchez', 'manchez', 5300, 'motorcycles', 1),
	('Massacro', 'massacro', 47100, 'sports', 1),
	('Mesa', 'mesa', 19530, 'suvs', 1),
	('g2', 'mgt', 5, 'super', 0),
	('Michelli GT', 'michelli', 37195, 'sportsclassics', 1),
	('Minivan', 'minivan', 13000, 'vans', 1),
	('Minivan', 'minivan2', 21900, 'vans', 1),
	('Monroe', 'monroe', 71670, 'sportsclassics', 1),
	('Moonbeam', 'moonbeam', 12819, 'vans', 1),
	('Moonbeam Rider', 'moonbeam2', 31950, 'vans', 1),
	('Mule', 'mule3', 27115, 'utility', 1),
	('Nemesis', 'nemesis', 5800, 'motorcycles', 1),
	('Neon (Electric)', 'neon', 141900, 'sports', 1),
	('Nero', 'nero', 1354000, 'super', 1),
	('Nero (Custom)', 'nero2', 1424000, 'super', 1),
	('Nightblade', 'nightblade', 31800, 'motorcycles', 1),
	('Nightshade', 'nightshade', 38710, 'muscle', 1),
	('9F', 'ninef', 169900, 'sports', 1),
	('9F Cabrio', 'ninef2', 62100, 'sports', 1),
	('Omnis', 'omnis', 39100, 'sports', 1),
	('Oracle', 'oracle', 26190, 'coupes', 1),
	('Oracle XL', 'oracle2', 35100, 'coupes', 1),
	('Osiris', 'osiris', 647890, 'super', 1),
	('Panto', 'panto', 8900, 'compacts', 1),
	('Paradise', 'paradise', 17810, 'vans', 1),
	('Pariah', 'pariah', 102240, 'sports', 1),
	('Patriot', 'patriot', 48286, 'suvs', 1),
	('Patriot Limo', 'patriot2', 95320, 'suvs', 1),
	('PCJ-600', 'pcj', 6200, 'motorcycles', 1),
	('Penetrator', 'penetrator', 226100, 'sportsclassics', 1),
	('Penumbra', 'penumbra', 23595, 'sports', 1),
	('Peyote', 'peyote', 36160, 'sportsclassics', 1),
	('Pfister', 'pfister811', 189100, 'super', 1),
	('Phoenix', 'phoenix', 29995, 'muscle', 1),
	('Picador', 'picador', 22300, 'muscle', 1),
	('Pigalle', 'pigalle', 31931, 'sportsclassics', 1),
	('ff', 'plmthf58', 5, 'super', 0),
	('Doof', 'police', 5, 'super', 0),
	('Prairie', 'prairie', 12000, 'compacts', 1),
	('ParkRanger', 'pranger', 5, 'super', 0),
	('Premier', 'premier', 8000, 'sedans', 1),
	('Primo', 'primo', 7900, 'sedans', 1),
	('Primo Custom', 'primo2', 14000, 'sedans', 1),
	('X80 Proto', 'prototipo', 1900000, 'super', 1),
	('raiden (Electric)', 'raiden', 81595, 'sports', 1),
	('Rancher XL', 'rancherxl', 29590, 'offroad', 1),
	('Rapid GT', 'rapidgt', 42100, 'sports', 1),
	('Rapid GT Convertible', 'rapidgt2', 43990, 'sports', 1),
	('Rapid GT (Classic)', 'rapidgt3', 97950, 'sportsclassics', 1),
	('Raptor', 'raptor', 41999, 'motorcycles', 1),
	('kcoolz', 'raptortruck', 5, 'super', 0),
	('Rat-Loader', 'ratloader', 1800, 'muscle', 0),
	('Rat-Truck', 'ratloader2', 11660, 'muscle', 1),
	('Reaper', 'reaper', 225000, 'super', 1),
	('Rebel (old)', 'rebel', 12490, 'offroad', 1),
	('Rebel (new)', 'rebel2', 27990, 'offroad', 1),
	('Regina', 'regina', 5710, 'sedans', 1),
	('Retinue', 'retinue', 36678, 'sportsclassics', 1),
	('Revolter', 'revolter', 100000, 'sports', 0),
	('Rhapsody', 'rhapsody', 13891, 'super', 0),
	('riata', 'riata', 42330, 'offroad', 1),
	('Rocoto', 'rocoto', 34500, 'suvs', 1),
	('Romero', 'romero', 18995, 'utility', 1),
	('Ruffian', 'ruffian', 6490, 'motorcycles', 1),
	('Ruiner', 'ruiner', 11250, 'muscle', 1),
	('Rumpo', 'rumpo', 15470, 'vans', 1),
	('Rumpo Custom', 'rumpo3', 49470, 'vans', 0),
	('Ruston', 'ruston', 47995, 'sports', 1),
	('Sabre Turbo', 'sabregt', 38900, 'muscle', 1),
	('Sabre GT', 'sabregt2', 48670, 'muscle', 1),
	('Sadler', 'sadler', 34670, 'utlity', 1),
	('Sanchez', 'sanchez', 7300, 'motorcycles', 1),
	('Sanchez Sport', 'sanchez2', 9300, 'motorcycles', 1),
	('Sanctus', 'sanctus', 49900, 'motorcycles', 1),
	('Sandking (4-door)', 'sandking', 33150, 'offroad', 1),
	('Sandking (2-door)', 'sandking2', 31730, 'offroad', 1),
	('Savestra', 'savestra', 28710, 'sportsclassics', 1),
	('SC1', 'sc1', 128970, 'super', 1),
	('Schafter', 'schafter2', 33840, 'sports', 1),
	('Schafter V12', 'schafter3', 41560, 'sports', 1),
	('Schlagen GT', 'schlagen', 132130, 'sports', 1),
	('Schwartzer', 'schwarzer', 62370, 'sports', 1),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles', 1),
	('Sentinel', 'sentinel', 31700, 'coupes', 1),
	('Sentinel XS', 'sentinel2', 37820, 'coupes', 1),
	('Sentinel3', 'sentinel3', 46990, 'sports', 1),
	('Seven 70', 'seven70', 143830, 'sports', 1),
	('ETR1', 'sheava', 285000, 'sports', 1),
	('Cypher', 'silv86', 5, 'super', 0),
	('North', 'skyline', 5, 'super', 1),
	('Slam Van', 'slamvan', 11970, 'muscle', 1),
	('Slam Van (Panel Truck)', 'slamvan2', 21780, 'muscle', 1),
	('Slam Van (Low ´n´ Slow)', 'slamvan3', 28770, 'muscle', 1),
	('Sovereign', 'sovereign', 22000, 'motorcycles', 1),
	('Specter', 'specter', 87250, 'sports', 1),
	('Specter Custom', 'specter2', 101710, 'sports', 1),
	('Clown Van', 'speedo2', 8000, 'vans', 1),
	('Stafford', 'stafford', 93560, 'sedans', 1),
	('Stallion', 'stalion', 18995, 'muscle', 1),
	('Stalion (race)', 'stalion2', 30000, 'muscle', 1),
	('Stinger', 'stinger', 63700, 'sportsclassics', 1),
	('Stinger GT', 'stingergt', 79930, 'sportsclassics', 1),
	('Streiter', 'streiter', 114000, 'sports', 1),
	('Stretch', 'stretch', 91970, 'sedans', 1),
	('Sultan', 'sultan', 15110, 'sports', 1),
	('Sultan RS', 'sultanrs', 53444, 'sports', 1),
	('Sultan RS S-Line', 'sultanrsv8', 189000, 'sports', 1),
	('Super Diamond', 'superd', 131920, 'sedans', 1),
	('Tarkenton', 'supra2', 5, 'super', 0),
	('Surano', 'surano', 62271, 'sports', 1),
	('Surfer', 'surfer', 12100, 'vans', 1),
	('T20', 't20', 229000, 'super', 1),
	('Tailgater', 'tailgater', 30140, 'sedans', 1),
	('Taipan', 'taipan', 241870, 'super', 1),
	('Tampa', 'tampa', 32600, 'muscle', 1),
	('Drift Tampa', 'tampa2', 57130, 'muscle', 1),
	('Taxi', 'taxi', 9995, 'utility', 1),
	('Tempesta', 'tempesta', 196674, 'super', 1),
	('wenis', 'teslax', 5, 'super', 0),
	('Tezeract', 'tezeract (Electric)', 507100, 'super', 1),
	('Thrust', 'thrust', 19700, 'motorcycles', 1),
	('Torero', 'torero', 103250, 'sportsclassics', 1),
	('Tornado', 'tornado', 31180, 'sportsclassics', 1),
	('Tornado Cabrio', 'tornado2', 36190, 'sportsclassics', 1),
	('Tornado (old)', 'tornado3', 9900, 'sportsclassics', 1),
	('Tornado (Española)', 'tornado4', 7350, 'sportsclassics', 1),
	('Tornado (Low ´n´ Slow)', 'tornado5', 38300, 'sportsclassics', 1),
	('Tornado (Rat Rod)', 'tornado6', 26340, 'sportsclassics', 1),
	('Toros', 'toros', 159925, 'suvs', 1),
	('Tourbus', 'tourbus', 35400, 'utility', 1),
	('Tow Truck', 'towtruck', 29180, 'utility', 0),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles', 1),
	('Tropos', 'tropos', 38157, 'sports', 1),
	('Tulip', 'tulip', 49995, 'muscle', 1),
	('Turismo Classic', 'turismo2', 178836, 'sportsclassics', 1),
	('Turismo R', 'turismor', 291620, 'super', 1),
	('Tyrant', 'tyrant', 594600, 'super', 1),
	('Tyrus', 'tyrus', 1419000, 'super', 1),
	('Vacca', 'vacca', 156000, 'super', 1),
	('Vader', 'vader', 7200, 'motorcycles', 1),
	('Vagner', 'vagner', 1197500, 'super', 1),
	('Vamos', 'vamos', 34690, 'muscle', 1),
	('Verlierer', 'verlierer2', 113181, 'sports', 1),
	('Vigero', 'vigero', 16980, 'muscle', 1),
	('Virgo', 'virgo', 31140, 'muscle', 1),
	('Virgo Classic', 'virgo2', 34470, 'muscle', 1),
	('Virgo Classic Custom', 'virgo3', 39970, 'muscle', 1),
	('Viseris', 'viseris', 168836, 'sportsclassics', 1),
	('Visione', 'visione', 976115, 'super', 1),
	('Voltic (Electric)', 'voltic', 58740, 'sports', 1),
	('Voodoo', 'voodoo', 41850, 'muscle', 1),
	('Voodoo (Rusty)', 'voodoo2', 2700, 'muscle', 1),
	('Vortex', 'vortex', 19800, 'motorcycles', 1),
	('Warrener', 'warrener', 4190, 'sedans', 1),
	('Washington', 'washington', 8970, 'sedans', 1),
	('Windsor', 'windsor', 96910, 'coupes', 1),
	('Windsor Drop', 'windsor2', 125270, 'coupes', 1),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles', 1),
	('XA 21', 'xa21', 619050, 'super', 1),
	('XLS', 'xls', 59550, 'suvs', 1),
	('Yosemite', 'yosemite', 31900, 'muscle', 1),
	('MAx', 'yosemite6str', 5, 'super', 0),
	('Youga', 'youga', 10800, 'vans', 1),
	('Youga Luxuary', 'youga2', 14500, 'vans', 1),
	('Karin 190z', 'z190', 31380, 'sportsclassics', 1),
	('Zentorno', 'zentorno', 723220, 'super', 1),
	('Zion', 'zion', 26100, 'coupes', 1),
	('Zion Cabrio', 'zion2', 33610, 'coupes', 1),
	('Zombie', 'zombiea', 9500, 'motorcycles', 1),
	('Zombie Luxuary', 'zombieb', 12760, 'motorcycles', 1);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vehicles_display
DROP TABLE IF EXISTS `vehicles_display`;
CREATE TABLE IF NOT EXISTS `vehicles_display` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` int(11) NOT NULL DEFAULT 10,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.vehicles_display: ~16 rows (approximately)
/*!40000 ALTER TABLE `vehicles_display` DISABLE KEYS */;
INSERT INTO `vehicles_display` (`ID`, `name`, `model`, `profit`, `price`) VALUES
	(1, 'Adder', 'adder', 1, 1300000),
	(2, 'Reaper', 'reaper', 1, 225000),
	(3, 'Sultan RS', 'sultanrs', 1, 53444),
	(4, 'Alpha', 'alpha', 1, 31000),
	(5, 'Reaper', 'reaper', 1, 225000),
	(6, 'Entity XF', 'entityxf', 1, 645400),
	(7, 'Bati 801RR', 'bati2', 1, 35900),
	(8, 'Bati 801RR', 'bati2', 1, 35900),
	(9, 'Comet', 'comet2', 1, 74600),
	(10, 'Coquette', 'coquette', 1, 110500),
	(11, 'Adder', 'adder', 1, 1300000),
	(12, 'Nero Custom', 'nero2', 1, 1424000),
	(13, 'Tyrus', 'tyrus', 1, 1419000),
	(14, 'Vagner', 'vagner', 1, 1197500),
	(15, 'F150 raptor', 'f150', 1, 78000),
	(16, 'F150 raptor', 'f150', 1, 78000);
/*!40000 ALTER TABLE `vehicles_display` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vehicles_for_sale
DROP TABLE IF EXISTS `vehicles_for_sale`;
CREATE TABLE IF NOT EXISTS `vehicles_for_sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) NOT NULL,
  `vehicleProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.vehicles_for_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicles_for_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_for_sale` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vehicle_categories
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.vehicle_categories: ~15 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('cheap', 'Bangers'),
	('com', 'Commercial'),
	('compacts', 'Compacts'),
	('coupes', 'Coupés'),
	('limited', 'Super Rare'),
	('motorcycles', 'Motorcycles'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans'),
	('vip', 'For V.I.Ps');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vehicle_log
DROP TABLE IF EXISTS `vehicle_log`;
CREATE TABLE IF NOT EXISTS `vehicle_log` (
  `seller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `buyer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.vehicle_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_log` ENABLE KEYS */;

-- Dumping structure for table fxzsql.vehicle_sold
DROP TABLE IF EXISTS `vehicle_sold`;
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fxzsql.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table fxzsql.warns
DROP TABLE IF EXISTS `warns`;
CREATE TABLE IF NOT EXISTS `warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `license` varchar(50) NOT NULL,
  `reason` text NOT NULL,
  `warnedby` varchar(50) NOT NULL,
  `warnedtime` bigint(20) NOT NULL DEFAULT unix_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table fxzsql.warns: ~0 rows (approximately)
/*!40000 ALTER TABLE `warns` DISABLE KEYS */;
/*!40000 ALTER TABLE `warns` ENABLE KEYS */;

-- Dumping structure for table fxzsql.weed_plants
DROP TABLE IF EXISTS `weed_plants`;
CREATE TABLE IF NOT EXISTS `weed_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stage` varchar(50) COLLATE utf8mb4_bin DEFAULT 'stage-a',
  `sort` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text COLLATE utf8mb4_bin DEFAULT NULL,
  `isDead` int(11) DEFAULT 0,
  `isFinished` int(11) DEFAULT 0,
  `finished_time` bigint(20) DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AVG_ROW_LENGTH=273;

-- Dumping data for table fxzsql.weed_plants: ~0 rows (approximately)
/*!40000 ALTER TABLE `weed_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `weed_plants` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
