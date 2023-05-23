-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2022 at 12:16 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickied_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Quickie Delivery'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.quickie.com.do'),
(22, 'mail_port', '465'),
(23, 'mail_username', 'noreplay@quickie.com.do'),
(24, 'mail_password', '4*]x6#*rO)yb'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'noreplay@quickie.com.do'),
(27, 'mail_from_name', 'Quickie Delivery'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '020a2dd4-4277-425a-b450-426663f52633'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', '0'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '0'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '18'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'contabilidad@quickie.com.do'),
(113, 'paypal_password', 'Puff2022*'),
(114, 'paypal_secret', 'EObCfbjOvXPlNyDaZ9AVUY0hCIRfiXPHIltcHzXV593RhwJGsS2eDy0pLPot55JCHv3guULs_T0-NNo1'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#00B1FF'),
(117, 'main_dark_color', '#00B1FF'),
(118, 'second_color', '#000000'),
(119, 'second_dark_color', '#E7F6F8'),
(120, 'accent_color', '#ADC4C8'),
(121, 'accent_dark_color', '#ADC4C8'),
(122, 'scaffold_dark_color', '#000000'),
(123, 'scaffold_color', '#EBEBEB'),
(124, 'google_maps_key', 'AIzaSyABaZKeu2JnoUsD3L1e3czz22aKOB0Vf-I'),
(125, 'mobile_language', 'es'),
(126, 'app_version', '1.4.0'),
(127, 'enable_version', '1'),
(128, 'distance_unit', 'km'),
(129, 'paypal_mode', '1'),
(130, 'paypal_app_id', 'Quickie'),
(131, 'currency_right', '0'),
(132, 'default_currency_id', '1'),
(133, 'default_currency_code', 'USD'),
(134, 'default_currency_decimal_digits', '2'),
(135, 'default_currency_rounding', '0'),
(136, 'ticket_category_photo', 'ticket_category_photo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(7, 'Barcelo', '<p>Barcelo<br></p>', '2022-01-31 06:00:39', '2022-01-31 06:00:39'),
(8, 'Presidente', '<p>Presidente<br></p>', '2022-01-31 06:00:46', '2022-01-31 06:00:46'),
(9, 'Coca Cola', '<p>Coca Cola<br></p>', '2022-01-31 06:01:41', '2022-01-31 06:01:41'),
(10, 'Don Julio', '<p>Don Julio<br></p>', '2022-01-31 15:54:19', '2022-01-31 15:54:19'),
(11, 'Patron', '<p>Patron</p>', '2022-01-31 15:54:28', '2022-01-31 15:54:28'),
(12, 'Corona', '<p>Corona</p>', '2022-01-31 15:54:42', '2022-01-31 15:54:42'),
(13, 'Grey Goose', '<p>Grey Goose<br></p>', '2022-01-31 15:55:39', '2022-01-31 15:55:39'),
(14, 'Stoli', '<p>Stoli<br></p>', '2022-01-31 15:56:12', '2022-01-31 15:56:12'),
(15, 'Brugal', '<p>Brugal<br></p>', '2022-01-31 15:56:57', '2022-01-31 15:56:57'),
(16, 'Durex', '<p>Durex</p>', '2022-01-31 15:57:18', '2022-01-31 15:57:18'),
(17, 'Arturo Fuente', '<p>Arturo Fuente<br></p>', '2022-01-31 16:05:35', '2022-01-31 16:05:35'),
(18, 'Marlboro', '<p>Marlboro<br></p>', '2022-01-31 16:06:33', '2022-01-31 16:06:33'),
(19, 'Newport', '<p>Newport&nbsp;<br></p>', '2022-01-31 16:07:03', '2022-01-31 16:07:03'),
(20, 'Ice', '<p>Ice<br></p>', '2022-01-31 16:19:46', '2022-01-31 16:19:46'),
(21, 'Ocean Spray', '<p>Ocean Spray<br></p>', '2022-01-31 16:20:24', '2022-01-31 16:20:24'),
(22, 'Buchanan´s', '<p>Buchanan´s<br></p>', '2022-01-31 16:27:02', '2022-01-31 16:27:02'),
(23, 'Johnnie Walker', '<p>Johnnie Walker<br></p>', '2022-01-31 16:27:26', '2022-01-31 16:27:26'),
(24, 'Lays', '<p>Lays<br></p>', '2022-01-31 16:30:28', '2022-01-31 16:30:28'),
(25, 'Serpis', '<p>Serpis<br></p>', '2022-01-31 16:31:54', '2022-01-31 16:31:54'),
(26, 'Cheetos', '<p>Cheetos<br></p>', '2022-01-31 16:32:02', '2022-01-31 16:32:02'),
(27, 'Vasos', '<p>Vasos</p>', '2022-01-31 17:04:05', '2022-01-31 17:04:05'),
(28, 'Blue Moon', '<p>Blue Moon</p>', '2022-03-17 15:24:43', '2022-03-17 15:24:43'),
(29, 'Ruskov', '<p>Ruskov<br></p>', '2022-03-17 15:29:12', '2022-03-17 15:29:12'),
(30, 'Jose Cuervo', '<p>Jose Cuervo<br></p>', '2022-04-07 14:23:04', '2022-04-07 14:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 44, 12, 2, '2022-02-11 08:13:30', '2022-02-11 08:13:30'),
(15, 44, 16, 3, '2022-02-23 05:41:42', '2022-02-23 05:42:38'),
(16, 44, 16, 3, '2022-02-23 05:42:45', '2022-02-23 05:42:45'),
(17, 44, 16, 4, '2022-02-23 05:42:50', '2022-02-23 05:42:50'),
(18, 44, 16, 1, '2022-02-23 05:52:43', '2022-02-23 05:52:43'),
(19, 44, 16, 1, '2022-02-23 05:52:48', '2022-02-23 05:52:48'),
(93, 62, 21, 1, '2022-03-11 20:02:48', '2022-03-11 20:02:48'),
(94, 45, 21, 1, '2022-03-11 20:09:32', '2022-03-11 20:09:32'),
(230, 41, 17, 1, '2022-03-29 16:49:58', '2022-03-29 16:49:58'),
(238, 46, 26, 1, '2022-04-14 22:25:45', '2022-04-14 22:25:45'),
(239, 42, 30, 9, '2022-04-25 19:15:30', '2022-04-25 19:15:43'),
(240, 42, 30, 2, '2022-04-25 19:15:40', '2022-04-25 19:15:40'),
(281, 55, 45, 1, '2022-08-28 05:25:16', '2022-08-28 05:25:16'),
(282, 42, 45, 1, '2022-08-28 05:25:25', '2022-08-28 05:25:25'),
(332, 61, 46, 1, '2022-09-03 08:18:03', '2022-09-03 08:18:03'),
(333, 44, 46, 1, '2022-09-03 08:18:10', '2022-09-03 08:18:10'),
(335, 41, 47, 1, '2022-09-29 11:42:54', '2022-09-29 11:42:54'),
(336, 42, 48, 1, '2022-10-01 01:46:22', '2022-10-01 01:46:22'),
(337, 58, 48, 1, '2022-10-02 18:33:08', '2022-10-02 18:33:08'),
(353, 56, 51, 1, '2022-10-08 10:12:43', '2022-10-08 10:12:43'),
(355, 55, 51, 2, '2022-10-08 10:13:33', '2022-10-08 10:13:33'),
(356, 41, 51, 1, '2022-10-10 04:46:12', '2022-10-10 04:46:12'),
(357, 42, 51, 1, '2022-10-10 07:19:16', '2022-10-10 07:19:16'),
(358, 41, 51, 0, '2022-10-10 12:17:48', '2022-10-10 12:17:48'),
(359, 52, 50, 1, '2022-10-10 16:37:42', '2022-10-10 16:37:42'),
(360, 52, 50, 0, '2022-10-10 16:39:22', '2022-10-10 16:39:22'),
(361, 52, 50, 3, '2022-10-10 17:38:28', '2022-10-10 17:38:28'),
(362, 52, 50, 4, '2022-10-10 18:32:59', '2022-10-10 18:32:59'),
(363, 41, 8, 1, '2022-10-10 22:45:29', '2022-10-10 22:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `cart_options`
--

CREATE TABLE `cart_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(8, 'Ron', '<p>Rones<br></p>', '2022-01-31 05:55:10', '2022-04-12 22:34:13'),
(9, 'Tequila', '<p>Tequilas<br></p>', '2022-01-31 05:57:12', '2022-04-12 22:34:05'),
(10, 'Cerveza', '<p>Cervezas</p>', '2022-01-31 05:54:32', '2022-04-12 22:34:45'),
(13, 'Bag', '<p>Bag</p>', '2022-01-31 05:55:54', '2022-01-31 05:55:54'),
(14, 'Vodka', '<p>Vodkas</p>', '2022-01-31 05:52:38', '2022-04-12 22:33:46'),
(15, 'Mezcla', '<p>Mezclas<br></p>', '2022-01-31 05:57:34', '2022-04-12 22:34:24'),
(16, 'Miscelaneos', '<p>Miscelaneos<br></p>', '2022-01-31 05:58:45', '2022-01-31 05:58:45'),
(17, 'Whisky', '<p>Whisky<br></p>', '2022-01-31 05:59:30', '2022-04-12 22:33:37'),
(18, 'Vino', '<p>Vinos</p>', '2022-02-27 19:36:42', '2022-04-12 22:33:56'),
(19, 'Cigarro', '<p>Cigarro</p>', '2022-04-22 19:06:16', '2022-04-22 19:06:16'),
(20, 'Cigarrillo', '<p>Cigarrillo<br></p>', '2022-04-22 19:06:42', '2022-04-22 19:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 15:50:48', '2019-10-22 15:50:48'),
(2, 'Peso Dominicano', '$', 'DOP', 2, NULL, '2022-06-13 17:10:42', '2022-06-13 17:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 21:30:00', '2019-09-06 21:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 21:43:58', '2019-09-06 21:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 21:49:22', '2019-09-06 21:49:22'),
(7, 'verifiedPhone', 'text', NULL, 1, 1, 0, 6, 3, 'App\\Models\\User', '2019-09-06 21:49:22', '2019-09-06 21:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-06 21:52:30', '2019-09-06 21:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-06 21:52:30', '2019-10-16 19:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-06 21:52:30', '2019-10-16 19:32:35'),
(32, '+136 226 5660', '+136 226 5660', 4, 'App\\Models\\User', 1, '2019-09-06 21:53:58', '2019-09-27 08:12:04'),
(33, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 1, '2019-09-06 21:53:58', '2019-10-16 19:23:53'),
(34, '569 Braxton Street Cortland, IL 60112', '569 Braxton Street Cortland, IL 60112', 6, 'App\\Models\\User', 1, '2019-09-06 21:53:58', '2019-10-16 19:23:53'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 17:21:32', '2019-10-17 23:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 17:21:32', '2019-10-17 23:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 17:21:32', '2019-10-17 23:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-16 19:31:46', '2019-10-16 19:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 19:31:46', '2019-10-16 19:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-16 19:31:46', '2019-10-16 19:31:46'),
(41, '+18096036000', '+18096036000', 4, 'App\\Models\\User', 5, '2019-12-15 18:49:44', '2022-06-07 17:40:41'),
(42, 'Short Bio', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-15 18:49:44', '2022-02-24 05:50:05'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-15 18:49:44', '2019-12-15 18:49:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-29 17:28:04', '2020-03-29 17:28:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 17:28:05', '2020-03-29 17:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 17:28:05', '2020-03-29 17:28:05'),
(47, NULL, NULL, 7, 'App\\Models\\User', 1, '2022-01-31 05:15:26', '2022-01-31 05:15:26'),
(48, '8095555555', '8095555555', 4, 'App\\Models\\User', 7, '2022-01-31 16:36:58', '2022-05-27 14:40:58'),
(49, NULL, '', 5, 'App\\Models\\User', 7, '2022-01-31 16:36:58', '2022-01-31 16:36:58'),
(50, NULL, NULL, 6, 'App\\Models\\User', 7, '2022-01-31 16:36:58', '2022-01-31 16:36:58'),
(51, NULL, NULL, 7, 'App\\Models\\User', 7, '2022-01-31 16:36:58', '2022-01-31 16:36:58'),
(52, '8095555555', '8095555555', 4, 'App\\Models\\User', 8, '2022-02-01 21:03:32', '2022-05-16 16:38:41'),
(53, NULL, '', 5, 'App\\Models\\User', 8, '2022-02-01 21:03:32', '2022-02-01 21:03:32'),
(54, NULL, NULL, 6, 'App\\Models\\User', 8, '2022-02-01 21:03:32', '2022-02-01 21:03:32'),
(55, NULL, NULL, 7, 'App\\Models\\User', 8, '2022-02-01 21:03:32', '2022-02-01 21:03:32'),
(56, '8096036000', '8096036000', 4, 'App\\Models\\User', 9, '2022-02-03 05:57:16', '2022-02-16 18:13:13'),
(57, NULL, '', 5, 'App\\Models\\User', 9, '2022-02-03 05:57:16', '2022-02-03 05:57:16'),
(58, NULL, NULL, 6, 'App\\Models\\User', 9, '2022-02-03 05:57:16', '2022-02-03 05:57:16'),
(59, NULL, NULL, 7, 'App\\Models\\User', 9, '2022-02-03 05:57:16', '2022-02-03 05:57:16'),
(60, NULL, NULL, 7, 'App\\Models\\User', 5, '2022-02-03 18:30:51', '2022-02-03 18:30:51'),
(61, NULL, NULL, 4, 'App\\Models\\User', 10, '2022-02-03 18:41:13', '2022-02-03 18:41:13'),
(62, NULL, '', 5, 'App\\Models\\User', 10, '2022-02-03 18:41:13', '2022-02-03 18:41:13'),
(63, NULL, NULL, 6, 'App\\Models\\User', 10, '2022-02-03 18:41:13', '2022-02-03 18:41:13'),
(64, NULL, NULL, 7, 'App\\Models\\User', 10, '2022-02-03 18:41:13', '2022-02-03 18:41:13'),
(65, NULL, NULL, 4, 'App\\Models\\User', 11, '2022-02-06 21:27:07', '2022-02-06 21:27:07'),
(66, NULL, '', 5, 'App\\Models\\User', 11, '2022-02-06 21:27:07', '2022-02-06 21:27:07'),
(67, NULL, NULL, 6, 'App\\Models\\User', 11, '2022-02-06 21:27:07', '2022-02-06 21:27:07'),
(68, NULL, NULL, 7, 'App\\Models\\User', 11, '2022-02-06 21:27:07', '2022-02-06 21:27:07'),
(69, NULL, NULL, 4, 'App\\Models\\User', 12, '2022-02-11 08:12:40', '2022-02-11 08:12:40'),
(70, NULL, '', 5, 'App\\Models\\User', 12, '2022-02-11 08:12:40', '2022-02-11 08:12:40'),
(71, NULL, NULL, 6, 'App\\Models\\User', 12, '2022-02-11 08:12:40', '2022-02-11 08:12:40'),
(72, NULL, NULL, 7, 'App\\Models\\User', 12, '2022-02-11 08:12:40', '2022-02-11 08:12:40'),
(73, NULL, NULL, 4, 'App\\Models\\User', 13, '2022-02-12 18:05:09', '2022-02-12 18:05:09'),
(74, NULL, '', 5, 'App\\Models\\User', 13, '2022-02-12 18:05:09', '2022-02-12 18:05:09'),
(75, NULL, NULL, 6, 'App\\Models\\User', 13, '2022-02-12 18:05:09', '2022-02-12 18:05:09'),
(76, NULL, NULL, 7, 'App\\Models\\User', 13, '2022-02-12 18:05:09', '2022-02-12 18:05:09'),
(77, NULL, NULL, 4, 'App\\Models\\User', 14, '2022-02-15 09:42:48', '2022-02-15 09:42:48'),
(78, NULL, '', 5, 'App\\Models\\User', 14, '2022-02-15 09:42:48', '2022-02-15 09:42:48'),
(79, NULL, NULL, 6, 'App\\Models\\User', 14, '2022-02-15 09:42:48', '2022-02-15 09:42:48'),
(80, NULL, NULL, 7, 'App\\Models\\User', 14, '2022-02-15 09:42:48', '2022-02-15 09:42:48'),
(81, NULL, NULL, 4, 'App\\Models\\User', 15, '2022-02-17 20:56:48', '2022-02-17 20:56:48'),
(82, NULL, '', 5, 'App\\Models\\User', 15, '2022-02-17 20:56:48', '2022-02-17 20:56:48'),
(83, NULL, NULL, 6, 'App\\Models\\User', 15, '2022-02-17 20:56:48', '2022-02-17 20:56:48'),
(84, NULL, NULL, 7, 'App\\Models\\User', 15, '2022-02-17 20:56:48', '2022-02-17 20:56:48'),
(85, NULL, NULL, 4, 'App\\Models\\User', 16, '2022-02-23 05:41:27', '2022-02-23 05:41:27'),
(86, NULL, '', 5, 'App\\Models\\User', 16, '2022-02-23 05:41:27', '2022-02-23 05:41:27'),
(87, NULL, NULL, 6, 'App\\Models\\User', 16, '2022-02-23 05:41:27', '2022-02-23 05:41:27'),
(88, NULL, NULL, 7, 'App\\Models\\User', 16, '2022-02-23 05:41:27', '2022-02-23 05:41:27'),
(89, NULL, NULL, 4, 'App\\Models\\User', 17, '2022-02-25 03:13:47', '2022-02-25 03:13:47'),
(90, NULL, '', 5, 'App\\Models\\User', 17, '2022-02-25 03:13:47', '2022-02-25 03:13:47'),
(91, NULL, NULL, 6, 'App\\Models\\User', 17, '2022-02-25 03:13:47', '2022-02-25 03:13:47'),
(92, NULL, NULL, 7, 'App\\Models\\User', 17, '2022-02-25 03:13:47', '2022-02-25 03:13:47'),
(93, NULL, NULL, 4, 'App\\Models\\User', 18, '2022-02-26 20:14:18', '2022-02-26 20:14:18'),
(94, NULL, '', 5, 'App\\Models\\User', 18, '2022-02-26 20:14:18', '2022-02-26 20:14:18'),
(95, NULL, NULL, 6, 'App\\Models\\User', 18, '2022-02-26 20:14:18', '2022-02-26 20:14:18'),
(96, NULL, NULL, 7, 'App\\Models\\User', 18, '2022-02-26 20:14:18', '2022-02-26 20:14:18'),
(97, NULL, NULL, 4, 'App\\Models\\User', 19, '2022-02-27 21:08:03', '2022-02-27 21:08:03'),
(98, NULL, '', 5, 'App\\Models\\User', 19, '2022-02-27 21:08:03', '2022-02-27 21:08:03'),
(99, NULL, NULL, 6, 'App\\Models\\User', 19, '2022-02-27 21:08:03', '2022-02-27 21:08:03'),
(100, NULL, NULL, 7, 'App\\Models\\User', 19, '2022-02-27 21:08:03', '2022-02-27 21:08:03'),
(101, NULL, NULL, 4, 'App\\Models\\User', 20, '2022-03-10 11:07:25', '2022-03-10 11:07:25'),
(102, NULL, '', 5, 'App\\Models\\User', 20, '2022-03-10 11:07:25', '2022-03-10 11:07:25'),
(103, NULL, NULL, 6, 'App\\Models\\User', 20, '2022-03-10 11:07:25', '2022-03-10 11:07:25'),
(104, NULL, NULL, 7, 'App\\Models\\User', 20, '2022-03-10 11:07:25', '2022-03-10 11:07:25'),
(105, NULL, NULL, 4, 'App\\Models\\User', 21, '2022-03-11 19:52:48', '2022-03-11 19:52:48'),
(106, NULL, '', 5, 'App\\Models\\User', 21, '2022-03-11 19:52:48', '2022-03-11 19:52:48'),
(107, NULL, NULL, 6, 'App\\Models\\User', 21, '2022-03-11 19:52:48', '2022-03-11 19:52:48'),
(108, NULL, NULL, 7, 'App\\Models\\User', 21, '2022-03-11 19:52:48', '2022-03-11 19:52:48'),
(109, NULL, NULL, 4, 'App\\Models\\User', 22, '2022-04-02 13:58:27', '2022-04-02 13:58:27'),
(110, NULL, '', 5, 'App\\Models\\User', 22, '2022-04-02 13:58:27', '2022-04-02 13:58:27'),
(111, NULL, NULL, 6, 'App\\Models\\User', 22, '2022-04-02 13:58:27', '2022-04-02 13:58:27'),
(112, NULL, NULL, 7, 'App\\Models\\User', 22, '2022-04-02 13:58:27', '2022-04-02 13:58:27'),
(113, NULL, NULL, 4, 'App\\Models\\User', 23, '2022-04-02 16:16:54', '2022-04-02 16:16:54'),
(114, NULL, '', 5, 'App\\Models\\User', 23, '2022-04-02 16:16:54', '2022-04-02 16:16:54'),
(115, NULL, NULL, 6, 'App\\Models\\User', 23, '2022-04-02 16:16:54', '2022-04-02 16:16:54'),
(116, NULL, NULL, 7, 'App\\Models\\User', 23, '2022-04-02 16:16:54', '2022-04-02 16:16:54'),
(117, NULL, NULL, 4, 'App\\Models\\User', 24, '2022-04-06 06:42:38', '2022-04-06 06:42:38'),
(118, NULL, '', 5, 'App\\Models\\User', 24, '2022-04-06 06:42:38', '2022-04-06 06:42:38'),
(119, NULL, NULL, 6, 'App\\Models\\User', 24, '2022-04-06 06:42:38', '2022-04-06 06:42:38'),
(120, NULL, NULL, 7, 'App\\Models\\User', 24, '2022-04-06 06:42:38', '2022-04-06 06:42:38'),
(121, NULL, NULL, 4, 'App\\Models\\User', 25, '2022-04-06 08:23:48', '2022-04-06 08:23:48'),
(122, NULL, '', 5, 'App\\Models\\User', 25, '2022-04-06 08:23:48', '2022-04-06 08:23:48'),
(123, NULL, NULL, 6, 'App\\Models\\User', 25, '2022-04-06 08:23:48', '2022-04-06 08:23:48'),
(124, NULL, NULL, 7, 'App\\Models\\User', 25, '2022-04-06 08:23:48', '2022-04-06 08:23:48'),
(125, NULL, NULL, 4, 'App\\Models\\User', 26, '2022-04-14 21:49:19', '2022-04-14 21:49:19'),
(126, NULL, '', 5, 'App\\Models\\User', 26, '2022-04-14 21:49:19', '2022-04-14 21:49:19'),
(127, NULL, NULL, 6, 'App\\Models\\User', 26, '2022-04-14 21:49:19', '2022-04-14 21:49:19'),
(128, NULL, NULL, 7, 'App\\Models\\User', 26, '2022-04-14 21:49:19', '2022-04-14 21:49:19'),
(129, NULL, NULL, 4, 'App\\Models\\User', 27, '2022-04-19 21:16:58', '2022-04-19 21:16:58'),
(130, NULL, '', 5, 'App\\Models\\User', 27, '2022-04-19 21:16:58', '2022-04-19 21:16:58'),
(131, NULL, NULL, 6, 'App\\Models\\User', 27, '2022-04-19 21:16:58', '2022-04-19 21:16:58'),
(132, NULL, NULL, 7, 'App\\Models\\User', 27, '2022-04-19 21:16:58', '2022-04-19 21:16:58'),
(133, NULL, NULL, 4, 'App\\Models\\User', 28, '2022-04-21 04:34:57', '2022-04-21 04:34:57'),
(134, NULL, '', 5, 'App\\Models\\User', 28, '2022-04-21 04:34:57', '2022-04-21 04:34:57'),
(135, NULL, NULL, 6, 'App\\Models\\User', 28, '2022-04-21 04:34:57', '2022-04-21 04:34:57'),
(136, NULL, NULL, 7, 'App\\Models\\User', 28, '2022-04-21 04:34:57', '2022-04-21 04:34:57'),
(137, NULL, NULL, 4, 'App\\Models\\User', 29, '2022-04-24 11:04:40', '2022-04-24 11:04:40'),
(138, NULL, '', 5, 'App\\Models\\User', 29, '2022-04-24 11:04:40', '2022-04-24 11:04:40'),
(139, NULL, NULL, 6, 'App\\Models\\User', 29, '2022-04-24 11:04:40', '2022-04-24 11:04:40'),
(140, NULL, NULL, 7, 'App\\Models\\User', 29, '2022-04-24 11:04:40', '2022-04-24 11:04:40'),
(141, NULL, NULL, 4, 'App\\Models\\User', 30, '2022-04-25 19:15:22', '2022-04-25 19:15:22'),
(142, NULL, '', 5, 'App\\Models\\User', 30, '2022-04-25 19:15:22', '2022-04-25 19:15:22'),
(143, NULL, NULL, 6, 'App\\Models\\User', 30, '2022-04-25 19:15:22', '2022-04-25 19:15:22'),
(144, NULL, NULL, 7, 'App\\Models\\User', 30, '2022-04-25 19:15:22', '2022-04-25 19:15:22'),
(145, NULL, NULL, 4, 'App\\Models\\User', 31, '2022-04-30 04:26:20', '2022-04-30 04:26:20'),
(146, NULL, '', 5, 'App\\Models\\User', 31, '2022-04-30 04:26:20', '2022-04-30 04:26:20'),
(147, NULL, NULL, 6, 'App\\Models\\User', 31, '2022-04-30 04:26:20', '2022-04-30 04:26:20'),
(148, NULL, NULL, 7, 'App\\Models\\User', 31, '2022-04-30 04:26:20', '2022-04-30 04:26:20'),
(149, NULL, NULL, 4, 'App\\Models\\User', 32, '2022-05-01 11:45:17', '2022-05-01 11:45:17'),
(150, NULL, '', 5, 'App\\Models\\User', 32, '2022-05-01 11:45:17', '2022-05-01 11:45:17'),
(151, NULL, NULL, 6, 'App\\Models\\User', 32, '2022-05-01 11:45:17', '2022-05-01 11:45:17'),
(152, NULL, NULL, 7, 'App\\Models\\User', 32, '2022-05-01 11:45:17', '2022-05-01 11:45:17'),
(153, NULL, NULL, 4, 'App\\Models\\User', 33, '2022-05-02 02:25:04', '2022-05-02 02:25:04'),
(154, NULL, '', 5, 'App\\Models\\User', 33, '2022-05-02 02:25:04', '2022-05-02 02:25:04'),
(155, NULL, NULL, 6, 'App\\Models\\User', 33, '2022-05-02 02:25:04', '2022-05-02 02:25:04'),
(156, NULL, NULL, 7, 'App\\Models\\User', 33, '2022-05-02 02:25:04', '2022-05-02 02:25:04'),
(157, NULL, NULL, 4, 'App\\Models\\User', 34, '2022-05-09 01:01:33', '2022-05-09 01:01:33'),
(158, NULL, '', 5, 'App\\Models\\User', 34, '2022-05-09 01:01:33', '2022-05-09 01:01:33'),
(159, NULL, NULL, 6, 'App\\Models\\User', 34, '2022-05-09 01:01:33', '2022-05-09 01:01:33'),
(160, NULL, NULL, 7, 'App\\Models\\User', 34, '2022-05-09 01:01:33', '2022-05-09 01:01:33'),
(161, NULL, NULL, 4, 'App\\Models\\User', 35, '2022-05-13 06:09:29', '2022-05-13 06:09:29'),
(162, NULL, '', 5, 'App\\Models\\User', 35, '2022-05-13 06:09:29', '2022-05-13 06:09:29'),
(163, NULL, NULL, 6, 'App\\Models\\User', 35, '2022-05-13 06:09:29', '2022-05-13 06:09:29'),
(164, NULL, NULL, 7, 'App\\Models\\User', 35, '2022-05-13 06:09:29', '2022-05-13 06:09:29'),
(165, NULL, NULL, 4, 'App\\Models\\User', 36, '2022-05-20 06:00:21', '2022-05-20 06:00:21'),
(166, NULL, '', 5, 'App\\Models\\User', 36, '2022-05-20 06:00:21', '2022-05-20 06:00:21'),
(167, NULL, NULL, 6, 'App\\Models\\User', 36, '2022-05-20 06:00:21', '2022-05-20 06:00:21'),
(168, NULL, NULL, 7, 'App\\Models\\User', 36, '2022-05-20 06:00:21', '2022-05-20 06:00:21'),
(169, NULL, NULL, 4, 'App\\Models\\User', 37, '2022-05-22 09:51:25', '2022-05-22 09:51:25'),
(170, NULL, '', 5, 'App\\Models\\User', 37, '2022-05-22 09:51:25', '2022-05-22 09:51:25'),
(171, NULL, NULL, 6, 'App\\Models\\User', 37, '2022-05-22 09:51:25', '2022-05-22 09:51:25'),
(172, NULL, NULL, 7, 'App\\Models\\User', 37, '2022-05-22 09:51:25', '2022-05-22 09:51:25'),
(173, NULL, NULL, 4, 'App\\Models\\User', 38, '2022-05-29 07:47:09', '2022-05-29 07:47:09'),
(174, NULL, '', 5, 'App\\Models\\User', 38, '2022-05-29 07:47:09', '2022-05-29 07:47:09'),
(175, NULL, NULL, 6, 'App\\Models\\User', 38, '2022-05-29 07:47:09', '2022-05-29 07:47:09'),
(176, NULL, NULL, 7, 'App\\Models\\User', 38, '2022-05-29 07:47:09', '2022-05-29 07:47:09'),
(177, NULL, NULL, 4, 'App\\Models\\User', 39, '2022-05-31 08:16:59', '2022-05-31 08:16:59'),
(178, NULL, '', 5, 'App\\Models\\User', 39, '2022-05-31 08:16:59', '2022-05-31 08:16:59'),
(179, NULL, NULL, 6, 'App\\Models\\User', 39, '2022-05-31 08:16:59', '2022-05-31 08:16:59'),
(180, NULL, NULL, 7, 'App\\Models\\User', 39, '2022-05-31 08:16:59', '2022-05-31 08:16:59'),
(181, NULL, NULL, 4, 'App\\Models\\User', 40, '2022-06-04 12:58:22', '2022-06-04 12:58:22'),
(182, NULL, '', 5, 'App\\Models\\User', 40, '2022-06-04 12:58:22', '2022-06-04 12:58:22'),
(183, NULL, NULL, 6, 'App\\Models\\User', 40, '2022-06-04 12:58:22', '2022-06-04 12:58:22'),
(184, NULL, NULL, 7, 'App\\Models\\User', 40, '2022-06-04 12:58:22', '2022-06-04 12:58:22'),
(185, NULL, NULL, 4, 'App\\Models\\User', 41, '2022-06-13 19:51:09', '2022-06-13 19:51:09'),
(186, NULL, '', 5, 'App\\Models\\User', 41, '2022-06-13 19:51:09', '2022-06-13 19:51:09'),
(187, NULL, NULL, 6, 'App\\Models\\User', 41, '2022-06-13 19:51:09', '2022-06-13 19:51:09'),
(188, NULL, NULL, 7, 'App\\Models\\User', 41, '2022-06-13 19:51:09', '2022-06-13 19:51:09'),
(189, NULL, NULL, 4, 'App\\Models\\User', 42, '2022-06-22 17:01:36', '2022-06-22 17:01:36'),
(190, NULL, '', 5, 'App\\Models\\User', 42, '2022-06-22 17:01:36', '2022-06-22 17:01:36'),
(191, NULL, NULL, 6, 'App\\Models\\User', 42, '2022-06-22 17:01:36', '2022-06-22 17:01:36'),
(192, NULL, NULL, 7, 'App\\Models\\User', 42, '2022-06-22 17:01:36', '2022-06-22 17:01:36'),
(193, '+12066272441', '+12066272441', 4, 'App\\Models\\User', 43, '2022-07-21 11:51:24', '2022-07-23 12:38:47'),
(194, NULL, '', 5, 'App\\Models\\User', 43, '2022-07-21 11:51:24', '2022-07-21 11:51:24'),
(195, NULL, NULL, 6, 'App\\Models\\User', 43, '2022-07-21 11:51:24', '2022-07-21 11:51:24'),
(196, '0', '0', 7, 'App\\Models\\User', 43, '2022-07-21 11:51:24', '2022-07-23 12:38:47'),
(197, NULL, NULL, 4, 'App\\Models\\User', 44, '2022-08-27 15:38:58', '2022-08-27 15:38:58'),
(198, NULL, '', 5, 'App\\Models\\User', 44, '2022-08-27 15:38:58', '2022-08-27 15:38:58'),
(199, NULL, NULL, 6, 'App\\Models\\User', 44, '2022-08-27 15:38:58', '2022-08-27 15:38:58'),
(200, NULL, NULL, 7, 'App\\Models\\User', 44, '2022-08-27 15:38:58', '2022-08-27 15:38:58'),
(201, NULL, NULL, 4, 'App\\Models\\User', 45, '2022-08-28 05:24:49', '2022-08-28 05:24:49'),
(202, NULL, '', 5, 'App\\Models\\User', 45, '2022-08-28 05:24:49', '2022-08-28 05:24:49'),
(203, NULL, NULL, 6, 'App\\Models\\User', 45, '2022-08-28 05:24:49', '2022-08-28 05:24:49'),
(204, NULL, NULL, 7, 'App\\Models\\User', 45, '2022-08-28 05:24:49', '2022-08-28 05:24:49'),
(205, NULL, NULL, 4, 'App\\Models\\User', 46, '2022-09-03 08:16:07', '2022-09-03 08:16:07'),
(206, NULL, '', 5, 'App\\Models\\User', 46, '2022-09-03 08:16:07', '2022-09-03 08:16:07'),
(207, NULL, NULL, 6, 'App\\Models\\User', 46, '2022-09-03 08:16:07', '2022-09-03 08:16:07'),
(208, NULL, NULL, 7, 'App\\Models\\User', 46, '2022-09-03 08:16:07', '2022-09-03 08:16:07'),
(209, NULL, NULL, 4, 'App\\Models\\User', 47, '2022-09-29 11:41:24', '2022-09-29 11:41:24'),
(210, NULL, '', 5, 'App\\Models\\User', 47, '2022-09-29 11:41:24', '2022-09-29 11:41:24'),
(211, NULL, NULL, 6, 'App\\Models\\User', 47, '2022-09-29 11:41:24', '2022-09-29 11:41:24'),
(212, NULL, NULL, 7, 'App\\Models\\User', 47, '2022-09-29 11:41:24', '2022-09-29 11:41:24'),
(213, NULL, NULL, 4, 'App\\Models\\User', 48, '2022-10-01 01:46:01', '2022-10-01 01:46:01'),
(214, NULL, '', 5, 'App\\Models\\User', 48, '2022-10-01 01:46:01', '2022-10-01 01:46:01'),
(215, NULL, NULL, 6, 'App\\Models\\User', 48, '2022-10-01 01:46:01', '2022-10-01 01:46:01'),
(216, NULL, NULL, 7, 'App\\Models\\User', 48, '2022-10-01 01:46:01', '2022-10-01 01:46:01'),
(217, NULL, NULL, 4, 'App\\Models\\User', 49, '2022-10-04 08:22:07', '2022-10-04 08:22:07'),
(218, NULL, '', 5, 'App\\Models\\User', 49, '2022-10-04 08:22:07', '2022-10-04 08:22:07'),
(219, NULL, NULL, 6, 'App\\Models\\User', 49, '2022-10-04 08:22:07', '2022-10-04 08:22:07'),
(220, NULL, NULL, 7, 'App\\Models\\User', 49, '2022-10-04 08:22:07', '2022-10-04 08:22:07'),
(221, NULL, NULL, 4, 'App\\Models\\User', 50, '2022-10-08 08:24:27', '2022-10-08 08:24:27'),
(222, NULL, '', 5, 'App\\Models\\User', 50, '2022-10-08 08:24:27', '2022-10-08 08:24:27'),
(223, NULL, NULL, 6, 'App\\Models\\User', 50, '2022-10-08 08:24:27', '2022-10-08 08:24:27'),
(224, NULL, NULL, 7, 'App\\Models\\User', 50, '2022-10-08 08:24:27', '2022-10-08 08:24:27'),
(225, NULL, NULL, 4, 'App\\Models\\User', 51, '2022-10-08 08:32:42', '2022-10-08 08:32:42'),
(226, NULL, '', 5, 'App\\Models\\User', 51, '2022-10-08 08:32:42', '2022-10-08 08:32:42'),
(227, NULL, NULL, 6, 'App\\Models\\User', 51, '2022-10-08 08:32:42', '2022-10-08 08:32:42'),
(228, NULL, NULL, 7, 'App\\Models\\User', 51, '2022-10-08 08:32:42', '2022-10-08 08:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Maxime ad deleniti rem autem aut.', '139 Lindgren Walk Suite 971\nLabadiehaven, OK 72723', '-53.816869', '-8.921821', 1, 6, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(2, 'Quisquam eum similique illum molestias animi perferendis.', '902 Easton Spurs Suite 877\nNorth Norriston, ID 94107-0087', '84.05838', '-126.000551', 1, 2, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(3, 'Deleniti ullam quis est provident similique beatae.', '39469 Jacobs Inlet\nDevinside, HI 45566-2297', '-79.129969', '-13.259022', 1, 2, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(4, 'Laborum ut numquam vitae eum soluta.', '2372 Carolanne Station\nSouth Camden, MI 34008-6604', '-35.665558', '110.449321', 1, 1, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(6, 'Eaque pariatur totam adipisci facere.', '4869 Jed Crossroad Suite 000\nZboncakchester, NM 17487', '7.608', '-95.866504', 1, 2, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(8, 'Et facilis optio non minus.', '9541 Petra Turnpike\nNorth Cassidyland, NJ 31022-1084', '-79.102482', '-28.230561', 1, 2, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(10, 'Dolor eum est numquam dolorum eaque.', '4662 Casper Hill Apt. 302\nOdaview, FL 74871-8913', '-0.944826', '-60.345515', 1, 5, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(11, 'Consequuntur atque non accusamus et voluptates iste.', '548 Steve Cliff Apt. 748\nWeberfurt, NY 42754', '-40.175584', '69.023687', 1, 6, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(12, 'Soluta ut nesciunt perspiciatis.', '87457 Wintheiser Roads\nWiegandmouth, DE 21628-7944', '17.891289', '159.852299', 0, 1, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(14, 'Quasi est atque repellendus quis quos.', '371 Jo Springs\nAbigaleport, IN 72449', '5.9014', '-130.955332', 0, 6, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(15, 'Nulla ducimus sint quia officia veritatis sed illo.', '5963 Collin Village Suite 415\nStephenchester, ID 72052-5606', '-42.342135', '-22.6167', 0, 1, '2022-01-31 05:13:16', '2022-01-31 05:13:16'),
(20, 'primo', 'C. 2da 8, Santo Domingo Este, Dominican Republic', '18.498273942232', '-69.836117886007', 0, 7, '2022-03-15 14:54:48', '2022-03-15 14:54:59'),
(21, 'Kevin Santos', 'Av. Abraham Lincoln 850, Santo Domingo, Dominican Republic', '18.475153030359', '-69.935924895108', 0, 26, '2022-04-14 21:53:14', '2022-04-14 21:55:20'),
(22, 'luisnfndnd', '6A 26, Santo Domingo, Dominican Republic', '18.561559141771', '-69.893463179469', NULL, 30, '2022-04-25 19:16:17', '2022-04-25 19:16:17'),
(24, 'home', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '37.421998189179', '-122.08399984986', 0, 34, '2022-05-09 01:02:55', '2022-05-09 01:03:02'),
(25, 'zeeshan ali', 'WHVV+VHV, España, Bonao 42000, Dominican Republic', '18.945181896657', '-70.405953526497', 0, 8, '2022-05-12 19:47:20', '2022-05-12 19:47:23'),
(28, 'Blue Mall', 'Av. Tiradentes 33-35, Santo Domingo, Dominican Republic', '18.472685678641', '-69.940938279033', 0, 7, '2022-05-16 16:32:43', '2022-05-16 16:32:46'),
(29, 'blue mall', 'Av. Winston Churchill 80, Santo Domingo, Dominican Republic', '18.472593140336', '-69.94137480855', 0, 8, '2022-05-16 16:44:56', '2022-05-16 16:44:58'),
(30, 'Home', 'Calle Cnel. Rafael Fernández Domínguez 1, Santo Domingo, Dominican Republic', '18.48606027748', '-69.931211583316', 0, 40, '2022-06-04 12:59:44', '2022-06-04 13:01:33'),
(32, 'hospital', 'DHQ, Faisalabad, Punjab, Pakistan', '31.420644878368', '73.095079958439', 0, 40, '2022-06-07 13:49:11', '2022-06-07 13:49:14'),
(34, 'Quickie', 'Av. Tiradentes 39, Santo Domingo, Dominican Republic', '18.477720195976', '-69.927024319768', 0, 9, '2022-10-03 22:51:48', '2022-10-03 22:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `delivery_fee`, `total_orders`, `earning`, `available`, `created_at`, `updated_at`) VALUES
(1, 5, 0.00, 3, 0.00, 0, '2022-02-03 18:30:51', '2022-08-25 22:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_stores`
--

CREATE TABLE `driver_stores` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_stores`
--

INSERT INTO `driver_stores` (`user_id`, `store_id`) VALUES
(5, 11),
(6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `store_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `store_id`, `total_orders`, `total_earning`, `admin_earning`, `store_earning`, `delivery_fee`, `tax`, `created_at`, `updated_at`) VALUES
(1, 11, 0, -44583.00, 0.00, -44583.00, 0.00, 0.00, '2022-01-31 06:07:31', '2022-08-25 22:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Sint assumenda id sunt aut. Velit aut fuga quos saepe. Est aut ut omnis ut labore.', 'THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Mouse, getting up and down looking for the fan and two or three pairs of tiny white kid gloves: she took up the chimney, has.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(2, 'Quasi illum similique et autem. Placeat praesentium eum minima voluptas.', 'Mouse, sharply and very neatly and simply arranged; the only difficulty was, that her idea of having nothing to do.\" Said the mouse to the rose-tree, she went on. Her listeners were perfectly quiet.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(3, 'Non non est quisquam doloribus et. Et omnis labore sed impedit.', 'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the effect: the next verse.\' \'But about his toes?\' the Mock Turtle: \'crumbs would all come wrong, and she tried the effect of lying down on the whole.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(4, 'Est unde assumenda dignissimos quos. Eos aliquid esse quo accusantium quos nesciunt vel.', 'Caucus-race.\' \'What IS a long time with the words have got altered.\' \'It is a raven like a star-fish,\' thought Alice. \'I wonder how many hours a day or two: wouldn\'t it be of very little use without.', 3, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(5, 'Et sit quia ipsam sapiente. Est quisquam ratione amet et molestiae.', 'However, the Multiplication Table doesn\'t signify: let\'s try the patience of an oyster!\' \'I wish I hadn\'t to bring tears into her head. Still she went on in a bit.\' \'Perhaps it hasn\'t one,\' Alice.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(6, 'Eum quo nesciunt qui. Nam unde temporibus omnis perferendis.', 'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat again, sitting on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, who felt very.', 2, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(7, 'Exercitationem dicta qui ipsa beatae pariatur consectetur in dolor. Ullam nobis natus ipsum.', 'Mock Turtle went on \'And how did you ever see such a neck as that! No, no! You\'re a serpent; and there\'s no use in waiting by the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a.', 2, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(8, 'Omnis in aut nam consequatur sit ea et. Eligendi dicta et harum et aut fugit.', 'YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell him--it was for bringing the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on.', 2, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(9, 'Illo vel qui quod maiores magnam vel. Rerum unde fuga est animi eveniet sint. Ab qui aut et vitae.', 'Involved in this affair, He trusts to you how the Dodo solemnly presented the thimble, looking as solemn as she did not appear, and after a minute or two she stood looking at Alice as he found it.', 3, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(10, 'Iure ut debitis necessitatibus. Qui laboriosam sunt aliquid officia.', 'Let me see--how IS it to speak again. In a minute or two, looking for the next witness was the first to speak. \'What size do you like the wind, and the other was sitting on a three-legged stool in.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(11, 'Est nihil doloremque excepturi iste. Velit commodi cupiditate omnis autem ex cum nostrum tenetur.', 'Queen, and in another moment that it ought to be full of smoke from one of the teacups as the other.\' As soon as the March Hare will be much the most curious thing I ever saw one that size? Why, it.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(12, 'Quia consequuntur eius ipsa porro ducimus dolor. A delectus fuga quis quas unde.', 'She had quite forgotten the little door: but, alas! either the locks were too large, or the key was too slippery; and when she had a door leading right into a sort of present!\' thought Alice. One of.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(13, 'Unde repellat illo molestias ut. Vel totam repudiandae voluptatem eaque ut.', 'Alice looked very anxiously into its nest. Alice crouched down among the people that walk with their fur clinging close to the waving of the table. \'Have some wine,\' the March Hare. Visit either you.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(14, 'Excepturi cupiditate et nesciunt in id. Dignissimos voluptatem et repellendus voluptas iure.', 'Alice, as she spoke. (The unfortunate little Bill had left off when they liked, and left off sneezing by this time, and was going to begin at HIS time of life. The King\'s argument was, that she.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(15, 'Est rem eum quasi. Et omnis esse cupiditate commodi.', 'No room!\' they cried out when they passed too close, and waving their forepaws to mark the time, while the Dodo replied very solemnly. Alice was not an encouraging opening for a rabbit! I suppose I.', 2, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(16, 'Sit voluptas dolores voluptatem quia. Deserunt quis debitis rerum sint.', 'Queen. \'Never!\' said the Mock Turtle. \'Hold your tongue, Ma!\' said the young Crab, a little girl,\' said Alice, always ready to make SOME change in my size; and as Alice could not tell whether they.', 3, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(17, 'Sunt distinctio aut voluptatem et minima sunt. Voluptatem eos quisquam voluptatem.', 'Alice, jumping up and repeat something now. Tell her to carry it further. So she called softly after it, never once considering how in the pictures of him), while the rest of the tea--\' \'The.', 3, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(18, 'Et repellat magni fugit voluptatibus cum totam. Nostrum et dolor et error nam earum neque velit.', 'Gryphon, and the beak-- Pray how did you manage to do it.\' (And, as you can--\' \'Swim after them!\' screamed the Queen. \'I haven\'t opened it yet,\' said the Duchess, digging her sharp little chin into.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(19, 'Ipsam explicabo sint atque aspernatur suscipit. Accusamus omnis aut asperiores dolore.', 'Gryphon said to live. \'I\'ve seen hatters before,\' she said this, she was dozing off, and found herself in Wonderland, though she felt certain it must make me grow smaller, I can kick a little!\' She.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(20, 'Dolor aut repellendus sed est vel perferendis aut. Perferendis tempore qui ad fuga numquam rem.', 'And beat him when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said the March Hare said in a moment. \'Let\'s go on with the game,\' the.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(21, 'Quia et in ut omnis voluptatibus. Neque ut officiis ad maxime qui vel.', 'Gryphon. \'I mean, what makes them so often, you know.\' Alice had got to the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said do. Alice looked very.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(22, 'Accusamus esse et excepturi laborum voluptates aut. Voluptate consequatur illum consequuntur rerum.', 'I get\" is the same side of the gloves, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. The King laid his hand upon her arm, with its arms and frowning at the Gryphon.', 1, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(23, 'Quod laudantium accusamus eius et sint asperiores. Aut nostrum est modi dolorem.', 'No, no! You\'re a serpent; and there\'s no use now,\' thought Alice, and, after folding his arms and legs in all directions, \'just like a star-fish,\' thought Alice. One of the trees under which she.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(24, 'Reiciendis sed et sit sapiente et iusto omnis. Sint cumque reprehenderit nemo.', 'ME\' beautifully printed on it but tea. \'I don\'t know the meaning of half an hour or so, and were resting in the sky. Alice went on growing, and she drew herself up and said, \'It was the Hatter. He.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(25, 'Eum placeat sed ad aut. Delectus laboriosam temporibus cupiditate doloremque ratione alias quia.', 'It means much the same height as herself; and when she turned away. \'Come back!\' the Caterpillar took the hookah into its nest. Alice crouched down among the trees, a little way forwards each time.', 3, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(26, 'Sunt qui dicta accusamus nisi enim. Et ex et quod. Dolorem harum asperiores et autem.', 'Alice thought decidedly uncivil. \'But perhaps it was a different person then.\' \'Explain all that,\' he said in a great hurry; \'this paper has just been reading about; and when she noticed that one of.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(27, 'Qui sint iusto autem eaque ratione. Rerum id accusamus optio aliquid numquam quasi exercitationem.', 'Knave of Hearts, she made her draw back in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Mock Turtle in a ring, and begged the Mouse with an M--\' \'Why with an important air, \'are.', 4, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(28, 'At hic maiores ratione. Odit molestiae culpa temporibus ratione quo.', 'Mouse\'s tail; \'but why do you like the Queen?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Caterpillar; and it put more simply--\"Never.', 2, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(29, 'Illo quam voluptate ut rerum. Sint cupiditate non aut voluptas. Et impedit quo nihil.', 'Alice, thinking it was very like having a game of croquet she was up to the croquet-ground. The other guests had taken his watch out of sight. Alice remained looking thoughtfully at the end of the.', 2, '2022-01-31 05:13:17', '2022-01-31 05:13:17'),
(30, 'Id deserunt sint autem porro omnis. Culpa blanditiis debitis necessitatibus molestias.', 'Gryphon said to the other, saying, in a more subdued tone, and added \'It isn\'t mine,\' said the Caterpillar took the hookah out of his Normans--\" How are you getting on now, my dear?\' it continued.', 3, '2022-01-31 05:13:17', '2022-01-31 05:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Products', '2019-08-31 12:31:52', '2019-08-31 12:31:52'),
(2, 'Services', '2019-08-31 12:32:03', '2019-08-31 12:32:03'),
(3, 'Delivery', '2019-08-31 12:32:11', '2019-08-31 12:32:11'),
(4, 'Misc', '2019-08-31 12:32:17', '2019-08-31 12:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 44, 18, '2022-02-26 20:14:34', '2022-02-26 20:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Store', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 15:03:21', '2020-04-11 15:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Upload', 1, 'image', '005-whisky', '005-whisky.png', 'image/png', 'public', 1014, '[]', '{\"uuid\":\"21b86162-e50a-47d6-995e-840112b63138\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 1, '2022-02-01 03:15:51', '2022-02-01 03:15:51'),
(3, 'App\\Models\\Upload', 2, 'image', '006-whisky', '006-whisky.png', 'image/png', 'public', 5438, '[]', '{\"uuid\":\"ba988506-58c4-4811-91ec-2ab364753459\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 2, '2022-02-01 03:18:41', '2022-02-01 03:18:41'),
(5, 'App\\Models\\Upload', 3, 'image', '005-vodka', '005-vodka.png', 'image/png', 'public', 3245, '[]', '{\"uuid\":\"86a74a93-a4dc-4f35-b775-84c6811844ac\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2022-02-01 03:18:50', '2022-02-01 03:18:50'),
(7, 'App\\Models\\Upload', 4, 'image', '007-tequila', '007-tequila.png', 'image/png', 'public', 5840, '[]', '{\"uuid\":\"34048f5c-8601-47c4-bade-32775a0eb48f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2022-02-01 03:18:58', '2022-02-01 03:18:58'),
(9, 'App\\Models\\Upload', 5, 'image', '004-ron', '004-ron.png', 'image/png', 'public', 5330, '[]', '{\"uuid\":\"0b198c2f-1798-4f50-91a9-80edff0e5866\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2022-02-01 03:19:10', '2022-02-01 03:19:10'),
(11, 'App\\Models\\Upload', 6, 'image', '001-vaso-de-plstico', '001-vaso-de-plstico.png', 'image/png', 'public', 3115, '[]', '{\"uuid\":\"c4bcd598-dc7a-4ae1-9550-c6524eb79499\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2022-02-01 03:19:22', '2022-02-01 03:19:22'),
(13, 'App\\Models\\Upload', 7, 'image', '010-soda', '010-soda.png', 'image/png', 'public', 2890, '[]', '{\"uuid\":\"6d97a5e6-2205-4ac6-94f2-e43ad6b7637e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2022-02-01 03:19:38', '2022-02-01 03:19:38'),
(15, 'App\\Models\\Upload', 8, 'image', '009-cigarro', '009-cigarro.png', 'image/png', 'public', 6332, '[]', '{\"uuid\":\"ca818bc3-afb3-4829-ab32-7550f6b8cefe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 14, '2022-02-01 03:19:49', '2022-02-01 03:19:49'),
(17, 'App\\Models\\Upload', 9, 'image', '008-cigarrillos', '008-cigarrillos.png', 'image/png', 'public', 4724, '[]', '{\"uuid\":\"58188207-759c-4b1a-be62-0e6cc1997467\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2022-02-01 03:19:57', '2022-02-01 03:19:57'),
(19, 'App\\Models\\Upload', 10, 'image', '003-cerveza', '003-cerveza.png', 'image/png', 'public', 4595, '[]', '{\"uuid\":\"98324de9-c2ec-4b12-9d19-867507c0f215\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 18, '2022-02-01 03:20:07', '2022-02-01 03:20:07'),
(21, 'App\\Models\\Upload', 11, 'image', '002-mochila', '002-mochila.png', 'image/png', 'public', 5436, '[]', '{\"uuid\":\"80f4ffcf-75b3-47da-98ea-51e208145ecc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 20, '2022-02-01 03:20:15', '2022-02-01 03:20:15'),
(23, 'App\\Models\\Upload', 12, 'image', '19810_800x-compressed', '19810_800x-compressed.jpg', 'image/jpeg', 'public', 21297, '[]', '{\"uuid\":\"79cc8a24-1d50-4ad8-a089-bfbeebf1d0dc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2022-02-01 03:42:07', '2022-02-01 03:42:07'),
(24, 'App\\Models\\Product', 60, 'image', '19810_800x-compressed', '19810_800x-compressed.jpg', 'image/jpeg', 'public', 21297, '[]', '{\"uuid\":\"79cc8a24-1d50-4ad8-a089-bfbeebf1d0dc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2022-02-01 03:42:10', '2022-02-01 03:42:10'),
(25, 'App\\Models\\Upload', 13, 'image', '2065181-A_1-compressed', '2065181-A_1-compressed.jpg', 'image/jpeg', 'public', 3970, '[]', '{\"uuid\":\"450c9e43-ff94-4d2e-b6c4-811a710d5a0a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2022-02-01 03:43:20', '2022-02-01 03:43:20'),
(26, 'App\\Models\\Product', 54, 'image', '2065181-A_1-compressed', '2065181-A_1-compressed.jpg', 'image/jpeg', 'public', 3970, '[]', '{\"uuid\":\"450c9e43-ff94-4d2e-b6c4-811a710d5a0a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2022-02-01 03:43:29', '2022-02-01 03:43:29'),
(27, 'App\\Models\\Upload', 14, 'image', '81ARHIFCZ6L-compressed', '81ARHIFCZ6L-compressed.jpg', 'image/jpeg', 'public', 23168, '[]', '{\"uuid\":\"c5691ac1-9344-4e15-ada0-0060882145d1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2022-02-01 03:45:37', '2022-02-01 03:45:37'),
(28, 'App\\Models\\Product', 56, 'image', '81ARHIFCZ6L-compressed', '81ARHIFCZ6L-compressed.jpg', 'image/jpeg', 'public', 23168, '[]', '{\"uuid\":\"c5691ac1-9344-4e15-ada0-0060882145d1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2022-02-01 03:45:40', '2022-02-01 03:45:40'),
(29, 'App\\Models\\Upload', 15, 'image', '410001-G-compressed', '410001-G-compressed.jpg', 'image/jpeg', 'public', 5232, '[]', '{\"uuid\":\"db03c49f-bafc-44e1-9738-abc98a26f6c0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2022-02-01 03:46:42', '2022-02-01 03:46:42'),
(30, 'App\\Models\\Product', 57, 'image', '410001-G-compressed', '410001-G-compressed.jpg', 'image/jpeg', 'public', 5232, '[]', '{\"uuid\":\"db03c49f-bafc-44e1-9738-abc98a26f6c0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2022-02-01 03:46:44', '2022-02-01 03:46:44'),
(31, 'App\\Models\\Upload', 16, 'image', 'Aceitunas-Serpis-Rellenas-De-Anchoa-200-Gr-compressed', 'Aceitunas-Serpis-Rellenas-De-Anchoa-200-Gr-compressed.jpg', 'image/jpeg', 'public', 9062, '[]', '{\"uuid\":\"3453014b-97af-461b-94b2-aa0e5272814b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2022-02-01 03:47:43', '2022-02-01 03:47:43'),
(32, 'App\\Models\\Product', 61, 'image', 'Aceitunas-Serpis-Rellenas-De-Anchoa-200-Gr-compressed', 'Aceitunas-Serpis-Rellenas-De-Anchoa-200-Gr-compressed.jpg', 'image/jpeg', 'public', 9062, '[]', '{\"uuid\":\"3453014b-97af-461b-94b2-aa0e5272814b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2022-02-01 03:47:45', '2022-02-01 03:47:45'),
(33, 'App\\Models\\Upload', 17, 'image', '24627_1024x-compressed', '24627_1024x-compressed.jpg', 'image/jpeg', 'public', 13788, '[]', '{\"uuid\":\"c043e975-4cf2-46e8-bdf0-55593edade57\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2022-02-01 03:49:20', '2022-02-01 03:49:20'),
(34, 'App\\Models\\Product', 46, 'image', '24627_1024x-compressed', '24627_1024x-compressed.jpg', 'image/jpeg', 'public', 13788, '[]', '{\"uuid\":\"c043e975-4cf2-46e8-bdf0-55593edade57\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2022-02-01 03:49:23', '2022-02-01 03:49:23'),
(35, 'App\\Models\\Upload', 18, 'image', 'barcelo-imperial-compressed', 'barcelo-imperial-compressed.jpg', 'image/jpeg', 'public', 8175, '[]', '{\"uuid\":\"e411d952-8c53-4806-b5b4-3e0bd10c3d3c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2022-02-01 03:51:27', '2022-02-01 03:51:27'),
(36, 'App\\Models\\Product', 41, 'image', 'barcelo-imperial-compressed', 'barcelo-imperial-compressed.jpg', 'image/jpeg', 'public', 8175, '[]', '{\"uuid\":\"e411d952-8c53-4806-b5b4-3e0bd10c3d3c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2022-02-01 03:51:31', '2022-02-01 03:51:31'),
(37, 'App\\Models\\Upload', 19, 'image', '2208716-A_1-compressed', '2208716-A_1-compressed.jpg', 'image/jpeg', 'public', 19139, '[]', '{\"uuid\":\"cdb47aa9-6857-4a02-adc4-8f4d2a3515b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2022-02-01 03:53:00', '2022-02-01 03:53:00'),
(38, 'App\\Models\\Product', 42, 'image', '2208716-A_1-compressed', '2208716-A_1-compressed.jpg', 'image/jpeg', 'public', 19139, '[]', '{\"uuid\":\"cdb47aa9-6857-4a02-adc4-8f4d2a3515b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2022-02-01 03:53:02', '2022-02-01 03:53:02'),
(39, 'App\\Models\\Upload', 20, 'image', '25202-compressed', '25202-compressed.jpg', 'image/jpeg', 'public', 93957, '[]', '{\"uuid\":\"cb513ba3-4ea1-49fb-bf8f-aab0f4a41cf4\",\"user_id\":1}', '[]', 38, '2022-02-01 03:54:08', '2022-02-01 03:54:08'),
(41, 'App\\Models\\Upload', 21, 'image', 'images-compressed', 'images-compressed.jpg', 'image/jpeg', 'public', 4910, '[]', '{\"uuid\":\"315d7629-926c-45d8-a182-1eaac5e2d444\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2022-02-01 03:55:32', '2022-02-01 03:55:32'),
(43, 'App\\Models\\Upload', 22, 'image', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed.jpg', 'image/jpeg', 'public', 121838, '[]', '{\"uuid\":\"bfbe8723-bea0-407b-9a3e-6efd121f6918\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true}}', '[]', 42, '2022-02-01 03:59:54', '2022-02-01 03:59:54'),
(44, 'App\\Models\\Product', 47, 'image', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed.jpg', 'image/jpeg', 'public', 121838, '[]', '{\"uuid\":\"bfbe8723-bea0-407b-9a3e-6efd121f6918\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 43, '2022-02-01 04:00:02', '2022-02-01 04:00:02'),
(45, 'App\\Models\\Upload', 23, 'image', '2008937-A_1-compressed', '2008937-A_1-compressed.jpg', 'image/jpeg', 'public', 13748, '[]', '{\"uuid\":\"ca653b81-9fee-46cf-bfd3-8c6ade2f6950\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 44, '2022-02-01 04:01:11', '2022-02-01 04:01:11'),
(47, 'App\\Models\\Upload', 24, 'image', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed.jpg', 'image/jpeg', 'public', 121838, '[]', '{\"uuid\":\"b7f567fa-01ce-4752-a741-dce208d16c03\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2022-02-01 04:01:29', '2022-02-01 04:01:29'),
(48, 'App\\Models\\Product', 64, 'image', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed', 'large_arturo-funete-hemingway-short-story-prod-shot__01263-compressed.jpg', 'image/jpeg', 'public', 121838, '[]', '{\"uuid\":\"b7f567fa-01ce-4752-a741-dce208d16c03\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 47, '2022-02-01 04:01:31', '2022-02-01 04:01:31'),
(49, 'App\\Models\\Upload', 25, 'image', '2045085-A_1-compressed', '2045085-A_1-compressed.jpg', 'image/jpeg', 'public', 25511, '[]', '{\"uuid\":\"cc5a459a-c238-489b-a279-f0ffe5113ff6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 48, '2022-02-01 04:04:11', '2022-02-01 04:04:12'),
(50, 'App\\Models\\Product', 63, 'image', '2045085-A_1-compressed', '2045085-A_1-compressed.jpg', 'image/jpeg', 'public', 25511, '[]', '{\"uuid\":\"cc5a459a-c238-489b-a279-f0ffe5113ff6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 49, '2022-02-01 04:04:13', '2022-02-01 04:04:13'),
(51, 'App\\Models\\Upload', 26, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 6726, '[]', '{\"uuid\":\"bf85aa42-1005-44a0-a479-0a59d218b03b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2022-02-01 04:04:52', '2022-02-01 04:04:52'),
(52, 'App\\Models\\Product', 62, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 6726, '[]', '{\"uuid\":\"bf85aa42-1005-44a0-a479-0a59d218b03b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 51, '2022-02-01 04:04:54', '2022-02-01 04:04:54'),
(53, 'App\\Models\\Upload', 27, 'image', '451212e43f9fc7ecb6ae876dd0985609583e69a2_Liquor_286602_01', '451212e43f9fc7ecb6ae876dd0985609583e69a2_Liquor_286602_01.jpg', 'image/jpeg', 'public', 21318, '[]', '{\"uuid\":\"a2f68504-2c2a-42be-b877-be5236e20438\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 52, '2022-02-01 04:05:23', '2022-02-01 04:05:23'),
(54, 'App\\Models\\Product', 59, 'image', '451212e43f9fc7ecb6ae876dd0985609583e69a2_Liquor_286602_01', '451212e43f9fc7ecb6ae876dd0985609583e69a2_Liquor_286602_01.jpg', 'image/jpeg', 'public', 21318, '[]', '{\"uuid\":\"a2f68504-2c2a-42be-b877-be5236e20438\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 53, '2022-02-01 04:05:25', '2022-02-01 04:05:25'),
(55, 'App\\Models\\Upload', 28, 'image', 'Johnnie-Walker-18-Anos-Ultimate-Whisky-en-Republica-Dominicana', 'Johnnie-Walker-18-Anos-Ultimate-Whisky-en-Republica-Dominicana.jpg', 'image/jpeg', 'public', 67043, '[]', '{\"uuid\":\"de361af9-0695-4e89-aacc-00829a83b469\",\"user_id\":1}', '[]', 54, '2022-02-01 04:06:14', '2022-02-01 04:06:14'),
(56, 'App\\Models\\Product', 58, 'image', 'Johnnie-Walker-18-Anos-Ultimate-Whisky-en-Republica-Dominicana', 'Johnnie-Walker-18-Anos-Ultimate-Whisky-en-Republica-Dominicana.jpg', 'image/jpeg', 'public', 67043, '[]', '{\"uuid\":\"de361af9-0695-4e89-aacc-00829a83b469\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 55, '2022-02-01 04:06:16', '2022-02-01 04:06:17'),
(57, 'App\\Models\\Upload', 29, 'image', 'T-94-450x450', 'T-94-450x450.jpg', 'image/jpeg', 'public', 20255, '[]', '{\"uuid\":\"39d85c5e-3aeb-4a9f-80c5-bedca06947f7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 56, '2022-02-01 04:08:41', '2022-02-01 04:08:41'),
(58, 'App\\Models\\Product', 53, 'image', 'T-94-450x450', 'T-94-450x450.jpg', 'image/jpeg', 'public', 20255, '[]', '{\"uuid\":\"39d85c5e-3aeb-4a9f-80c5-bedca06947f7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 57, '2022-02-01 04:08:43', '2022-02-01 04:08:43'),
(59, 'App\\Models\\Upload', 30, 'image', '2065181-A_1-compressed', '2065181-A_1-compressed.jpg', 'image/jpeg', 'public', 3970, '[]', '{\"uuid\":\"8c39da37-8746-49d4-add4-ebccdce9552d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 58, '2022-02-01 04:09:22', '2022-02-01 04:09:23'),
(60, 'App\\Models\\Product', 55, 'image', '2065181-A_1-compressed', '2065181-A_1-compressed.jpg', 'image/jpeg', 'public', 3970, '[]', '{\"uuid\":\"8c39da37-8746-49d4-add4-ebccdce9552d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 59, '2022-02-01 04:09:27', '2022-02-01 04:09:27'),
(61, 'App\\Models\\Upload', 31, 'image', '2983-0w470h470_Silver_Patron_Tequila', '2983-0w470h470_Silver_Patron_Tequila.jpg', 'image/jpeg', 'public', 15533, '[]', '{\"uuid\":\"441e8304-b825-4aec-8e81-ee73f4f47d7d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 60, '2022-02-01 04:10:00', '2022-02-01 04:10:00'),
(62, 'App\\Models\\Product', 52, 'image', '2983-0w470h470_Silver_Patron_Tequila', '2983-0w470h470_Silver_Patron_Tequila.jpg', 'image/jpeg', 'public', 15533, '[]', '{\"uuid\":\"441e8304-b825-4aec-8e81-ee73f4f47d7d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 61, '2022-02-01 04:10:01', '2022-02-01 04:10:01'),
(63, 'App\\Models\\Upload', 32, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 4575, '[]', '{\"uuid\":\"a08009c8-3e9b-4b05-813f-6c36de85adff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 62, '2022-02-01 04:10:34', '2022-02-01 04:10:34'),
(64, 'App\\Models\\Product', 48, 'image', 'download', 'download.jpg', 'image/jpeg', 'public', 4575, '[]', '{\"uuid\":\"a08009c8-3e9b-4b05-813f-6c36de85adff\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 63, '2022-02-01 04:10:36', '2022-02-01 04:10:36'),
(65, 'App\\Models\\Upload', 33, 'image', 'CIGARRILLO-NEWPORT-VERDE-GRANDE', 'CIGARRILLO-NEWPORT-VERDE-GRANDE.jpg', 'image/jpeg', 'public', 126368, '[]', '{\"uuid\":\"8253f6d6-e723-4707-afa8-01b3afce121f\",\"user_id\":1}', '[]', 64, '2022-02-01 04:12:35', '2022-02-01 04:12:35'),
(66, 'App\\Models\\Product', 49, 'image', 'CIGARRILLO-NEWPORT-VERDE-GRANDE', 'CIGARRILLO-NEWPORT-VERDE-GRANDE.jpg', 'image/jpeg', 'public', 126368, '[]', '{\"uuid\":\"8253f6d6-e723-4707-afa8-01b3afce121f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 65, '2022-02-01 04:12:36', '2022-02-01 04:12:36'),
(67, 'App\\Models\\Upload', 34, 'image', 'V-779', 'V-779.jpg', 'image/jpeg', 'public', 13410, '[]', '{\"uuid\":\"c31034eb-e206-4826-ab17-b1bae2af8367\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 66, '2022-02-01 04:13:24', '2022-02-01 04:13:24'),
(68, 'App\\Models\\Product', 65, 'image', 'V-779', 'V-779.jpg', 'image/jpeg', 'public', 13410, '[]', '{\"uuid\":\"c31034eb-e206-4826-ab17-b1bae2af8367\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 67, '2022-02-01 04:13:26', '2022-02-01 04:13:26'),
(69, 'App\\Models\\Upload', 35, 'image', 'wallpaper2you_13139', 'wallpaper2you_13139.jpg', 'image/jpeg', 'public', 630378, '[]', '{\"uuid\":\"866b63b8-a38c-4d6c-b789-1d6435e1d1e9\",\"user_id\":1}', '[]', 68, '2022-02-01 04:14:10', '2022-02-01 04:14:10'),
(70, 'App\\Models\\Upload', 36, 'image', 'images', 'images.jpg', 'image/jpeg', 'public', 4659, '[]', '{\"uuid\":\"aa11f184-6840-4b12-933e-2ee272d2d593\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 69, '2022-02-01 04:14:15', '2022-02-01 04:14:15'),
(71, 'App\\Models\\Product', 51, 'image', 'images', 'images.jpg', 'image/jpeg', 'public', 4659, '[]', '{\"uuid\":\"aa11f184-6840-4b12-933e-2ee272d2d593\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2022-02-01 04:14:18', '2022-02-01 04:14:18'),
(72, 'App\\Models\\Upload', 37, 'image', 'images', 'images.jpg', 'image/jpeg', 'public', 4659, '[]', '{\"uuid\":\"72bfb720-305b-4c80-96ae-d5d538c13030\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 71, '2022-02-01 04:14:40', '2022-02-01 04:14:41'),
(73, 'App\\Models\\Product', 50, 'image', 'images', 'images.jpg', 'image/jpeg', 'public', 4659, '[]', '{\"uuid\":\"72bfb720-305b-4c80-96ae-d5d538c13030\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 72, '2022-02-01 04:14:44', '2022-02-01 04:14:44'),
(74, 'App\\Models\\Upload', 38, 'image', 'Nuevo proyecto (5)', 'Nuevo-proyecto-(5).png', 'image/png', 'public', 253524, '[]', '{\"uuid\":\"b1226898-b121-44e5-951f-085431b18009\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 73, '2022-02-27 19:16:25', '2022-02-27 19:16:25'),
(76, 'App\\Models\\Upload', 39, 'image', 'Nuevo proyecto (3)', 'Nuevo-proyecto-(3).png', 'image/png', 'public', 241664, '[]', '{\"uuid\":\"b5f6e707-e4a3-457d-bbe7-91ea15feea6a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 75, '2022-02-27 19:16:39', '2022-02-27 19:16:39'),
(78, 'App\\Models\\Upload', 40, 'image', 'Nuevo proyecto (2)', 'Nuevo-proyecto-(2).png', 'image/png', 'public', 405068, '[]', '{\"uuid\":\"b18be3b0-264f-4495-ad1c-cb24e6b22d20\",\"user_id\":1}', '[]', 77, '2022-02-27 19:17:21', '2022-02-27 19:17:21'),
(80, 'App\\Models\\Upload', 41, 'image', 'Nuevo proyecto (1)', 'Nuevo-proyecto-(1).png', 'image/png', 'public', 315092, '[]', '{\"uuid\":\"87f61adf-dda4-4c9c-a61d-1ee071a2199d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 79, '2022-02-27 19:17:41', '2022-02-27 19:17:41'),
(82, 'App\\Models\\Upload', 42, 'image', 'Nuevo proyecto', 'Nuevo-proyecto.png', 'image/png', 'public', 286950, '[]', '{\"uuid\":\"4066639a-40e9-4324-aca7-f228af7aaa33\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 81, '2022-02-27 19:18:04', '2022-02-27 19:18:05'),
(84, 'App\\Models\\Upload', 43, 'image', 'Nuevo proyecto (7)', 'Nuevo-proyecto-(7).png', 'image/png', 'public', 233591, '[]', '{\"uuid\":\"00b9e163-862e-4f77-af94-ef9c1255a909\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 82, '2022-02-27 19:21:11', '2022-02-27 19:21:11'),
(85, 'App\\Models\\Category', 8, 'image', 'Nuevo proyecto (7)', 'Nuevo-proyecto-(7).png', 'image/png', 'public', 233591, '[]', '{\"uuid\":\"00b9e163-862e-4f77-af94-ef9c1255a909\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 83, '2022-02-27 19:21:12', '2022-02-27 19:21:12'),
(86, 'App\\Models\\Upload', 44, 'image', 'Nuevo proyecto (8)', 'Nuevo-proyecto-(8).png', 'image/png', 'public', 258219, '[]', '{\"uuid\":\"375de2c9-a743-4c67-89fd-a28754dadc87\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2022-02-27 19:22:17', '2022-02-27 19:22:17'),
(87, 'App\\Models\\Category', 10, 'image', 'Nuevo proyecto (8)', 'Nuevo-proyecto-(8).png', 'image/png', 'public', 258219, '[]', '{\"uuid\":\"375de2c9-a743-4c67-89fd-a28754dadc87\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 85, '2022-02-27 19:22:19', '2022-02-27 19:22:19'),
(88, 'App\\Models\\Upload', 45, 'image', 'Nuevo proyecto (9)', 'Nuevo-proyecto-(9).png', 'image/png', 'public', 355276, '[]', '{\"uuid\":\"dab96b83-8b35-4394-9eb1-c1445c10cfbc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2022-02-27 19:24:45', '2022-02-27 19:24:45'),
(89, 'App\\Models\\Category', 14, 'image', 'Nuevo proyecto (9)', 'Nuevo-proyecto-(9).png', 'image/png', 'public', 355276, '[]', '{\"uuid\":\"dab96b83-8b35-4394-9eb1-c1445c10cfbc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 87, '2022-02-27 19:24:48', '2022-02-27 19:24:48'),
(90, 'App\\Models\\Upload', 46, 'image', 'kisspng-united-states-solo-cup-company-plastic-cup-red-sol-red-cup-5a996accb0f179.4388574715200037887248', 'kisspng-united-states-solo-cup-company-plastic-cup-red-sol-red-cup-5a996accb0f179.4388574715200037887248.png', 'image/png', 'public', 1992201, '[]', '{\"uuid\":\"db07c987-eca3-492c-bdfd-5fe120a84440\",\"user_id\":1}', '[]', 88, '2022-02-27 19:25:45', '2022-02-27 19:25:45'),
(92, 'App\\Models\\Upload', 47, 'image', 'Nuevo proyecto (10)', 'Nuevo-proyecto-(10).png', 'image/png', 'public', 297752, '[]', '{\"uuid\":\"feeef3ba-bfb0-4ddf-9022-d178edd35322\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 89, '2022-02-27 19:26:19', '2022-02-27 19:26:19'),
(93, 'App\\Models\\Category', 16, 'image', 'Nuevo proyecto (10)', 'Nuevo-proyecto-(10).png', 'image/png', 'public', 297752, '[]', '{\"uuid\":\"feeef3ba-bfb0-4ddf-9022-d178edd35322\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2022-02-27 19:26:21', '2022-02-27 19:26:21'),
(94, 'App\\Models\\Upload', 48, 'image', 'Nuevo proyecto (11)', 'Nuevo-proyecto-(11).png', 'image/png', 'public', 255430, '[]', '{\"uuid\":\"a3427086-984d-4a23-8806-6902bcadd6fd\",\"user_id\":1}', '[]', 91, '2022-02-27 19:27:44', '2022-02-27 19:27:44'),
(95, 'App\\Models\\Category', 15, 'image', 'Nuevo proyecto (11)', 'Nuevo-proyecto-(11).png', 'image/png', 'public', 255430, '[]', '{\"uuid\":\"a3427086-984d-4a23-8806-6902bcadd6fd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 92, '2022-02-27 19:27:46', '2022-02-27 19:27:46'),
(96, 'App\\Models\\Upload', 49, 'image', 'Nuevo proyecto (12)', 'Nuevo-proyecto-(12).png', 'image/png', 'public', 207289, '[]', '{\"uuid\":\"be6f3e69-fa79-4e9f-8eb8-fe4d88aba251\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 93, '2022-02-27 19:30:33', '2022-02-27 19:30:33'),
(98, 'App\\Models\\Upload', 50, 'image', 'Nuevo proyecto (13)', 'Nuevo-proyecto-(13).png', 'image/png', 'public', 199211, '[]', '{\"uuid\":\"d26ba400-c190-4f7f-9c69-fe62fdeb4a6d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 95, '2022-02-27 19:31:35', '2022-02-27 19:31:35'),
(99, 'App\\Models\\Category', 17, 'image', 'Nuevo proyecto (13)', 'Nuevo-proyecto-(13).png', 'image/png', 'public', 199211, '[]', '{\"uuid\":\"d26ba400-c190-4f7f-9c69-fe62fdeb4a6d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2022-02-27 19:31:37', '2022-02-27 19:31:37'),
(100, 'App\\Models\\Upload', 51, 'image', 'Nuevo proyecto (14)', 'Nuevo-proyecto-(14).png', 'image/png', 'public', 193652, '[]', '{\"uuid\":\"0617cf65-fa02-4fd6-a198-25660b61dcf5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 97, '2022-02-27 19:33:10', '2022-02-27 19:33:10'),
(101, 'App\\Models\\Category', 9, 'image', 'Nuevo proyecto (14)', 'Nuevo-proyecto-(14).png', 'image/png', 'public', 193652, '[]', '{\"uuid\":\"0617cf65-fa02-4fd6-a198-25660b61dcf5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2022-02-27 19:33:11', '2022-02-27 19:33:11'),
(102, 'App\\Models\\Upload', 52, 'image', 'Nuevo proyecto (15)', 'Nuevo-proyecto-(15).png', 'image/png', 'public', 217553, '[]', '{\"uuid\":\"de1f243a-51f7-4f67-98c6-20a49771aa90\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 99, '2022-02-27 19:34:48', '2022-02-27 19:34:48'),
(104, 'App\\Models\\Upload', 53, 'image', 'Nuevo proyecto (16)', 'Nuevo-proyecto-(16).png', 'image/png', 'public', 201205, '[]', '{\"uuid\":\"943c3088-fdf3-46ed-b52f-412c39838b1a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 101, '2022-02-27 19:35:51', '2022-02-27 19:35:52'),
(106, 'App\\Models\\Upload', 54, 'image', 'Nuevo proyecto (17)', 'Nuevo-proyecto-(17).png', 'image/png', 'public', 141810, '[]', '{\"uuid\":\"8fa1a5e0-e8fc-442c-8621-892181b2e603\",\"user_id\":1}', '[]', 103, '2022-02-27 19:36:41', '2022-02-27 19:36:41'),
(107, 'App\\Models\\Category', 18, 'image', 'Nuevo proyecto (17)', 'Nuevo-proyecto-(17).png', 'image/png', 'public', 141810, '[]', '{\"uuid\":\"8fa1a5e0-e8fc-442c-8621-892181b2e603\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2022-02-27 19:36:42', '2022-02-27 19:36:42'),
(108, 'App\\Models\\Upload', 55, 'image', 'Nuevo proyecto (18)', 'Nuevo-proyecto-(18).png', 'image/png', 'public', 330597, '[]', '{\"uuid\":\"c82ad684-0604-4aa5-b96d-d40a52606a57\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 105, '2022-02-27 19:38:59', '2022-02-27 19:38:59'),
(109, 'App\\Models\\Category', 13, 'image', 'Nuevo proyecto (18)', 'Nuevo-proyecto-(18).png', 'image/png', 'public', 330597, '[]', '{\"uuid\":\"c82ad684-0604-4aa5-b96d-d40a52606a57\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2022-02-27 19:39:02', '2022-02-27 19:39:02'),
(110, 'App\\Models\\Upload', 56, 'image', 'Nuevo proyecto (19)', 'Nuevo-proyecto-(19).png', 'image/png', 'public', 148672, '[]', '{\"uuid\":\"1c933ee6-dd8c-4870-b647-7f853d937d73\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 107, '2022-02-27 19:50:12', '2022-02-27 19:50:12'),
(112, 'App\\Models\\Upload', 57, 'image', 'Nuevo proyecto (20)', 'Nuevo-proyecto-(20).png', 'image/png', 'public', 166032, '[]', '{\"uuid\":\"fc6d2dd6-78b3-4ebb-9adf-4aab5c85fc98\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2022-02-27 20:23:25', '2022-02-27 20:23:25'),
(114, 'App\\Models\\Upload', 58, 'image', 'Nuevo proyecto (21)', 'Nuevo-proyecto-(21).png', 'image/png', 'public', 175789, '[]', '{\"uuid\":\"08f47a30-4b3a-4c0a-ad49-512aa414d717\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 110, '2022-02-27 20:48:06', '2022-02-27 20:48:06'),
(116, 'App\\Models\\Upload', 59, 'image', '05', '05.jpg', 'image/jpeg', 'public', 212359, '[]', '{\"uuid\":\"51df7c31-4a69-4f58-8e40-eebbae5eb37f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 112, '2022-03-17 15:22:10', '2022-03-17 15:22:10'),
(117, 'App\\Models\\Product', 44, 'image', '05', '05.jpg', 'image/jpeg', 'public', 212359, '[]', '{\"uuid\":\"51df7c31-4a69-4f58-8e40-eebbae5eb37f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 113, '2022-03-17 15:22:12', '2022-03-17 15:22:12'),
(118, 'App\\Models\\Upload', 60, 'image', '08787638-2404691', '08787638-2404691.jpg', 'image/jpeg', 'public', 84136, '[]', '{\"uuid\":\"8104d27d-2a95-4a4d-b9b9-3b2fbf5a476d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 114, '2022-03-17 15:23:29', '2022-03-17 15:23:30'),
(120, 'App\\Models\\Upload', 61, 'image', 'vodka-stolichnaya-litro01', 'vodka-stolichnaya-litro01.jpg', 'image/jpeg', 'public', 55062, '[]', '{\"uuid\":\"c3233f9f-ba58-4c2d-925c-da376edab515\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, '2022-03-17 15:26:08', '2022-03-17 15:26:08'),
(121, 'App\\Models\\Product', 45, 'image', 'vodka-stolichnaya-litro01', 'vodka-stolichnaya-litro01.jpg', 'image/jpeg', 'public', 55062, '[]', '{\"uuid\":\"c3233f9f-ba58-4c2d-925c-da376edab515\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 117, '2022-03-17 15:26:10', '2022-03-17 15:26:10'),
(122, 'App\\Models\\Upload', 62, 'image', 'ruskov', 'ruskov.jpg', 'image/jpeg', 'public', 44054, '[]', '{\"uuid\":\"df26b7b9-82bf-4bbc-90a8-9cad89de779a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 118, '2022-03-17 15:29:25', '2022-03-17 15:29:25'),
(124, 'App\\Models\\Upload', 63, 'image', 'PRESIDENTE GL 8OZ', 'PRESIDENTE-GL-8OZ.jpg', 'image/jpeg', 'public', 17473, '[]', '{\"uuid\":\"16673787-1a44-450c-b567-cba036595373\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 120, '2022-03-17 16:34:44', '2022-03-17 16:34:44'),
(125, 'App\\Models\\Product', 43, 'image', 'PRESIDENTE GL 8OZ', 'PRESIDENTE-GL-8OZ.jpg', 'image/jpeg', 'public', 17473, '[]', '{\"uuid\":\"16673787-1a44-450c-b567-cba036595373\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, '2022-03-17 16:34:53', '2022-03-17 16:34:53'),
(126, 'App\\Models\\Upload', 64, 'image', '62f91f9af9e5a12490589d73cf9fb2a76dca65a0_Tequila_30506_01', '62f91f9af9e5a12490589d73cf9fb2a76dca65a0_Tequila_30506_01.jpg', 'image/jpeg', 'public', 17177, '[]', '{\"uuid\":\"b9cf0b68-05ca-4edb-bddc-5c49c6bf4412\",\"user_id\":1}', '[]', 122, '2022-04-07 14:24:52', '2022-04-07 14:24:52'),
(128, 'App\\Models\\Upload', 65, 'image', 'R-74-1', 'R-74-1.jpg', 'image/jpeg', 'public', 20274, '[]', '{\"uuid\":\"4d2c4b80-16d7-4a5f-9846-6dd2850ad708\",\"user_id\":1}', '[]', 124, '2022-04-07 14:29:00', '2022-04-07 14:29:00'),
(130, 'App\\Models\\Upload', 66, 'image', 'R-74-1', 'R-74-1.jpg', 'image/jpeg', 'public', 20274, '[]', '{\"uuid\":\"e4c8e493-4349-4150-aa88-11f71c8af596\",\"user_id\":1}', '[]', 125, '2022-04-13 17:01:22', '2022-04-13 17:01:22'),
(131, 'App\\Models\\Upload', 67, 'image', 'download (5) (1)', 'download-(5)-(1).jpeg', 'image/jpeg', 'public', 6823, '[]', '{\"uuid\":\"defced9b-5265-4cba-96a4-b8c276c21413\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 126, '2022-05-04 05:00:16', '2022-05-04 05:00:16'),
(133, 'App\\Models\\Upload', 68, 'image', 'download (3) (1)', 'download-(3)-(1).jpeg', 'image/jpeg', 'public', 6416, '[]', '{\"uuid\":\"933c7b7d-7989-420d-98e4-7bfb80caca78\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 128, '2022-05-04 05:00:36', '2022-05-04 05:00:36'),
(135, 'App\\Models\\Upload', 69, 'image', 'download (6) (1)', 'download-(6)-(1).jpeg', 'image/jpeg', 'public', 10373, '[]', '{\"uuid\":\"e8c4e5e1-9fb2-4d9d-95af-d6d98559df2a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 130, '2022-05-04 05:00:41', '2022-05-04 05:00:41'),
(137, 'App\\Models\\Upload', 70, 'image', '095506_22082016_723_C16_Website_DG_Buchanans_Master_MEX_Banner (1)', '095506_22082016_723_C16_Website_DG_Buchanans_Master_MEX_Banner-(1).jpg', 'image/jpeg', 'public', 73820, '[]', '{\"uuid\":\"4210eef0-a5b2-4a30-880c-0ee9559cd3d1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2022-05-04 05:01:57', '2022-05-04 05:01:57'),
(138, 'App\\Models\\Slider', 3, 'image', '095506_22082016_723_C16_Website_DG_Buchanans_Master_MEX_Banner (1)', '095506_22082016_723_C16_Website_DG_Buchanans_Master_MEX_Banner-(1).jpg', 'image/jpeg', 'public', 73820, '[]', '{\"uuid\":\"4210eef0-a5b2-4a30-880c-0ee9559cd3d1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 132, '2022-05-04 05:02:00', '2022-05-04 05:02:00'),
(139, 'App\\Models\\Upload', 71, 'image', 'download (9) (1)', 'download-(9)-(1).jpeg', 'image/jpeg', 'public', 10029, '[]', '{\"uuid\":\"a1eb4b5b-ce69-4491-ab26-81371a8ceac1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 133, '2022-05-04 05:03:21', '2022-05-04 05:03:21'),
(140, 'App\\Models\\Slider', 1, 'image', 'download (9) (1)', 'download-(9)-(1).jpeg', 'image/jpeg', 'public', 10029, '[]', '{\"uuid\":\"a1eb4b5b-ce69-4491-ab26-81371a8ceac1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 134, '2022-05-04 05:03:22', '2022-05-04 05:03:22'),
(141, 'App\\Models\\Upload', 72, 'image', 'download (8) (1)', 'download-(8)-(1).jpeg', 'image/jpeg', 'public', 7704, '[]', '{\"uuid\":\"81bccb48-8f92-43d3-9c51-73b30fe3e195\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, '2022-05-04 05:03:26', '2022-05-04 05:03:26'),
(142, 'App\\Models\\Slider', 2, 'image', 'download (8) (1)', 'download-(8)-(1).jpeg', 'image/jpeg', 'public', 7704, '[]', '{\"uuid\":\"81bccb48-8f92-43d3-9c51-73b30fe3e195\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 136, '2022-05-04 05:03:28', '2022-05-04 05:03:28'),
(143, 'App\\Models\\Upload', 73, 'image', 'download (3) (1)', 'download-(3)-(1).jpeg', 'image/jpeg', 'public', 6416, '[]', '{\"uuid\":\"d63b9d3c-117d-4336-b71c-24608f099b16\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 137, '2022-05-04 05:54:28', '2022-05-04 05:54:28'),
(144, 'App\\Models\\Slider', 4, 'image', 'download (3) (1)', 'download-(3)-(1).jpeg', 'image/jpeg', 'public', 6416, '[]', '{\"uuid\":\"d63b9d3c-117d-4336-b71c-24608f099b16\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 138, '2022-05-04 05:54:29', '2022-05-04 05:54:29'),
(145, 'App\\Models\\Upload', 74, 'image', 'download (6) (1)', 'download-(6)-(1).jpeg', 'image/jpeg', 'public', 10373, '[]', '{\"uuid\":\"7aeb4571-e31e-43fd-b0e7-f5e8550b5ca0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 139, '2022-05-04 05:55:07', '2022-05-04 05:55:07'),
(147, 'App\\Models\\Upload', 75, 'image', 'download (5) (1)', 'download-(5)-(1).jpeg', 'image/jpeg', 'public', 6823, '[]', '{\"uuid\":\"424eb671-bb77-451b-a54d-432a551ee43d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2022-05-04 05:56:59', '2022-05-04 05:56:59'),
(149, 'App\\Models\\Upload', 76, 'avatar', 'newchic-hombres-de-una-pieza-plus-terciopelo-a-prueba-de-viento-mantengase-abrigado-montar-a-caballo-al-aire-libre-cuello-proteccion-para-la-cabeza-de-punto-sombrero-gorro', 'newchic-hombres-de-una-pieza-plus-terciopelo-a-prueba-de-viento-mantengase-abrigado-montar-a-caballo-al-aire-libre-cuello-proteccion-para-la-cabeza-de-punto-sombrero-gorro.jpg', 'image/jpeg', 'public', 24052, '[]', '{\"uuid\":\"b43831bc-fd76-4e30-8a8c-60803213a9c3\",\"user_id\":1}', '[]', 143, '2022-06-07 17:18:58', '2022-06-07 17:18:58'),
(150, 'App\\Models\\Upload', 77, 'avatar', 'newchic-hombres-de-una-pieza-plus-terciopelo-a-prueba-de-viento-mantengase-abrigado-montar-a-caballo-al-aire-libre-cuello-proteccion-para-la-cabeza-de-punto-sombrero-gorro', 'newchic-hombres-de-una-pieza-plus-terciopelo-a-prueba-de-viento-mantengase-abrigado-montar-a-caballo-al-aire-libre-cuello-proteccion-para-la-cabeza-de-punto-sombrero-gorro.jpg', 'image/jpeg', 'public', 24052, '[]', '{\"uuid\":\"d845453a-8ecc-46c6-ae0d-dfd970ef78da\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 144, '2022-06-07 17:19:09', '2022-06-07 17:19:10'),
(151, 'App\\Models\\User', 5, 'avatar', 'newchic-hombres-de-una-pieza-plus-terciopelo-a-prueba-de-viento-mantengase-abrigado-montar-a-caballo-al-aire-libre-cuello-proteccion-para-la-cabeza-de-punto-sombrero-gorro', 'newchic-hombres-de-una-pieza-plus-terciopelo-a-prueba-de-viento-mantengase-abrigado-montar-a-caballo-al-aire-libre-cuello-proteccion-para-la-cabeza-de-punto-sombrero-gorro.jpg', 'image/jpeg', 'public', 24052, '[]', '{\"uuid\":\"d845453a-8ecc-46c6-ae0d-dfd970ef78da\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 145, '2022-06-07 17:19:11', '2022-06-07 17:19:11'),
(152, 'App\\Models\\Upload', 78, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"1af99a76-f4c6-4f15-8598-0ee205b4e930\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 146, '2022-10-12 16:45:32', '2022-10-12 16:45:32'),
(154, 'App\\Models\\Upload', 79, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"192499ba-46cb-4e1c-b0f3-c485b38545de\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 147, '2022-10-12 16:59:06', '2022-10-12 16:59:06'),
(155, 'App\\Models\\Upload', 80, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"ec2e15e7-d325-47e5-8393-1ffab026a054\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 148, '2022-10-12 17:00:31', '2022-10-12 17:00:31'),
(156, 'App\\Models\\Upload', 81, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"4500fc9c-4249-4d33-80f7-3da15a4f990e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, '2022-10-12 17:06:00', '2022-10-12 17:06:00'),
(157, 'App\\Models\\Upload', 82, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"b1528da0-5e5a-4fba-a9ab-0ceb01ffda22\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 150, '2022-10-12 17:17:24', '2022-10-12 17:17:24'),
(166, 'App\\Models\\Upload', 90, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"3e618105-3db4-4914-931e-e0dcba3b2106\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 152, '2022-10-12 18:45:55', '2022-10-12 18:45:55'),
(223, 'App\\Models\\Upload', 136, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"8ef4eee6-e16e-4532-982e-43bed8540b88\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 153, '2022-10-12 23:03:35', '2022-10-12 23:03:35'),
(224, 'App\\Models\\Upload', 137, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"45705cbc-0399-465f-8264-e1a674985bfc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 154, '2022-10-12 23:24:51', '2022-10-12 23:24:51'),
(226, 'App\\Models\\Upload', 138, 'video', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"e301144f-13b9-4bcb-b84c-91ee9f92049b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 155, '2022-10-12 23:27:20', '2022-10-12 23:27:20'),
(227, 'App\\Models\\Upload', 139, 'video', 'luxembourg-1', 'luxembourg-1.jpg', 'image/jpeg', 'public', 10790, '[]', '{\"uuid\":\"a048bba7-a2d6-46e7-a3bd-fa1f832e5d8c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 156, '2022-10-12 23:27:53', '2022-10-12 23:27:54'),
(228, 'App\\Models\\Upload', 140, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"225d0168-2fba-4a9e-a79e-1fd875728776\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 157, '2022-10-13 00:05:34', '2022-10-13 00:05:34'),
(229, 'App\\Models\\Upload', 141, 'video', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"c2e2adb1-b0d1-49aa-a679-88c008910022\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 158, '2022-10-13 00:11:12', '2022-10-13 00:11:12'),
(230, 'App\\Models\\Upload', 142, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"1ed1e6b9-3884-454f-ba36-6ff4ce76aa9b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 159, '2022-10-13 01:04:10', '2022-10-13 01:04:11'),
(231, 'App\\Models\\Upload', 143, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"d5d47e23-da5d-43c9-a4df-2c35c3b19a98\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 160, '2022-10-13 01:04:39', '2022-10-13 01:04:39'),
(232, 'App\\Models\\Upload', 144, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"a7334acd-62c2-4968-bd15-2604975812c7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 161, '2022-10-13 01:05:49', '2022-10-13 01:05:49'),
(233, 'App\\Models\\Upload', 145, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"1029ab02-1275-4470-9290-4fe31550118b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 162, '2022-10-13 01:06:34', '2022-10-13 01:06:34'),
(234, 'App\\Models\\Upload', 146, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"c8d8c8c6-d850-4d1f-a4f9-014b1ed923db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 163, '2022-10-13 01:06:47', '2022-10-13 01:06:47'),
(235, 'App\\Models\\Upload', 147, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"2ce33178-a828-4977-a355-863bfd1b5255\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 164, '2022-10-13 01:08:32', '2022-10-13 01:08:32'),
(236, 'App\\Models\\Ticket', 8, 'image', 'Bolshoi theatre', 'Bolshoi-theatre.jpg', 'image/jpeg', 'public', 27026, '[]', '{\"uuid\":\"2ce33178-a828-4977-a355-863bfd1b5255\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 165, '2022-10-13 01:08:34', '2022-10-13 01:08:34'),
(237, 'App\\Models\\Upload', 148, 'image', 'Garden Theatre', 'Garden-Theatre.jpg', 'image/jpeg', 'public', 17202, '[]', '{\"uuid\":\"be33211f-a2d6-4a42-a1fa-1d9b064a15de\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 166, '2022-10-13 01:09:33', '2022-10-13 01:09:34'),
(238, 'App\\Models\\Upload', 149, 'image', 'New Wimbedom Theatre Box Office', 'New-Wimbedom-Theatre-Box-Office.jpg', 'image/jpeg', 'public', 22053, '[]', '{\"uuid\":\"e7891bc7-3eb9-4570-9836-748c221144d2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 167, '2022-10-13 01:09:52', '2022-10-13 01:09:52'),
(239, 'App\\Models\\Upload', 150, 'image', 'The Piccadilly Theatre London', 'The-Piccadilly-Theatre-London.jpg', 'image/jpeg', 'public', 25127, '[]', '{\"uuid\":\"4f6c9dcf-e149-4e67-a299-e72993264ac8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 168, '2022-10-13 01:11:05', '2022-10-13 01:11:05'),
(241, 'App\\Models\\Upload', 151, 'image', 'The Piccadilly Theatre London', 'The-Piccadilly-Theatre-London.jpg', 'image/jpeg', 'public', 25127, '[]', '{\"uuid\":\"14ea1a31-f1f0-4b6e-9681-589ba9636360\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 170, '2022-10-13 01:11:44', '2022-10-13 01:11:44'),
(242, 'App\\Models\\Ticket', 10, 'image', 'The Piccadilly Theatre London', 'The-Piccadilly-Theatre-London.jpg', 'image/jpeg', 'public', 25127, '[]', '{\"uuid\":\"14ea1a31-f1f0-4b6e-9681-589ba9636360\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2022-10-13 01:11:47', '2022-10-13 01:11:47'),
(243, 'App\\Models\\Upload', 152, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"cc318c53-8af5-4cdd-b0cc-8e7df46db852\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 172, '2022-10-13 02:10:07', '2022-10-13 02:10:07'),
(246, 'App\\Models\\Upload', 153, 'image', 'The Piccadilly Theatre London', 'The-Piccadilly-Theatre-London.jpg', 'image/jpeg', 'public', 25127, '[]', '{\"uuid\":\"b3034fe0-b634-42cf-bb5c-bb41975c4f09\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2022-10-13 02:47:50', '2022-10-13 02:47:50'),
(247, 'App\\Models\\Upload', 154, 'image', 'Theatres in Liverpool', 'Theatres-in-Liverpool.jpg', 'image/jpeg', 'public', 35601, '[]', '{\"uuid\":\"2ad0d345-ef44-4f6e-a766-914dc7cc1ce0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 174, '2022-10-13 02:59:23', '2022-10-13 02:59:23'),
(248, 'App\\Models\\Ticket', 13, 'image', 'Theatres in Liverpool', 'Theatres-in-Liverpool.jpg', 'image/jpeg', 'public', 35601, '[]', '{\"uuid\":\"2ad0d345-ef44-4f6e-a766-914dc7cc1ce0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 175, '2022-10-13 02:59:27', '2022-10-13 02:59:27'),
(249, 'App\\Models\\Upload', 155, 'image', 'Theatres in Liverpool', 'Theatres-in-Liverpool.jpg', 'image/jpeg', 'public', 35601, '[]', '{\"uuid\":\"01fc3a5d-33c5-4382-abc8-ec1209d2bbc0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 176, '2022-10-13 09:33:53', '2022-10-13 09:33:53'),
(250, 'App\\Models\\Slider', 7, 'image', 'Theatres in Liverpool', 'Theatres-in-Liverpool.jpg', 'image/jpeg', 'public', 35601, '[]', '{\"uuid\":\"01fc3a5d-33c5-4382-abc8-ec1209d2bbc0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 177, '2022-10-13 09:33:55', '2022-10-13 09:33:55'),
(251, 'App\\Models\\Upload', 156, 'image', 'Nuevo-proyecto-(13)-icon', 'Nuevo-proyecto-(13)-icon.jpg', 'image/jpeg', 'public', 3997, '[]', '{\"uuid\":\"ed29411b-123c-4541-ad46-3e2de505424f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 178, '2022-10-13 11:18:45', '2022-10-13 11:18:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_fields_table', 1),
(10, '2019_08_29_213821_create_stores_table', 1),
(11, '2019_08_29_213822_create_brands_table', 1),
(12, '2019_08_29_213822_create_categories_table', 1),
(13, '2019_08_29_213826_create_option_groups_table', 1),
(14, '2019_08_29_213829_create_faq_categories_table', 1),
(15, '2019_08_29_213833_create_order_statuses_table', 1),
(16, '2019_08_29_213837_create_products_table', 1),
(17, '2019_08_29_213838_create_options_table', 1),
(18, '2019_08_29_213842_create_galleries_table', 1),
(19, '2019_08_29_213847_create_product_reviews_table', 1),
(20, '2019_08_29_213921_create_payments_table', 1),
(21, '2019_08_29_213922_create_delivery_addresses_table', 1),
(22, '2019_08_29_213926_create_faqs_table', 1),
(23, '2019_08_29_213940_create_store_reviews_table', 1),
(24, '2019_08_30_152927_create_favorites_table', 1),
(25, '2019_08_31_111104_create_orders_table', 1),
(26, '2019_09_04_153857_create_carts_table', 1),
(27, '2019_09_04_153858_create_favorite_options_table', 1),
(28, '2019_09_04_153859_create_cart_options_table', 1),
(29, '2019_09_04_153958_create_product_orders_table', 1),
(30, '2019_09_04_154957_create_product_order_options_table', 1),
(31, '2019_09_04_163857_create_user_stores_table', 1),
(32, '2019_10_22_144652_create_currencies_table', 1),
(33, '2019_12_14_134302_create_driver_stores_table', 1),
(34, '2020_03_25_094752_create_drivers_table', 1),
(35, '2020_03_25_094802_create_earnings_table', 1),
(36, '2020_03_25_094809_create_drivers_payouts_table', 1),
(37, '2020_03_25_094817_create_stores_payouts_table', 1),
(38, '2020_03_27_094855_create_notifications_table', 1),
(39, '2020_04_11_135804_create_store_fields_table', 1),
(40, '2020_05_20_002854_create_sliders_table', 1),
(41, '2020_09_20_151121_create_coupons_table', 1),
(42, '2020_09_20_151256_create_discountables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(4, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 36),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 41),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 43),
(4, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 45),
(4, 'App\\Models\\User', 46),
(4, 'App\\Models\\User', 47),
(4, 'App\\Models\\User', 48),
(4, 'App\\Models\\User', 49),
(4, 'App\\Models\\User', 50),
(4, 'App\\Models\\User', 51),
(4, 'App\\Models\\User', 52);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0030ed6e-ba4c-44d3-97a5-3250a06524aa', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":131}', NULL, '2022-08-25 22:34:22', '2022-08-25 22:34:22'),
('00590280-54d3-496d-9f1b-986c98a8db9b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":65}', NULL, '2022-06-12 08:06:31', '2022-06-12 08:06:31'),
('0091ca92-6d2a-4764-b26b-b97ad313bc3b', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-28 21:17:10', '2022-06-28 21:17:10'),
('01848974-2a69-4c05-b5c6-7c829f954b39', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":18}', NULL, '2022-05-06 16:22:54', '2022-05-06 16:22:54'),
('02a50a7c-51c8-4c8b-af79-fed7d6b4b54d', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":125}', NULL, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
('0468cad3-5b5b-4a86-a0df-2dd94fa94717', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":118}', NULL, '2022-07-29 22:12:45', '2022-07-29 22:12:45'),
('059f1aa9-e180-401b-b6cd-ef14e86e7282', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":57}', NULL, '2022-06-04 13:01:47', '2022-06-04 13:01:47'),
('063db69f-6cb3-49e4-8db8-d6588a996e22', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":172}', NULL, '2022-09-03 08:17:29', '2022-09-03 08:17:29'),
('0658b117-2642-4c6f-b43f-66b29b7a91b7', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 12:20:59', '2022-06-13 12:20:59'),
('06f8323d-2d6f-422f-8af1-20b13637a019', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":175}', NULL, '2022-10-02 22:04:45', '2022-10-02 22:04:45'),
('08d0cd1c-74ee-4f16-a654-5c40f086fed5', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":2}', NULL, '2022-02-16 18:03:04', '2022-02-16 18:03:04'),
('093ccdfb-cfac-4752-b566-cc9afba1b972', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":69}', NULL, '2022-06-13 20:12:27', '2022-06-13 20:12:27'),
('0a702743-31ce-4707-a94e-ee18555f5272', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":52}', NULL, '2022-05-30 21:38:46', '2022-05-30 21:38:46'),
('0af43840-b5ea-4256-af15-9f72c7523e8c', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":74}', NULL, '2022-06-28 23:05:13', '2022-06-28 23:05:13'),
('0b4f5e97-7605-45ee-8e03-c6e2807b6bb2', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":61}', NULL, '2022-06-07 17:46:03', '2022-06-07 17:46:03'),
('0c0395fa-d684-4ba9-b1d8-dafa07d49186', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":76}', NULL, '2022-06-29 07:43:27', '2022-06-29 07:43:27'),
('0c4a1f5f-ccdf-40db-8396-abb1cf3da905', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":133}', NULL, '2022-08-25 22:43:07', '2022-08-25 22:43:07'),
('0c97d52d-1aa6-4175-bdba-d747b8ca093c', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":67}', NULL, '2022-06-13 17:09:33', '2022-06-13 17:09:33'),
('0cb26bb2-5320-4453-bea1-d95ab491504f', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":60}', NULL, '2022-06-07 17:28:06', '2022-06-07 17:28:06'),
('0d916fd3-e2d4-471b-aa59-d7ad091c5022', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":157}', NULL, '2022-09-02 02:17:35', '2022-09-02 02:17:35'),
('0f63ddb2-afb6-4f43-b4d4-61f2dfa4a82d', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":93}', NULL, '2022-07-21 03:20:51', '2022-07-21 03:20:51'),
('0fabeae7-9e51-4ebd-9502-d74183c2b99b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":63}', NULL, '2022-06-10 01:34:10', '2022-06-10 01:34:10'),
('0fec85b5-7f63-486e-9b3a-d44c1cf45e49', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 12:04:51', '2022-06-13 12:04:51'),
('124fdd32-427d-41d3-8092-abb669621967', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":1}', NULL, '2022-02-03 18:27:52', '2022-02-03 18:27:52'),
('1372745d-6536-4d1b-a667-1dc87ebd44ed', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":88}', NULL, '2022-07-12 04:24:43', '2022-07-12 04:24:43'),
('13c711a6-bbfb-4c1b-b8d4-d2293a2c8c82', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":87}', NULL, '2022-07-12 04:21:27', '2022-07-12 04:21:27'),
('13ccc32e-b3b2-43f0-9801-efaae0edf858', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":186}', NULL, '2022-10-11 04:33:04', '2022-10-11 04:33:04'),
('156b8d4d-a4e4-40d5-8415-cee065e56bfb', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":187}', NULL, '2022-10-11 04:47:39', '2022-10-11 04:47:39'),
('17184d56-850d-4e2d-b6fc-bd53801ebb9d', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 10:07:33', '2022-08-18 10:07:33'),
('174fc778-2498-495d-8957-32f1628f7d6d', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":119}', NULL, '2022-08-02 17:06:35', '2022-08-02 17:06:35'),
('17be86c2-2acf-43e2-9514-aecfadb94a69', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":25}', NULL, '2022-05-13 07:00:18', '2022-05-13 07:00:18'),
('1a41864a-fcd1-46c2-918f-c28c9660d7a4', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":132}', NULL, '2022-08-25 22:35:16', '2022-08-25 22:35:16'),
('1a71bec9-405c-40d0-9c6e-741b8cd8ece9', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":178}', NULL, '2022-10-05 17:58:43', '2022-10-05 17:58:43'),
('1ac8710c-12ec-47cf-ba62-ca227ea2198e', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":47}', NULL, '2022-05-18 01:28:35', '2022-05-18 01:28:35'),
('1b36c013-56fe-4d59-a673-096a21b6213b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":132}', NULL, '2022-08-25 22:34:46', '2022-08-25 22:34:46'),
('1bef0b03-514b-4312-af72-65e7712553c8', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":75}', NULL, '2022-06-29 07:38:32', '2022-06-29 07:38:32'),
('1d260e17-8fc9-4317-832f-a9a8f34769ce', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":182}', NULL, '2022-10-07 04:14:41', '2022-10-07 04:14:41'),
('1d5b88b4-a50c-48f8-a791-5bab4bf668a1', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":56}', NULL, '2022-05-31 20:43:55', '2022-05-31 20:43:55'),
('2005415e-6d55-4118-9b51-5ca8e27079ad', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":90}', NULL, '2022-07-19 05:01:25', '2022-07-19 05:01:25'),
('20e1e0dd-d9df-4c3f-9bd6-1b876f117a4a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":76}', NULL, '2022-06-29 07:43:01', '2022-06-29 07:43:01'),
('214671ac-8899-4397-b698-28f11b060a52', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":90}', NULL, '2022-07-19 05:00:17', '2022-07-19 05:00:17'),
('214bf7f7-5d61-499c-a79c-8d7fa05a6317', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":59}', NULL, '2022-06-07 15:40:58', '2022-06-07 15:40:58'),
('22fcd0bd-aa26-4230-bd43-6976f7f30cc5', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":89}', NULL, '2022-07-15 23:09:14', '2022-07-15 23:09:14'),
('23aacfe6-9086-40dc-b329-03380f19f95e', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":71}', NULL, '2022-06-26 08:18:17', '2022-06-26 08:18:17'),
('248bfc7a-a0bc-40b1-8cdf-deb5a5847d40', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":2}', NULL, '2022-05-15 19:23:56', '2022-05-15 19:23:56'),
('24cb64e1-8575-4fb0-ab68-6bae7836c2f4', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 40, '{\"order_id\":58}', NULL, '2022-06-07 13:51:09', '2022-06-07 13:51:09'),
('25317566-b6a1-41f9-a597-106a56df051a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":94}', NULL, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
('25374f19-6677-432e-818e-abd22bd8789b', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 12:22:19', '2022-06-13 12:22:19'),
('26df1f62-9dd2-4ccb-a28c-035e89723a06', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":77}', NULL, '2022-06-29 20:01:30', '2022-06-29 20:01:30'),
('26f2c5b6-c920-46d8-9318-570bffdc76c9', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":136}', NULL, '2022-08-29 17:58:40', '2022-08-29 17:58:40'),
('28962837-5175-46e8-82de-409fb642b3b3', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":44}', NULL, '2022-05-16 16:45:18', '2022-05-16 16:45:18'),
('28f396c4-15f8-489a-b4c2-79489e8b722f', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":175}', NULL, '2022-10-02 22:05:01', '2022-10-02 22:05:01'),
('2934bdfb-4638-4d76-a5c3-72f743712533', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":40}', NULL, '2022-05-16 16:23:59', '2022-05-16 16:23:59'),
('296430b3-ed32-45b5-9784-9f1e88e52eba', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":133}', NULL, '2022-08-25 22:43:40', '2022-08-25 22:43:40'),
('2bb0099c-7cc9-4fff-a803-151dcec81715', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 10:16:14', '2022-08-18 10:16:14'),
('2c1f43a7-9e6c-4c86-a1f3-89909fab9ec9', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":13}', NULL, '2022-04-12 22:54:26', '2022-04-12 22:54:26'),
('2c24a54d-d90f-4376-a05e-3c62ab9c2fd4', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":89}', NULL, '2022-07-12 05:21:44', '2022-07-12 05:21:44'),
('2d3ce0bb-2681-424e-a5c8-ac913f515e4c', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":121}', NULL, '2022-08-03 03:20:21', '2022-08-03 03:20:21'),
('2d734fe7-e606-4e3b-9891-3ed2b9142fdf', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":1}', NULL, '2022-02-03 18:28:10', '2022-02-03 18:28:10'),
('2d94db3c-1439-455e-872a-c35122094bd9', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":174}', NULL, '2022-09-29 11:42:26', '2022-09-29 11:42:26'),
('2ed89920-0075-4509-90a5-eb55c6bc3070', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":72}', NULL, '2022-06-26 08:20:58', '2022-06-26 08:20:58'),
('308e3409-f346-4cae-99d0-88f51e689a68', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 09:51:43', '2022-08-18 09:51:43'),
('31cfac08-a632-4eab-bba9-9892f08a75c7', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":127}', NULL, '2022-08-12 17:29:57', '2022-08-12 17:29:57'),
('3228c329-0fb7-4f75-aca7-3de3830d5198', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":67}', NULL, '2022-06-13 17:09:50', '2022-06-13 17:09:50'),
('32e6f412-546f-4454-8fee-2f1c6b0be93b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":99}', NULL, '2022-07-21 20:30:37', '2022-07-21 20:30:37'),
('3368d870-0d78-43d7-bb0d-26f48d4b691f', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":51}', NULL, '2022-05-30 21:22:26', '2022-05-30 21:22:26'),
('3418f62c-e7aa-4424-8062-6007f1f85cd9', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":55}', NULL, '2022-05-31 20:17:01', '2022-05-31 20:17:01'),
('34600c0a-853f-4f78-9527-175b6815d806', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":114}', NULL, '2022-07-26 21:58:17', '2022-07-26 21:58:17'),
('3532e6d2-f1e5-4bf8-b47a-38d52016be67', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":44}', NULL, '2022-05-16 16:45:05', '2022-05-16 16:45:05'),
('3620dbd8-f2ab-4378-84a4-3d968ff01324', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":130}', NULL, '2022-08-25 22:27:17', '2022-08-25 22:27:17'),
('36db46b7-3933-4e2a-ba7c-ad37bcb49ff0', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":90}', NULL, '2022-07-19 05:01:25', '2022-07-19 05:01:25'),
('3825794c-4f9c-4d13-aeb9-289a95fa3eee', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":52}', NULL, '2022-05-30 21:38:46', '2022-05-30 21:38:46'),
('38a3ddbe-afa7-459c-8f58-c1a9cc4ce92b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":150}', NULL, '2022-09-02 02:12:17', '2022-09-02 02:12:17'),
('3c227744-05a7-4ec7-a28e-ac7e93018851', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":47}', NULL, '2022-05-18 02:03:08', '2022-05-18 02:03:08'),
('3d033429-8193-4b87-90cb-650dc4ed059e', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":54}', NULL, '2022-05-31 17:09:03', '2022-05-31 17:09:03'),
('3d88dfac-6b98-4086-8136-8bff9051f205', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":98}', NULL, '2022-07-21 20:25:48', '2022-07-21 20:25:48'),
('3db9f6ce-0edc-4f8c-aa17-b2ce4f649556', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":51}', NULL, '2022-05-30 21:21:38', '2022-05-30 21:21:38'),
('3dc6c26c-bb8e-404f-a822-3db28d21900a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":129}', NULL, '2022-08-18 15:58:40', '2022-08-18 15:58:40'),
('3e140c34-e8ec-46f1-a907-fadfe2519e4c', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":73}', NULL, '2022-06-28 21:14:31', '2022-06-28 21:14:31'),
('3ff33ca7-2562-4839-a3e1-59ec2053fec5', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":58}', NULL, '2022-06-07 13:51:09', '2022-06-07 13:51:09'),
('400c0f14-f051-4019-959c-7c9b48c8520b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":126}', NULL, '2022-08-12 07:27:13', '2022-08-12 07:27:13'),
('4093d393-5a43-4939-a71c-1ca8285e585f', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":133}', NULL, '2022-08-25 22:45:48', '2022-08-25 22:45:48'),
('40efb3f1-d27d-4a38-911d-31fa91fef442', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":132}', NULL, '2022-08-25 22:43:55', '2022-08-25 22:43:55'),
('416a50b8-b008-4853-a0e6-754addd75392', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 40, '{\"order_id\":58}', NULL, '2022-06-07 13:51:40', '2022-06-07 13:51:40'),
('4193ad1a-3176-46fb-8e76-c0cec5c34adb', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":43}', NULL, '2022-05-16 16:37:47', '2022-05-16 16:37:47'),
('420dc03d-5c3d-46d7-bdf0-e60123d4f6d3', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 21:42:40', '2022-08-18 21:42:40'),
('439d8acd-243e-4eed-ae44-d31cdc4e9ffc', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":111}', NULL, '2022-07-26 21:55:12', '2022-07-26 21:55:12'),
('455c2ea9-80c4-4c1a-936f-05305774bee0', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":124}', NULL, '2022-08-12 07:14:01', '2022-08-12 07:14:01'),
('490e39f6-01e1-487a-8a17-0e7fa05ed8f7', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":186}', NULL, '2022-10-11 04:33:04', '2022-10-11 04:33:04'),
('4b670b91-b84c-4d7a-adda-0f7d3964fe0c', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":122}', NULL, '2022-08-10 17:30:50', '2022-08-10 17:30:50'),
('4b7ba7ae-ac10-4a6b-9b83-e7225a5dfb26', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":69}', NULL, '2022-06-25 17:13:03', '2022-06-25 17:13:03'),
('4b9854f4-ab58-43f7-8335-db8dd175bfc7', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":121}', NULL, '2022-08-03 03:20:07', '2022-08-03 03:20:07'),
('4c60d956-3637-40ca-a54a-6ecd8d98b163', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":13}', NULL, '2022-04-12 22:55:13', '2022-04-12 22:55:13'),
('4dea4e38-e9d7-443d-bc02-57d494c26293', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":64}', NULL, '2022-06-12 06:21:16', '2022-06-12 06:21:16'),
('4e6ca089-86dc-4531-bad7-92a8f23cb103', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":70}', NULL, '2022-06-26 08:09:47', '2022-06-26 08:09:47'),
('4f21c959-dac0-41fa-a929-7a0012bfc3dc', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":73}', NULL, '2022-06-28 17:24:23', '2022-06-28 17:24:23'),
('4fd3f3e7-2d8f-4d37-ad96-d8c07e3436bf', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":73}', NULL, '2022-06-28 21:14:40', '2022-06-28 21:14:40'),
('50124207-64f6-4510-b2b1-e5c3bc4ac51d', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":80}', NULL, '2022-07-04 15:40:31', '2022-07-04 15:40:31'),
('508cf878-704f-4c64-bc94-c654ba7cda46', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":129}', NULL, '2022-08-18 21:41:53', '2022-08-18 21:41:53'),
('509b8386-569a-473b-b3d9-d79bb7e5e01b', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":44}', NULL, '2022-05-16 16:45:18', '2022-05-16 16:45:18'),
('5151a5c5-5b9b-4ee5-8dda-e43a101c25b2', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":134}', NULL, '2022-08-25 22:43:30', '2022-08-25 22:43:30'),
('52eba3d6-f7b6-4b8c-9683-409f3c4a66c5', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":60}', NULL, '2022-06-07 16:44:01', '2022-06-07 16:44:01'),
('534102a5-aad8-4148-bade-d35f2bcc71f1', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":73}', NULL, '2022-06-28 17:25:17', '2022-06-28 17:25:17'),
('54fac941-a0b8-4b08-8409-66fffc2e489d', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":123}', NULL, '2022-08-11 17:54:23', '2022-08-11 17:54:23'),
('581383ee-5563-4827-9f4d-dd82d93bbe84', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":50}', NULL, '2022-05-30 21:01:30', '2022-05-30 21:01:30'),
('589efccd-fd7c-4b51-aa3e-6263c2e1e5f5', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":26}', NULL, '2022-05-13 07:01:20', '2022-05-13 07:01:20'),
('5b6ec554-ea48-41dc-87bf-30ad91d86e29', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":179}', NULL, '2022-10-05 19:57:32', '2022-10-05 19:57:32'),
('5d0a9c7d-b958-485b-a192-beaf2bd864af', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":178}', NULL, '2022-10-05 17:57:57', '2022-10-05 17:57:57'),
('5d3b00a5-f5ea-4738-a31d-6f9c5957b06a', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 11:38:58', '2022-06-13 11:38:58'),
('5f274ccd-4f46-4071-940e-35fc1b5ff404', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":13}', NULL, '2022-04-12 22:53:52', '2022-04-12 22:53:52'),
('619826b5-9301-41b6-a8d8-e2943e305e5e', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":128}', NULL, '2022-08-18 15:57:34', '2022-08-18 15:57:34'),
('622b5666-e39f-4e58-bb88-069d41d13064', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":75}', NULL, '2022-06-29 07:38:32', '2022-06-29 07:38:32'),
('62778028-c7f8-4dde-a58b-2050b8d52efe', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":22}', NULL, '2022-05-13 06:01:13', '2022-05-13 06:01:13'),
('641f2f57-95ba-4ba0-8125-169db42fe299', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":125}', NULL, '2022-08-12 07:22:14', '2022-08-12 07:22:14'),
('6459dda4-c9a9-44df-abb6-4ef3bd2e0443', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":137}', NULL, '2022-08-31 23:28:57', '2022-08-31 23:28:57'),
('64df7690-bbc8-45d1-91fb-5064e7b61957', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":60}', NULL, '2022-06-07 17:28:06', '2022-06-07 17:28:06'),
('64dfb058-6be3-47cc-8bd3-0016e55d8b37', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":64}', NULL, '2022-06-12 06:21:43', '2022-06-12 06:21:43'),
('65d97259-ab97-4307-b408-21dce7e25fb5', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":137}', NULL, '2022-08-31 23:28:57', '2022-08-31 23:28:57'),
('6620ad7c-1d01-4a8c-8e61-b7a1c9125f3f', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":170}', NULL, '2022-09-02 19:42:48', '2022-09-02 19:42:48'),
('675bf8c6-443d-4d83-9427-7dc2e86cbcf0', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":99}', NULL, '2022-07-21 20:31:06', '2022-07-21 20:31:06'),
('699f38e2-77f7-4e91-91e8-4bb1e5461e50', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":78}', NULL, '2022-07-02 11:30:31', '2022-07-02 11:30:31'),
('6a2b35ee-5ee3-4b82-a1d5-49fa2609679f', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":134}', NULL, '2022-08-25 22:42:43', '2022-08-25 22:42:43'),
('6a6c9ce0-d29c-4dfa-b11b-a1e5e3600cd3', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":134}', NULL, '2022-08-25 22:43:47', '2022-08-25 22:43:47'),
('6ade7940-8eb9-4253-866e-8a73a43b6eb9', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":58}', NULL, '2022-06-07 13:49:54', '2022-06-07 13:49:54'),
('6bb90561-8333-48c1-bcb0-c147e48808be', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":53}', NULL, '2022-05-30 21:41:46', '2022-05-30 21:41:46'),
('6c3cdbe8-4e1f-4f3f-9565-c3c944ce169b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":149}', NULL, '2022-09-02 02:11:28', '2022-09-02 02:11:28'),
('6c7f3c6a-7c53-4510-b1ac-18d7e27cb46e', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":95}', NULL, '2022-07-21 14:32:10', '2022-07-21 14:32:10'),
('6c9040f2-f650-4e54-a7be-ea9a7e96f8da', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":162}', NULL, '2022-09-02 19:11:41', '2022-09-02 19:11:41'),
('6da932a9-b707-4ca3-90a2-8da2d3b7f4f8', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":107}', NULL, '2022-07-25 01:17:21', '2022-07-25 01:17:21'),
('6dbd9a7a-8390-417c-9fa5-dfd19ef90665', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":109}', NULL, '2022-07-26 21:41:29', '2022-07-26 21:41:29'),
('6e03424d-d030-4e24-bb8d-fef92486f3e4', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 11:38:39', '2022-06-13 11:38:39'),
('6e5f654d-9da9-41d5-8322-91ebb84edfbb', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":46}', NULL, '2022-05-18 01:27:08', '2022-05-18 01:27:08'),
('713a1887-3ae3-4165-843c-29d17c76dc0a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":48}', NULL, '2022-05-29 18:49:11', '2022-05-29 18:49:11'),
('713d2960-7585-4eb3-80c3-96660cb80085', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":92}', NULL, '2022-07-20 22:17:12', '2022-07-20 22:17:12'),
('73194431-74ed-457d-8b1f-7647ec1eb240', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":183}', NULL, '2022-10-07 21:19:54', '2022-10-07 21:19:54'),
('73530bfe-8078-4989-be9a-6edc404c9229', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":4}', NULL, '2022-02-16 18:21:06', '2022-02-16 18:21:06'),
('74804fb9-f082-4a53-b369-af12a6a2d3ee', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":100}', NULL, '2022-07-21 22:41:45', '2022-07-21 22:41:45'),
('7775ca47-74ea-4751-9ac2-0a97e475a047', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":173}', NULL, '2022-09-03 08:17:57', '2022-09-03 08:17:57'),
('789871ee-b8c5-41c8-be94-54a8b5f76849', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 12:18:37', '2022-06-13 12:18:37'),
('7ac293d2-d5e5-4de8-b794-b1e10d7a18d0', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":39}', NULL, '2022-05-16 16:22:26', '2022-05-16 16:22:26'),
('7c3bf074-4841-458e-9984-9c42537ada54', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":57}', NULL, '2022-06-04 13:17:32', '2022-06-04 13:17:32'),
('7cb139f1-5b97-4353-beb9-c7723d454e6e', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":75}', NULL, '2022-06-29 07:34:58', '2022-06-29 07:34:58'),
('7e6b2234-f822-49df-9fdd-94000e0683bb', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 40, '{\"order_id\":78}', NULL, '2022-07-02 11:30:52', '2022-07-02 11:30:52'),
('7e6bfae2-578d-417e-8b0c-74c714711959', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":42}', NULL, '2022-05-16 16:32:51', '2022-05-16 16:32:51'),
('7e9d92c8-3f6e-4204-92da-128beac78d4b', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":13}', NULL, '2022-04-12 22:56:44', '2022-04-12 22:56:44'),
('7ee55aea-e8ba-4240-b42a-ccdcd9a50564', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":127}', NULL, '2022-08-12 17:38:22', '2022-08-12 17:38:22'),
('80350319-6bad-440d-94b3-b1dba07de211', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":49}', NULL, '2022-05-30 17:29:21', '2022-05-30 17:29:21'),
('803ad40b-2e2b-4bab-af23-aa649de227c1', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":176}', NULL, '2022-10-03 22:52:18', '2022-10-03 22:52:18'),
('8202b65a-2959-4117-88a0-b7313e47be41', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":98}', NULL, '2022-07-21 20:26:04', '2022-07-21 20:26:04'),
('826655ca-5f88-4fb8-acc2-dec7423e88cf', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":76}', NULL, '2022-06-29 07:43:28', '2022-06-29 07:43:28'),
('826bace9-3321-4107-bb6f-d550494cb008', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":169}', NULL, '2022-09-02 19:26:58', '2022-09-02 19:26:58'),
('837045b0-2ef5-4fa5-9a4f-ef586508d337', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":52}', NULL, '2022-05-30 21:38:22', '2022-05-30 21:38:22'),
('8455725c-5982-4bd3-937e-4f28af841a35', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":116}', NULL, '2022-07-26 22:30:36', '2022-07-26 22:30:36'),
('845fd09f-2805-49df-95e4-08e8d06f375e', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":48}', NULL, '2022-05-29 18:50:22', '2022-05-29 18:50:22'),
('85241be2-13db-4db7-9bc1-b7def3a1f997', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":49}', NULL, '2022-05-30 17:30:40', '2022-05-30 17:30:40'),
('857d4bd4-01de-4f86-b144-75a827870ee6', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":3}', NULL, '2022-02-16 18:06:54', '2022-02-16 18:06:54'),
('86f378aa-eb01-48b1-b26e-40ae3aff436a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":152}', NULL, '2022-09-02 02:13:11', '2022-09-02 02:13:11'),
('885b0467-90ac-4937-b65f-234e750aeed1', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":78}', NULL, '2022-07-02 11:29:25', '2022-07-02 11:29:25'),
('8a5693ed-614e-49f3-8f46-36a18253b4b7', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":120}', NULL, '2022-08-02 22:49:48', '2022-08-02 22:49:48'),
('8d5f0d98-2aa7-4492-90f8-0d6f7d8ca17e', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":137}', NULL, '2022-08-31 23:28:29', '2022-08-31 23:28:29'),
('8e915540-d33d-4eb4-ae6e-c1540e18484b', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":122}', NULL, '2022-08-10 17:31:35', '2022-08-10 17:31:35'),
('90f1e6de-8ad1-443e-bc98-5e24cfe1bf5b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":105}', NULL, '2022-07-25 01:00:11', '2022-07-25 01:00:11'),
('92029a2e-3b87-4eec-8924-c16b713be418', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":68}', NULL, '2022-06-13 19:53:55', '2022-06-13 19:53:55'),
('926fb9ab-b2f1-4ff4-8b11-16eec5aec681', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":49}', NULL, '2022-05-30 17:30:40', '2022-05-30 17:30:40'),
('94aa1dc1-aef3-44d5-9bd8-13aaaddda859', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":135}', NULL, '2022-08-25 22:46:25', '2022-08-25 22:46:25'),
('955c5c14-5d53-4f9c-83d0-305486d63213', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":71}', NULL, '2022-06-26 08:17:56', '2022-06-26 08:17:56'),
('956fd95d-f1d1-43bd-8697-95f14d070982', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":120}', NULL, '2022-08-02 22:48:33', '2022-08-02 22:48:33'),
('990037a4-d261-40d0-91ff-b2d99a660074', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":72}', NULL, '2022-06-26 08:20:58', '2022-06-26 08:20:58'),
('99193e6f-7f90-4d41-a17e-cc5563c59ff3', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":128}', NULL, '2022-08-18 15:57:17', '2022-08-18 15:57:17'),
('9a91c177-4293-4886-be50-2e89f7cc0fc5', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":126}', NULL, '2022-08-12 07:27:24', '2022-08-12 07:27:24'),
('9bb9cb2a-7697-4a49-9976-1bb9d8f5117d', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":117}', NULL, '2022-07-26 22:33:19', '2022-07-26 22:33:19'),
('9be7826a-759a-40dd-8212-b669c8e5bc78', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":50}', NULL, '2022-05-30 21:01:04', '2022-05-30 21:01:04'),
('9c4906b7-d1c0-4276-af29-93eb405a9786', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":56}', NULL, '2022-05-31 20:43:55', '2022-05-31 20:43:55'),
('9c634631-d4c0-401f-81e3-d1a9d3bb0a5f', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":170}', NULL, '2022-09-02 19:46:45', '2022-09-02 19:46:45'),
('9dc739f9-5bbc-4835-833a-6b9e91d71ae9', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":175}', NULL, '2022-10-02 22:05:01', '2022-10-02 22:05:01'),
('9e8fd59a-fbd4-42f4-9e1e-c8569bde8ad9', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":55}', NULL, '2022-05-31 20:15:39', '2022-05-31 20:15:39'),
('9f2d0b48-a5a3-4ba7-ac62-7cdfce3c33f0', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":129}', NULL, '2022-08-18 15:59:08', '2022-08-18 15:59:08'),
('a2329520-b913-4958-af89-1663597847ee', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":184}', NULL, '2022-10-07 22:10:52', '2022-10-07 22:10:52'),
('a27a5884-a0bc-42dc-9be3-5af583d97fc8', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":42}', NULL, '2022-05-16 16:33:18', '2022-05-16 16:33:18'),
('a2c60b7a-8ee2-4d16-be56-bd6bca4eea56', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":177}', NULL, '2022-10-04 02:20:26', '2022-10-04 02:20:26'),
('a3ce0dfd-d6e0-4ca7-ab93-bc35ba4637c5', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":123}', NULL, '2022-08-11 17:54:23', '2022-08-11 17:54:23'),
('a3e2e385-99b6-4440-8f64-07878ee02bb3', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":131}', NULL, '2022-08-25 22:32:18', '2022-08-25 22:32:18'),
('a4a7964a-0dd2-4f1f-a7bd-26b3219bf650', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":79}', NULL, '2022-07-03 02:01:53', '2022-07-03 02:01:53'),
('a821fd6f-6612-44c7-958c-dede3ff63c10', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":71}', NULL, '2022-06-26 08:18:17', '2022-06-26 08:18:17'),
('a85164a6-028a-461c-a04d-a50d19379aa0', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":63}', NULL, '2022-06-10 01:34:20', '2022-06-10 01:34:20'),
('a8728802-6a49-45d4-ba09-9bcc150f3ca6', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":46}', NULL, '2022-05-18 01:25:33', '2022-05-18 01:25:33'),
('a8a5b7f1-995e-42f4-b7c4-ee5b63f8fd89', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":47}', NULL, '2022-05-18 02:03:08', '2022-05-18 02:03:08'),
('a9241d4f-6761-4841-b2f6-8e37534313b3', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":64}', NULL, '2022-06-12 06:21:43', '2022-06-12 06:21:43'),
('a98cd5ec-2a78-447a-a337-d0fb721f9ca5', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":45}', NULL, '2022-05-16 18:45:37', '2022-05-16 18:45:37'),
('aa8fc89e-bdca-46c9-94ad-bc0513c71c46', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":89}', NULL, '2022-07-15 23:09:42', '2022-07-15 23:09:42'),
('aa97d4af-f788-40f2-b0e5-e71fde2effc7', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":24}', NULL, '2022-05-13 06:28:02', '2022-05-13 06:28:02'),
('ab8fb87d-21fb-42f7-8648-3f11a6c11e42', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":125}', NULL, '2022-08-12 07:22:15', '2022-08-12 07:22:15'),
('abc596b5-e6ea-48f3-ae5f-f25b516ad920', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":51}', NULL, '2022-05-30 21:22:12', '2022-05-30 21:22:12'),
('abf87ab0-3b0d-4af5-979d-0e5d7a6044e4', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":59}', NULL, '2022-06-07 15:42:20', '2022-06-07 15:42:20'),
('abfc90af-7364-43ae-aa28-9e3d3fca9e66', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":37}', NULL, '2022-05-16 16:19:58', '2022-05-16 16:19:58'),
('ac2df934-8a41-4c91-8132-6cfecd5947bf', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":3}', NULL, '2022-02-16 18:06:54', '2022-02-16 18:06:54'),
('acc1d24b-0b41-4f4e-bcaa-151bd57f57d9', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":112}', NULL, '2022-07-26 21:55:48', '2022-07-26 21:55:48'),
('acd0ef60-0457-473c-abff-a4b63752b4b1', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":55}', NULL, '2022-05-31 20:17:01', '2022-05-31 20:17:01'),
('b15e7296-6d75-420a-bf71-02aeb8d06504', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":60}', NULL, '2022-06-07 17:15:13', '2022-06-07 17:15:13'),
('b16552b1-957b-476b-a69d-f6fafcf52933', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":92}', NULL, '2022-07-19 17:15:34', '2022-07-19 17:15:34'),
('b1df04c6-69db-4b5e-8ea5-c1ae5eeb6f05', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":133}', NULL, '2022-08-25 22:39:03', '2022-08-25 22:39:03'),
('b1eddeec-765f-4e2b-9149-c8730b033937', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":146}', NULL, '2022-09-02 02:04:25', '2022-09-02 02:04:25'),
('b26e0389-ebea-436f-be39-fd25d11092f5', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 12:10:42', '2022-06-13 12:10:42'),
('b28d36b2-9b7c-40e9-850f-2176a1a622ab', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":91}', NULL, '2022-07-19 17:15:07', '2022-07-19 17:15:07'),
('b2c77d2e-4317-4e42-bc25-8d62e97b6066', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":14}', NULL, '2022-04-13 03:07:36', '2022-04-13 03:07:36'),
('b36e390b-4de0-452c-96b0-f8b45b0e3542', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":135}', NULL, '2022-08-25 22:45:52', '2022-08-25 22:45:52'),
('b40dce57-c7ef-49e4-8dec-2c92b915eb91', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":185}', NULL, '2022-10-08 08:30:02', '2022-10-08 08:30:02'),
('b44cb57a-1742-4c4a-a5ae-06ddb80ff825', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":74}', NULL, '2022-06-28 23:05:56', '2022-06-28 23:05:56'),
('b4bdc922-4705-45e9-b794-ec6a2c8a52be', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":88}', NULL, '2022-07-12 04:24:43', '2022-07-12 04:24:43'),
('b59623c3-229a-469f-b954-9aa2fd474ce9', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":93}', NULL, '2022-07-21 03:21:13', '2022-07-21 03:21:13'),
('b782ab7c-5604-477b-80ad-52d328bfe33f', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":122}', NULL, '2022-08-11 17:54:00', '2022-08-11 17:54:00'),
('b7e35ccf-0cfe-41e2-a66a-18fca6b84b1d', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":43}', NULL, '2022-05-16 16:37:47', '2022-05-16 16:37:47'),
('b882e637-bbba-4326-9b57-3cd612d97f10', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":61}', NULL, '2022-06-07 17:47:03', '2022-06-07 17:47:03'),
('b8d7515a-8eea-421a-8755-c210c6d34ac6', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":131}', NULL, '2022-08-25 22:33:54', '2022-08-25 22:33:54'),
('b8e6e869-a719-4300-9ba8-00df27a00a62', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":13}', NULL, '2022-04-12 22:54:57', '2022-04-12 22:54:57'),
('b9dafdea-a07e-4e49-8bfe-dfab69b56009', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 6, '{\"order_id\":60}', NULL, '2022-06-07 17:27:01', '2022-06-07 17:27:01'),
('bab97dec-3e35-423c-a33e-e7a3e3f0c075', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":118}', NULL, '2022-07-29 22:51:42', '2022-07-29 22:51:42'),
('bc6745b8-9d8a-409b-a448-3d69828228ae', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":46}', NULL, '2022-05-18 01:26:17', '2022-05-18 01:26:17'),
('bfd36c3a-40e1-40ff-9cfb-99e57418fcbd', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":128}', NULL, '2022-08-18 15:57:34', '2022-08-18 15:57:34'),
('c0ee052e-ba65-40b9-afb8-e2ca358232bd', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":65}', NULL, '2022-06-12 08:07:11', '2022-06-12 08:07:11'),
('c1779151-01f1-4d43-9eb7-a344c21f61ff', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":130}', NULL, '2022-08-25 22:27:39', '2022-08-25 22:27:39'),
('c1d21cac-e8ba-40eb-a01f-756e1d3e9a7f', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":54}', NULL, '2022-05-31 17:09:22', '2022-05-31 17:09:22'),
('c3e4f2fe-d142-4921-9b5e-f512b0e77872', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":88}', NULL, '2022-07-12 04:24:28', '2022-07-12 04:24:28'),
('c3fb6e52-b8ed-4341-8f90-a64258da6409', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":13}', NULL, '2022-04-12 22:53:52', '2022-04-12 22:53:52'),
('c4228126-ecca-4820-93c1-f0782e7ce244', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":110}', NULL, '2022-07-26 21:41:39', '2022-07-26 21:41:39'),
('c5ce39cb-dcdf-454a-9b8f-ae00915e4359', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":92}', NULL, '2022-07-20 22:17:12', '2022-07-20 22:17:12'),
('c719582d-341f-46a3-865e-17d0900d88f5', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":42}', NULL, '2022-05-16 16:33:18', '2022-05-16 16:33:18'),
('c8d607d1-5f7e-4ed2-b111-a16ea0326b09', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":101}', NULL, '2022-07-21 22:50:18', '2022-07-21 22:50:18'),
('c932aab0-497b-4136-9cd8-2298f513d32f', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":24}', NULL, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
('c9e70d66-d105-4e6c-965b-d4b90dfc6d0b', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":97}', NULL, '2022-07-21 20:16:10', '2022-07-21 20:16:10'),
('cb3580eb-f8ab-4676-96a5-c20ee75e059f', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":144}', NULL, '2022-09-02 02:03:11', '2022-09-02 02:03:11'),
('cdb0aee3-7708-4083-b633-5c1c77af7530', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":46}', NULL, '2022-05-18 01:26:17', '2022-05-18 01:26:17'),
('d07af4da-f409-4e45-b0d1-27ac8f9cb16c', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":59}', NULL, '2022-06-07 15:42:20', '2022-06-07 15:42:20'),
('d1aba1f1-a3b1-4723-98a0-0bcc2395db53', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":134}', NULL, '2022-08-25 22:42:28', '2022-08-25 22:42:28'),
('d218e807-cd34-44ad-b56f-cc9321639d65', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":48}', NULL, '2022-05-29 18:50:22', '2022-05-29 18:50:22'),
('d2305bbf-39af-44d3-a965-f32e34174480', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":77}', NULL, '2022-06-29 20:04:15', '2022-06-29 20:04:15'),
('d26d174d-f685-4833-a616-3f3ec5fd1db7', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":43}', NULL, '2022-05-16 16:37:34', '2022-05-16 16:37:34'),
('d2a109e4-4e21-486d-81d0-91916cf2fbff', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":131}', NULL, '2022-08-25 22:32:50', '2022-08-25 22:32:50'),
('d441a0c3-d9e8-4386-a8b0-b4538291d81d', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":68}', NULL, '2022-06-13 19:53:48', '2022-06-13 19:53:48'),
('d4835da2-8b82-4a7a-8eb5-fa0d7d9f2ad5', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":136}', NULL, '2022-08-29 17:58:28', '2022-08-29 17:58:28'),
('d4c521bb-3702-47a8-b901-d2010f45e704', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":23}', NULL, '2022-05-13 06:06:54', '2022-05-13 06:06:54'),
('d6ef95f3-a264-4dc7-a197-49a84eb46388', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":54}', NULL, '2022-05-31 17:09:22', '2022-05-31 17:09:22'),
('d77ebb58-bb7e-42cc-927a-634bdd7bbcd1', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":56}', NULL, '2022-05-31 20:43:33', '2022-05-31 20:43:33'),
('d868d74b-af78-47a1-a5af-51075258f72b', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":129}', NULL, '2022-08-18 15:59:08', '2022-08-18 15:59:08'),
('d8ae37a8-a649-413d-8926-8da9fe0f4cec', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":186}', NULL, '2022-10-11 04:30:19', '2022-10-11 04:30:19'),
('da45b42c-121f-448c-b189-e01d80409435', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":170}', NULL, '2022-09-02 19:46:45', '2022-09-02 19:46:45'),
('da56fbdf-0a62-4fe7-8d43-c799e35f07a0', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":123}', NULL, '2022-08-11 17:53:42', '2022-08-11 17:53:42'),
('daba18c8-7b6e-41fb-9f79-f8c08bfb88c9', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":66}', NULL, '2022-06-13 12:25:10', '2022-06-13 12:25:10'),
('db4decf5-3784-4b80-8ece-fc66a36a9fe7', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":41}', NULL, '2022-05-16 16:27:13', '2022-05-16 16:27:13'),
('dc09041d-eca2-41b8-ac7e-4e90fbbf4721', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":62}', NULL, '2022-06-08 21:46:20', '2022-06-08 21:46:20'),
('dcfc0566-1778-4d80-bdf6-4f9b33ce4db1', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":21}', NULL, '2022-05-12 20:21:26', '2022-05-12 20:21:26'),
('dd1d4c54-05f8-4994-851f-89a2a1c66893', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":133}', NULL, '2022-08-25 22:38:10', '2022-08-25 22:38:10'),
('dd4679bd-270d-491e-9bbc-1341a6191966', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 40, '{\"order_id\":57}', NULL, '2022-06-04 13:24:44', '2022-06-04 13:24:44'),
('de2e3ba9-070f-4bf6-bca1-f116f418bd2b', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":66}', NULL, '2022-06-12 19:05:39', '2022-06-12 19:05:39'),
('dea53bf8-ff79-481e-8680-0a06a1330688', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 40, '{\"order_id\":57}', NULL, '2022-06-04 13:17:32', '2022-06-04 13:17:32'),
('df164b50-5bae-4cc2-8c9f-c50c0a74cebe', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":51}', NULL, '2022-05-30 21:21:25', '2022-05-30 21:21:25'),
('e089887c-8327-4fbc-aa2e-d7bec423f084', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":180}', NULL, '2022-10-06 16:34:54', '2022-10-06 16:34:54'),
('e0ba5578-5b40-49f8-bb39-8610b7c8cf10', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":167}', NULL, '2022-09-02 19:23:35', '2022-09-02 19:23:35'),
('e1228c73-397e-44c9-b167-853012f22590', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":61}', NULL, '2022-06-08 17:56:01', '2022-06-08 17:56:01'),
('e166d5ed-02e3-4082-b5cd-c2419639d9fd', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":124}', NULL, '2022-08-12 07:14:31', '2022-08-12 07:14:31'),
('e19aeba3-3d01-403e-8252-2fdc31e64cd6', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":102}', NULL, '2022-07-22 20:37:34', '2022-07-22 20:37:34'),
('e3bef26a-02fd-46cc-8dcd-f166f0b9af73', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":2}', NULL, '2022-02-16 18:03:04', '2022-02-16 18:03:04'),
('e42d1943-5872-41d9-b933-4c517d8053b3', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":96}', NULL, '2022-07-21 14:41:01', '2022-07-21 14:41:01'),
('e555fbc7-16a1-41ea-854a-d7d13291b817', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":50}', NULL, '2022-05-30 21:01:30', '2022-05-30 21:01:30'),
('e6346044-3146-405f-abc0-67903bdf8093', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 10:03:09', '2022-08-18 10:03:09'),
('e68f9404-6d91-44ad-b772-06260e7b1902', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":21}', NULL, '2022-05-12 20:21:26', '2022-05-12 20:21:26'),
('e6c9ca10-2a47-410e-8187-758e1f9fbbea', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":70}', NULL, '2022-06-26 08:10:30', '2022-06-26 08:10:30'),
('e7035e39-cc25-4066-b365-8d15e585f5e1', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":66}', NULL, '2022-06-12 19:04:06', '2022-06-12 19:04:06'),
('e72a00f9-a31a-4dca-95b1-56a8aba3b3ec', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":119}', NULL, '2022-08-02 16:45:28', '2022-08-02 16:45:28'),
('e734541f-7a9d-4d1c-92c3-c34c64141adf', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":87}', NULL, '2022-07-12 04:21:57', '2022-07-12 04:21:57'),
('e8022c84-8fd6-4c0d-9f8a-d0f86faf55b2', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":131}', NULL, '2022-08-25 22:33:44', '2022-08-25 22:33:44'),
('ec6397c2-2fad-49fd-a211-5c221fb9cbb7', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":122}', NULL, '2022-08-11 17:54:13', '2022-08-11 17:54:13'),
('ec86619a-dbaa-4b22-bd1e-780784c6e1ed', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 09:39:50', '2022-08-18 09:39:50'),
('ed4e594b-ac37-49fb-9a75-667244dd971c', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":178}', NULL, '2022-10-05 17:58:43', '2022-10-05 17:58:43'),
('eee0dda3-05c8-43ed-94c1-61d08287cc8f', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":14}', NULL, '2022-04-13 03:07:36', '2022-04-13 03:07:36'),
('eff571f2-43a0-4945-8c0a-e03d0688297a', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":79}', NULL, '2022-07-03 02:01:23', '2022-07-03 02:01:23'),
('f27c068d-b2f9-4bce-9a22-caa21f0a05b5', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":87}', NULL, '2022-07-12 04:21:57', '2022-07-12 04:21:57'),
('f28d0505-f4fd-446b-abcd-dbf66dd2a229', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":127}', NULL, '2022-08-18 10:17:14', '2022-08-18 10:17:14'),
('f333cc44-5feb-4831-9a83-35ffedc77b8b', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 9, '{\"order_id\":69}', NULL, '2022-06-25 17:13:03', '2022-06-25 17:13:03'),
('f380b839-cf5c-41b5-8b65-e6af04dff776', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":115}', NULL, '2022-07-26 22:08:13', '2022-07-26 22:08:13'),
('f438341e-ff43-4626-8e06-ad0a765e5174', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":72}', NULL, '2022-06-26 08:20:27', '2022-06-26 08:20:27'),
('f4e2e13b-823d-4e0e-a039-568f9549e356', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":1}', NULL, '2022-02-03 18:27:52', '2022-02-03 18:27:52'),
('f8799097-267f-4592-a0a0-d0c2b580b0d4', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":45}', NULL, '2022-05-16 18:46:03', '2022-05-16 18:46:03'),
('f8944b50-302c-4d6f-ac68-b4fdc483ffa1', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":4}', NULL, '2022-02-16 18:21:06', '2022-02-16 18:21:06'),
('fb0e3b62-9a68-436a-8513-9c649e796898', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":53}', NULL, '2022-05-30 21:41:46', '2022-05-30 21:41:46'),
('fc01fbc8-67f0-4128-89da-7b1a667d7878', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":63}', NULL, '2022-06-11 12:43:22', '2022-06-11 12:43:22');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('fc5dc3fe-1263-496c-9506-3f7e84648f06', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":89}', NULL, '2022-07-12 05:22:39', '2022-07-12 05:22:39'),
('fcd6335f-012d-48c7-924d-ba3bcee7578c', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 7, '{\"order_id\":1}', NULL, '2022-02-03 18:34:17', '2022-02-03 18:34:17'),
('fce8ff69-7e8c-46f8-8eac-04d6601274fb', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":53}', NULL, '2022-05-30 21:41:32', '2022-05-30 21:41:32'),
('fd45c3be-c4af-4c8a-a738-d50894fa1b14', 'App\\Notifications\\AssignedOrder', 'App\\Models\\User', 5, '{\"order_id\":124}', NULL, '2022-08-12 07:14:31', '2022-08-12 07:14:31'),
('fdb1772d-535b-4f9c-aad5-8923f08fc8e6', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":181}', NULL, '2022-10-07 01:14:28', '2022-10-07 01:14:28'),
('fe15aa58-d885-492f-af51-cdaf67ac49dc', 'App\\Notifications\\NewOrder', 'App\\Models\\User', 35, '{\"order_id\":165}', NULL, '2022-09-02 19:14:22', '2022-09-02 19:14:22'),
('ff8918ed-4208-44de-8462-0d04f1efe9f4', 'App\\Notifications\\StatusChangedOrder', 'App\\Models\\User', 8, '{\"order_id\":63}', NULL, '2022-06-11 12:39:55', '2022-06-11 12:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 10:55:28', '2019-08-31 10:55:28'),
(2, 'Color', '2019-10-09 13:26:28', '2019-10-09 13:26:28'),
(3, 'Parfum', '2019-10-09 13:26:28', '2019-10-09 13:26:28'),
(4, 'Taste', '2019-10-09 13:26:28', '2019-10-09 13:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_status_id`, `tax`, `delivery_fee`, `hint`, `active`, `driver_id`, `delivery_address_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 0.00, 0.00, NULL, 1, 5, NULL, 1, '2022-02-03 18:24:37', '2022-02-03 18:34:17'),
(2, 9, 3, 0.00, 0.00, NULL, 1, 5, NULL, 2, '2022-02-05 04:28:44', '2022-05-15 19:23:56'),
(3, 7, 5, 0.00, 0.00, NULL, 1, 5, NULL, 3, '2022-02-16 18:06:38', '2022-02-16 18:13:43'),
(4, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 4, '2022-02-16 18:20:32', '2022-02-16 18:27:34'),
(5, 7, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 5, '2022-02-20 04:05:39', '2022-02-20 04:05:39'),
(6, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 6, '2022-02-22 17:51:34', '2022-02-22 17:51:34'),
(7, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 7, '2022-02-25 17:36:24', '2022-02-25 17:36:24'),
(8, 18, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 8, '2022-02-26 20:15:11', '2022-02-26 20:15:11'),
(9, 20, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 9, '2022-03-10 11:08:12', '2022-03-10 11:08:12'),
(10, 20, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 10, '2022-03-10 11:11:30', '2022-03-10 11:11:30'),
(11, 21, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 11, '2022-03-11 20:01:07', '2022-03-11 20:01:07'),
(12, 17, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 12, '2022-03-12 21:29:57', '2022-03-12 21:29:57'),
(14, 7, 5, 0.00, 0.00, NULL, 1, 5, NULL, 14, '2022-04-13 03:06:55', '2022-05-13 04:39:51'),
(15, 26, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 15, '2022-04-14 21:49:46', '2022-04-14 21:49:46'),
(16, 26, 1, 0.00, 0.00, NULL, 1, NULL, 21, NULL, '2022-04-14 22:28:15', '2022-04-14 22:28:15'),
(17, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 16, '2022-04-26 23:12:45', '2022-04-26 23:12:45'),
(18, 7, 5, 0.00, 0.00, NULL, 1, 5, NULL, 17, '2022-05-06 16:19:35', '2022-05-08 03:18:25'),
(19, 34, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 18, '2022-05-09 01:01:52', '2022-05-09 01:01:52'),
(20, 34, 1, 0.00, 0.00, NULL, 1, NULL, 24, 19, '2022-05-09 01:03:51', '2022-05-09 01:03:51'),
(21, 8, 5, 0.00, 0.00, NULL, 1, 5, 25, 20, '2022-05-12 19:47:45', '2022-05-13 05:52:30'),
(22, 8, 5, 0.00, 0.00, NULL, 1, 5, 25, 21, '2022-05-13 05:57:56', '2022-05-13 06:03:46'),
(23, 8, 5, 0.00, 0.00, NULL, 1, 5, NULL, 22, '2022-05-13 06:05:57', '2022-05-13 06:09:13'),
(24, 8, 5, 0.00, 0.00, NULL, 1, 5, NULL, 23, '2022-05-13 06:27:23', '2022-05-15 19:25:14'),
(25, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 24, '2022-05-13 07:00:17', '2022-05-13 07:00:17'),
(26, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 25, '2022-05-13 07:01:20', '2022-05-13 07:01:20'),
(37, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 26, '2022-05-16 16:19:58', '2022-05-16 16:19:58'),
(39, 7, 1, 0.00, 0.00, NULL, 1, NULL, 20, 27, '2022-05-16 16:22:26', '2022-05-16 16:22:26'),
(40, 7, 1, 0.00, 0.00, NULL, 1, NULL, 20, 28, '2022-05-16 16:23:59', '2022-05-16 16:23:59'),
(41, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 29, '2022-05-16 16:27:13', '2022-05-16 16:27:13'),
(42, 7, 5, 0.00, 0.00, NULL, 1, 5, 28, 30, '2022-05-16 16:32:51', '2022-05-18 01:52:15'),
(44, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 32, '2022-05-16 16:45:05', '2022-05-16 19:27:10'),
(45, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 33, '2022-05-16 18:45:37', '2022-05-18 01:28:00'),
(46, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 34, '2022-05-18 01:25:33', '2022-05-18 02:01:27'),
(47, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 35, '2022-05-18 01:28:34', '2022-05-30 21:21:15'),
(48, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 36, '2022-05-29 18:49:11', '2022-05-29 19:39:40'),
(49, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 37, '2022-05-30 17:29:21', '2022-05-30 21:21:23'),
(50, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 38, '2022-05-30 21:01:04', '2022-05-30 21:35:42'),
(51, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 39, '2022-05-30 21:21:24', '2022-05-30 21:35:48'),
(52, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 40, '2022-05-30 21:38:22', '2022-05-30 21:41:30'),
(53, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 41, '2022-05-30 21:41:32', '2022-05-30 21:50:38'),
(54, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 42, '2022-05-31 17:09:02', '2022-05-31 17:29:01'),
(55, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 43, '2022-05-31 20:15:39', '2022-05-31 20:43:01'),
(56, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 44, '2022-05-31 20:43:33', '2022-06-07 17:46:21'),
(57, 40, 5, 0.00, 0.00, NULL, 1, 5, 30, 45, '2022-06-04 13:01:46', '2022-06-04 13:34:56'),
(58, 40, 5, 0.00, 0.00, NULL, 1, 5, 32, 46, '2022-06-07 13:49:54', '2022-06-07 15:46:14'),
(59, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 47, '2022-06-07 15:40:58', '2022-06-07 15:45:51'),
(60, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 48, '2022-06-07 16:44:01', '2022-06-07 17:46:07'),
(61, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 49, '2022-06-07 17:46:03', '2022-06-10 01:33:29'),
(62, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 50, '2022-06-08 21:46:20', '2022-06-08 21:46:20'),
(63, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 51, '2022-06-10 01:34:10', '2022-06-12 08:05:21'),
(64, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 52, '2022-06-12 06:21:16', '2022-06-12 06:32:02'),
(65, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 53, '2022-06-12 08:06:31', '2022-06-12 08:10:55'),
(66, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 54, '2022-06-12 19:04:06', '2022-06-28 23:07:42'),
(67, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 55, '2022-06-13 17:09:33', '2022-06-13 17:26:35'),
(68, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 56, '2022-06-13 19:53:48', '2022-06-13 20:08:14'),
(69, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 57, '2022-06-13 20:12:26', '2022-06-26 08:14:31'),
(70, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 58, '2022-06-26 08:09:47', '2022-06-26 08:14:25'),
(71, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 59, '2022-06-26 08:17:56', '2022-06-26 08:19:46'),
(72, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 60, '2022-06-26 08:20:27', '2022-06-27 14:30:47'),
(73, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 61, '2022-06-28 17:24:23', '2022-06-28 23:07:35'),
(74, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 62, '2022-06-28 23:05:13', '2022-06-28 23:07:10'),
(75, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 63, '2022-06-29 07:34:58', '2022-06-29 07:40:20'),
(76, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 64, '2022-06-29 07:43:01', '2022-06-29 20:02:35'),
(77, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 65, '2022-06-29 20:01:30', '2022-06-29 20:07:10'),
(78, 40, 5, 0.00, 0.00, NULL, 1, 5, 32, 66, '2022-07-02 11:29:25', '2022-07-02 11:50:17'),
(79, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 67, '2022-07-03 02:01:23', '2022-07-03 02:05:42'),
(80, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 68, '2022-07-04 15:40:31', '2022-07-04 15:40:31'),
(87, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 69, '2022-07-12 04:21:27', '2022-07-12 04:23:54'),
(88, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 70, '2022-07-12 04:24:28', '2022-07-12 05:22:00'),
(89, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 71, '2022-07-12 05:21:43', '2022-07-15 23:12:21'),
(90, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 72, '2022-07-19 05:00:17', '2022-07-19 05:05:27'),
(91, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 73, '2022-07-19 17:15:07', '2022-07-19 17:15:07'),
(92, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 74, '2022-07-19 17:15:34', '2022-07-21 20:24:20'),
(93, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 75, '2022-07-21 03:20:51', '2022-07-21 03:35:11'),
(94, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 76, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(95, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 77, '2022-07-21 14:32:10', '2022-07-21 14:32:10'),
(96, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 78, '2022-07-21 14:41:00', '2022-07-21 14:41:01'),
(97, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 79, '2022-07-21 20:16:10', '2022-07-21 20:16:10'),
(98, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 80, '2022-07-21 20:25:48', '2022-07-21 20:27:26'),
(99, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 81, '2022-07-21 20:30:37', '2022-07-30 00:43:30'),
(100, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 82, '2022-07-21 22:41:45', '2022-07-21 22:41:45'),
(101, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 83, '2022-07-21 22:50:17', '2022-07-21 22:50:17'),
(102, 7, 1, 0.00, 0.00, NULL, 1, NULL, 28, 84, '2022-07-22 20:37:34', '2022-07-22 20:37:34'),
(105, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 85, '2022-07-25 01:00:11', '2022-07-25 01:00:11'),
(107, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 86, '2022-07-25 01:17:21', '2022-07-25 01:17:21'),
(109, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 87, '2022-07-26 21:41:29', '2022-07-26 21:41:29'),
(110, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 88, '2022-07-26 21:41:39', '2022-07-26 21:41:39'),
(111, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 89, '2022-07-26 21:55:12', '2022-07-26 21:55:12'),
(112, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 90, '2022-07-26 21:55:48', '2022-07-26 21:55:48'),
(114, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 91, '2022-07-26 21:58:17', '2022-07-26 21:58:17'),
(115, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 92, '2022-07-26 22:08:13', '2022-07-26 22:08:13'),
(116, 7, 1, 0.00, 0.00, NULL, 1, NULL, 28, 93, '2022-07-26 22:30:36', '2022-07-26 22:30:36'),
(117, 7, 1, 0.00, 0.00, NULL, 1, NULL, 28, 94, '2022-07-26 22:33:19', '2022-07-26 22:33:19'),
(118, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 95, '2022-07-29 22:12:45', '2022-07-30 00:43:26'),
(119, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 96, '2022-08-02 16:45:28', '2022-08-02 17:21:16'),
(120, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 97, '2022-08-02 22:48:33', '2022-08-02 22:59:01'),
(121, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 98, '2022-08-03 03:20:06', '2022-08-03 03:27:30'),
(122, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 99, '2022-08-10 17:30:50', '2022-08-11 17:54:13'),
(123, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 100, '2022-08-11 17:53:42', '2022-08-11 17:56:08'),
(124, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 101, '2022-08-12 07:14:01', '2022-08-12 07:20:47'),
(125, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 102, '2022-08-12 07:21:51', '2022-08-12 07:26:54'),
(126, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 103, '2022-08-12 07:27:13', '2022-08-12 07:49:21'),
(127, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 104, '2022-08-12 17:29:57', '2022-08-18 21:45:45'),
(128, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 105, '2022-08-18 15:57:16', '2022-08-25 22:30:32'),
(129, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 106, '2022-08-18 15:58:40', '2022-08-25 22:30:22'),
(130, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 107, '2022-08-25 22:27:17', '2022-08-25 22:31:24'),
(131, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 108, '2022-08-25 22:32:18', '2022-08-25 22:34:28'),
(132, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 109, '2022-08-25 22:34:46', '2022-08-29 17:58:53'),
(133, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 110, '2022-08-25 22:38:09', '2022-08-25 22:45:48'),
(134, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 111, '2022-08-25 22:42:28', '2022-08-25 22:45:40'),
(135, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 112, '2022-08-25 22:45:52', '2022-08-29 17:59:11'),
(136, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 113, '2022-08-29 17:58:28', '2022-08-31 23:28:13'),
(137, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 114, '2022-08-31 23:28:29', '2022-09-02 01:29:45'),
(144, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 115, '2022-09-02 02:03:11', '2022-09-02 02:03:11'),
(146, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 116, '2022-09-02 02:04:25', '2022-09-02 02:04:25'),
(149, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 117, '2022-09-02 02:11:28', '2022-09-02 02:11:28'),
(150, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 118, '2022-09-02 02:12:17', '2022-09-02 02:12:17'),
(152, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 119, '2022-09-02 02:13:11', '2022-09-02 02:13:11'),
(157, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 120, '2022-09-02 02:17:35', '2022-09-02 02:17:35'),
(162, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 121, '2022-09-02 19:11:40', '2022-09-02 19:11:41'),
(165, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 122, '2022-09-02 19:14:22', '2022-09-02 19:14:22'),
(167, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 123, '2022-09-02 19:23:34', '2022-09-02 19:23:34'),
(169, 9, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 124, '2022-09-02 19:26:58', '2022-09-02 19:26:58'),
(170, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 125, '2022-09-02 19:42:47', '2022-10-02 22:30:47'),
(172, 46, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 126, '2022-09-03 08:17:29', '2022-09-03 08:17:29'),
(173, 46, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 127, '2022-09-03 08:17:56', '2022-09-03 08:17:57'),
(174, 47, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 128, '2022-09-29 11:42:26', '2022-09-29 11:42:26'),
(175, 9, 5, 0.00, 0.00, NULL, 1, 5, NULL, 129, '2022-10-02 22:04:45', '2022-10-02 22:30:19'),
(176, 9, 1, 0.00, 0.00, NULL, 1, NULL, 34, 130, '2022-10-03 22:52:18', '2022-10-03 22:52:18'),
(177, 9, 1, 0.00, 0.00, NULL, 1, NULL, 34, 131, '2022-10-04 02:20:26', '2022-10-04 02:20:26'),
(178, 8, 5, 0.00, 0.00, NULL, 1, 5, 29, 132, '2022-10-05 17:57:57', '2022-10-11 04:34:39'),
(179, 8, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 133, '2022-10-05 19:57:32', '2022-10-05 19:57:32'),
(180, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 134, '2022-10-06 16:34:54', '2022-10-06 16:34:54'),
(181, 9, 1, 0.00, 0.00, NULL, 1, NULL, 34, 135, '2022-10-07 01:14:28', '2022-10-07 01:14:28'),
(182, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 136, '2022-10-07 04:14:41', '2022-10-07 04:14:41'),
(183, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 137, '2022-10-07 21:19:54', '2022-10-07 21:19:54'),
(184, 8, 1, 0.00, 0.00, NULL, 1, NULL, 29, 138, '2022-10-07 22:10:52', '2022-10-07 22:10:52'),
(185, 50, 1, 0.00, 0.00, NULL, 1, NULL, NULL, 139, '2022-10-08 08:30:02', '2022-10-08 08:30:02'),
(186, 9, 5, 0.00, 0.00, NULL, 1, 5, 34, 140, '2022-10-11 04:30:19', '2022-10-11 04:45:22'),
(187, 9, 1, 0.00, 0.00, NULL, 1, NULL, 34, 141, '2022-10-11 04:47:39', '2022-10-11 04:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 16:39:28', '2019-10-15 18:03:14'),
(2, 'Preparing', '2019-10-15 18:03:50', '2019-10-15 18:03:50'),
(3, 'Ready', '2019-10-15 18:04:30', '2019-10-15 18:04:30'),
(4, 'On the way', '2019-10-15 18:04:13', '2022-06-07 17:50:12'),
(5, 'Delivered', '2019-10-15 18:04:30', '2019-10-15 18:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('j.jualfo@gmail.com', '$2y$10$tvL3yEh452yvi867H8ZdSepD14/FK7/vVvjH6JkBMOFOzQrrTaR66', '2022-02-03 03:29:02'),
('estevenllamas@hotmail.com', '$2y$10$Sz3sDihy6EWZvEEWIO1tVOhoK37.B/HFDRlqIp1rROFQ.OK.J8AQe', '2022-04-29 17:11:40'),
('driver@quickie.com.do', '$2y$10$ovI/K3BPVuXqelDgeaYlAOLU9sHPiWJkTKPSLuo6rM7JNP3cjHJWa', '2022-08-28 07:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `price`, `description`, `user_id`, `status`, `method`, `created_at`, `updated_at`) VALUES
(1, 260.00, 'Order not paid yet', 7, 'Waiting for Client', 'Pay on Pickup', '2022-02-03 18:24:37', '2022-02-03 18:24:37'),
(2, 130.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-02-05 04:28:44', '2022-02-05 04:28:44'),
(3, 1947.00, 'Order not paid yet', 7, 'Paid', 'Cash on Delivery', '2022-02-16 18:06:39', '2022-02-16 18:13:43'),
(4, 130.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-02-16 18:20:32', '2022-02-16 18:27:34'),
(5, 130.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-02-20 04:05:39', '2022-02-20 04:05:39'),
(6, 0.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-02-22 17:51:34', '2022-02-22 17:51:34'),
(7, 130.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-02-25 17:36:24', '2022-02-25 17:36:24'),
(8, 390.00, 'Order not paid yet', 18, 'Waiting for Client', 'Pay on Pickup', '2022-02-26 20:15:11', '2022-02-26 20:15:11'),
(9, 970.00, 'Order not paid yet', 20, 'Waiting for Client', 'Pay on Pickup', '2022-03-10 11:08:12', '2022-03-10 11:08:12'),
(10, 189.00, 'Order not paid yet', 20, 'Waiting for Client', 'Pay on Pickup', '2022-03-10 11:11:30', '2022-03-10 11:11:30'),
(11, 50.00, 'Order not paid yet', 21, 'Waiting for Client', 'Pay on Pickup', '2022-03-11 20:01:07', '2022-03-11 20:01:07'),
(12, 520.00, 'Order not paid yet', 17, 'Waiting for Client', 'Pay on Pickup', '2022-03-12 21:29:57', '2022-03-12 21:29:57'),
(13, 1298.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-04-12 22:51:35', '2022-04-12 22:51:35'),
(14, 1298.00, 'Order not paid yet', 7, 'Paid', 'Cash on Delivery', '2022-04-13 03:06:55', '2022-05-13 04:39:51'),
(15, 4190.00, 'Order not paid yet', 26, 'Waiting for Client', 'Pay on Pickup', '2022-04-14 21:49:46', '2022-04-14 21:49:46'),
(16, 2910.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-04-26 23:12:45', '2022-04-26 23:12:45'),
(17, 649.00, 'Order not paid yet', 7, 'Paid', 'Cash on Delivery', '2022-05-06 16:19:36', '2022-05-08 03:18:25'),
(18, 970.00, 'Order not paid yet', 34, 'Waiting for Client', 'Pay on Pickup', '2022-05-09 01:01:52', '2022-05-09 01:01:52'),
(19, 970.00, 'Order not paid yet', 34, 'Waiting for Client', 'Cash on Delivery', '2022-05-09 01:03:51', '2022-05-09 01:03:51'),
(20, 649.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-12 19:47:45', '2022-05-13 05:52:30'),
(21, 3225.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-13 05:57:56', '2022-05-13 06:03:46'),
(22, 4190.00, 'Order not paid yet', 8, 'Not Paid', 'Cash on Delivery', '2022-05-13 06:05:57', '2022-05-13 06:20:36'),
(23, 8068.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-13 06:27:23', '2022-05-15 19:25:14'),
(24, 1619.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-05-13 07:00:17', '2022-05-13 07:00:17'),
(25, 3275.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-05-13 07:01:20', '2022-05-13 07:01:20'),
(26, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-05-16 16:19:58', '2022-05-16 16:19:58'),
(27, 1298.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-05-16 16:22:26', '2022-05-16 16:22:26'),
(28, 3225.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-05-16 16:23:59', '2022-05-16 16:23:59'),
(29, 3225.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-05-16 16:27:13', '2022-05-16 16:27:13'),
(30, 649.00, 'Order not paid yet', 7, 'Paid', 'Cash on Delivery', '2022-05-16 16:32:51', '2022-05-18 01:52:15'),
(31, 240.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-05-16 16:37:34', '2022-05-16 16:37:34'),
(32, 1619.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-16 16:45:05', '2022-05-16 19:27:10'),
(33, 1950.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-16 18:45:37', '2022-05-18 01:28:00'),
(34, 10640.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-18 01:25:33', '2022-05-18 02:01:27'),
(35, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-18 01:28:34', '2022-05-30 21:21:15'),
(36, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-29 18:49:11', '2022-05-29 19:39:40'),
(37, 1619.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-30 17:29:21', '2022-05-30 21:21:23'),
(38, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-30 21:01:04', '2022-05-30 21:35:42'),
(39, 3225.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-30 21:21:24', '2022-05-30 21:35:48'),
(40, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-30 21:38:22', '2022-05-30 21:41:30'),
(41, 224.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-30 21:41:32', '2022-05-30 21:50:38'),
(42, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-31 17:09:02', '2022-05-31 17:29:01'),
(43, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-05-31 20:15:39', '2022-05-31 20:43:01'),
(44, 1619.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-05-31 20:43:33', '2022-06-07 17:46:21'),
(45, 970.00, 'Order not paid yet', 40, 'Paid', 'Cash on Delivery', '2022-06-04 13:01:47', '2022-06-04 13:34:56'),
(46, 970.00, 'Order not paid yet', 40, 'Paid', 'Cash on Delivery', '2022-06-07 13:49:54', '2022-06-07 15:46:14'),
(47, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-07 15:40:58', '2022-06-07 15:45:51'),
(48, 1298.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-07 16:44:01', '2022-06-07 17:46:07'),
(49, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-07 17:46:03', '2022-06-10 01:33:29'),
(50, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-06-08 21:46:20', '2022-06-08 21:46:20'),
(51, 649.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-10 01:34:10', '2022-06-12 08:05:21'),
(52, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-12 06:21:16', '2022-06-12 06:32:02'),
(53, 1298.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-12 08:06:31', '2022-06-12 08:10:55'),
(54, 1619.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-12 19:04:06', '2022-06-28 23:07:42'),
(55, 1298.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-13 17:09:33', '2022-06-13 17:26:35'),
(56, 7415.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-13 19:53:48', '2022-06-13 20:08:14'),
(57, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-13 20:12:26', '2022-06-26 08:14:31'),
(58, 3225.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-26 08:09:47', '2022-06-26 08:14:25'),
(59, 899.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-26 08:17:56', '2022-06-26 08:19:46'),
(60, 169.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-26 08:20:27', '2022-06-27 14:30:47'),
(61, 649.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-28 17:24:23', '2022-06-28 23:07:35'),
(62, 1298.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-28 23:05:13', '2022-06-28 23:07:10'),
(63, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-29 07:34:58', '2022-06-29 07:40:20'),
(64, 1950.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-06-29 07:43:01', '2022-06-29 20:02:35'),
(65, 649.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-06-29 20:01:30', '2022-06-29 20:07:10'),
(66, 3900.00, 'Order not paid yet', 40, 'Paid', 'Cash on Delivery', '2022-07-02 11:29:25', '2022-07-02 11:50:17'),
(67, 1298.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-07-03 02:01:23', '2022-07-03 02:05:42'),
(68, 970.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-07-04 15:40:31', '2022-07-04 15:40:31'),
(69, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-12 04:21:27', '2022-07-12 04:23:54'),
(70, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-12 04:24:28', '2022-07-12 05:22:00'),
(71, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-12 05:21:43', '2022-07-15 23:12:21'),
(72, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-19 05:00:17', '2022-07-19 05:05:27'),
(73, 260.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-07-19 17:15:07', '2022-07-19 17:15:07'),
(74, 8380.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-19 17:15:34', '2022-07-21 20:24:20'),
(75, 4889.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-21 03:20:51', '2022-07-21 03:35:11'),
(76, 14235.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(77, 4004.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-07-21 14:32:10', '2022-07-21 14:32:10'),
(78, 4839.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-07-21 14:41:01', '2022-07-21 14:41:01'),
(79, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-07-21 20:16:10', '2022-07-21 20:16:10'),
(80, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-21 20:25:48', '2022-07-21 20:27:26'),
(81, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-21 20:30:37', '2022-07-30 00:43:30'),
(82, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-07-21 22:41:45', '2022-07-21 22:41:45'),
(83, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-07-21 22:50:17', '2022-07-21 22:50:17'),
(84, 649.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-07-22 20:37:34', '2022-07-22 20:37:34'),
(85, 16760.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-07-25 01:00:11', '2022-07-25 01:00:11'),
(86, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-07-25 01:17:21', '2022-07-25 01:17:21'),
(87, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-07-26 21:41:29', '2022-07-26 21:41:29'),
(88, 169.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-07-26 21:41:39', '2022-07-26 21:41:39'),
(89, 899.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-07-26 21:55:12', '2022-07-26 21:55:12'),
(90, 899.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-07-26 21:55:48', '2022-07-26 21:55:48'),
(91, 1798.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-07-26 21:58:17', '2022-07-26 21:58:17'),
(92, 899.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-07-26 22:08:13', '2022-07-26 22:08:13'),
(93, 649.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-07-26 22:30:36', '2022-07-26 22:30:36'),
(94, 4004.00, 'Order not paid yet', 7, 'Waiting for Client', 'Cash on Delivery', '2022-07-26 22:33:19', '2022-07-26 22:33:19'),
(95, 1298.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-07-29 22:12:45', '2022-07-30 00:43:26'),
(96, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-02 16:45:28', '2022-08-02 17:21:16'),
(97, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-02 22:48:33', '2022-08-02 22:59:01'),
(98, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-03 03:20:07', '2022-08-03 03:27:30'),
(99, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-10 17:30:50', '2022-08-10 17:35:56'),
(100, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-11 17:53:42', '2022-08-11 17:56:08'),
(101, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-12 07:14:01', '2022-08-12 07:20:47'),
(102, 3320.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-12 07:21:51', '2022-08-12 07:26:54'),
(103, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-12 07:27:13', '2022-08-12 07:49:21'),
(104, 3225.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-12 17:29:57', '2022-08-18 21:45:45'),
(105, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-18 15:57:16', '2022-08-25 22:30:32'),
(106, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-18 15:58:40', '2022-08-25 22:30:22'),
(107, 3225.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-25 22:27:17', '2022-08-25 22:31:24'),
(108, 130.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-25 22:32:18', '2022-08-25 22:34:28'),
(109, 110.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-25 22:34:46', '2022-08-29 17:58:53'),
(110, 4190.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-25 22:38:09', '2022-08-25 22:39:59'),
(111, 110.00, 'Order not paid yet', 9, 'Not Paid', 'Cash on Delivery', '2022-08-25 22:42:28', '2022-08-25 22:45:43'),
(112, 1950.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-25 22:45:52', '2022-08-29 17:59:11'),
(113, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-29 17:58:28', '2022-08-31 23:28:13'),
(114, 970.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-08-31 23:28:29', '2022-09-02 01:29:45'),
(115, 899.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 02:03:11', '2022-09-02 02:03:11'),
(116, 899.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 02:04:25', '2022-09-02 02:04:25'),
(117, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 02:11:28', '2022-09-02 02:11:28'),
(118, 150.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 02:12:17', '2022-09-02 02:12:17'),
(119, 699.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 02:13:11', '2022-09-02 02:13:11'),
(120, 999.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 02:17:35', '2022-09-02 02:17:35'),
(121, 200.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 19:11:41', '2022-09-02 19:11:41'),
(122, 100.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 19:14:22', '2022-09-02 19:14:22'),
(123, 899.00, 'Order not paid yet', 9, 'Waiting for Client', 'Pay on Pickup', '2022-09-02 19:23:34', '2022-09-02 19:23:34'),
(124, 899.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-09-02 19:26:58', '2022-09-02 19:26:58'),
(125, 2937.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-09-02 19:42:47', '2022-10-02 22:30:47'),
(126, 4844.00, 'Order not paid yet', 46, 'Waiting for Client', 'Pay on Pickup', '2022-09-03 08:17:29', '2022-09-03 08:17:29'),
(127, 393.00, 'Order not paid yet', 46, 'Waiting for Client', 'Pay on Pickup', '2022-09-03 08:17:57', '2022-09-03 08:17:57'),
(128, 1298.00, 'Order not paid yet', 47, 'Waiting for Client', 'Pay on Pickup', '2022-09-29 11:42:26', '2022-09-29 11:42:26'),
(129, 1940.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-10-02 22:04:45', '2022-10-02 22:30:19'),
(130, 970.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-10-03 22:52:18', '2022-10-03 22:52:18'),
(131, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-10-04 02:20:26', '2022-10-04 02:20:26'),
(132, 9742.00, 'Order not paid yet', 8, 'Paid', 'Cash on Delivery', '2022-10-05 17:57:57', '2022-10-11 04:34:39'),
(133, 2589.00, 'Order not paid yet', 8, 'Waiting for Client', 'Pay on Pickup', '2022-10-05 19:57:32', '2022-10-05 19:57:32'),
(134, 970.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-10-06 16:34:54', '2022-10-06 16:34:54'),
(135, 649.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-10-07 01:14:28', '2022-10-07 01:14:28'),
(136, 4190.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-10-07 04:14:41', '2022-10-07 04:14:41'),
(137, 970.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-10-07 21:19:54', '2022-10-07 21:19:54'),
(138, 1020.00, 'Order not paid yet', 8, 'Waiting for Client', 'Cash on Delivery', '2022-10-07 22:10:52', '2022-10-07 22:10:52'),
(139, 2040.00, 'Order not paid yet', 50, 'Waiting for Client', 'Pay on Pickup', '2022-10-08 08:30:02', '2022-10-08 08:30:02'),
(140, 649.00, 'Order not paid yet', 9, 'Paid', 'Cash on Delivery', '2022-10-11 04:30:19', '2022-10-11 04:45:22'),
(141, 970.00, 'Order not paid yet', 9, 'Waiting for Client', 'Cash on Delivery', '2022-10-11 04:47:39', '2022-10-11 04:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 14:58:02', '2020-03-29 14:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 14:58:02', '2020-03-29 14:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 14:58:02', '2020-03-29 14:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 14:58:02', '2020-03-29 14:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 14:58:03', '2020-03-29 14:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(30, 'stores.index', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(31, 'stores.create', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(32, 'stores.store', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(33, 'stores.edit', 'web', '2020-03-29 14:58:04', '2020-03-29 14:58:04', NULL),
(34, 'stores.update', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(35, 'stores.destroy', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 14:58:06', '2020-03-29 14:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(52, 'products.index', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(53, 'products.create', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(54, 'products.store', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(55, 'products.edit', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(56, 'products.update', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(57, 'products.destroy', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 14:58:07', '2020-03-29 14:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(64, 'productReviews.index', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(65, 'productReviews.create', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(66, 'productReviews.store', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(67, 'productReviews.edit', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(68, 'productReviews.update', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(69, 'productReviews.destroy', 'web', '2020-03-29 14:58:08', '2020-03-29 14:58:08', NULL),
(76, 'options.index', 'web', '2020-03-29 14:58:09', '2020-03-29 14:58:09', NULL),
(77, 'options.create', 'web', '2020-03-29 14:58:09', '2020-03-29 14:58:09', NULL),
(78, 'options.store', 'web', '2020-03-29 14:58:09', '2020-03-29 14:58:09', NULL),
(79, 'options.show', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(80, 'options.edit', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(81, 'options.update', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(82, 'options.destroy', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 14:58:10', '2020-03-29 14:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(92, 'storeReviews.index', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(93, 'storeReviews.create', 'web', '2020-03-29 14:58:11', '2020-03-29 14:58:11', NULL),
(94, 'storeReviews.store', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(95, 'storeReviews.edit', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(96, 'storeReviews.update', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(97, 'storeReviews.destroy', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 14:58:12', '2020-03-29 14:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 14:58:13', '2020-03-29 14:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 14:58:14', '2020-03-29 14:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 14:58:15', '2020-03-29 14:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 14:58:16', '2020-03-29 14:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 14:58:17', '2020-03-29 14:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(151, 'storesPayouts.index', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(152, 'storesPayouts.create', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(153, 'storesPayouts.store', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(154, 'storesPayouts.show', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(155, 'storesPayouts.edit', 'web', '2020-03-29 14:58:18', '2020-03-29 14:58:18', NULL),
(156, 'storesPayouts.update', 'web', '2020-03-29 14:58:19', '2020-03-29 14:58:19', NULL),
(157, 'storesPayouts.destroy', 'web', '2020-03-29 14:58:19', '2020-03-29 14:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 14:59:15', '2020-03-29 14:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 14:59:15', '2020-03-29 14:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 14:59:15', '2020-03-29 14:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 14:59:15', '2020-03-29 14:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 14:59:15', '2020-03-29 14:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 14:59:16', '2020-03-29 14:59:16', NULL),
(164, 'fields.index', 'web', '2020-04-11 15:04:39', '2020-04-11 15:04:39', NULL),
(165, 'fields.create', 'web', '2020-04-11 15:04:39', '2020-04-11 15:04:39', NULL),
(166, 'fields.store', 'web', '2020-04-11 15:04:39', '2020-04-11 15:04:39', NULL),
(167, 'fields.edit', 'web', '2020-04-11 15:04:39', '2020-04-11 15:04:39', NULL),
(168, 'fields.update', 'web', '2020-04-11 15:04:39', '2020-04-11 15:04:39', NULL),
(169, 'fields.destroy', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(170, 'optionGroups.index', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(171, 'optionGroups.create', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(172, 'optionGroups.store', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(173, 'optionGroups.edit', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(174, 'optionGroups.update', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(175, 'optionGroups.destroy', 'web', '2020-04-11 15:04:40', '2020-04-11 15:04:40', NULL),
(176, 'brands.index', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(177, 'brands.create', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(178, 'brands.store', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(179, 'brands.edit', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(180, 'brands.update', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(181, 'brands.destroy', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(182, 'sliders.index', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(183, 'sliders.create', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(184, 'sliders.store', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(185, 'sliders.edit', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(186, 'sliders.update', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(187, 'sliders.destroy', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(188, 'stores.become_seller', 'web', '2020-03-29 14:58:05', '2020-03-29 14:58:05', NULL),
(189, 'coupons.index', 'web', '2020-08-23 14:58:02', '2020-08-23 14:58:02', NULL),
(190, 'coupons.create', 'web', '2020-08-23 14:58:02', '2020-08-23 14:58:02', NULL),
(191, 'coupons.store', 'web', '2020-08-23 14:58:02', '2020-08-23 14:58:02', NULL),
(192, 'coupons.edit', 'web', '2020-08-23 14:58:02', '2020-08-23 14:58:02', NULL),
(193, 'coupons.update', 'web', '2020-08-23 14:58:02', '2020-08-23 14:58:02', NULL),
(194, 'coupons.destroy', 'web', '2020-08-23 14:58:02', '2020-08-23 14:58:02', NULL),
(195, 'tickets.index', 'web', '2022-10-11 13:37:00', '2022-10-11 13:37:00', NULL),
(196, 'tickets.create', 'web', '2022-10-11 13:36:44', '2022-10-11 13:36:44', NULL),
(197, 'tickets.edit', 'web', '2022-10-11 13:37:23', '2022-10-11 13:37:23', NULL),
(198, 'tickets.update', 'web', '2022-10-12 00:29:46', '2022-10-12 00:29:46', NULL),
(199, 'tickets.show', 'web', '2022-10-12 00:29:55', '2022-10-12 00:29:55', NULL),
(200, 'tickets.destroy', 'web', '2022-10-12 00:30:03', '2022-10-12 00:30:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `capacity` double(9,2) DEFAULT '0.00',
  `package_items_count` double(9,2) DEFAULT '0.00',
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsAvailable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `store_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `rate`, `itemsAvailable`, `featured`, `deliverable`, `store_id`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(41, 'Barcelo Imperial', 970.00, NULL, '<p>Ron Barcelo Imperial<br></p>', 700.00, 1.00, 'ml', NULL, '65', 0, 1, 11, 8, 7, '2022-01-31 06:08:40', '2022-10-11 04:47:39'),
(42, 'Doble Reserva', 649.00, NULL, '<p>Brugal Doble Reserva<br></p>', 700.00, 1.00, 'ml', NULL, '27', 0, 1, 11, 8, 15, '2022-01-31 15:58:46', '2022-10-11 04:30:19'),
(43, 'Presidente Light', 110.00, NULL, '<p>Presidente Light<br></p>', 8.00, 1.00, 'Oz', NULL, '97', 0, 1, 11, 10, 8, '2022-01-31 15:59:58', '2022-08-25 22:42:28'),
(44, 'Corona Extra', 130.00, NULL, '<p>Corona Extra<br></p>', 355.00, 1.00, 'ml', NULL, '78', 0, 1, 11, 10, 12, '2022-01-31 16:00:51', '2022-09-02 19:42:47'),
(45, 'Stolichnaya The Original', 899.00, NULL, '<h1 class=\"product-meta__title heading h1\" style=\"-webkit-font-smoothing: antialiased; font-size: calc(var(--base-text-font-size) - (var(--default-text-font-size) - 28px)); font-weight: var(--heading-font-weight); font-family: \"DIN Next\", sans-serif; margin-bottom: 14px; line-height: 1.43;\">Stolichnaya The Original</h1>', 750.00, 1.00, 'ml', NULL, '89', 0, 1, 11, 14, 14, '2022-01-31 16:01:57', '2022-09-02 19:26:58'),
(46, 'Grey Goose Le Citron', 1950.00, NULL, '<p>Grey Goose Le Citron<br></p>', 750.00, 1.00, 'ml', NULL, '88', 0, 1, 11, 14, 13, '2022-01-31 16:02:51', '2022-09-02 19:42:47'),
(50, 'Preservativo Durex Invisible', 224.00, NULL, '<p>Preservativo Durex Invisible <br></p>', 1.00, 3.00, 'Cj', NULL, '97', 0, 1, 11, 13, 16, '2022-01-31 16:12:04', '2022-09-03 08:17:56'),
(51, 'Preservativo Durex Extra Sensible', 169.00, NULL, '<p>Preservativo Durex Extra Sensible <br></p>', 1.00, 3.00, 'Cj', NULL, '97', 0, 1, 11, 13, 16, '2022-01-31 16:13:11', '2022-09-03 08:17:57'),
(52, 'Patron Silver', 3225.00, NULL, '<p>Patron Silver<br></p>', 750.00, 1.00, 'ml', NULL, '86', 0, 1, 11, 9, 11, '2022-01-31 16:14:58', '2022-09-03 08:17:29'),
(53, 'Don Julio Reposado', 4190.00, NULL, '<p>Don Julio Reposado<br></p>', 750.00, 1.00, 'ml', NULL, '79', 0, 1, 11, 9, 10, '2022-01-31 16:16:23', '2022-10-07 04:14:41'),
(54, 'Coca Cola Clásica', 50.00, NULL, '<p>Coca Cola Clásica <br></p>', 1.25, 1.00, 'Lt', NULL, '90', 0, 1, 11, 15, 9, '2022-01-31 16:17:44', '2022-09-02 19:42:47'),
(55, 'Coca Cola Sin Azúcar', 50.00, NULL, '<p>Coca Cola Sin Azúcar<br></p>', 1.25, 1.00, 'Lt', NULL, '86', 1, 1, 11, 15, 9, '2022-01-31 16:19:11', '2022-10-08 08:30:02'),
(56, 'Cranberry', 320.00, NULL, '<p>Cranberry<br></p>', 64.00, 1.00, 'Oz', NULL, '98', 0, 1, 11, 15, 21, '2022-01-31 16:21:10', '2022-09-02 19:42:47'),
(57, 'Agua Gas Strawberry Watermelon', 79.00, NULL, '<p>Agua Gas Strawberry Watermelon<br></p>', 17.00, 1.00, 'Oz', NULL, '99', 0, 1, 11, 15, 20, '2022-01-31 16:23:28', '2022-09-02 19:42:47'),
(58, 'Johnnie Walker 18', 5995.00, NULL, '<p>Johnnie Walker 18<br></p>', 750.00, 1.00, 'ml', NULL, '99', 0, 1, 11, 17, 23, '2022-01-31 16:28:06', '2022-10-05 17:57:57'),
(59, 'Buchanan´s Deluxe', 2449.00, NULL, '<p>Buchanan´s Deluxe<br></p>', 750.00, 1.00, 'ml', NULL, '96', 0, 1, 11, 17, 22, '2022-01-31 16:29:14', '2022-10-05 17:57:57'),
(60, 'Cheetos Puff', 189.00, NULL, '<p>Cheetos Puff<br></p>', 9.00, 1.00, 'Oz', NULL, '95', 0, 1, 11, 16, 26, '2022-01-31 16:32:49', '2022-09-02 19:42:47'),
(61, 'Aceitunas Rellenas de Anchoas', 169.00, NULL, '<p>Aceitunas Rellenas de Anchoas<br></p>', 350.00, 1.00, 'Gr', NULL, '98', 0, 1, 11, 16, 25, '2022-01-31 16:33:37', '2022-08-12 07:21:51'),
(62, 'Papitas Lays Limon', 33.00, NULL, '<p>Papitas Lays Limon<br></p>', 50.00, 1.00, 'Gr', NULL, '100', 0, 1, 11, 16, 24, '2022-01-31 16:34:18', '2022-01-31 16:34:18'),
(63, 'Papita Lays Queso Blanco', 70.00, NULL, '<p>Papita Lays Queso Blanco<br></p>', 87.00, 1.00, 'Gr', NULL, '100', 0, 1, 11, 16, 24, '2022-01-31 16:35:45', '2022-01-31 16:35:45'),
(65, 'Vaso Foam 16Oz', 89.00, NULL, '<p>Vaso Foam 16Oz<br></p>', 1.00, 25.00, 'Paq', NULL, '100', 1, 1, 11, 16, 27, '2022-01-31 17:03:39', '2022-01-31 17:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `price`, `quantity`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 130.00, 2, 44, 1, '2022-02-03 18:24:37', '2022-02-03 18:24:37'),
(2, 130.00, 1, 44, 2, '2022-02-05 04:28:44', '2022-02-05 04:28:44'),
(3, 649.00, 3, 42, 3, '2022-02-16 18:06:38', '2022-02-16 18:06:38'),
(4, 130.00, 1, 44, 4, '2022-02-16 18:20:32', '2022-02-16 18:20:32'),
(5, 130.00, 1, 44, 5, '2022-02-20 04:05:39', '2022-02-20 04:05:39'),
(6, 1950.00, 0, 46, 6, '2022-02-22 17:51:34', '2022-02-22 17:51:34'),
(7, 130.00, 1, 44, 7, '2022-02-25 17:36:24', '2022-02-25 17:36:24'),
(8, 130.00, 3, 44, 8, '2022-02-26 20:15:11', '2022-02-26 20:15:11'),
(9, 970.00, 1, 41, 9, '2022-03-10 11:08:12', '2022-03-10 11:08:12'),
(10, 189.00, 1, 60, 10, '2022-03-10 11:11:30', '2022-03-10 11:11:30'),
(11, 50.00, 1, 55, 11, '2022-03-11 20:01:07', '2022-03-11 20:01:07'),
(12, 130.00, 4, 44, 12, '2022-03-12 21:29:57', '2022-03-12 21:29:57'),
(14, 649.00, 2, 42, 14, '2022-04-13 03:06:55', '2022-04-13 03:06:55'),
(15, 4190.00, 1, 53, 15, '2022-04-14 21:49:46', '2022-04-14 21:49:46'),
(16, 1950.00, 1, 46, 16, '2022-04-14 22:28:15', '2022-04-14 22:28:15'),
(17, 970.00, 1, 41, 17, '2022-04-26 23:12:45', '2022-04-26 23:12:45'),
(18, 970.00, 1, 41, 17, '2022-04-26 23:12:45', '2022-04-26 23:12:45'),
(19, 970.00, 1, 41, 17, '2022-04-26 23:12:45', '2022-04-26 23:12:45'),
(20, 649.00, 1, 42, 18, '2022-05-06 16:19:36', '2022-05-06 16:19:36'),
(21, 970.00, 1, 41, 19, '2022-05-09 01:01:52', '2022-05-09 01:01:52'),
(22, 970.00, 1, 41, 20, '2022-05-09 01:03:51', '2022-05-09 01:03:51'),
(23, 649.00, 1, 42, 21, '2022-05-12 19:47:45', '2022-05-12 19:47:45'),
(24, 3225.00, 1, 52, 22, '2022-05-13 05:57:56', '2022-05-13 05:57:56'),
(25, 4190.00, 1, 53, 23, '2022-05-13 06:05:57', '2022-05-13 06:05:57'),
(26, 649.00, 2, 42, 24, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
(27, 4190.00, 1, 53, 24, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
(28, 130.00, 2, 44, 24, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
(29, 1950.00, 1, 46, 24, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
(30, 50.00, 1, 55, 24, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
(31, 320.00, 1, 56, 24, '2022-05-13 06:27:23', '2022-05-13 06:27:23'),
(32, 649.00, 1, 42, 25, '2022-05-13 07:00:17', '2022-05-13 07:00:17'),
(33, 970.00, 1, 41, 25, '2022-05-13 07:00:17', '2022-05-13 07:00:17'),
(34, 50.00, 1, 55, 26, '2022-05-13 07:01:20', '2022-05-13 07:01:20'),
(35, 3225.00, 1, 52, 26, '2022-05-13 07:01:20', '2022-05-13 07:01:20'),
(36, 649.00, 1, 42, 37, '2022-05-16 16:19:58', '2022-05-16 16:19:58'),
(37, 649.00, 2, 42, 39, '2022-05-16 16:22:26', '2022-05-16 16:22:26'),
(38, 3225.00, 1, 52, 40, '2022-05-16 16:23:59', '2022-05-16 16:23:59'),
(39, 3225.00, 1, 52, 41, '2022-05-16 16:27:13', '2022-05-16 16:27:13'),
(40, 649.00, 1, 42, 42, '2022-05-16 16:32:51', '2022-05-16 16:32:51'),
(43, 970.00, 1, 41, 44, '2022-05-16 16:45:05', '2022-05-16 16:45:05'),
(44, 649.00, 1, 42, 44, '2022-05-16 16:45:05', '2022-05-16 16:45:05'),
(45, 1950.00, 1, 46, 45, '2022-05-16 18:45:37', '2022-05-16 18:45:37'),
(46, 4190.00, 1, 53, 46, '2022-05-18 01:25:33', '2022-05-18 01:25:33'),
(47, 3225.00, 1, 52, 46, '2022-05-18 01:25:33', '2022-05-18 01:25:33'),
(48, 3225.00, 1, 52, 46, '2022-05-18 01:25:33', '2022-05-18 01:25:33'),
(49, 649.00, 1, 42, 47, '2022-05-18 01:28:34', '2022-05-18 01:28:34'),
(50, 4190.00, 1, 53, 48, '2022-05-29 18:49:11', '2022-05-29 18:49:11'),
(51, 970.00, 1, 41, 49, '2022-05-30 17:29:21', '2022-05-30 17:29:21'),
(52, 649.00, 1, 42, 49, '2022-05-30 17:29:21', '2022-05-30 17:29:21'),
(53, 4190.00, 1, 53, 50, '2022-05-30 21:01:04', '2022-05-30 21:01:04'),
(54, 3225.00, 1, 52, 51, '2022-05-30 21:21:24', '2022-05-30 21:21:24'),
(55, 649.00, 1, 42, 52, '2022-05-30 21:38:22', '2022-05-30 21:38:22'),
(56, 224.00, 1, 50, 53, '2022-05-30 21:41:32', '2022-05-30 21:41:32'),
(57, 970.00, 1, 41, 54, '2022-05-31 17:09:02', '2022-05-31 17:09:02'),
(58, 970.00, 1, 41, 55, '2022-05-31 20:15:39', '2022-05-31 20:15:39'),
(59, 649.00, 1, 42, 56, '2022-05-31 20:43:33', '2022-05-31 20:43:33'),
(60, 970.00, 1, 41, 56, '2022-05-31 20:43:33', '2022-05-31 20:43:33'),
(61, 970.00, 1, 41, 57, '2022-06-04 13:01:46', '2022-06-04 13:01:46'),
(62, 970.00, 1, 41, 58, '2022-06-07 13:49:54', '2022-06-07 13:49:54'),
(63, 4190.00, 1, 53, 59, '2022-06-07 15:40:58', '2022-06-07 15:40:58'),
(64, 649.00, 2, 42, 60, '2022-06-07 16:44:01', '2022-06-07 16:44:01'),
(65, 649.00, 1, 42, 61, '2022-06-07 17:46:03', '2022-06-07 17:46:03'),
(66, 649.00, 1, 42, 62, '2022-06-08 21:46:20', '2022-06-08 21:46:20'),
(67, 649.00, 1, 42, 63, '2022-06-10 01:34:10', '2022-06-10 01:34:10'),
(68, 649.00, 1, 42, 64, '2022-06-12 06:21:16', '2022-06-12 06:21:16'),
(69, 649.00, 2, 42, 65, '2022-06-12 08:06:31', '2022-06-12 08:06:31'),
(70, 970.00, 1, 41, 66, '2022-06-12 19:04:06', '2022-06-12 19:04:06'),
(71, 649.00, 1, 42, 66, '2022-06-12 19:04:06', '2022-06-12 19:04:06'),
(72, 649.00, 2, 42, 67, '2022-06-13 17:09:33', '2022-06-13 17:09:33'),
(73, 4190.00, 1, 53, 68, '2022-06-13 19:53:48', '2022-06-13 19:53:48'),
(74, 3225.00, 1, 52, 68, '2022-06-13 19:53:48', '2022-06-13 19:53:48'),
(75, 649.00, 1, 42, 69, '2022-06-13 20:12:26', '2022-06-13 20:12:26'),
(76, 3225.00, 1, 52, 70, '2022-06-26 08:09:47', '2022-06-26 08:09:47'),
(77, 899.00, 1, 45, 71, '2022-06-26 08:17:56', '2022-06-26 08:17:56'),
(78, 169.00, 1, 61, 72, '2022-06-26 08:20:27', '2022-06-26 08:20:27'),
(79, 649.00, 1, 42, 73, '2022-06-28 17:24:23', '2022-06-28 17:24:23'),
(80, 649.00, 2, 42, 74, '2022-06-28 23:05:13', '2022-06-28 23:05:13'),
(81, 649.00, 1, 42, 75, '2022-06-29 07:34:58', '2022-06-29 07:34:58'),
(82, 1950.00, 1, 46, 76, '2022-06-29 07:43:01', '2022-06-29 07:43:01'),
(83, 649.00, 1, 42, 77, '2022-06-29 20:01:30', '2022-06-29 20:01:30'),
(84, 1950.00, 2, 46, 78, '2022-07-02 11:29:25', '2022-07-02 11:29:25'),
(85, 649.00, 2, 42, 79, '2022-07-03 02:01:23', '2022-07-03 02:01:23'),
(86, 970.00, 1, 41, 80, '2022-07-04 15:40:31', '2022-07-04 15:40:31'),
(87, 649.00, 1, 42, 87, '2022-07-12 04:21:27', '2022-07-12 04:21:27'),
(88, 649.00, 1, 42, 88, '2022-07-12 04:24:28', '2022-07-12 04:24:28'),
(89, 970.00, 1, 41, 89, '2022-07-12 05:21:43', '2022-07-12 05:21:43'),
(90, 4190.00, 1, 53, 90, '2022-07-19 05:00:17', '2022-07-19 05:00:17'),
(91, 130.00, 2, 44, 91, '2022-07-19 17:15:07', '2022-07-19 17:15:07'),
(92, 4190.00, 2, 53, 92, '2022-07-19 17:15:34', '2022-07-19 17:15:34'),
(93, 649.00, 1, 42, 93, '2022-07-21 03:20:51', '2022-07-21 03:20:51'),
(94, 4190.00, 1, 53, 93, '2022-07-21 03:20:51', '2022-07-21 03:20:51'),
(95, 50.00, 1, 54, 93, '2022-07-21 03:20:51', '2022-07-21 03:20:51'),
(96, 1950.00, 2, 46, 94, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(97, 1950.00, 2, 46, 94, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(98, 2449.00, 2, 59, 94, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(99, 189.00, 1, 60, 94, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(100, 50.00, 1, 55, 94, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(101, 649.00, 2, 42, 94, '2022-07-21 14:29:38', '2022-07-21 14:29:38'),
(102, 649.00, 1, 42, 95, '2022-07-21 14:32:10', '2022-07-21 14:32:10'),
(103, 3225.00, 1, 52, 95, '2022-07-21 14:32:10', '2022-07-21 14:32:10'),
(104, 130.00, 1, 44, 95, '2022-07-21 14:32:10', '2022-07-21 14:32:10'),
(105, 4190.00, 1, 53, 96, '2022-07-21 14:41:00', '2022-07-21 14:41:00'),
(106, 649.00, 1, 42, 96, '2022-07-21 14:41:00', '2022-07-21 14:41:00'),
(107, 649.00, 1, 42, 97, '2022-07-21 20:16:10', '2022-07-21 20:16:10'),
(108, 649.00, 1, 42, 98, '2022-07-21 20:25:48', '2022-07-21 20:25:48'),
(109, 4190.00, 1, 53, 99, '2022-07-21 20:30:37', '2022-07-21 20:30:37'),
(110, 649.00, 1, 42, 100, '2022-07-21 22:41:45', '2022-07-21 22:41:45'),
(111, 649.00, 1, 42, 101, '2022-07-21 22:50:17', '2022-07-21 22:50:17'),
(112, 649.00, 1, 42, 102, '2022-07-22 20:37:34', '2022-07-22 20:37:34'),
(113, 4190.00, 2, 53, 105, '2022-07-25 01:00:11', '2022-07-25 01:00:11'),
(114, 4190.00, 2, 53, 105, '2022-07-25 01:00:11', '2022-07-25 01:00:11'),
(115, 649.00, 1, 42, 107, '2022-07-25 01:17:21', '2022-07-25 01:17:21'),
(116, 649.00, 1, 42, 109, '2022-07-26 21:41:29', '2022-07-26 21:41:29'),
(117, 169.00, 1, 51, 110, '2022-07-26 21:41:39', '2022-07-26 21:41:39'),
(118, 899.00, 1, 45, 111, '2022-07-26 21:55:12', '2022-07-26 21:55:12'),
(119, 899.00, 1, 45, 112, '2022-07-26 21:55:48', '2022-07-26 21:55:48'),
(120, 899.00, 2, 45, 114, '2022-07-26 21:58:17', '2022-07-26 21:58:17'),
(121, 899.00, 1, 45, 115, '2022-07-26 22:08:13', '2022-07-26 22:08:13'),
(122, 649.00, 1, 42, 116, '2022-07-26 22:30:36', '2022-07-26 22:30:36'),
(123, 649.00, 1, 42, 117, '2022-07-26 22:33:19', '2022-07-26 22:33:19'),
(124, 3225.00, 1, 52, 117, '2022-07-26 22:33:19', '2022-07-26 22:33:19'),
(125, 130.00, 1, 44, 117, '2022-07-26 22:33:19', '2022-07-26 22:33:19'),
(126, 649.00, 1, 42, 118, '2022-07-29 22:12:45', '2022-07-29 22:12:45'),
(127, 649.00, 1, 42, 118, '2022-07-29 22:12:45', '2022-07-29 22:12:45'),
(128, 649.00, 1, 42, 119, '2022-08-02 16:45:28', '2022-08-02 16:45:28'),
(129, 649.00, 1, 42, 120, '2022-08-02 22:48:33', '2022-08-02 22:48:33'),
(130, 970.00, 1, 41, 121, '2022-08-03 03:20:07', '2022-08-03 03:20:07'),
(131, 970.00, 1, 41, 122, '2022-08-10 17:30:50', '2022-08-10 17:30:50'),
(132, 970.00, 1, 41, 123, '2022-08-11 17:53:42', '2022-08-11 17:53:42'),
(133, 970.00, 1, 41, 124, '2022-08-12 07:14:01', '2022-08-12 07:14:01'),
(134, 189.00, 1, 60, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(135, 2449.00, 1, 59, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(136, 169.00, 1, 61, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(137, 50.00, 1, 54, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(138, 189.00, 1, 60, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(139, 50.00, 1, 55, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(140, 224.00, 1, 50, 125, '2022-08-12 07:21:51', '2022-08-12 07:21:51'),
(141, 4190.00, 1, 53, 126, '2022-08-12 07:27:13', '2022-08-12 07:27:13'),
(142, 3225.00, 1, 52, 127, '2022-08-12 17:29:57', '2022-08-12 17:29:57'),
(143, 649.00, 1, 42, 128, '2022-08-18 15:57:16', '2022-08-18 15:57:16'),
(144, 970.00, 1, 41, 129, '2022-08-18 15:58:40', '2022-08-18 15:58:40'),
(145, 3225.00, 1, 52, 130, '2022-08-25 22:27:17', '2022-08-25 22:27:17'),
(146, 130.00, 1, 44, 131, '2022-08-25 22:32:18', '2022-08-25 22:32:18'),
(147, 110.00, 1, 43, 132, '2022-08-25 22:34:46', '2022-08-25 22:34:46'),
(148, 4190.00, 1, 53, 133, '2022-08-25 22:38:09', '2022-08-25 22:38:09'),
(149, 110.00, 1, 43, 134, '2022-08-25 22:42:28', '2022-08-25 22:42:28'),
(150, 1950.00, 1, 46, 135, '2022-08-25 22:45:52', '2022-08-25 22:45:52'),
(151, 649.00, 1, 42, 136, '2022-08-29 17:58:28', '2022-08-29 17:58:28'),
(152, 970.00, 1, 41, 137, '2022-08-31 23:28:29', '2022-08-31 23:28:29'),
(153, 899.00, 1, 45, 144, '2022-09-02 02:03:11', '2022-09-02 02:03:11'),
(154, 899.00, 1, 45, 146, '2022-09-02 02:04:25', '2022-09-02 02:04:25'),
(155, 649.00, 1, 42, 149, '2022-09-02 02:11:28', '2022-09-02 02:11:28'),
(156, 50.00, 1, 54, 150, '2022-09-02 02:12:17', '2022-09-02 02:12:17'),
(157, 50.00, 1, 54, 150, '2022-09-02 02:12:17', '2022-09-02 02:12:17'),
(158, 50.00, 1, 55, 150, '2022-09-02 02:12:17', '2022-09-02 02:12:17'),
(159, 649.00, 1, 42, 152, '2022-09-02 02:13:11', '2022-09-02 02:13:11'),
(160, 50.00, 1, 54, 152, '2022-09-02 02:13:11', '2022-09-02 02:13:11'),
(161, 50.00, 1, 54, 157, '2022-09-02 02:17:35', '2022-09-02 02:17:35'),
(162, 50.00, 1, 55, 157, '2022-09-02 02:17:35', '2022-09-02 02:17:35'),
(163, 899.00, 1, 45, 157, '2022-09-02 02:17:35', '2022-09-02 02:17:35'),
(164, 50.00, 1, 55, 162, '2022-09-02 19:11:40', '2022-09-02 19:11:40'),
(165, 50.00, 1, 54, 162, '2022-09-02 19:11:40', '2022-09-02 19:11:40'),
(166, 50.00, 1, 54, 162, '2022-09-02 19:11:41', '2022-09-02 19:11:41'),
(167, 50.00, 1, 55, 162, '2022-09-02 19:11:41', '2022-09-02 19:11:41'),
(168, 50.00, 1, 55, 165, '2022-09-02 19:14:22', '2022-09-02 19:14:22'),
(169, 50.00, 1, 54, 165, '2022-09-02 19:14:22', '2022-09-02 19:14:22'),
(170, 899.00, 1, 45, 167, '2022-09-02 19:23:34', '2022-09-02 19:23:34'),
(171, 899.00, 1, 45, 169, '2022-09-02 19:26:58', '2022-09-02 19:26:58'),
(172, 130.00, 1, 44, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(173, 169.00, 1, 51, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(174, 1950.00, 1, 46, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(175, 50.00, 1, 54, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(176, 50.00, 1, 55, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(177, 320.00, 1, 56, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(178, 79.00, 1, 57, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(179, 189.00, 1, 60, 170, '2022-09-02 19:42:47', '2022-09-02 19:42:47'),
(180, 649.00, 1, 42, 172, '2022-09-03 08:17:29', '2022-09-03 08:17:29'),
(181, 970.00, 1, 41, 172, '2022-09-03 08:17:29', '2022-09-03 08:17:29'),
(182, 3225.00, 1, 52, 172, '2022-09-03 08:17:29', '2022-09-03 08:17:29'),
(183, 224.00, 1, 50, 173, '2022-09-03 08:17:56', '2022-09-03 08:17:56'),
(184, 169.00, 1, 51, 173, '2022-09-03 08:17:57', '2022-09-03 08:17:57'),
(185, 649.00, 2, 42, 174, '2022-09-29 11:42:26', '2022-09-29 11:42:26'),
(186, 970.00, 1, 41, 175, '2022-10-02 22:04:45', '2022-10-02 22:04:45'),
(187, 970.00, 1, 41, 175, '2022-10-02 22:04:45', '2022-10-02 22:04:45'),
(188, 970.00, 1, 41, 176, '2022-10-03 22:52:18', '2022-10-03 22:52:18'),
(189, 649.00, 1, 42, 177, '2022-10-04 02:20:26', '2022-10-04 02:20:26'),
(190, 649.00, 2, 42, 178, '2022-10-05 17:57:57', '2022-10-05 17:57:57'),
(191, 5995.00, 1, 58, 178, '2022-10-05 17:57:57', '2022-10-05 17:57:57'),
(192, 2449.00, 1, 59, 178, '2022-10-05 17:57:57', '2022-10-05 17:57:57'),
(193, 649.00, 1, 42, 179, '2022-10-05 19:57:32', '2022-10-05 19:57:32'),
(194, 970.00, 2, 41, 179, '2022-10-05 19:57:32', '2022-10-05 19:57:32'),
(195, 970.00, 1, 41, 180, '2022-10-06 16:34:54', '2022-10-06 16:34:54'),
(196, 649.00, 1, 42, 181, '2022-10-07 01:14:28', '2022-10-07 01:14:28'),
(197, 4190.00, 1, 53, 182, '2022-10-07 04:14:41', '2022-10-07 04:14:41'),
(198, 970.00, 1, 41, 183, '2022-10-07 21:19:54', '2022-10-07 21:19:54'),
(199, 50.00, 1, 55, 184, '2022-10-07 22:10:52', '2022-10-07 22:10:52'),
(200, 970.00, 1, 41, 184, '2022-10-07 22:10:52', '2022-10-07 22:10:52'),
(201, 50.00, 2, 55, 185, '2022-10-08 08:30:02', '2022-10-08 08:30:02'),
(202, 970.00, 2, 41, 185, '2022-10-08 08:30:02', '2022-10-08 08:30:02'),
(203, 649.00, 1, 42, 186, '2022-10-11 04:30:19', '2022-10-11 04:30:19'),
(204, 970.00, 1, 41, 187, '2022-10-11 04:47:39', '2022-10-11 04:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_order_options`
--

CREATE TABLE `product_order_options` (
  `product_order_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `review`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, 9, 46, '2022-02-28 04:25:02', '2022-02-28 04:25:02'),
(2, NULL, 5, 7, 44, '2022-02-28 04:43:52', '2022-02-28 04:44:08'),
(3, NULL, 5, 9, 44, '2022-02-28 04:44:03', '2022-03-14 01:40:04'),
(4, NULL, 5, 17, 44, '2022-03-12 22:33:52', '2022-03-12 22:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 16:37:56', '2019-09-07 22:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-07 22:41:38', '2019-09-07 22:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-07 22:41:54', '2019-09-07 22:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-15 18:50:21', '2019-12-15 18:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(67, 2),
(68, 2),
(69, 2),
(76, 2),
(77, 2),
(78, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(103, 2),
(104, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(134, 2),
(135, 2),
(137, 2),
(138, 2),
(144, 2),
(145, 2),
(146, 2),
(148, 2),
(149, 2),
(151, 2),
(152, 2),
(153, 2),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(200, 2),
(1, 3),
(3, 3),
(4, 3),
(5, 3),
(27, 3),
(30, 3),
(31, 3),
(33, 3),
(34, 3),
(42, 3),
(48, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(67, 3),
(68, 3),
(76, 3),
(77, 3),
(78, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(86, 3),
(92, 3),
(95, 3),
(96, 3),
(98, 3),
(103, 3),
(104, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(113, 3),
(114, 3),
(117, 3),
(130, 3),
(134, 3),
(135, 3),
(137, 3),
(145, 3),
(146, 3),
(151, 3),
(152, 3),
(153, 3),
(164, 3),
(170, 3),
(171, 3),
(172, 3),
(188, 3),
(189, 3),
(192, 3),
(193, 3),
(1, 4),
(10, 4),
(11, 4),
(27, 4),
(30, 4),
(31, 4),
(52, 4),
(64, 4),
(67, 4),
(68, 4),
(83, 4),
(86, 4),
(92, 4),
(95, 4),
(96, 4),
(98, 4),
(103, 4),
(104, 4),
(107, 4),
(111, 4),
(113, 4),
(114, 4),
(117, 4),
(164, 4),
(188, 4),
(189, 4),
(195, 4),
(196, 4),
(1, 5),
(27, 5),
(30, 5),
(48, 5),
(52, 5),
(64, 5),
(67, 5),
(68, 5),
(83, 5),
(86, 5),
(92, 5),
(95, 5),
(96, 5),
(98, 5),
(103, 5),
(104, 5),
(107, 5),
(111, 5),
(113, 5),
(114, 5),
(117, 5),
(130, 5),
(144, 5),
(145, 5),
(146, 5),
(164, 5),
(189, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'A room without books is like a body without a soul.', '2019-08-29 22:54:23', '2019-10-18 12:38:04'),
(2, 'Be yourself, everyone else is already taken.', '2019-08-29 22:54:23', '2019-10-18 12:38:04'),
(3, 'So many books, so little time.', '2019-08-29 22:54:23', '2019-10-18 12:38:04'),
(4, 'Lorem Ipsum', '2022-05-04 05:54:29', '2022-05-04 05:54:29'),
(7, 'Theatre', '2022-10-13 09:33:55', '2022-10-13 09:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `rate` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `available_for_delivery` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `description`, `phone`, `mobile`, `information`, `rate`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `available_for_delivery`, `active`, `created_at`, `updated_at`) VALUES
(11, 'Quickie', '<p>Quickie<br></p>', NULL, NULL, NULL, NULL, 0.00, NULL, 50.00, 0.00, 0, 1, 1, '2022-01-31 06:07:31', '2022-05-13 06:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `stores_payouts`
--

CREATE TABLE `stores_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_fields`
--

CREATE TABLE `store_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_reviews`
--

CREATE TABLE `store_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_reviews`
--

INSERT INTO `store_reviews` (`id`, `review`, `rate`, `user_id`, `store_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, 9, 11, '2022-02-28 04:25:03', '2022-03-14 01:39:36'),
(2, NULL, 5, 7, 11, '2022-02-28 04:43:51', '2022-02-28 04:43:51'),
(3, NULL, 5, 17, 11, '2022-03-12 22:33:45', '2022-03-12 22:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `name` text,
  `group_artist` text,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `venue` text,
  `gender` text,
  `capacity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount_price` float DEFAULT NULL,
  `description` text,
  `address_latitude` float DEFAULT NULL,
  `address_longitude` float DEFAULT NULL,
  `map_zoom` float NOT NULL DEFAULT '13',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `name`, `group_artist`, `start_date`, `end_date`, `venue`, `gender`, `capacity`, `price`, `discount_price`, `description`, `address_latitude`, `address_longitude`, `map_zoom`, `created_at`, `updated_at`) VALUES
(2, 'Bolshoi theatre', 'Artist 1', '2022-10-21 00:00:00', '2022-10-29 00:00:00', 'a', 'Male', 200, 10, NULL, NULL, NULL, NULL, 13, '2022-10-12 11:14:23', '2022-10-13 01:09:55'),
(8, 'AAA', 'aaa', '2022-10-13 00:00:00', '2022-10-14 00:00:00', 'as', 'Male', 22, 13, NULL, NULL, NULL, NULL, 13, '2022-10-13 01:08:34', '2022-10-13 01:08:34'),
(10, 'BBB', 'BBB', '2022-10-19 00:00:00', '2022-10-28 00:00:00', 'BBB', 'Male', 23, 12, NULL, NULL, NULL, NULL, 13, '2022-10-13 01:11:47', '2022-10-13 01:11:47'),
(13, 'CCC', 'CCC', '2022-10-19 00:00:00', '2022-10-27 00:00:00', 'Théâtre du Châtelet, Rue Edouard Colonne, Paris, France', 'Male', 300, 200, NULL, '<p><span style=\"color: rgb(74, 74, 74); font-family: Roboto, sans-serif;\">The following section contains usage information that goes beyond what is included in the documentation in order to give a more elaborate overview of the API.</span><br></p>', 48.8577, 2.0001, 13, '2022-10-13 02:59:27', '2022-10-13 02:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '21b86162-e50a-47d6-995e-840112b63138', '2022-02-01 03:15:51', '2022-02-01 03:15:51'),
(2, 'ba988506-58c4-4811-91ec-2ab364753459', '2022-02-01 03:18:41', '2022-02-01 03:18:41'),
(3, '86a74a93-a4dc-4f35-b775-84c6811844ac', '2022-02-01 03:18:50', '2022-02-01 03:18:50'),
(4, '34048f5c-8601-47c4-bade-32775a0eb48f', '2022-02-01 03:18:58', '2022-02-01 03:18:58'),
(5, '0b198c2f-1798-4f50-91a9-80edff0e5866', '2022-02-01 03:19:10', '2022-02-01 03:19:10'),
(6, 'c4bcd598-dc7a-4ae1-9550-c6524eb79499', '2022-02-01 03:19:22', '2022-02-01 03:19:22'),
(7, '6d97a5e6-2205-4ac6-94f2-e43ad6b7637e', '2022-02-01 03:19:38', '2022-02-01 03:19:38'),
(8, 'ca818bc3-afb3-4829-ab32-7550f6b8cefe', '2022-02-01 03:19:49', '2022-02-01 03:19:49'),
(9, '58188207-759c-4b1a-be62-0e6cc1997467', '2022-02-01 03:19:57', '2022-02-01 03:19:57'),
(10, '98324de9-c2ec-4b12-9d19-867507c0f215', '2022-02-01 03:20:07', '2022-02-01 03:20:07'),
(11, '80f4ffcf-75b3-47da-98ea-51e208145ecc', '2022-02-01 03:20:15', '2022-02-01 03:20:15'),
(12, '79cc8a24-1d50-4ad8-a089-bfbeebf1d0dc', '2022-02-01 03:42:07', '2022-02-01 03:42:07'),
(13, '450c9e43-ff94-4d2e-b6c4-811a710d5a0a', '2022-02-01 03:43:20', '2022-02-01 03:43:20'),
(14, 'c5691ac1-9344-4e15-ada0-0060882145d1', '2022-02-01 03:45:37', '2022-02-01 03:45:37'),
(15, 'db03c49f-bafc-44e1-9738-abc98a26f6c0', '2022-02-01 03:46:42', '2022-02-01 03:46:42'),
(16, '3453014b-97af-461b-94b2-aa0e5272814b', '2022-02-01 03:47:43', '2022-02-01 03:47:43'),
(17, 'c043e975-4cf2-46e8-bdf0-55593edade57', '2022-02-01 03:49:20', '2022-02-01 03:49:20'),
(18, 'e411d952-8c53-4806-b5b4-3e0bd10c3d3c', '2022-02-01 03:51:27', '2022-02-01 03:51:27'),
(19, 'cdb47aa9-6857-4a02-adc4-8f4d2a3515b5', '2022-02-01 03:53:00', '2022-02-01 03:53:00'),
(20, 'cb513ba3-4ea1-49fb-bf8f-aab0f4a41cf4', '2022-02-01 03:54:08', '2022-02-01 03:54:08'),
(21, '315d7629-926c-45d8-a182-1eaac5e2d444', '2022-02-01 03:55:32', '2022-02-01 03:55:32'),
(22, 'bfbe8723-bea0-407b-9a3e-6efd121f6918', '2022-02-01 03:59:54', '2022-02-01 03:59:54'),
(23, 'ca653b81-9fee-46cf-bfd3-8c6ade2f6950', '2022-02-01 04:01:11', '2022-02-01 04:01:11'),
(24, 'b7f567fa-01ce-4752-a741-dce208d16c03', '2022-02-01 04:01:29', '2022-02-01 04:01:29'),
(25, 'cc5a459a-c238-489b-a279-f0ffe5113ff6', '2022-02-01 04:04:11', '2022-02-01 04:04:11'),
(26, 'bf85aa42-1005-44a0-a479-0a59d218b03b', '2022-02-01 04:04:52', '2022-02-01 04:04:52'),
(27, 'a2f68504-2c2a-42be-b877-be5236e20438', '2022-02-01 04:05:23', '2022-02-01 04:05:23'),
(28, 'de361af9-0695-4e89-aacc-00829a83b469', '2022-02-01 04:06:14', '2022-02-01 04:06:14'),
(29, '39d85c5e-3aeb-4a9f-80c5-bedca06947f7', '2022-02-01 04:08:41', '2022-02-01 04:08:41'),
(30, '8c39da37-8746-49d4-add4-ebccdce9552d', '2022-02-01 04:09:22', '2022-02-01 04:09:22'),
(31, '441e8304-b825-4aec-8e81-ee73f4f47d7d', '2022-02-01 04:10:00', '2022-02-01 04:10:00'),
(32, 'a08009c8-3e9b-4b05-813f-6c36de85adff', '2022-02-01 04:10:34', '2022-02-01 04:10:34'),
(33, '8253f6d6-e723-4707-afa8-01b3afce121f', '2022-02-01 04:12:35', '2022-02-01 04:12:35'),
(34, 'c31034eb-e206-4826-ab17-b1bae2af8367', '2022-02-01 04:13:24', '2022-02-01 04:13:24'),
(35, '866b63b8-a38c-4d6c-b789-1d6435e1d1e9', '2022-02-01 04:14:10', '2022-02-01 04:14:10'),
(36, 'aa11f184-6840-4b12-933e-2ee272d2d593', '2022-02-01 04:14:15', '2022-02-01 04:14:15'),
(37, '72bfb720-305b-4c80-96ae-d5d538c13030', '2022-02-01 04:14:40', '2022-02-01 04:14:40'),
(38, 'b1226898-b121-44e5-951f-085431b18009', '2022-02-27 19:16:25', '2022-02-27 19:16:25'),
(39, 'b5f6e707-e4a3-457d-bbe7-91ea15feea6a', '2022-02-27 19:16:39', '2022-02-27 19:16:39'),
(40, 'b18be3b0-264f-4495-ad1c-cb24e6b22d20', '2022-02-27 19:17:21', '2022-02-27 19:17:21'),
(41, '87f61adf-dda4-4c9c-a61d-1ee071a2199d', '2022-02-27 19:17:41', '2022-02-27 19:17:41'),
(42, '4066639a-40e9-4324-aca7-f228af7aaa33', '2022-02-27 19:18:04', '2022-02-27 19:18:04'),
(43, '00b9e163-862e-4f77-af94-ef9c1255a909', '2022-02-27 19:21:11', '2022-02-27 19:21:11'),
(44, '375de2c9-a743-4c67-89fd-a28754dadc87', '2022-02-27 19:22:17', '2022-02-27 19:22:17'),
(45, 'dab96b83-8b35-4394-9eb1-c1445c10cfbc', '2022-02-27 19:24:45', '2022-02-27 19:24:45'),
(46, 'db07c987-eca3-492c-bdfd-5fe120a84440', '2022-02-27 19:25:45', '2022-02-27 19:25:45'),
(47, 'feeef3ba-bfb0-4ddf-9022-d178edd35322', '2022-02-27 19:26:19', '2022-02-27 19:26:19'),
(48, 'a3427086-984d-4a23-8806-6902bcadd6fd', '2022-02-27 19:27:44', '2022-02-27 19:27:44'),
(49, 'be6f3e69-fa79-4e9f-8eb8-fe4d88aba251', '2022-02-27 19:30:33', '2022-02-27 19:30:33'),
(50, 'd26ba400-c190-4f7f-9c69-fe62fdeb4a6d', '2022-02-27 19:31:35', '2022-02-27 19:31:35'),
(51, '0617cf65-fa02-4fd6-a198-25660b61dcf5', '2022-02-27 19:33:10', '2022-02-27 19:33:10'),
(52, 'de1f243a-51f7-4f67-98c6-20a49771aa90', '2022-02-27 19:34:48', '2022-02-27 19:34:48'),
(53, '943c3088-fdf3-46ed-b52f-412c39838b1a', '2022-02-27 19:35:51', '2022-02-27 19:35:51'),
(54, '8fa1a5e0-e8fc-442c-8621-892181b2e603', '2022-02-27 19:36:41', '2022-02-27 19:36:41'),
(55, 'c82ad684-0604-4aa5-b96d-d40a52606a57', '2022-02-27 19:38:59', '2022-02-27 19:38:59'),
(56, '1c933ee6-dd8c-4870-b647-7f853d937d73', '2022-02-27 19:50:12', '2022-02-27 19:50:12'),
(57, 'fc6d2dd6-78b3-4ebb-9adf-4aab5c85fc98', '2022-02-27 20:23:25', '2022-02-27 20:23:25'),
(58, '08f47a30-4b3a-4c0a-ad49-512aa414d717', '2022-02-27 20:48:06', '2022-02-27 20:48:06'),
(59, '51df7c31-4a69-4f58-8e40-eebbae5eb37f', '2022-03-17 15:22:10', '2022-03-17 15:22:10'),
(60, '8104d27d-2a95-4a4d-b9b9-3b2fbf5a476d', '2022-03-17 15:23:29', '2022-03-17 15:23:29'),
(61, 'c3233f9f-ba58-4c2d-925c-da376edab515', '2022-03-17 15:26:08', '2022-03-17 15:26:08'),
(62, 'df26b7b9-82bf-4bbc-90a8-9cad89de779a', '2022-03-17 15:29:25', '2022-03-17 15:29:25'),
(63, '16673787-1a44-450c-b567-cba036595373', '2022-03-17 16:34:44', '2022-03-17 16:34:44'),
(64, 'b9cf0b68-05ca-4edb-bddc-5c49c6bf4412', '2022-04-07 14:24:52', '2022-04-07 14:24:52'),
(65, '4d2c4b80-16d7-4a5f-9846-6dd2850ad708', '2022-04-07 14:29:00', '2022-04-07 14:29:00'),
(66, 'e4c8e493-4349-4150-aa88-11f71c8af596', '2022-04-13 17:01:22', '2022-04-13 17:01:22'),
(67, 'defced9b-5265-4cba-96a4-b8c276c21413', '2022-05-04 05:00:16', '2022-05-04 05:00:16'),
(68, '933c7b7d-7989-420d-98e4-7bfb80caca78', '2022-05-04 05:00:36', '2022-05-04 05:00:36'),
(69, 'e8c4e5e1-9fb2-4d9d-95af-d6d98559df2a', '2022-05-04 05:00:41', '2022-05-04 05:00:41'),
(70, '4210eef0-a5b2-4a30-880c-0ee9559cd3d1', '2022-05-04 05:01:57', '2022-05-04 05:01:57'),
(71, 'a1eb4b5b-ce69-4491-ab26-81371a8ceac1', '2022-05-04 05:03:21', '2022-05-04 05:03:21'),
(72, '81bccb48-8f92-43d3-9c51-73b30fe3e195', '2022-05-04 05:03:26', '2022-05-04 05:03:26'),
(73, 'd63b9d3c-117d-4336-b71c-24608f099b16', '2022-05-04 05:54:28', '2022-05-04 05:54:28'),
(74, '7aeb4571-e31e-43fd-b0e7-f5e8550b5ca0', '2022-05-04 05:55:06', '2022-05-04 05:55:06'),
(75, '424eb671-bb77-451b-a54d-432a551ee43d', '2022-05-04 05:56:58', '2022-05-04 05:56:58'),
(76, 'b43831bc-fd76-4e30-8a8c-60803213a9c3', '2022-06-07 17:18:58', '2022-06-07 17:18:58'),
(77, 'd845453a-8ecc-46c6-ae0d-dfd970ef78da', '2022-06-07 17:19:09', '2022-06-07 17:19:09'),
(78, '1af99a76-f4c6-4f15-8598-0ee205b4e930', '2022-10-12 16:45:32', '2022-10-12 16:45:32'),
(79, '192499ba-46cb-4e1c-b0f3-c485b38545de', '2022-10-12 16:59:06', '2022-10-12 16:59:06'),
(80, 'ec2e15e7-d325-47e5-8393-1ffab026a054', '2022-10-12 17:00:31', '2022-10-12 17:00:31'),
(81, '4500fc9c-4249-4d33-80f7-3da15a4f990e', '2022-10-12 17:06:00', '2022-10-12 17:06:00'),
(82, 'b1528da0-5e5a-4fba-a9ab-0ceb01ffda22', '2022-10-12 17:17:24', '2022-10-12 17:17:24'),
(83, 'e1e665eb-49ce-4d14-ab57-c40e2b804254', '2022-10-12 17:42:34', '2022-10-12 17:42:34'),
(84, 'b889a4e2-96e6-4eb5-a34d-300c29ad217e', '2022-10-12 17:52:14', '2022-10-12 17:52:14'),
(85, '68717226-8042-4da9-bc9d-a03bb93aeba4', '2022-10-12 18:00:50', '2022-10-12 18:00:50'),
(86, '3d58b352-3faa-44c8-bcf2-30e48387c829', '2022-10-12 18:01:43', '2022-10-12 18:01:43'),
(87, '5ff4ab37-a406-423a-b5f1-5aa75c71c214', '2022-10-12 18:36:50', '2022-10-12 18:36:50'),
(88, '63afb101-62fe-47db-aefc-0fcea017ae2a', '2022-10-12 18:39:04', '2022-10-12 18:39:04'),
(89, '2803efa2-f1c8-4b7b-969d-896a4794bde2', '2022-10-12 18:43:07', '2022-10-12 18:43:07'),
(90, '3e618105-3db4-4914-931e-e0dcba3b2106', '2022-10-12 18:45:55', '2022-10-12 18:45:55'),
(91, '0c0faca3-ea4b-498e-9a02-bee8d4c9a13c', '2022-10-12 19:27:48', '2022-10-12 19:27:48'),
(92, 'f4be15a0-1b31-4fc6-9d68-39195214b713', '2022-10-12 19:27:50', '2022-10-12 19:27:50'),
(93, '1585cc9d-7601-4bb3-8a8d-6db1121fe51b', '2022-10-12 19:29:11', '2022-10-12 19:29:11'),
(94, 'f4f059f3-12db-4ef1-804e-b00c451c6396', '2022-10-12 19:29:18', '2022-10-12 19:29:18'),
(95, '4583e980-8608-401c-b5d3-9c771045277d', '2022-10-12 21:11:47', '2022-10-12 21:11:47'),
(96, '7e4ea2fc-3eaa-437b-8214-439ec1beaf14', '2022-10-12 21:16:50', '2022-10-12 21:16:50'),
(97, '0a386b6c-0127-4f24-935a-245bad7c83bf', '2022-10-12 21:16:51', '2022-10-12 21:16:51'),
(98, '0a67c0fc-bfc9-4820-8648-e207eeca012c', '2022-10-12 21:21:33', '2022-10-12 21:21:33'),
(99, '5ebef0a9-1c5e-42e8-afdf-d95cacc735ff', '2022-10-12 21:21:36', '2022-10-12 21:21:36'),
(100, 'c6da68e3-546a-4299-8e09-e393736e37c6', '2022-10-12 21:29:16', '2022-10-12 21:29:16'),
(101, '3a1e2f64-570e-4995-8e6b-4664f85ba90f', '2022-10-12 21:29:16', '2022-10-12 21:29:16'),
(102, 'a29f84ca-c1d0-47ab-a84e-92d4fcc3303a', '2022-10-12 21:29:21', '2022-10-12 21:29:21'),
(103, '5b64e2c6-d2cf-4ecd-86cb-934c1481365c', '2022-10-12 21:30:58', '2022-10-12 21:30:58'),
(104, 'a892bfae-d160-4611-8e9b-474c4f2322fa', '2022-10-12 21:31:00', '2022-10-12 21:31:00'),
(105, '37723d7a-de9f-40ba-aeac-a826a8503ec5', '2022-10-12 21:32:33', '2022-10-12 21:32:33'),
(106, '04cfc411-18a3-4fcf-998e-5ed312f7620a', '2022-10-12 21:32:35', '2022-10-12 21:32:35'),
(107, '9928faec-ff2e-44f5-b154-6ea0c9f8aec2', '2022-10-12 21:36:09', '2022-10-12 21:36:09'),
(108, '62a799bb-94b4-48d7-b4e2-65c542ca4180', '2022-10-12 21:36:11', '2022-10-12 21:36:11'),
(109, 'f0d751b3-c4e1-4776-bad4-e9a9bab84ecf', '2022-10-12 21:37:19', '2022-10-12 21:37:19'),
(110, '2b908040-6645-4c3f-b929-a440a118da09', '2022-10-12 21:37:21', '2022-10-12 21:37:21'),
(111, '2008c62e-ed83-4e76-ba11-f0dba1a6693f', '2022-10-12 21:38:19', '2022-10-12 21:38:19'),
(112, '4a1a7d1e-b2b4-40ce-965d-58d1204b49a7', '2022-10-12 21:38:21', '2022-10-12 21:38:21'),
(113, 'a2d980e8-11e0-462c-9c6c-f9814e80db67', '2022-10-12 21:39:10', '2022-10-12 21:39:10'),
(114, 'eb9e633b-3245-4854-a0e3-50df36a1aa9d', '2022-10-12 21:39:12', '2022-10-12 21:39:12'),
(115, '6c93b156-4813-4c56-9ccc-0d1a6ccab47c', '2022-10-12 21:40:13', '2022-10-12 21:40:13'),
(116, 'd124939b-1062-488e-81eb-d35fae32e75c', '2022-10-12 21:40:15', '2022-10-12 21:40:15'),
(117, '94b49737-a035-47f4-b85d-ca845e85bbfc', '2022-10-12 21:41:00', '2022-10-12 21:41:00'),
(118, 'e28ccd92-ba5c-4d4e-a65c-c1f0ec06159b', '2022-10-12 21:41:02', '2022-10-12 21:41:02'),
(119, '4dc67ffd-42a4-4bc9-be04-d59f49e718e1', '2022-10-12 21:41:49', '2022-10-12 21:41:49'),
(120, '1b4441ae-3874-41b2-8abe-1205a3e7c01d', '2022-10-12 21:41:51', '2022-10-12 21:41:51'),
(121, 'b5686092-9b0f-4526-9152-aa49f460b2a1', '2022-10-12 21:43:12', '2022-10-12 21:43:12'),
(122, '594a7f3a-472d-4e06-a943-b22feeddeb5b', '2022-10-12 21:43:13', '2022-10-12 21:43:13'),
(123, '36f8e347-2228-40df-90d1-b7e910a907e0', '2022-10-12 21:44:44', '2022-10-12 21:44:44'),
(124, '7dd0b88a-6a0b-4101-b02c-13742518724b', '2022-10-12 21:44:45', '2022-10-12 21:44:45'),
(125, 'cd6ca941-9d0b-4832-963c-2137e609d3b3', '2022-10-12 21:50:09', '2022-10-12 21:50:09'),
(126, '5757c290-94f4-4435-b2f2-5ccfcae18f25', '2022-10-12 21:50:11', '2022-10-12 21:50:11'),
(127, '4db9ca80-8403-4dbb-96d2-0f4257560b82', '2022-10-12 22:01:12', '2022-10-12 22:01:12'),
(128, '8c2fcb68-7476-45ff-a9a6-f87fab224bc3', '2022-10-12 22:01:52', '2022-10-12 22:01:52'),
(129, '24028336-c7ee-417c-8415-997a2a9b8be9', '2022-10-12 22:02:33', '2022-10-12 22:02:33'),
(130, 'c1937310-44ba-4386-b232-7450e67e6f15', '2022-10-12 22:12:29', '2022-10-12 22:12:29'),
(131, 'd16a2f70-b7ae-4a53-a9f6-41e5c0f93d71', '2022-10-12 22:15:00', '2022-10-12 22:15:00'),
(132, '8382b1bf-bed3-4da8-b8ad-020ffa53275a', '2022-10-12 22:36:48', '2022-10-12 22:36:48'),
(133, 'f7e4f285-de55-481e-a40d-ded2d4865b0c', '2022-10-12 22:49:28', '2022-10-12 22:49:28'),
(134, '25493948-2e78-4d70-ad22-65639b2ab93b', '2022-10-12 22:50:10', '2022-10-12 22:50:10'),
(135, '7aad7aaf-22f8-494f-adc2-47f2cfdf879d', '2022-10-12 22:55:41', '2022-10-12 22:55:41'),
(136, '8ef4eee6-e16e-4532-982e-43bed8540b88', '2022-10-12 23:03:35', '2022-10-12 23:03:35'),
(137, '45705cbc-0399-465f-8264-e1a674985bfc', '2022-10-12 23:24:51', '2022-10-12 23:24:51'),
(138, 'e301144f-13b9-4bcb-b84c-91ee9f92049b', '2022-10-12 23:27:20', '2022-10-12 23:27:20'),
(139, 'a048bba7-a2d6-46e7-a3bd-fa1f832e5d8c', '2022-10-12 23:27:53', '2022-10-12 23:27:53'),
(140, '225d0168-2fba-4a9e-a79e-1fd875728776', '2022-10-13 00:05:34', '2022-10-13 00:05:34'),
(141, 'c2e2adb1-b0d1-49aa-a679-88c008910022', '2022-10-13 00:11:12', '2022-10-13 00:11:12'),
(142, '1ed1e6b9-3884-454f-ba36-6ff4ce76aa9b', '2022-10-13 01:04:10', '2022-10-13 01:04:10'),
(143, 'd5d47e23-da5d-43c9-a4df-2c35c3b19a98', '2022-10-13 01:04:39', '2022-10-13 01:04:39'),
(144, 'a7334acd-62c2-4968-bd15-2604975812c7', '2022-10-13 01:05:49', '2022-10-13 01:05:49'),
(145, '1029ab02-1275-4470-9290-4fe31550118b', '2022-10-13 01:06:34', '2022-10-13 01:06:34'),
(146, 'c8d8c8c6-d850-4d1f-a4f9-014b1ed923db', '2022-10-13 01:06:47', '2022-10-13 01:06:47'),
(147, '2ce33178-a828-4977-a355-863bfd1b5255', '2022-10-13 01:08:32', '2022-10-13 01:08:32'),
(148, 'be33211f-a2d6-4a42-a1fa-1d9b064a15de', '2022-10-13 01:09:33', '2022-10-13 01:09:33'),
(149, 'e7891bc7-3eb9-4570-9836-748c221144d2', '2022-10-13 01:09:52', '2022-10-13 01:09:52'),
(150, '4f6c9dcf-e149-4e67-a299-e72993264ac8', '2022-10-13 01:11:05', '2022-10-13 01:11:05'),
(151, '14ea1a31-f1f0-4b6e-9681-589ba9636360', '2022-10-13 01:11:44', '2022-10-13 01:11:44'),
(152, 'cc318c53-8af5-4cdd-b0cc-8e7df46db852', '2022-10-13 02:10:07', '2022-10-13 02:10:07'),
(153, 'b3034fe0-b634-42cf-bb5c-bb41975c4f09', '2022-10-13 02:47:50', '2022-10-13 02:47:50'),
(154, '2ad0d345-ef44-4f6e-a766-914dc7cc1ce0', '2022-10-13 02:59:23', '2022-10-13 02:59:23'),
(155, '01fc3a5d-33c5-4382-abc8-ec1209d2bbc0', '2022-10-13 09:33:53', '2022-10-13 09:33:53'),
(156, 'ed29411b-123c-4541-ad46-3e2de505424f', '2022-10-13 11:18:44', '2022-10-13 11:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael E. Quinn', 'admin@demo.com', '$2y$10$0A3XyWGDxIckcOqmx5HlIOSZtXN8IB8sRPi9YJstw79nULAyM9Ohy', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HJQANoj0orhbUYH0a5O2ZWnV4FMcdKNYWcxBMmO7KSsU5QpqWjNN9F0YVRbY', '2018-08-06 22:58:41', '2022-10-12 02:46:53'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$6HG2j2sqVowgFHtsCG.66uOEVQsMAe72D2MYTn487dO4fdCpMPj8K', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yLdYIXt6VTJbg1TaGcRvNgDxxoJcLnZIJJsY2GRhMJvuPpbKkuPB9F9xtrJS', '2018-08-14 17:06:28', '2019-09-25 22:09:35'),
(5, 'Delivery 01', 'driver@quickie.com.do', '$2y$10$4fz.dDadZEPU4sDIq5f8f.UTnV7K0Uc/FldzU3HHS69UlIfhIeOQy', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', '', NULL, NULL, NULL, NULL, NULL, NULL, 'lwhUX07qr7IC1zScDUO4B203i0VTpIviEpDr10E3nuTRAaN7ET4KPh8ETZI9', '2019-12-15 18:49:44', '2022-07-15 23:08:04'),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 17:28:04', '2020-03-29 17:28:04'),
(7, 'Julio Jiménez', 'j.jualfo@gmail.com', '$2y$10$10Is1sDYPvbJp/rLEZ8bFebutee6mAUesaB82bxLt3DLUwP.DSZ4G', 'W212q5pE1SoHnW1GKkJnQBgXd2FpdKfywEmFavoceQMFvHoqnFT7SuDXza12', 'cv40HUZ0SdaDRh8zIDpfIX:APA91bE99SxfIE4vEVu3dbhjA1kfZcbrZ2KxjyZ-OzwSvSvUMbHCZlL_t4SRh4ZtuqRGUzuZUu0hLoQ74ZiP2vUN4KZubhgKDLX3TY0XooSJwMALG2j3HzphIPY_41Ch4kVBCJS35fGX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 16:36:58', '2022-07-26 22:30:01'),
(8, 'Test', 'monolocodr@gmail.com', '$2y$10$Nlj45eTrUB7UHREWwERJJemzcA8gD8FnO7D4XnndNyfDTo8ZxeuKm', 'pKgWVWQMwU7cDTfsy9UAwkzKdQLmSUryeBNztzPyeppGsExjqkPaT6efUrC9', 'cznkGo2WMkdov9sDmkoF8B:APA91bFt0GHaqdPvZJDQNKT9yfth77h4oAb0M5Ae16juRnsD0ArzR0m_kQYCBDjELn37fdZceF5YguwMz7jsvDk6wN-594vuSeDgKNBBBCnYYl0LOSyMSCjl3XwdmXB7wiZYAY9yREN8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 21:03:32', '2022-10-10 22:19:38'),
(9, 'steven', 'estevenllamas@hotmail.com', '$2y$10$/DjLJ75y17OUGe8ge88kIeizoC5zX95uQI8.o9dselJcLhjm4/XVa', 'bHK0gaIMKd87RRVKalWSNN8KY3pz5F28NBRWBy25xWL1k4f6Hel76COrSIh8', 'erCXaZ7lSFK37DNBwOVLck:APA91bF08731_lf13JfVyV1gsV1gXAuQOgG_xz8imeDCJiObpWb9vA_Hgft6zDK2ErZ2ZBqn9PnQ_F2TCcZGQCEGUZJV21Tl6hZo85ryioJlaGFxIQfgRBADOQbxVXYTnht9XcWcFmgz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 05:57:16', '2022-10-11 04:29:27'),
(10, 'Anyara Rojas', 'anyara_rojas@icloud.com', '$2y$10$x9vSvcbXdBVcOxgt9iOFNuWr2Z9d45kk9J3gTlUVpc4LDQ7RGtsau', 'elZSMVuExh2aGiZgkYtnL4UaCIa6razQrAc1ACUSXkcP1Odm1RfONlqDAPid', 'dfKzu8Lo8EyrqVEWZPHhFO:APA91bH2O0dcCV4imhAl1BJnRqGmbsLAc0xP1wr-qYCmaSn4mxqq0W4Oz7vV4HgWX8AG0lZKoyKPphqlD-SD5G8vSkyrliJUa3frLGQ-JOPaWK9JCU7BO5749nVqLKhnu786Jw6FeC3b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 18:41:13', '2022-02-03 18:41:13'),
(11, 'Byron Calderon', 'cbyron7615@gmail.com', '$2y$10$mzs/TFsYJj4ZziGKA0GuCuu3Pj9ESDHuiDO7CgBuXFwe00ayLhAJ.', 'ThEGSXGIN4gjvDV6HnevGQa7eTx0JprCUHqJMXYH1xi6JvHzMJErhDGU49AC', 'c-_d9BtbZUWOk9K9qCebvd:APA91bEsKqhMtPAzn2A1c7T3EUxpn93Lxwf6pndaGi_GvmyN_-YPSPXpL3YQSFUICJtYy9aMvjxTWa6JMSCVC0ExAURvNpizZ18PUjx74nzl6TlHrjayzZscMjc4w05NXO6yYqwGoD-q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-06 21:27:07', '2022-02-06 21:27:07'),
(12, 'Dr S Suresh', 'sureshsurgen@gmail.com', '$2y$10$n8GtlV5rP0/GjaR4zuwVGubFgWvlmUSt/TpDcASpvXNWAc0CjAEYK', 'TdEPrSrDsPoM6OZlvJ3W4XztEcMROJPsV0M07P33jXBmWZ6mwmjvmhSrjjIP', 'fF-_J7QXLkJJk5i3_I6Vsi:APA91bHD8OLJCulP0fxy1KzETwYq9VLA0xFKZqREshZDMKGerCtC7hrG2LKDStjdsBeiyabFCzjRIa1nYzPhT-mw5exnFgrR3d0Hj7nP5Ze356oraFnRTmI7qkscpak24NHk9_arTY6z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-11 08:12:40', '2022-02-11 08:12:40'),
(13, 'yian wang', 'yian.wang1224@gmail.com', '$2y$10$4DdlxIIoR.fYZHVVFYx00uzIGSbrDHbwTuv3KvhZaJ.WG8M7tMlqS', 'Mh8iVQfC7HC1AvZ7OFWvrPHc5QT5bCQAzMzhQQ5ANApLrcvCIf4JdAPpitAX', 'dlSlB4oqikzbqdbnXC-rwz:APA91bGaG-Tnz0I1Dq5yRVVLfPlw00xbwYijg-AQr11uZKT1lNDYCzL_5azR7SeanJh-jmzJIToIbav0Cpj9pWD2MdpdjYcVBXHlyyw0gXAY_K7coWoAlNwcch8Mo9OyHJFSJcmKkS1p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-12 18:05:09', '2022-02-12 18:05:09'),
(14, 'David', '2980134140@qq.com', '$2y$10$cpKE7h6hqBYpPhT6oSEh4OcqtKwGqxn1luqx0SNHgI425eFhSYcDe', 'GfBHljOp0AULtZ2IvjGmqcjrPWEz8wlrKI9TXoVzjgOKZuiju6HKuvtuPkHC', 'eEBGfPXgNkI8m-lK-nDQGh:APA91bEWKbfHov4Go2jcH2On8FalSkEWaiTZ_iTCgkf-4vMUuR5OfMZSYb6u01zyE5N71WZWYhADqZ-nHC0O_1sSkYIRo2sfNEbP8AH9ckHrgIOu6Ef45_q4PCxe_JFFo2sgnXn8hgTP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:42:48', '2022-02-15 09:42:48'),
(15, 'matthew terrill', 'mterrill2002@gmail.com', '$2y$10$aTODvifgqlX7qim1/ZlrW.KnOHaLV2aWUEIfja9FVeiNKn5VQ0BCG', 'lpWsI5AqXPpwwWwg5kp7DrNoErxnbg8j8WYUUwIJBJc5yNR3Bh7fO5tDNPFd', 'dOQB9Y2iWU1So5UJ7Sdc0j:APA91bExwfDRziRk29LCXKnvh2dv6s-QeI2NQLeX77weyvSNP6gNe5vFsOqUFc-kTZTKvlkptMH4tJG2X1DVHesftb_VcDRiyt3LTUcqRnHYEhDe_X9kXKq-Gp5GN5GN6VS5kUT8A6TG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-17 20:56:48', '2022-02-17 20:56:48'),
(16, 'DEMO', 'demo@quickie.com', '$2y$10$UsJtJUfGw2LLJeDFo9wq4.f6699D5pZXn9TibmHZz2cJ0ai2kFNLC', 'i1bSKz2de9JQ7FsWBp1qzu9xAcEPhXfhIxua3UXjsGDOqjI22Majfep6ViDK', 'fJphQv2VrUkRvwpz3pphSt:APA91bGBHknNeVSfn6K95GeEm9pnpp3XWEubstsc5Trz5K_YillprEAFEAh0lbY5GkkBql3f7lYiSS4pXwVkuje1ByU_NiLLHVTPpY6rz2LxdOqXsLMAlDA7lxOKCzofav1wbXyCOvVZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:41:26', '2022-02-23 05:41:30'),
(17, 'demo', 'cliente@quickie.com', '$2y$10$4Vwn8chDEg34fc3MdwWv1eHLgIRR7Ig814vzmtUxXKMcPA7sF.Pwa', 'TtMyPx29Td1p9QKSq3nYGeApD9zc6pEt5H1HVHrZOPjuXTXtamRT46XRvWjE', 'cW33wcGh80Iyp3wX3rNcs8:APA91bGVknudlHAiYtFsBPAf5KMlzT8zR9yMJahXfhR5BnIJ-Y_ZMwRSq0lv7vroVlznHypb7jB8HK2vm0Dcssic2cREO7t97HFhlsgQuDLHnJssU4FnghDAdVrbADvO9j5YzUZwVwTb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 03:13:47', '2022-04-29 22:49:29'),
(18, 'Gabriel Moreyra', 'gabrielemoreyra@gmail.com', '$2y$10$JGzpjuzHrIfDJVZHFC1tM.svDu/lDjvZWmJYlvwnMhW8oSG/pL4cO', 'MKo5J2UsyQyrN3z2n37YtkKRNk09TCMcZIZB3unMeZ7YGm1Izp0wiH1M0DaM', 'eY8xp9CZSqejaYMkQ4vusL:APA91bFfhhd6en4ujDv5jEHVgHjdIjmWl84eD5jd7dY1qaZHnCB0dno4gAs62pA4Y-tH8vVsT4cdH7_8wpT5R14VhUsb_eAYVx_DsrSzVyRCnRkWrkmQgnOjXmKmfoJKz0GPAKzTwXx5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-26 20:14:18', '2022-02-26 20:14:18'),
(19, 'John Alan Reedy Sr.', 'drjohnalanreedy@aol.com', '$2y$10$iwsA61dOGsJGuW7of2zrFebFNz5o/ljQXXd0kZm85z8RdCQISWIkm', 'HQjmtwQu9a1ERpcFt97gfo6JW0CnPdQm5LoL9Xfy3PA1b09DM5DoClQUcZGH', 'cnBtTZWnsE1Svw1GJzULIa:APA91bE6mm2S5XkFB5VOUrJSRGZJwvNATgAYwASOeJ2Z_kPbWcfwt1MM04-IsZthRnbzgAviwTobZez2ftr1CDNyxEIYtJ82kGfOUy7GXtTW--saZRWHPOUbkGDqeJm3h5xiKofT8lgs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-27 21:08:02', '2022-02-27 21:08:02'),
(20, 'Jhon', 'jhon001@yopmail.com', '$2y$10$D401ojEG21JSZ39sVOILauvFut4DT1iehRR4ooRLFCAex5OqGpZu2', 'V0OYwbHi4pvMQxU1vvnZnMuBaKx0QYIDBZ3UJjRPNLlz98SLn8ZHUT0Ayns0', 'ehAke6qJQVOtAIdaSzttsj:APA91bHnS5o8f5W90S59vblok3cw3dBCEzMXg1Whqwq-QtzaQX9ikc3f8xcin39Zndj-dt9W3m9c0oWFMHFmZDZGNHL2dXeT3vuJNcb3_JAj1tn_VKIUodJVYesxcfOLlhkgB6pE3wQN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 11:07:25', '2022-03-10 11:07:25'),
(21, 'Diovamny Garcia', 'diovamny@gmail.com', '$2y$10$fZ.sNGxB9O/LN4y2czHAJu2NZgYt.r..PEi/u/AEAtOPwiHORv/RS', '0EOz4GS9079PbFLkyUCkPu1MAFDbNOgEjse30gVjPeW72lb8Tt3rNH69T6ks', 'eFGJ2V7XTkGjYbTiPk8zYJ:APA91bGc4z9Yhk96b3cKOdG-gJeIBpPAfqPC45t7ImkdE9Ija4adRTM6-20TeBfDmYrZgo-gKjiHdiI_IivFK6aHFWxy-5kQeLb1BY8T24eug6xQlpZmAMyDBldHXarhqSQvtVkI4B7p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-11 19:52:48', '2022-03-11 19:52:48'),
(22, 'bentleygonzalez', 'bentleygonzalez12@hotmail.com', '$2y$10$O4BSuVaXx39U9h1lvQpNQ.qHr4ruCm13m9sJQxQomheKhsm0M4Zkq', 'b7cz7vcP9b4htgNz7X5vyRla7HzNBEPnHNGyXvXZhIXuyxpm5BTcHMshad8N', 'dZ_ELLZJ-ETCsg_6Rwayof:APA91bEEg_ngM66DNXzX0HVGoENRiVx2XgxJPxacO_h-GJTNmNjtDnWsGRmCByIYeYAhlxKlTBngQtBe-3ZUGmPPEPUVxBA2vfU06vS6wI2A2F8Guqh7VwRFjfutZAKwvwARCrpt-M55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-02 13:58:27', '2022-04-02 13:58:27'),
(23, 'Kitiyala jamir', 'kitiyalajamir@gmail.com', '$2y$10$FkSOw5fIDy9S62mnjTo3bupxA1k7QHrY1gdheYkPEQ0inIgbLjUzO', 'mOXxRUfME4u4tQy5RFOa20oaFmbp4DG7EXwGpI3GWFZZ9qPU21FO0zxsXaut', 'c4O-cjAzUEKqhczpRkZ65K:APA91bHSALSpbe4myNG4cxnTUt840B0P00V_2Z3CeEopdeHktbLLXnph_dENsbStqf1QF7csTbfaJ8W8maBsm8-XG54sze6HTTmEWVMzZmu5Qw6khKrEJ6AC243RoXEG_lQK25idR7U1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-02 16:16:54', '2022-04-02 16:16:54'),
(24, 'brendan cadigal', 'brencadigal@gmail.com', '$2y$10$ot/AsdGwzI./tb8zzLc44O9Z7ECKH7mjG2X9FRhvF1ezXkcupXgWO', 'gWMM3urSqzPkc0m38AEQ6Yd4tYf3pZCY8TjzGdqvA6TqIToITtmSXw8lC1E7', 'e_z6RSu0DUjZoZDOuZMNnI:APA91bEC-LswXEThjq1Y7k6wxZ6bvHaq5POK8A12ddkLhsaH1togxAhrgoWd9GbX1Lg9lNtaWB1pulLPUlxERKsgZZk_SrW528vLIBTE8b9bNwNiIr47kYsQNbPjRdU_grKjs1rg5xU9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 06:42:38', '2022-04-06 06:42:38'),
(25, 'Jake Peter', 'jake7peter@gmail.com', '$2y$10$8laoFRpRXX8r0E3svbRJsOl5I1pjQ3KooOe/ze1nRgu95Fx2fSjJ6', 'uKdR1lsMj1EM7E5G5SwjEd8Azyb9m3LBFIV9zlAWvPjPIGA99AkMEvROL5se', 'cu8rALy8k0sit1Mb8XGwho:APA91bFaZwy9aat05BAJEU3kPEsc6O-vSTXvH0cIJEhQgF4xR1iGwwHL3c4fFutuBUIRlp-uPxQHfqVtlbF7fiRQ7ioz_dQcVXhyHI__ywGmjnbsmYY6SDCcSuj_hGW7Q9wd32yE40Fp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 08:23:48', '2022-04-06 08:23:48'),
(26, 'kelvin santos', 'pantgold11@gmail.com', '$2y$10$Ec.3F5zqoNAFVdLUiTnv4emMoHhTv8GfVBmQ1zVhscvpldWsnUIg6', 'hUKUy8iW9UcGpOgkprC4ykBcQ9fLvQeagVZc4ptEDWCLwXkxcDRTxzsxCYxm', 'eSR87uvVpUeUqcZm_-oaoQ:APA91bG-NDATJeL1-7LZrgxMck1YyE5ip8_hT-QveOhYlSaGSszGXNTKq4quM0Cg3_FWxe6oA7Eg5Y3StDJbLLjWuazu5T93W3mwVOlgkn1tYMd6ascaN7xxnTpG0I-gQAWomAATQhkH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-14 21:49:19', '2022-04-14 21:49:19'),
(27, 'Víctor Méndez Díaz', 'victormendez-12@hotmail.com', '$2y$10$xJCP6Ka76mrIgj21ITv2kOsd.BT9L3M.rru3GHyMWzCDCnorhLoI6', 'fusjoiqJZmewduIUpIWR7BQJ08RqO64Sxd2EeNBj6ScTLG3bEOsar5owHsxS', 'dtLw2VI_6ExLs-SXQ8oCyx:APA91bFOjzha2362kiRpcPhQr4zGNS3sak2dbr_rHpq-hHmjI02a1TL3F81yy-9I__mXFQNyDeBIVv8Q4EsQEgumuv2dAxclrnbVv7oDlfHIOVpNIiaMdVWrXDfftfJFdR0bUk9ZkAzZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 21:16:57', '2022-04-19 21:16:57'),
(28, 'Natalia Ackerman', 'nataliaackerman@yahoo.com', '$2y$10$F3lA8HprVDC82GimYNcc4O7U0POxOZNMZ65kpRl/2oBS4MBSEpXEm', '36uSf9AzsRiH0q3uVdla7HGVXC8KQqha7UxAyWZOouRSJe280ZiB4J4diAZt', 'e36zDz3G8UQ7iDRsjYQwDp:APA91bGdHo8e0aafGw4-xXgXC2vkfgIm6W7qWrBYzZHmazWctckDouaRA25wp6qwXWf546xZZDVz23Z9dqAcYaEU37bXf1CtgxAQYQEhetn_nTy7YbPouxVOW8dojzti_zfhA27TiXXA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 04:34:57', '2022-04-21 04:34:57'),
(29, 'Natalie Caram', 'natalie.caram@icloud.com', '$2y$10$lAaPgfF187jmjm9CxZ0AlOhTs7yb9w6.U51Cww4Mdow7x51mZTGjq', '1JnciDs3iGpDjObM7m26AnT4Qf7xWRruSknVbQysjUovLMUbJHU7L0UiMoI9', 'f3aV1zb0ikuysjdLKqeKXh:APA91bHFlhzLER8nls5BAJLGWunGmUV8s1EbolN46ALjtfxqivvvheW9sZfGr67zRza5mY3kblXTrIhIfzgqNdyJ3nk7_lMcxqCgQzGQuMUxnKbxvHV6-p1kN92iS8AfGTy-BpK6MGHo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 11:04:39', '2022-04-24 11:04:39'),
(30, 'Luis Enrique', 'djdbdbs@gmail.com', '$2y$10$oL.6I6ctFN2YDKgh7xXqdO02V4HXSw8MW.8IwWiL0.ZxGkf18B0Lm', 'PGRbPo0MD53mRogHSGrECdmaBSHkNeTLJ8e19qKwFREXIpTFEkfEqfZSC0Qj', 'c8kfPFTKT_-0BwSoV_pEXe:APA91bEuwufjhoQTRFqcKwjnFovVwP9Yv5r8tlycacaDxKmDxbXFkN74-eORAexAVVfKk3SFfxhvz-ev32nIxp3r55femKZwunoqMqzOxDkzey4pdo3a3lkmwK-kYcmp2gmzE9wKuDhK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 19:15:22', '2022-04-25 19:15:22'),
(31, 'shaonta', 'shaontavInston@gmail.com', '$2y$10$PrhRYtZ6sNfzN9uV3NBiZ.zF/hU5suKJ5nLGyRLdv6FRgLTs9G0sa', 'S56IvBI22NlwlX0Vu92GpkJjRngfXpKRm89wDqEEbXbSErfOS1DZ2MWfN8SS', 'cURE9lU2z022ktAsgcrov7:APA91bHEabBkNYQiK1LaEnAwWdkTxVB3ELOGkD5M-spfnFKJRpSMsQdgXlkZC0WcG_CmB-WNP34xilHjXSEI4zBZSJSzhxfXcdNal6qGwel-Wx-dF48UoS_5ZAEmwGD2RuP9W857B0SS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-30 04:26:20', '2022-04-30 04:26:20'),
(32, 'grace', 'gracegarcia76@icloud.com', '$2y$10$z.MDmbubI6a0krmySaA2iOSY/xq93hgNxbTguXnuqIV3eplCTF0f2', 'O8eqYAShFDSees9sGzkCTtDVndgOKN9Tmsq6Ie580nTupCabHxHK5a8LqyVa', 'c0Woy0ZPlUmWksXhp95A6F:APA91bGFQL667uj9D0Fn8Hj621hWFkdCx_lscOzCMcy61tiqi9SeznThOxpeRTq3aVNl1tTiXak-mH8kvwN3F4RBf86_nic5K1NSaNbk2IYML4s5ehTWB5j2wFsLAyFbdVwbwO8WM09A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-01 11:45:17', '2022-05-01 11:45:17'),
(33, 'Luca Debray', 'Luca.debray1@gmail.com', '$2y$10$YIDDiKJ8/ccXaCBy0smKReBI3AQWNjn3HvwGvHLPtlYh2UakWZlty', 'eqQH3DyUIBNDIxtCFv2vq9tyoMgkIULfMRJ6e3KUxTJdJ3fEOyD6CeLZWN5V', 'ceWVamfSBk5LlfjpDxNqg0:APA91bFsmzvNxxaN-jYvLEgYPLCmuqI5WEGCjcQA6HxPX5pfPkZcHGLScNnODvzha8g-4p8F591pw-TbLg1ESUycjjZWI2yAOi7oLJwHGw_7y4sfNHxsWoyzIKI1l5TAGzRP-L4x6z-9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-02 02:25:04', '2022-05-02 02:25:04'),
(34, 'zeeshan ali', 'shani@mail.com', '$2y$10$evPHfgRWxyGc4Y9lZZ.B8u0zclGZSW5k62a30gIsSzbu5mZHvBqb2', 'FgBFAAedOoJq9HDnk02S5aDqzmNICJYVfNQyUD5n2FXrwMYHDDOZABQGNakE', 'ezYk-ipMQKqa0D8ZJQBkxI:APA91bH3XiU7W81Jvopt4X41zxTVdt5q9iBQByrEOiTBKdJ2L_v34jWAcfkScMvgn39MlK9OvwIx4qb_2_pkS1i6NAg19zjyQjKomZQWSVTlTA1rdu7hG-A1_DDCsusWH6XK53VnRxFo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 01:01:33', '2022-05-11 00:23:59'),
(35, 'Quickie', 'admin@quickie.com.do', '$2y$10$9R3wjOTyEcqcVIi6/w6DP.DMok1JYF1Wiqs1J1SR0/v1/qUZdF.Da', 'vziwAekMM8mFb9LL7dVUAiOQMWD7dPPwEwqmcashEXAqpt5aHzPRu7KwSQUH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'toBKeLR24Y8l1Aw6jBBRTB11LkTUh2cdcqCuC3pCkV8rGbqiqm7NI557Ghvj', '2022-05-13 06:09:29', '2022-05-13 06:09:29'),
(36, 'Lauryn La Duc', 'laurynladuc@gmail.com', '$2y$10$Nw/rhJot5XcqKYxBIUX4p.UpqBQVQ/mkXVGFrTdX0tIaF93rGWyVO', 'cY9W32BCaAszazU0eeZmXtknLbgrmeXnMxkET6pPQdU6a3bhrRvcwRDOqQn5', 'ebltsorDs0ggohWDHki7N-:APA91bHk86IgOZkOcLgsGDda6B0moLS1xAN__J6nF9hP0-YhDH2ngEEv6DLC-tq7k9zy2UiwDlc64SfpjlsHLfTkTottYbRGZFs2SOKOJ9jKIl2L7jKmaNPMqjqR_r7eQb0GaniNSgiu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20 06:00:21', '2022-05-20 06:00:21'),
(37, 'Omar', 'o.cabada59@gmail.com', '$2y$10$n4wQSqfbIef/A8kicOLn7eOxaR1sT5vaOxLq..WY5MHUaiDvVzlyS', 'SYIQHVaoZcBtmTkdomUrmiKzDu4krLDrhiMfkrjoOsvDb9pscRpwhTQmlgml', 'eSDk-eASakk7v_Xel9JPI0:APA91bE1qQuVetCvu297MPI6LcMjuKSO1VBUux3MPWh4c8gHguWM4SyJy9f9EEVm-uXlDVA-YWzWpwWC-yaxh_UvaE62j7DYZ37vf4x5xn6t0sUhXkIRytpenr-7eb_6aQFDnxca5Jaj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-22 09:51:25', '2022-05-22 09:51:25'),
(38, 'Jared Dunning', 'jaredryder25@gmail.com', '$2y$10$LZSWkD73b3M92bh7LyLRSefN9tvg/6b8CqDIfcivMLjKOPIA0MLEG', '8Ekwik8RnIkVor9nYIiSBgYzH2UwmBVTYnKVKE9nK3S74QfcrObvvgo1Jyr6', 'dlaxkf5V-kn6pfHXCaXZ1W:APA91bGbzwSkZIdKAlYqkrCdKppn30ewD1QqSokT1iVYjmkV9VUIpXlRXvns62Es51VwIL4tvasld7TYU6XgcdWfndjJ2Vu3QlTKeAM7nm0_C0I4SS6Z0TizR7X2YCycaH7yCylauBPw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-29 07:47:09', '2022-05-29 07:47:09'),
(39, 'Gabby Silva', 'gmsilva2021@gmail.com', '$2y$10$1qh1H0GryjLqPZNiWfxY2OGkkTMitEzcFgoqueiOoH4NI6NlCOS76', 'wF2llyQHl2KXYI1NpjGLB9YS7t7z8xl78inElJspFGlm6FQM3UyEiRqaqECX', 'fwGrwHUAB0_Kl-iTsF8pR5:APA91bEdeA_7GFuvTWX_t0ypUkCAMsdcl18p4TPIPPp7BR1h1x4TYA8YAnZEtYLaTAQ0U819tSXL1lHMJL-Y2GEIeM5toVTrfM0S7vq8LePDalgjzl9SpU2Dhdk6H1JsMTppBlsiYygI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 08:16:59', '2022-05-31 08:16:59'),
(40, 'zeeshan ali', 'shanishah219@gmail.com', '$2y$10$Bj/Nx7nYFxxHVkRnLIQ.cOyXmCmBLrBH2pbdKFMdoexSFPfsfoYfW', 'xZK7kTnP58PPMcWv5PFK43bCBNquM4aQHFTnTNEiKZn6a9NxJJeQLpU6swws', 'd80P1TudQMq1ZrwbSAA3Aa:APA91bH81pRc2nkTwKUuZQ1Mm8FunZI7ZEZsoACZ1cZ8-7vVxohEmAsTf6gf5iT9sAerjnPI37QmmC0zUkE5jctmZVU1rjp-9H0tyCQ_vcJ6f-nPuPbdHrugcqu4tgArX7bgJGF1iOJU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 12:58:22', '2022-06-04 12:58:22'),
(41, 'Juan Nolasco', 'jnolasco02@gmail.com', '$2y$10$b8G9coqBLVl0MaJPqM9FJeutPgjfF3pAYU40b4YVHtCRgHMH799iO', 'wNF8J2UMRH2LDeB4nqWYyqjHYHcJffHur9zjoWeom58KR9M6vJMVHJHr45xK', 'eSFXdrZv3UijvBQr-FCYt7:APA91bHfU-8273fyvonGePKf4GG2esIsFlZCAvr6s5c-yQrZQ1LK3U2dPibeBUx7eYR_6T7P7KagPHA2AhfLp23pyZGpw4CJBKMeNSH7zS_NQCvmhNbtdlnJgdEMdxJ4Oi4KojmQTrYg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 19:51:09', '2022-06-13 19:51:09'),
(42, 'pamela santos', 'Pamisalla@hotmail.com', '$2y$10$Z.0kAjhgVVoY1HJ6biJHK.psJEhc8tUYIcsBjg9ytpsUKiZr./tRu', 'Pk6f4r6bMlC1PMXE5RTjLDMmbzMU1gHHXG3EYyDFoa1CT3qL4JMIMjGF5rR1', 'epzIpSYUw0PJgkAbg4YOK-:APA91bHNXvyz25OqspcUKJadDxL7NZGGTWA18bQqR3cuKg6eFaRxNDwQCuT9XZ_xTGGjC363ZJ5mH-XN6aBbRbZvzWZagDqCgd946UxIunp0S7tcrsRx4dYfpMb6gsFLVYeGDFkWoUzX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 17:01:36', '2022-06-22 17:01:36'),
(43, 'mhexhb', 'majedhik@gmail.com', '', 'BFzvYIBI0LPDfQm0XskPMpBMwsWIQZkU9jCSnWn6z5BWMylMAGaaMHAQPawo', 'euwQnQG0RPSXAuqYN4cyE3:APA91bGKluVEXK0c25iWZav5Tajz4sYRU99d_rAX0okdCX30obGAyQ4jV-S42bpWf5zIpOvkUo2NtenhGFSU1eOB8vjWtpmHqwiDo1b4WjEfdDZ3d_YFyC7_5nToQM7nVSBX3JJPaImA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 11:51:24', '2022-07-23 12:38:47'),
(44, 'zhang Cheng', 'Eguaborfavour08@gmail.com', '$2y$10$CTjq//gihUfdcBxNd6jnU.gen8XunEFQWTSZ4VAiJ6n7p6bzrFHE.', '41YZSEe0X80GWkUVFIN7qioK8qX9hT5PQIT1ox6pC1YBaFThBxfrh6RkIIaG', 'cZQmIV4ggEvLpi5wnL-yeH:APA91bEQqovqVq9ywMAzw14JQ8m14nq57PhjYxkFfsJcWizIKtUBwvOJCL4z8LcRcPBVaZoMELiVubYKlPvWcPh9qTxUFiWprKg7DJzkpccun7Y_ucBd5cVskBcbTVYiA5Gjb0aD5oN_', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-27 15:38:58', '2022-08-27 15:38:58'),
(45, 'Elian Gomez', 'gomezem@live.com', '$2y$10$XcxKycbVyoLSaLJj8/gbZei3dCZOlQ8YsYntoPlRWxxE4Uct33quK', 's4fhMZwj6ImYX1kQ5wNumVr9gVfWo7wReVMnRcNiPbv6fDbErsbaeXcVL0vt', 'dwcoK__uaEsiobVSPNIWWp:APA91bGb-6TKwvUxVnU2ouHMuG9OMie3DgEtq2lpZ7tw1zSYAI-M46S0gMyypaXNbKoIxBiEydRPR9jWSkGoKaQLje-pO-ODv5B7zzKNgR4om2lcmE9ope7h9lv8bOYg9VUsbLqOXIut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-28 05:24:49', '2022-08-28 05:24:49'),
(46, 'Zeeshanali', 'shanishah2@hmail.com', '$2y$10$zo0zqZiU4o7FEhUIDnF7weQw.4FP81vX.iPMc3WY7by7nsDoMnB2a', 'znJRkB0c5IpCBcY0RIOBukvEbmNFDBNqjmp7guEdZRb3oG6uweYWjqd22V5v', 'd7ZMCy6YbkRuroyDiGe6TV:APA91bGsFfAIn0T62NRlog2codLHtx0en8qxFo22UVIdbr9OmbCFd-olIEDrtmH0fYavrsm047WE-tTzvRGdoY0J-JC--WhNyos5eXDpBgGWCM8nrHFnZ63pfUyTKxYvMOyu2WEZCP1B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-03 08:16:07', '2022-09-03 08:16:07'),
(47, 'kalinin viktor', 'kalininviktor848@gmail.com', '$2y$10$8UHK03NcQ.tvmLT8wp9iwOXBBZ5P5V.ZHYl8LPHJGhJyUvy2bbwTS', '9Y1LsuCympkGGsgWDB1oUeqbyLGoOBx0F0WeYwYfkmGQjkAv369Sx7dqT9Mm', 'ecTNYAVxRv2Xxx7QaIObZJ:APA91bFFpkzzkvt2QTU4ihutd9jz67VDlYiHnuq_jxh-2J1cV7dxhkjqYmSxBbaTO6xcv2K5Mz8jmf43BrgufFhCFWHZd-RS66pf14yWsd2MTaGNhfQqIjg1d0VmmSJKXPmD8FXStZMc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 11:41:24', '2022-09-29 11:41:24'),
(48, 'Boris', 'borismuslin.bm@gmail.com', '$2y$10$RvNK/5jSlILQfuPaR73IbukBejbSml2Whb2Zwfe/yRGKZct/iF4dq', '6ycdkdtBGuXRuL9PJs7CyqPlKLyDYKYnpZ9NO9pXt2ZdlXBg77BuxevdzriX', 'fWVa8w-DQF6aibDntmWVEA:APA91bEcup15rLMgwjWe8FaTycPrxY5JVQDvHec-u2beRffB9ioaRse2mRk2FRjWQQUlr4Ve8iS9jT2wOAAPOIVKqPm823lujvofx5jhaRrStG51Hx_YzaBxnCJbKDOga3vGp7wlhAzr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 01:46:01', '2022-10-01 01:46:01'),
(49, 'Grace', 'graciecarr95@gmail.com', '$2y$10$jvYPIBy7U56.PL/M7g2soOmVILhvXfmQBNmW0nVFk2ui/0bGZntZu', 'MhgvJmj1308E56UTma3uAcxR2ZdEzaMsmFRxfOHV6G4glDZfTsb3HRhVaYwN', 'cHGNHvH_WEQmqORc8lcYyQ:APA91bF85jxd3c6W54Ck4n7OQd0Ef3ZWJMFaQrGpIhQ-Y2IUoIAGFAYkgVyRK_epIk5nuQcgu1GNvmr5uqFHdkoHW1rZLVKoAex-O-BRyJgZrpA1dtsRn-IF-r9piVH5n8x0Z9RK_1Hu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 08:22:07', '2022-10-04 08:22:07'),
(50, 'Marko Marjanovic', 'snowman19901120@gmail.com', '$2y$10$6HG2j2sqVowgFHtsCG.66uOEVQsMAe72D2MYTn487dO4fdCpMPj8K', '0vSOan6goXT7BPXMVHMByutoodg7KUDWIg5uc4tj3wrtisOd87YTE8r6ptEH', 'cgqoG1R5SeyBZvN9zyNvc1:APA91bE6mF-BzAECgBySSF9hTNdt3EkndwNRCQzxxbuNvND6iIHucUfBrtcx84LOrXT15AqZI3M3OxsHOa73oLOGaM81idt7IfM91goqfPEFgfSBfS9jhbBLTAeJ6gYi9_gMbqqzIXMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-08 08:24:27', '2022-10-13 05:00:45'),
(51, 'aaaaa', '111@gmail.com', '$2y$10$P9Tnrvf6mU6h32RbcRjn0OgwliqpIbdfzSKgpPF4wt01VAhuVzewK', 'J9uR6SIneLV5M6JBElmVMDg0bx3UhFliXfu5f5T9Hn1Zcr9GL6Q3WUVrxG69', 'cLHV8qTZSZy5FX6FRmLnM0:APA91bH6e3ysRyrPmr61lrbdSHxiXwUi226Nq_gHmymtEmQUeH0e97oTpTzI01zY_ftprcWqrc2g7WVXmhHK7hjqXahVMDeDukN5lPq67XSJBxgV8K5wi8Wh9VfB-Nb1M97-KcQkfU5x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-08 08:32:42', '2022-10-08 08:32:42'),
(52, 'George Jeremy', 'shstar0327@gmail.com', '$2y$10$2Ve7BlTM..g1LMyUSsRnDOm9AilBoKE1P39q49ROsc3lCah99ossi', 'NuzlURHTWr1GnOTk8BrFy5eD75BMCFPyZs8wDU8SuzRehicMlvvB9x0KJag9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-08 09:49:15', '2022-10-08 09:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_stores`
--

CREATE TABLE `user_stores` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_stores`
--

INSERT INTO `user_stores` (`user_id`, `store_id`) VALUES
(35, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD PRIMARY KEY (`option_id`,`cart_id`),
  ADD KEY `cart_options_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_payouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `driver_stores`
--
ALTER TABLE `driver_stores`
  ADD PRIMARY KEY (`user_id`,`store_id`),
  ADD KEY `driver_stores_store_id_foreign` (`store_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_store_id_foreign` (`store_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_store_id_foreign` (`store_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_product_id_foreign` (`product_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD PRIMARY KEY (`product_order_id`,`option_id`),
  ADD KEY `product_order_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores_payouts`
--
ALTER TABLE `stores_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_payouts_store_id_foreign` (`store_id`);

--
-- Indexes for table `store_fields`
--
ALTER TABLE `store_fields`
  ADD PRIMARY KEY (`field_id`,`store_id`),
  ADD KEY `store_fields_store_id_foreign` (`store_id`);

--
-- Indexes for table `store_reviews`
--
ALTER TABLE `store_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviews_user_id_foreign` (`user_id`),
  ADD KEY `store_reviews_store_id_foreign` (`store_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_stores`
--
ALTER TABLE `user_stores`
  ADD PRIMARY KEY (`user_id`,`store_id`),
  ADD KEY `user_stores_store_id_foreign` (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stores_payouts`
--
ALTER TABLE `stores_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_reviews`
--
ALTER TABLE `store_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD CONSTRAINT `cart_options_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_stores`
--
ALTER TABLE `driver_stores`
  ADD CONSTRAINT `driver_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD CONSTRAINT `product_order_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_options_product_order_id_foreign` FOREIGN KEY (`product_order_id`) REFERENCES `product_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stores_payouts`
--
ALTER TABLE `stores_payouts`
  ADD CONSTRAINT `stores_payouts_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store_fields`
--
ALTER TABLE `store_fields`
  ADD CONSTRAINT `store_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_fields_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store_reviews`
--
ALTER TABLE `store_reviews`
  ADD CONSTRAINT `store_reviews_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_stores`
--
ALTER TABLE `user_stores`
  ADD CONSTRAINT `user_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
