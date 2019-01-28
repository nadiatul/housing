/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : housing

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-01-29 00:59:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agents
-- ----------------------------
DROP TABLE IF EXISTS `agents`;
CREATE TABLE `agents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of agents
-- ----------------------------
INSERT INTO `agents` VALUES ('1', 'John', 'john@yopmail.com', '0120380123', '2019-01-22 01:27:27', '2019-01-22 01:27:27');
INSERT INTO `agents` VALUES ('2', 'Gina', 'Gina@yopmail.com', '0123801923', '2019-01-22 01:27:27', '2019-01-22 01:27:27');
INSERT INTO `agents` VALUES ('3', 'Sara', 'Sara@yopmail.com', '0123128300', '2019-01-22 01:27:27', '2019-01-22 01:27:27');
INSERT INTO `agents` VALUES ('4', 'Andy', 'Andy@yopmail.com', '0123984884', '2019-01-22 01:27:27', '2019-01-22 01:27:27');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_stateId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', '', 'Johor Bahru', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('2', '', 'Tebrau', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('3', '', 'Pasir Gudang', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('4', '', 'Bukit Indah', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('5', '', 'Skudai', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('6', '', 'Kluang', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('7', '', 'Batu Pahat', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('8', '', 'Muar', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('9', '', 'Ulu Tiram', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('10', '', 'Senai', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('11', '', 'Segamat', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('12', '', 'Kulai', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('13', '', 'Kota Tinggi', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('14', '', 'Pontian Kechil', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('15', '', 'Tangkak', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('16', '', 'Bukit Bakri', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('17', '', 'Yong Peng', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('18', '', 'Pekan Nenas', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('19', '', 'Labis', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('20', '', 'Mersing', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('21', '', 'Simpang Renggam', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('22', '', 'Parit Raja', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('23', '', 'Kelapa Sawit', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('24', '', 'Buloh Kasap', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('25', '', 'Chaah', '1', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('26', '', 'Bandar / Daerah', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('27', '', 'Sungai Petani', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('28', '', 'Alor Setar', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('29', '', 'Kulim', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('30', '', 'Jitra /', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('31', '', 'Baling', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('32', '', 'Pendang', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('33', '', 'Langkawi', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('34', '', 'Yan', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('35', '', 'Sik', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('36', '', 'Kuala Nerang', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('37', '', 'Pokok Sena', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('38', '', 'Bandar Baharu', '2', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('39', '', 'Bandar/Bandaraya', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('40', '', 'Subang Jaya', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('41', '', 'Klang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('42', '', 'Ampang Jaya', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('43', '', 'Shah Alam', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('44', '', 'Petaling Jaya', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('45', '', 'Cheras', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('46', '', 'Kajang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('47', '', 'Selayang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('48', '', 'Rawang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('49', '', 'Taman Greenwood', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('50', '', 'Semenyih', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('51', '', 'Banting', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('52', '', 'Balakong', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('53', '', 'Gombak Setia', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('54', '', 'Kuala Selangor', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('55', '', 'Serendah', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('56', '', 'Bukit Beruntung', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('57', '', 'Pengkalan Kundang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('58', '', 'Jenjarom', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('59', '', 'Sungai Besar', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('60', '', 'Batu Arang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('61', '', 'Tanjung Sepat', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('62', '', 'Kuang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('63', '', 'Kuala Kubu Baharu', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('64', '', 'Batang Berjuntai', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('65', '', 'Bandar Baru Salak Tinggi', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('66', '', 'Sekinchan', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('67', '', 'Sabak', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('68', '', 'Tanjung Karang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('69', '', 'Beranang', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');
INSERT INTO `cities` VALUES ('70', '', 'Sungai Pelek', '3', '2019-01-28 01:18:35', '2019-01-28 01:18:35');

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `propertyType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titleType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bedroom` int(11) NOT NULL,
  `bathroom` int(11) NOT NULL,
  `landsize` int(11) NOT NULL,
  `rentalDuration` int(11) NOT NULL,
  `houseQuality` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `contractType` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `parking` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of houses
-- ----------------------------
INSERT INTO `houses` VALUES ('1', 'Title House 1', 'Description 1 ', '1', '20', '3', '2', '1485', '5', '8', '10', '15', '1', '1', '2', '1', '2019-01-28 02:33:30', '2019-01-28 02:33:21', '1000.00');
INSERT INTO `houses` VALUES ('2', 'Title House 2', 'Description 2', '2', '20', '3', '2', '2000', '5', '8', '10', '15', '1', '2', '2', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '2030.00');
INSERT INTO `houses` VALUES ('3', 'Title House 3', 'Description 3', '2', '20', '3', '2', '1500', '5', '8', '10', '15', '1', '2', '2', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '2000.00');
INSERT INTO `houses` VALUES ('4', 'Title House 4', 'Description 4', '2', '20', '3', '3', '500', '5', '8', '10', '16', '1', '1', '2', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1000.00');
INSERT INTO `houses` VALUES ('5', 'Title House 5', 'Description 5', '2', '20', '3', '3', '2000', '5', '7', '10', '16', '1', '2', '2', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '2000.00');
INSERT INTO `houses` VALUES ('6', 'Title House 6', 'Description 6', '2', '20', '3', '3', '1000', '5', '7', '11', '16', '1', '2', '2', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '3000.00');
INSERT INTO `houses` VALUES ('7', 'Title House 7', 'Description 7', '2', '20', '3', '3', '1025', '5', '7', '11', '16', '1', '2', '2', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1000.00');
INSERT INTO `houses` VALUES ('8', 'Title House 8', 'Description 8', '3', '20', '3', '3', '1000', '5', '7', '11', '16', '1', '1', '0', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '300.00');
INSERT INTO `houses` VALUES ('9', 'Title House 9', 'Description 9', '3', '20', '3', '3', '1000', '5', '7', '11', '16', '3', '1', '3', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1500.00');
INSERT INTO `houses` VALUES ('10', 'Title House 10', 'Description 10', '3', '20', '3', '3', '1000', '5', '8', '11', '16', '3', '3', '3', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '3000.00');
INSERT INTO `houses` VALUES ('11', 'Title House 11', 'Description 11', '3', '19', '3', '3', '1000', '5', '8', '11', '16', '3', '3', '3', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '2000.00');
INSERT INTO `houses` VALUES ('12', 'Title House 12', 'Description 12', '2', '19', '3', '3', '1000', '5', '8', '11', '16', '3', '3', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1000.00');
INSERT INTO `houses` VALUES ('13', 'Title House 13', 'Description 13', '2', '19', '3', '1', '1000', '4', '7', '10', '15', '1', '3', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '3000.00');
INSERT INTO `houses` VALUES ('14', 'Title House 14', 'Description 14', '1', '19', '3', '1', '1000', '6', '9', '11', '16', '3', '3', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1500.00');
INSERT INTO `houses` VALUES ('15', 'Title House 15', 'Description 15', '1', '19', '3', '1', '1000', '6', '9', '11', '15', '3', '1', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1000.00');
INSERT INTO `houses` VALUES ('16', 'Title House 16', 'Description 16', '3', '19', '3', '1', '1000', '6', '9', '12', '15', '2', '1', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '2000.00');
INSERT INTO `houses` VALUES ('17', 'Title House 17', 'Description 17', '3', '19', '3', '4', '1000', '6', '9', '12', '15', '2', '4', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '3000.00');
INSERT INTO `houses` VALUES ('18', 'Title House 18', 'Description 18', '3', '19', '3', '4', '1000', '6', '9', '12', '15', '2', '4', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1000.00');
INSERT INTO `houses` VALUES ('19', 'Title House 19', 'Description 19', '3', '19', '3', '4', '1000', '6', '9', '12', '15', '2', '4', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '2000.00');
INSERT INTO `houses` VALUES ('20', 'Title House 20', 'Description 20', '1', '19', '3', '4', '1000', '6', '9', '12', '15', '2', '4', '1', '0', '2019-01-28 02:33:30', '2019-01-28 02:33:30', '1000.00');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_01_27_162413_create_houses_table', '2');
INSERT INTO `migrations` VALUES ('4', '2019_01_27_170950_create_states_table', '2');
INSERT INTO `migrations` VALUES ('5', '2019_01_27_171357_create_cities_table', '2');
INSERT INTO `migrations` VALUES ('6', '2019_01_27_171629_create_agents_table', '2');
INSERT INTO `migrations` VALUES ('7', '2019_01_27_190817_create_system_parameter_table', '3');
INSERT INTO `migrations` VALUES ('8', '2019_01_27_191033_create_parameter_table', '3');

-- ----------------------------
-- Table structure for parameter
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_systemParameterId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES ('1', '1', 'land', 'Land', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('2', '1', 'commercial', 'Commercial', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('3', '1', 'residential', 'Residential', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('4', '2', 'threemonth', '3 months', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('5', '2', 'sixmonth', '6 months', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('6', '2', 'twelvemonth', '12 months', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('7', '3', 'poor', 'Poor', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('8', '3', 'moderate', 'Moderate', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('9', '3', 'high', 'High', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('10', '4', '1star', '1', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('11', '4', '2star', '2', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('12', '4', '3star', '3', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('13', '4', '4star', '4', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('14', '4', '5star', '5', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('15', '5', 'Purchase Agreement', 'Purchase Agreement', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('16', '5', 'Real Estate Assignment Contract', 'Real Estate Assignment Contract', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('17', '5', 'Lease Agreement', 'Lease Agreement', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('18', '5', 'Power of Attorney', 'Power of Attorney', '2019-01-28 03:29:02', '2019-01-28 03:29:02');
INSERT INTO `parameter` VALUES ('19', '6', 'leasehold', 'Leasehold', '2019-01-28 05:58:51', '2019-01-28 05:58:55');
INSERT INTO `parameter` VALUES ('20', '6', 'freehold', 'Freehold', '2019-01-28 05:58:57', '2019-01-28 05:59:00');

-- ----------------------------
-- Table structure for states
-- ----------------------------
DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of states
-- ----------------------------
INSERT INTO `states` VALUES ('1', 'JO', 'Johor', '2019-01-28 01:23:06', '2019-01-28 01:23:06');
INSERT INTO `states` VALUES ('2', 'KE', 'Kedah', '2019-01-28 01:23:06', '2019-01-28 01:23:06');
INSERT INTO `states` VALUES ('3', 'SE', 'Selangor', '2019-01-28 01:23:06', '2019-01-28 01:23:06');

-- ----------------------------
-- Table structure for system_parameter
-- ----------------------------
DROP TABLE IF EXISTS `system_parameter`;
CREATE TABLE `system_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of system_parameter
-- ----------------------------
INSERT INTO `system_parameter` VALUES ('1', '1', 'propertyType', '2019-01-28 03:29:11', '2019-01-28 03:29:11');
INSERT INTO `system_parameter` VALUES ('2', '2', 'rentalDuration', '2019-01-28 03:29:11', '2019-01-28 03:29:11');
INSERT INTO `system_parameter` VALUES ('3', '3', 'houseQuality', '2019-01-28 03:29:11', '2019-01-28 03:29:11');
INSERT INTO `system_parameter` VALUES ('4', '4', 'rating', '2019-01-28 03:29:11', '2019-01-28 03:29:11');
INSERT INTO `system_parameter` VALUES ('5', '5', 'contractType', '2019-01-28 03:29:11', '2019-01-28 03:29:11');
INSERT INTO `system_parameter` VALUES ('6', '6', 'titleType', '2019-01-28 03:29:11', '2019-01-28 03:29:11');
