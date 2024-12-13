-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2024 at 05:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whoosh-flight`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `code`, `name`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SGA', 'Singapore Air', 'airlines/01JEP68ZFP5W5MNE2XN4AWTKBK.svg', NULL, '2024-12-09 10:08:07', '2024-12-09 10:08:07'),
(2, 'EMR', 'Emirates Fly', 'airlines/01JEP6AG27373MMJW124BZGWDG.svg', NULL, '2024-12-09 10:08:57', '2024-12-09 10:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` bigint UNSIGNED NOT NULL,
  `iata_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `iata_code`, `name`, `image`, `city`, `country`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'LBK', 'Lombok International Airport', 'airports/01JEP5M1S7EWCAAHF9RYY8NP8Q.png', 'Lombok', 'Indonesia', NULL, '2024-12-09 09:56:41', '2024-12-09 09:56:41'),
(2, 'DPS', 'Denpasar International Airport', 'airports/01JEQZDBXHE1VAY3XBS2S2WNXC.png', 'Denpasar', 'Indonesia', NULL, '2024-12-10 02:46:39', '2024-12-10 02:46:39'),
(3, 'CGK', 'Jakarta Airport', 'airports/01JEVCDM1YS5FTB5N1NN0TZXB9.png', 'Jakarta', 'Indonesia', NULL, '2024-12-11 10:31:43', '2024-12-11 10:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `image`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'facilities/01JEP6VSGKQPR53WYCYMS4AJME.svg', 'Bagage', '20kg', NULL, '2024-12-09 10:18:23', '2024-12-09 10:18:23'),
(2, 'facilities/01JEP6XWAK92JA8JN3MFCTQSSQ.svg', 'Wifi', '15 Mbps', NULL, '2024-12-09 10:19:32', '2024-12-09 10:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint UNSIGNED NOT NULL,
  `flight_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airline_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_number`, `airline_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'SGR1122', 1, NULL, '2024-12-10 04:40:55', '2024-12-11 10:09:42'),
(6, 'EMR5544', 2, NULL, '2024-12-11 10:07:35', '2024-12-11 10:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `flight_classes`
--

CREATE TABLE `flight_classes` (
  `id` bigint UNSIGNED NOT NULL,
  `flight_id` bigint UNSIGNED NOT NULL,
  `class_type` enum('economy','business') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `total_seats` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight_classes`
--

INSERT INTO `flight_classes` (`id`, `flight_id`, `class_type`, `price`, `total_seats`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 5, 'economy', 500000, 48, NULL, '2024-12-10 04:40:55', '2024-12-11 12:32:38'),
(6, 6, 'business', 3000000, 24, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(7, 5, 'business', 1000000, 24, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `flight_class_facility`
--

CREATE TABLE `flight_class_facility` (
  `id` bigint UNSIGNED NOT NULL,
  `flight_class_id` bigint UNSIGNED NOT NULL,
  `facility_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight_class_facility`
--

INSERT INTO `flight_class_facility` (`id`, `flight_class_id`, `facility_id`, `created_at`, `updated_at`) VALUES
(10, 5, 1, NULL, NULL),
(11, 6, 1, NULL, NULL),
(12, 6, 2, NULL, NULL),
(13, 7, 1, NULL, NULL),
(14, 7, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flight_seats`
--

CREATE TABLE `flight_seats` (
  `id` bigint UNSIGNED NOT NULL,
  `flight_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `row` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type` enum('economy','business') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight_seats`
--

INSERT INTO `flight_seats` (`id`, `flight_id`, `name`, `row`, `column`, `class_type`, `is_available`, `deleted_at`, `created_at`, `updated_at`) VALUES
(49, 5, 'A1', '1', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(50, 5, 'A2', '1', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(51, 5, 'A3', '1', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(52, 5, 'A4', '1', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(53, 5, 'A5', '1', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(54, 5, 'A6', '1', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(55, 5, 'B1', '2', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(56, 5, 'B2', '2', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(57, 5, 'B3', '2', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(58, 5, 'B4', '2', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(59, 5, 'B5', '2', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(60, 5, 'B6', '2', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(61, 5, 'C1', '3', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(62, 5, 'C2', '3', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(63, 5, 'C3', '3', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(64, 5, 'C4', '3', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(65, 5, 'C5', '3', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(66, 5, 'C6', '3', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(67, 5, 'D1', '4', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(68, 5, 'D2', '4', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(69, 5, 'D3', '4', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(70, 5, 'D4', '4', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(71, 5, 'D5', '4', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(72, 5, 'D6', '4', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(73, 5, 'E1', '5', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(74, 5, 'E2', '5', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(75, 5, 'E3', '5', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(76, 5, 'E4', '5', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(77, 5, 'E5', '5', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(78, 5, 'E6', '5', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(79, 5, 'F1', '6', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(80, 5, 'F2', '6', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(81, 5, 'F3', '6', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(82, 5, 'F4', '6', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(83, 5, 'F5', '6', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(84, 5, 'F6', '6', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(85, 5, 'G1', '7', '1', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(86, 5, 'G2', '7', '2', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(87, 5, 'G3', '7', '3', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(88, 5, 'G4', '7', '4', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(89, 5, 'G5', '7', '5', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(90, 5, 'G6', '7', '6', 'economy', 1, NULL, '2024-12-10 04:55:45', '2024-12-10 04:55:45'),
(91, 5, 'H1', '8', '1', 'economy', 1, NULL, '2024-12-10 04:55:46', '2024-12-10 04:55:46'),
(92, 5, 'H2', '8', '2', 'economy', 1, NULL, '2024-12-10 04:55:46', '2024-12-10 04:55:46'),
(93, 5, 'H3', '8', '3', 'economy', 1, NULL, '2024-12-10 04:55:46', '2024-12-10 04:55:46'),
(94, 5, 'H4', '8', '4', 'economy', 1, NULL, '2024-12-10 04:55:46', '2024-12-10 04:55:46'),
(95, 6, 'A1', '1', '1', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(96, 6, 'A2', '1', '2', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(97, 6, 'A3', '1', '3', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(98, 6, 'A4', '1', '4', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(99, 6, 'B1', '2', '1', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(100, 6, 'B2', '2', '2', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(101, 6, 'B3', '2', '3', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(102, 6, 'B4', '2', '4', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(103, 6, 'C1', '3', '1', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(104, 6, 'C2', '3', '2', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(105, 6, 'C3', '3', '3', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(106, 6, 'C4', '3', '4', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(107, 6, 'D1', '4', '1', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(108, 6, 'D2', '4', '2', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(109, 6, 'D3', '4', '3', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(110, 6, 'D4', '4', '4', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(111, 6, 'E1', '5', '1', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(112, 6, 'E2', '5', '2', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(113, 6, 'E3', '5', '3', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(114, 6, 'E4', '5', '4', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(115, 6, 'F1', '6', '1', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(116, 6, 'F2', '6', '2', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(117, 6, 'F3', '6', '3', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(118, 6, 'F4', '6', '4', 'business', 1, NULL, '2024-12-11 10:07:36', '2024-12-11 10:07:36'),
(119, 5, 'A1', '1', '1', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(120, 5, 'A2', '1', '2', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(121, 5, 'A3', '1', '3', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(122, 5, 'A4', '1', '4', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(123, 5, 'B1', '2', '1', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(124, 5, 'B2', '2', '2', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(125, 5, 'B3', '2', '3', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(126, 5, 'B4', '2', '4', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(127, 5, 'C1', '3', '1', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(128, 5, 'C2', '3', '2', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(129, 5, 'C3', '3', '3', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(130, 5, 'C4', '3', '4', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(131, 5, 'D1', '4', '1', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(132, 5, 'D2', '4', '2', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(133, 5, 'D3', '4', '3', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(134, 5, 'D4', '4', '4', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(135, 5, 'E1', '5', '1', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(136, 5, 'E2', '5', '2', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(137, 5, 'E3', '5', '3', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(138, 5, 'E4', '5', '4', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(139, 5, 'F1', '6', '1', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(140, 5, 'F2', '6', '2', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(141, 5, 'F3', '6', '3', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38'),
(142, 5, 'F4', '6', '4', 'business', 1, NULL, '2024-12-11 12:32:38', '2024-12-11 12:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `flight_segments`
--

CREATE TABLE `flight_segments` (
  `id` bigint UNSIGNED NOT NULL,
  `sequence` int NOT NULL,
  `flight_id` bigint UNSIGNED NOT NULL,
  `airport_id` bigint UNSIGNED NOT NULL,
  `time` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight_segments`
--

INSERT INTO `flight_segments` (`id`, `sequence`, `flight_id`, `airport_id`, `time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 1, 5, 2, '2024-12-25 18:00:00', NULL, '2024-12-10 04:40:55', '2024-12-11 09:30:43'),
(9, 2, 5, 1, '2024-12-25 20:00:00', NULL, '2024-12-10 05:15:58', '2024-12-11 09:30:43'),
(10, 1, 6, 1, '2024-12-13 11:00:00', NULL, '2024-12-11 10:07:35', '2024-12-11 10:07:35'),
(11, 2, 6, 2, '2024-12-13 12:00:00', NULL, '2024-12-11 10:07:35', '2024-12-11 10:07:35'),
(12, 3, 6, 3, '2024-12-13 18:00:00', NULL, '2024-12-11 10:07:36', '2024-12-11 10:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_09_160242_create_airports_table', 1),
(5, '2024_12_09_160243_create_airlines_table', 1),
(6, '2024_12_09_160244_create_flights_table', 1),
(7, '2024_12_09_160245_create_flight_classes_table', 1),
(8, '2024_12_09_160245_create_flight_segments_table', 1),
(9, '2024_12_09_160246_create_flight_seats_table', 1),
(10, '2024_12_09_160248_create_facilities_table', 1),
(11, '2024_12_09_160324_create_flight_class_facility_table', 1),
(12, '2024_12_09_160404_create_promo_codes_table', 1),
(13, '2024_12_09_160430_create_transactions_table', 1),
(14, '2024_12_09_160453_create_transaction_passengers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int NOT NULL,
  `valid_until` datetime NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `code`, `discount_type`, `discount`, `valid_until`, `is_used`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'NEWYEAR', 'fixed', 110000, '2024-12-31 05:30:00', 1, NULL, '2024-12-09 10:32:01', '2024-12-12 21:41:35'),
(2, 'CHRISTMAS', 'percentage', 10, '2024-12-26 00:00:00', 0, NULL, '2024-12-09 10:34:11', '2024-12-12 21:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JOgpSzSr1UvMdPTk5f5EqzaXYr1BZe8DsrArUUsx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3RTcFVDM21yR0YxRG5UYldZQ2tXZnpiY3hCV0pvZkp2Y0VLakpDayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly9lMDEzLTE4Mi0zLTQyLTE5Ny5uZ3Jvay1mcmVlLmFwcC9jaGVjay1ib29raW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734065472),
('O6gKAeMUgSlXFr0X7EkwBOEWuuLH6wts8iaEWxfy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTJIekdFNTVrblVXZGRKV216QTh3RW9MS3A1TTFtRHJvMmROQ2JFdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHA6Ly82M2NmLTI0MDQtYzAtNWM0MC0wMC0zYzU2LWIxNWUubmdyb2stZnJlZS5hcHAvZmxpZ2h0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734064972),
('TDY1khcuF2vwCV9srIsSZeJPIMBvKJGaR3cTTO98', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiNEhpNjdhR2dQbGZ1cFJNMXF5UUttb2RkVUdleEpyRnpTRFBlTjBHdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGVjay1ib29raW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRHanV6MFlxZHFwNDZMZkdPdFZPdFhPbExwM2tWVlRPbGN5RVVteHg0QS9NcWhENmwzRXBEUyI7czo4OiJmaWxhbWVudCI7YTowOnt9czoxMToidHJhbnNhY3Rpb24iO2E6MTp7czoxNToiZmxpZ2h0X2NsYXNzX2lkIjtzOjE6IjUiO319', 1734065501);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_id` bigint UNSIGNED NOT NULL,
  `flight_class_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_passengers` int NOT NULL,
  `promo_code_id` bigint UNSIGNED DEFAULT NULL,
  `payment_status` enum('pending','paid','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `subtotal` int DEFAULT NULL,
  `grandtotal` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `flight_id`, `flight_class_id`, `name`, `email`, `phone`, `number_of_passengers`, `promo_code_id`, `payment_status`, `subtotal`, `grandtotal`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'WHOOSH3337', 5, 7, 'Jack', 'jack@jack.com', '081212112121', 1, 1, 'pending', 1000000, 987900, '2024-12-12 18:58:54', '2024-12-12 16:27:12', '2024-12-12 18:58:54'),
(2, 'WHOOSH1999', 5, 7, 'Jack', 'jack@jack.com', '081212112121', 1, 2, 'pending', 1000000, 999000, '2024-12-12 18:58:54', '2024-12-12 16:35:34', '2024-12-12 18:58:54'),
(3, 'WHOOSH7042', 5, 5, 'Bumi', 'bumi@bulat.com', '12345', 1, 1, 'pending', 500000, 432900, '2024-12-12 18:58:27', '2024-12-12 16:45:24', '2024-12-12 18:58:27'),
(4, 'WHOOSH3179', 5, 5, 'Ujang', 'jang@ujang.com', '8888777', 1, 2, 'pending', 500000, 499500, '2024-12-12 18:58:54', '2024-12-12 16:53:03', '2024-12-12 18:58:54'),
(5, 'WHOOSH3867', 5, 5, 'Ujang', 'jang@ujang.com', '8888777', 1, NULL, 'pending', 500000, 555000, '2024-12-12 18:58:44', '2024-12-12 16:57:29', '2024-12-12 18:58:44'),
(6, 'WHOOSH7638', 5, 5, 'Ujang', 'jang@ujang.com', '8888777', 1, NULL, 'pending', 500000, 555000, '2024-12-12 18:58:54', '2024-12-12 16:59:07', '2024-12-12 18:58:54'),
(7, 'WHOOSH5462', 5, 7, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:58:54', '2024-12-12 17:08:12', '2024-12-12 18:58:54'),
(8, 'WHOOSH7524', 5, 7, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:58:54', '2024-12-12 17:23:51', '2024-12-12 18:58:54'),
(9, 'WHOOSH7268', 5, 5, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 500000, 555000, '2024-12-12 18:58:54', '2024-12-12 17:27:48', '2024-12-12 18:58:54'),
(10, 'WHOOSH4638', 5, 5, 'Simon', 'simon@kk.com', '0123427737', 1, 2, 'pending', 500000, 499500, '2024-12-12 18:58:54', '2024-12-12 17:30:38', '2024-12-12 18:58:54'),
(11, 'WHOOSH4803', 5, 7, 'Jhon', 'Jhon@doe.com', '085266669999', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:58:54', '2024-12-12 17:32:26', '2024-12-12 18:58:54'),
(12, 'WHOOSH7053', 5, 7, 'Jhon', 'Jhon@doe.com', '085266669999', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:34', '2024-12-12 17:34:02', '2024-12-12 18:59:34'),
(13, 'WHOOSH2001', 5, 7, 'Iqbal Ngapak', 'mira@ra.com', '081233334444', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:34', '2024-12-12 17:35:04', '2024-12-12 18:59:34'),
(14, 'WHOOSH8404', 5, 7, 'Iqbal Ngapak', 'mira@ra.com', '081233334444', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:34', '2024-12-12 17:35:48', '2024-12-12 18:59:34'),
(15, 'WHOOSH4014', 5, 7, 'Jhon', 'Jhon@doe.com', '089977776666', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:34', '2024-12-12 17:39:08', '2024-12-12 18:59:34'),
(16, 'WHOOSH7031', 6, 6, 'Jhon', 'Jhon@doe.com', '089955554444', 1, NULL, 'pending', 3000000, 3330000, '2024-12-12 18:59:34', '2024-12-12 17:44:21', '2024-12-12 18:59:34'),
(17, 'WHOOSH3977', 5, 5, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 500000, 555000, '2024-12-12 18:59:34', '2024-12-12 17:50:39', '2024-12-12 18:59:34'),
(18, 'WHOOSH6156', 5, 7, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:34', '2024-12-12 17:51:25', '2024-12-12 18:59:34'),
(19, 'WHOOSH1065', 5, 5, 'Panjul', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 500000, 555000, '2024-12-12 18:59:34', '2024-12-12 17:53:48', '2024-12-12 18:59:34'),
(20, 'WHOOSH8866', 5, 7, 'Panjul', 'simon@kk.com', '0123427737', 1, 1, 'pending', 1000000, 987900, '2024-12-12 18:59:34', '2024-12-12 18:09:42', '2024-12-12 18:59:34'),
(21, 'WHOOSH3573', 5, 7, 'Panjul', 'simon@kk.com', '0123427737', 1, 2, 'pending', 1000000, 999000, '2024-12-12 18:59:34', '2024-12-12 18:16:01', '2024-12-12 18:59:34'),
(22, 'WHOOSH9121', 5, 7, 'Panjul', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:45', '2024-12-12 18:27:40', '2024-12-12 18:59:45'),
(23, 'WHOOSH5749', 5, 7, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 1000000, 1110000, '2024-12-12 18:59:45', '2024-12-12 18:39:02', '2024-12-12 18:59:45'),
(24, 'WHOOSH4207', 5, 5, 'Simon', 'simon@kk.com', '0123427737', 1, NULL, 'pending', 500000, 555000, '2024-12-12 18:59:45', '2024-12-12 18:49:08', '2024-12-12 18:59:45'),
(25, 'WHOOSH2897', 5, 5, 'Simon', 'simon@kk.com', '0123427737', 1, 1, 'pending', 500000, 432900, '2024-12-12 18:59:45', '2024-12-12 18:51:53', '2024-12-12 18:59:45'),
(26, 'WHOOSH7490', 6, 6, 'Simon', 'simon@kk.com', '0123427737', 1, 2, 'pending', 3000000, 2997000, NULL, '2024-12-12 19:00:31', '2024-12-12 19:00:31'),
(27, 'WHOOSH6315', 5, 7, 'Ujang', 'jang@ujang.com', '88887779999', 2, NULL, 'pending', 2000000, 2220000, NULL, '2024-12-12 19:02:56', '2024-12-12 19:02:56'),
(28, 'WHOOSH8593', 5, 7, 'Jack', 'jack@jack.com', '081212112121', 1, NULL, 'pending', 1000000, 1110000, NULL, '2024-12-12 19:55:04', '2024-12-12 19:55:04'),
(29, 'WHOOSH5160', 5, 5, 'Jack', 'jack@jack.com', '081212112121', 2, NULL, 'pending', 1000000, 1110000, NULL, '2024-12-12 20:03:29', '2024-12-12 20:03:29'),
(30, 'WHOOSH8862', 6, 6, 'Jack', 'jack@jack.com', '081212112121', 1, NULL, 'pending', 3000000, 3330000, NULL, '2024-12-12 20:07:52', '2024-12-12 20:07:52'),
(31, 'WHOOSH7435', 5, 5, 'Wira', 'wira@ra.com', '08333344', 1, 1, 'pending', 500000, 432900, NULL, '2024-12-12 21:41:35', '2024-12-12 21:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_passengers`
--

CREATE TABLE `transaction_passengers` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `flight_seat_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_passengers`
--

INSERT INTO `transaction_passengers` (`id`, `transaction_id`, `flight_seat_id`, `name`, `date_of_birth`, `nationality`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 25, 50, 'Simon', '1980-11-16', 'Japan', NULL, '2024-12-12 18:51:53', '2024-12-12 18:51:53'),
(2, 26, 95, 'Simon', '1980-11-16', 'Japan', NULL, '2024-12-12 19:00:31', '2024-12-12 19:00:31'),
(3, 27, 119, 'Ujang', '2001-09-13', 'Indonesia', NULL, '2024-12-12 19:02:56', '2024-12-12 19:02:56'),
(4, 27, 120, 'Panjul', '1988-10-16', 'Singapore', NULL, '2024-12-12 19:02:56', '2024-12-12 19:02:56'),
(5, 28, 119, 'Jack', '2001-11-13', 'Singapore', NULL, '2024-12-12 19:55:04', '2024-12-12 19:55:04'),
(6, 29, 49, 'Jack', '2001-11-13', 'Singapore', NULL, '2024-12-12 20:03:29', '2024-12-12 20:03:29'),
(7, 29, 50, 'Munir', '1983-11-15', 'Indonesia', NULL, '2024-12-12 20:03:29', '2024-12-12 20:03:29'),
(8, 30, 95, 'Jack', '2001-11-13', 'Japan', NULL, '2024-12-12 20:07:52', '2024-12-12 20:07:52'),
(9, 31, 60, 'Wira', '2013-10-12', 'Singapore', NULL, '2024-12-12 21:41:35', '2024-12-12 21:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@whoosh.com', NULL, '$2y$12$Gjuz0Yqdqp46LfGOtVOtXOlLp3kVVTOlcyEUmxx4A/MqhD6l3EpDS', NULL, '2024-12-09 09:36:29', '2024-12-09 09:36:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flights_airline_id_foreign` (`airline_id`);

--
-- Indexes for table `flight_classes`
--
ALTER TABLE `flight_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_classes_flight_id_foreign` (`flight_id`);

--
-- Indexes for table `flight_class_facility`
--
ALTER TABLE `flight_class_facility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_class_facility_flight_class_id_foreign` (`flight_class_id`),
  ADD KEY `flight_class_facility_facility_id_foreign` (`facility_id`);

--
-- Indexes for table `flight_seats`
--
ALTER TABLE `flight_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_seats_flight_id_foreign` (`flight_id`);

--
-- Indexes for table `flight_segments`
--
ALTER TABLE `flight_segments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_segments_flight_id_foreign` (`flight_id`),
  ADD KEY `flight_segments_airport_id_foreign` (`airport_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_flight_id_foreign` (`flight_id`),
  ADD KEY `transactions_flight_class_id_foreign` (`flight_class_id`),
  ADD KEY `transactions_promo_code_id_foreign` (`promo_code_id`);

--
-- Indexes for table `transaction_passengers`
--
ALTER TABLE `transaction_passengers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_passengers_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_passengers_flight_seat_id_foreign` (`flight_seat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flight_classes`
--
ALTER TABLE `flight_classes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flight_class_facility`
--
ALTER TABLE `flight_class_facility`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `flight_seats`
--
ALTER TABLE `flight_seats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `flight_segments`
--
ALTER TABLE `flight_segments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transaction_passengers`
--
ALTER TABLE `transaction_passengers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flight_classes`
--
ALTER TABLE `flight_classes`
  ADD CONSTRAINT `flight_classes_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flight_class_facility`
--
ALTER TABLE `flight_class_facility`
  ADD CONSTRAINT `flight_class_facility_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_class_facility_flight_class_id_foreign` FOREIGN KEY (`flight_class_id`) REFERENCES `flight_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flight_seats`
--
ALTER TABLE `flight_seats`
  ADD CONSTRAINT `flight_seats_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flight_segments`
--
ALTER TABLE `flight_segments`
  ADD CONSTRAINT `flight_segments_airport_id_foreign` FOREIGN KEY (`airport_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flight_segments_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_flight_class_id_foreign` FOREIGN KEY (`flight_class_id`) REFERENCES `flight_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_promo_code_id_foreign` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_passengers`
--
ALTER TABLE `transaction_passengers`
  ADD CONSTRAINT `transaction_passengers_flight_seat_id_foreign` FOREIGN KEY (`flight_seat_id`) REFERENCES `flight_seats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_passengers_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
