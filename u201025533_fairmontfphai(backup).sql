-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2026 at 12:28 PM
-- Server version: 11.8.9-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u201025533_fairmontfphai`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_content`
--

CREATE TABLE `about_content` (
  `about_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `gallery_mode` enum('slideshow','album','collage') NOT NULL DEFAULT 'album',
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_content`
--

INSERT INTO `about_content` (`about_id`, `title`, `body`, `gallery_mode`, `updated_by`, `updated_at`) VALUES
(1, 'About Fairmont Park Homeowners\' Association, Inc.', 'Fairmont Park Homeowners\' Association, Inc. (FPHAI) is a non-profit, non-government homeowners association located at Boles Street, Fairmont North Fairview, Quezon City. The Association works to maintain a peaceful, orderly, and well-managed residential community while supporting the needs of its homeowners and members.\n\nFPHAI manages homeowner and membership records, monthly dues collection, facility reservations, community announcements, clearances, and other day-to-day association services. The Association also coordinates selected community programs and helps maintain shared facilities such as the basketball court.\n\nThe web-based centralized management system is designed to help FPHAI keep records organized, improve collection reporting, and manage facility reservations more efficiently while providing residents with easier access to their own information and selected HOA resources.', 'album', NULL, '2026-10-06 02:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `about_media`
--

CREATE TABLE `about_media` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `media_type` enum('image') NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `uploaded_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `record_id` int(10) UNSIGNED DEFAULT NULL,
  `details` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`log_id`, `user_id`, `action`, `module`, `record_id`, `details`, `created_at`) VALUES
(1, 1, 'Created', 'User Accounts', 2, 'Created user account.', '2026-10-06 02:32:22'),
(2, 1, 'Created', 'User Accounts', 3, 'Created user account.', '2026-10-06 02:32:37'),
(3, 1, 'Created', 'User Accounts', 4, 'Created user account.', '2026-10-06 02:32:59'),
(4, 1, 'Created', 'User Accounts', 5, 'Created user account.', '2026-10-06 02:33:09'),
(5, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-06 02:33:36'),
(6, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-06 02:40:08'),
(7, 2, 'Created', 'Reservations', 1, 'Created reservation request with automated facility rate.', '2026-10-06 02:41:27'),
(8, 2, 'Recorded', 'Reservation Payments', 1, 'Recorded facility reservation payment for reservation #1.', '2026-10-06 02:41:33'),
(9, 1, 'Approved', 'Reservations', 1, 'Approved reservation after facility/time conflict check.', '2026-10-06 02:42:05'),
(10, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-06 02:44:14'),
(11, 1, 'Updated', 'User Accounts', 2, 'Updated user account and reset password.', '2026-10-06 10:38:09'),
(12, 3, 'Created', 'Homeowner Records', 1, 'Created homeowner profile and linked Resident account maiso0001.', '2026-10-06 10:40:59'),
(13, 1, 'Updated', 'User Accounts', 6, 'Updated user account and reset password.', '2026-10-06 10:42:37'),
(14, 3, 'Created', 'Homeowner Records', 2, 'Created homeowner profile and linked Resident account pobrejocelyn0002.', '2026-10-15 19:24:44'),
(15, 3, 'Created', 'Homeowner Records', 3, 'Created homeowner profile and linked Resident account maryannlazaro0003.', '2026-10-15 19:26:09'),
(16, 3, 'Created', 'Homeowner Records', 4, 'Created homeowner profile and linked Resident account fegerben0004.', '2026-10-15 19:26:47'),
(17, 3, 'Created', 'Homeowner Records', 5, 'Created homeowner profile and linked Resident account ronnievalenzuela0005.', '2026-10-15 19:28:29'),
(18, 3, 'Created', 'Homeowner Records', 6, 'Created homeowner profile and linked Resident account teresitaseelin0006.', '2026-10-15 19:29:39'),
(19, 3, 'Created', 'Homeowner Records', 7, 'Created homeowner profile and linked Resident account leteciaarevalo0007.', '2026-10-15 19:30:16'),
(20, 3, 'Created', 'Homeowner Records', 8, 'Created homeowner profile and linked Resident account dianemagat0008.', '2026-10-15 19:31:09'),
(21, 3, 'Created', 'Homeowner Records', 9, 'Created homeowner profile and linked Resident account leteciaarevalo0009.', '2026-10-15 19:32:05'),
(22, 3, 'Updated', 'Homeowner Records', 9, 'Updated homeowner record.', '2026-10-15 19:32:44'),
(23, 3, 'Updated', 'Homeowner Records', 9, 'Updated homeowner record.', '2026-10-15 19:32:44'),
(24, 3, 'Created', 'Homeowner Records', 10, 'Created homeowner profile and linked Resident account wellingtonwong0010.', '2026-10-15 19:33:15'),
(25, 3, 'Created', 'Homeowner Records', 11, 'Created homeowner profile and linked Resident account jerryvistar0011.', '2026-10-15 19:34:22'),
(26, 3, 'Created', 'Homeowner Records', 12, 'Created homeowner profile and linked Resident account annecruz0012.', '2026-10-15 19:36:03'),
(27, 3, 'Created', 'Homeowner Records', 13, 'Created homeowner profile and linked Resident account melchortumolva0013.', '2026-10-15 19:39:35'),
(28, 3, 'Updated', 'Homeowner Records', 13, 'Updated homeowner record.', '2026-10-15 19:41:08'),
(29, 3, 'Created', 'Homeowner Records', 14, 'Created homeowner profile and linked Resident account benedictosundiang0014.', '2026-10-15 19:41:52'),
(30, 3, 'Created', 'Homeowner Records', 15, 'Created homeowner profile and linked Resident account arthurodellosa0015.', '2026-10-15 19:42:25'),
(31, 3, 'Created', 'Homeowner Records', 16, 'Created homeowner profile and linked Resident account plaridelsespene0016.', '2026-10-15 19:43:02'),
(32, 3, 'Created', 'Homeowner Records', 17, 'Created homeowner profile and linked Resident account mariamercedesllobrera0017.', '2026-10-15 19:43:44'),
(33, 3, 'Updated', 'Homeowner Records', 8, 'Updated homeowner record.', '2026-10-15 19:44:32'),
(34, 3, 'Updated', 'Homeowner Records', 9, 'Updated homeowner record.', '2026-10-15 19:44:45'),
(35, 3, 'Updated', 'Homeowner Records', 9, 'Updated homeowner record.', '2026-10-15 19:44:45'),
(36, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-15 19:44:55'),
(37, 3, 'Updated', 'Homeowner Records', 6, 'Updated homeowner record.', '2026-10-15 19:44:55'),
(38, 3, 'Updated', 'Homeowner Records', 4, 'Updated homeowner record.', '2026-10-15 19:45:03'),
(39, 3, 'Updated', 'Homeowner Records', 3, 'Updated homeowner record.', '2026-10-15 19:45:13'),
(40, 3, 'Updated', 'Homeowner Records', 2, 'Updated homeowner record.', '2026-10-15 19:45:25'),
(41, 3, 'Updated', 'Homeowner Records', 5, 'Updated homeowner record.', '2026-10-15 19:45:36'),
(42, 3, 'Updated', 'Homeowner Records', 10, 'Updated homeowner record.', '2026-10-15 19:46:17'),
(43, 3, 'Updated', 'Homeowner Records', 11, 'Updated homeowner record.', '2026-10-15 19:46:30'),
(44, 3, 'Updated', 'Homeowner Records', 12, 'Updated homeowner record.', '2026-10-15 19:46:39'),
(45, 3, 'Created', 'Homeowner Records', 18, 'Created homeowner profile and linked Resident account abenjosefina0018.', '2026-10-15 19:51:27'),
(46, 3, 'Created', 'Homeowner Records', 19, 'Created homeowner profile and linked Resident account mariaelenaginoo0019.', '2026-10-15 19:52:01'),
(47, 3, 'Created', 'Homeowner Records', 20, 'Created homeowner profile and linked Resident account gloriasumera0020.', '2026-10-15 19:53:09'),
(48, 3, 'Created', 'Homeowner Records', 21, 'Created homeowner profile and linked Resident account ericsonvelasco0021.', '2026-10-15 19:53:44'),
(49, 3, 'Created', 'Homeowner Records', 22, 'Created homeowner profile and linked Resident account doloresalo0022.', '2026-10-15 19:54:13'),
(50, 3, 'Created', 'Homeowner Records', 23, 'Created homeowner profile and linked Resident account robindeborja0023.', '2026-10-15 19:55:19'),
(51, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-15 19:55:24'),
(52, 3, 'Created', 'Homeowner Records', 24, 'Created homeowner profile and linked Resident account dewyboquiron0024.', '2026-10-15 19:55:47'),
(53, 2, 'Created', 'Homeowner Records', 25, 'Created homeowner profile and linked Resident account geraldtamayo0025.', '2026-10-15 19:56:11'),
(54, 2, 'Created', 'Homeowner Records', 26, 'Created homeowner profile and linked Resident account rudynirona0026.', '2026-10-15 19:56:40'),
(55, 3, 'Created', 'Homeowner Records', 27, 'Created homeowner profile and linked Resident account cabreradecedrio0027.', '2026-10-15 19:56:50'),
(56, 3, 'Created', 'Homeowner Records', 28, 'Created homeowner profile and linked Resident account shirleyjesusvelasco0028.', '2026-10-15 19:57:23'),
(57, 3, 'Created', 'Homeowner Records', 29, 'Created homeowner profile and linked Resident account dolorescrisostomo0029.', '2026-10-15 19:57:46'),
(58, 2, 'Created', 'Homeowner Records', 30, 'Created homeowner profile and linked Resident account anthonyteves0030.', '2026-10-15 19:58:00'),
(59, 2, 'Created', 'Homeowner Records', 31, 'Created homeowner profile and linked Resident account jimmysantos0031.', '2026-10-15 19:58:31'),
(60, 3, 'Created', 'Homeowner Records', 32, 'Created homeowner profile and linked Resident account hazmeinsalinas0032.', '2026-10-15 19:58:36'),
(61, 2, 'Created', 'Homeowner Records', 33, 'Created homeowner profile and linked Resident account aginaldo0033.', '2026-10-15 19:59:02'),
(62, 2, 'Created', 'Homeowner Records', 34, 'Created homeowner profile and linked Resident account markschwab0034.', '2026-10-15 19:59:25'),
(63, 3, 'Created', 'Homeowner Records', 35, 'Created homeowner profile and linked Resident account honestonunag0035.', '2026-10-15 19:59:51'),
(64, 2, 'Created', 'Homeowner Records', 36, 'Created homeowner profile and linked Resident account virginiavergara0036.', '2026-10-15 19:59:53'),
(65, 3, 'Created', 'Homeowner Records', 37, 'Created homeowner profile and linked Resident account ronaldbenusa0037.', '2026-10-15 20:00:14'),
(66, 2, 'Created', 'Homeowner Records', 38, 'Created homeowner profile and linked Resident account rossanocharmaineabata0038.', '2026-10-15 20:00:16'),
(67, 3, 'Created', 'Homeowner Records', 39, 'Created homeowner profile and linked Resident account rosearielyanga0039.', '2026-10-15 20:00:41'),
(68, 3, 'Updated', 'Homeowner Records', 39, 'Updated homeowner record.', '2026-10-15 20:00:58'),
(69, 2, 'Created', 'Homeowner Records', 40, 'Created homeowner profile and linked Resident account maureciobatas0040.', '2026-10-15 20:01:12'),
(70, 3, 'Updated', 'Homeowner Records', 28, 'Updated homeowner record.', '2026-10-15 20:01:13'),
(71, 2, 'Created', 'Homeowner Records', 41, 'Created homeowner profile and linked Resident account johnmarkcamigla0041.', '2026-10-15 20:01:54'),
(72, 2, 'Updated', 'Homeowner Records', 40, 'Updated homeowner record.', '2026-10-15 20:02:11'),
(73, 3, 'Created', 'Homeowner Records', 42, 'Created homeowner profile and linked Resident account ninohernandez0042.', '2026-10-15 20:02:26'),
(74, 2, 'Created', 'Homeowner Records', 43, 'Created homeowner profile and linked Resident account sandrasumagaysay0043.', '2026-10-15 20:02:51'),
(75, 3, 'Created', 'Homeowner Records', 44, 'Created homeowner profile and linked Resident account helenbuena0044.', '2026-10-15 20:03:01'),
(76, 3, 'Created', 'Homeowner Records', 45, 'Created homeowner profile and linked Resident account jennifergonong0045.', '2026-10-15 20:04:27'),
(77, 2, 'Created', 'Homeowner Records', 46, 'Created homeowner profile and linked Resident account judydelgado0046.', '2026-10-15 20:04:50'),
(78, 3, 'Created', 'Homeowner Records', 47, 'Created homeowner profile and linked Resident account ardomingoa0047.', '2026-10-15 20:05:03'),
(79, 2, 'Created', 'Homeowner Records', 48, 'Created homeowner profile and linked Resident account verenderbhatia0048.', '2026-10-15 20:05:14'),
(80, 3, 'Created', 'Homeowner Records', 49, 'Created homeowner profile and linked Resident account jinnytutorlorenzo0049.', '2026-10-15 20:05:27'),
(81, 3, 'Created', 'Homeowner Records', 50, 'Created homeowner profile and linked Resident account micohgerardnguid0050.', '2026-10-15 20:06:00'),
(82, 3, 'Created', 'Homeowner Records', 51, 'Created homeowner profile and linked Resident account shirleymendoza0051.', '2026-10-15 20:06:31'),
(83, 2, 'Updated', 'Homeowner Records', 48, 'Updated homeowner record.', '2026-10-15 20:06:37'),
(84, 3, 'Created', 'Homeowner Records', 52, 'Created homeowner profile and linked Resident account grefielcahel0052.', '2026-10-15 20:07:02'),
(85, 2, 'Created', 'Homeowner Records', 53, 'Created homeowner profile and linked Resident account jamesagawa0053.', '2026-10-15 20:07:05'),
(86, 2, 'Created', 'Homeowner Records', 54, 'Created homeowner profile and linked Resident account glenasas0054.', '2026-10-15 20:07:21'),
(87, 3, 'Created', 'Homeowner Records', 55, 'Created homeowner profile and linked Resident account rogeliobautista0055.', '2026-10-15 20:07:40'),
(88, 2, 'Created', 'Homeowner Records', 56, 'Created homeowner profile and linked Resident account dennischoi0056.', '2026-10-15 20:07:40'),
(89, 2, 'Created', 'Homeowner Records', 57, 'Created homeowner profile and linked Resident account julietgundan0057.', '2026-10-15 20:07:55'),
(90, 3, 'Created', 'Homeowner Records', 58, 'Created homeowner profile and linked Resident account marlenrazon0058.', '2026-10-15 20:08:05'),
(91, 3, 'Created', 'Homeowner Records', 59, 'Created homeowner profile and linked Resident account julietborja0059.', '2026-10-15 20:08:24'),
(92, 3, 'Updated', 'Homeowner Records', 59, 'Updated homeowner record.', '2026-10-15 20:08:44'),
(93, 3, 'Created', 'Homeowner Records', 60, 'Created homeowner profile and linked Resident account ramonchua0060.', '2026-10-15 20:09:04'),
(94, 2, 'Created', 'Homeowner Records', 61, 'Created homeowner profile and linked Resident account antonneitequirafu0061.', '2026-10-15 20:09:28'),
(95, 3, 'Created', 'Homeowner Records', 62, 'Created homeowner profile and linked Resident account ronaldrobeles0062.', '2026-10-15 20:09:35'),
(96, 2, 'Created', 'Homeowner Records', 63, 'Created homeowner profile and linked Resident account francistan0063.', '2026-10-15 20:09:52'),
(97, 3, 'Created', 'Homeowner Records', 64, 'Created homeowner profile and linked Resident account elenaalcantara0064.', '2026-10-15 20:10:00'),
(98, 2, 'Created', 'Homeowner Records', 65, 'Created homeowner profile and linked Resident account robertreal0065.', '2026-10-15 20:10:22'),
(99, 3, 'Created', 'Homeowner Records', 66, 'Created homeowner profile and linked Resident account juangerardoledonio0066.', '2026-10-15 20:10:39'),
(100, 3, 'Created', 'Homeowner Records', 67, 'Created homeowner profile and linked Resident account richarddaryl0067.', '2026-10-15 20:11:25'),
(101, 2, 'Created', 'Homeowner Records', 68, 'Created homeowner profile and linked Resident account evelynmanangan0068.', '2026-10-15 20:11:32'),
(102, 2, 'Created', 'Homeowner Records', 69, 'Created homeowner profile and linked Resident account manuelang0069.', '2026-10-15 20:12:03'),
(103, 3, 'Created', 'Homeowner Records', 70, 'Created homeowner profile and linked Resident account wilburagonias0070.', '2026-10-15 20:12:04'),
(104, 3, 'Created', 'Homeowner Records', 71, 'Created homeowner profile and linked Resident account auroraborra0071.', '2026-10-15 20:12:28'),
(105, 2, 'Created', 'Homeowner Records', 72, 'Created homeowner profile and linked Resident account robertcondat0072.', '2026-10-15 20:12:40'),
(106, 3, 'Created', 'Homeowner Records', 73, 'Created homeowner profile and linked Resident account elenaalcantara0073.', '2026-10-15 20:13:59'),
(107, 3, 'Created', 'Homeowner Records', 74, 'Created homeowner profile and linked Resident account albertogapas0074.', '2026-10-15 20:14:35'),
(108, 3, 'Created', 'Homeowner Records', 75, 'Created homeowner profile and linked Resident account ameliavitaliano0075.', '2026-10-15 20:15:12'),
(109, 3, 'Created', 'Homeowner Records', 76, 'Created homeowner profile and linked Resident account alexisjuridico0076.', '2026-10-15 20:16:07'),
(110, 3, 'Created', 'Homeowner Records', 77, 'Created homeowner profile and linked Resident account teresitaseelin0077.', '2026-10-15 20:16:34'),
(111, 3, 'Created', 'Homeowner Records', 78, 'Created homeowner profile and linked Resident account mennardaglipay0078.', '2026-10-15 20:17:14'),
(112, 2, 'Created', 'Homeowner Records', 79, 'Created homeowner profile and linked Resident account vincentagcaoili0079.', '2026-10-15 20:17:54'),
(113, 3, 'Created', 'Homeowner Records', 80, 'Created homeowner profile and linked Resident account alexisjuridico0080.', '2026-10-15 20:17:56'),
(114, 2, 'Created', 'Homeowner Records', 81, 'Created homeowner profile and linked Resident account mirasolchan0081.', '2026-10-15 20:18:09'),
(115, 3, 'Created', 'Homeowner Records', 82, 'Created homeowner profile and linked Resident account jomarcordero0082.', '2026-10-15 20:18:16'),
(116, 2, 'Created', 'Homeowner Records', 83, 'Created homeowner profile and linked Resident account marygracevillabos0083.', '2026-10-15 20:18:26'),
(117, 3, 'Updated', 'Homeowner Records', 82, 'Updated homeowner record.', '2026-10-15 20:18:31'),
(118, 2, 'Created', 'Homeowner Records', 84, 'Created homeowner profile and linked Resident account antonioquillo0084.', '2026-10-15 20:18:48'),
(119, 3, 'Created', 'Homeowner Records', 85, 'Created homeowner profile and linked Resident account noelcordero0085.', '2026-10-15 20:18:52'),
(120, 2, 'Created', 'Homeowner Records', 86, 'Created homeowner profile and linked Resident account perpetuailagan0086.', '2026-10-15 20:19:04'),
(121, 2, 'Created', 'Homeowner Records', 87, 'Created homeowner profile and linked Resident account cristitoperez0087.', '2026-10-15 20:19:20'),
(122, 3, 'Created', 'Homeowner Records', 88, 'Created homeowner profile and linked Resident account ricksondayag0088.', '2026-10-15 20:19:33'),
(123, 2, 'Created', 'Homeowner Records', 89, 'Created homeowner profile and linked Resident account jesussantos0089.', '2026-10-15 20:19:37'),
(124, 3, 'Created', 'Homeowner Records', 90, 'Created homeowner profile and linked Resident account corneliomerioles0090.', '2026-10-15 20:20:06'),
(125, 3, 'Created', 'Homeowner Records', 91, 'Created homeowner profile and linked Resident account evelynmanangan0091.', '2026-10-15 20:20:39'),
(126, 2, 'Created', 'Homeowner Records', 92, 'Created homeowner profile and linked Resident account bernadettemanez0092.', '2026-10-15 20:20:41'),
(127, 2, 'Created', 'Homeowner Records', 93, 'Created homeowner profile and linked Resident account efrensumagit0093.', '2026-10-15 20:21:13'),
(128, 3, 'Created', 'Homeowner Records', 94, 'Created homeowner profile and linked Resident account mamercedesllobrera0094.', '2026-10-15 20:21:14'),
(129, 2, 'Created', 'Homeowner Records', 95, 'Created homeowner profile and linked Resident account vergiematalicia0095.', '2026-10-15 20:21:34'),
(130, 2, 'Created', 'Homeowner Records', 96, 'Created homeowner profile and linked Resident account rubenmelendrez0096.', '2026-10-15 20:21:54'),
(131, 3, 'Created', 'Homeowner Records', 97, 'Created homeowner profile and linked Resident account jeralynvcinnela0097.', '2026-10-15 20:21:54'),
(132, 2, 'Created', 'Homeowner Records', 98, 'Created homeowner profile and linked Resident account rubenotbo0098.', '2026-10-15 20:22:08'),
(133, 3, 'Created', 'Homeowner Records', 99, 'Created homeowner profile and linked Resident account jeeneetutor0099.', '2026-10-15 20:22:23'),
(134, 2, 'Created', 'Homeowner Records', 100, 'Created homeowner profile and linked Resident account villamorgatchalian0100.', '2026-10-15 20:22:25'),
(135, 2, 'Created', 'Homeowner Records', 101, 'Created homeowner profile and linked Resident account lucilarecio0101.', '2026-10-15 20:22:50'),
(136, 2, 'Created', 'Homeowner Records', 102, 'Created homeowner profile and linked Resident account joeycaballero0102.', '2026-10-15 20:23:01'),
(137, 3, 'Created', 'Homeowner Records', 103, 'Created homeowner profile and linked Resident account gammavelasco0103.', '2026-10-15 20:23:07'),
(138, 2, 'Created', 'Homeowner Records', 104, 'Created homeowner profile and linked Resident account andymariposque0104.', '2026-10-15 20:23:28'),
(139, 3, 'Created', 'Homeowner Records', 105, 'Created homeowner profile and linked Resident account richardsy0105.', '2026-10-15 20:23:29'),
(140, 2, 'Created', 'Homeowner Records', 106, 'Created homeowner profile and linked Resident account rechieperocho0106.', '2026-10-15 20:24:06'),
(141, 3, 'Created', 'Homeowner Records', 107, 'Created homeowner profile and linked Resident account paolorodeo0107.', '2026-10-15 20:24:07'),
(142, 3, 'Created', 'Homeowner Records', 108, 'Created homeowner profile and linked Resident account pedronevarra0108.', '2026-10-15 20:24:36'),
(143, 3, 'Created', 'Homeowner Records', 109, 'Created homeowner profile and linked Resident account manuelducat0109.', '2026-10-15 20:25:15'),
(144, 3, 'Created', 'Homeowner Records', 110, 'Created homeowner profile and linked Resident account eromdabontigao0110.', '2026-10-15 20:25:41'),
(145, 3, 'Updated', 'Homeowner Records', 110, 'Updated homeowner record.', '2026-10-15 20:26:20'),
(146, 3, 'Created', 'Homeowner Records', 111, 'Created homeowner profile and linked Resident account remediospabila0111.', '2026-10-15 20:26:47'),
(147, 2, 'Created', 'Homeowner Records', 112, 'Created homeowner profile and linked Resident account annabelrosario0112.', '2026-10-15 20:26:56'),
(148, 3, 'Created', 'Homeowner Records', 113, 'Created homeowner profile and linked Resident account celypalac0113.', '2026-10-15 20:27:04'),
(149, 3, 'Updated', 'Homeowner Records', 113, 'Updated homeowner record.', '2026-10-15 20:27:24'),
(150, 2, 'Created', 'Homeowner Records', 114, 'Created homeowner profile and linked Resident account joeymarron0114.', '2026-10-15 20:27:39'),
(151, 2, 'Created', 'Homeowner Records', 115, 'Created homeowner profile and linked Resident account domingafatton0115.', '2026-10-15 20:27:55'),
(152, 3, 'Created', 'Homeowner Records', 116, 'Created homeowner profile and linked Resident account zenaidavaldez0116.', '2026-10-15 20:28:07'),
(153, 3, 'Created', 'Homeowner Records', 117, 'Created homeowner profile and linked Resident account vickyvergara0117.', '2026-10-15 20:28:31'),
(154, 2, 'Created', 'Homeowner Records', 118, 'Created homeowner profile and linked Resident account ginacabaluna0118.', '2026-10-15 20:28:35'),
(155, 2, 'Created', 'Homeowner Records', 119, 'Created homeowner profile and linked Resident account gialo0119.', '2026-10-15 20:28:47'),
(156, 2, 'Created', 'Homeowner Records', 120, 'Created homeowner profile and linked Resident account efrenangelo0120.', '2026-10-15 20:28:58'),
(157, 3, 'Updated', 'Homeowner Records', 117, 'Updated homeowner record.', '2026-10-15 20:29:00'),
(158, 3, 'Created', 'Homeowner Records', 121, 'Created homeowner profile and linked Resident account eddieramos0121.', '2026-10-15 20:29:23'),
(159, 2, 'Created', 'Homeowner Records', 122, 'Created homeowner profile and linked Resident account galloimelda0122.', '2026-10-15 20:29:26'),
(160, 3, 'Created', 'Homeowner Records', 123, 'Created homeowner profile and linked Resident account yollymolas0123.', '2026-10-15 20:30:07'),
(161, 3, 'Created', 'Homeowner Records', 124, 'Created homeowner profile and linked Resident account roselilymoris0124.', '2026-10-15 20:30:47'),
(162, 3, 'Created', 'Homeowner Records', 125, 'Created homeowner profile and linked Resident account linacorpuz0125.', '2026-10-15 20:31:09'),
(163, 3, 'Created', 'Homeowner Records', 126, 'Created homeowner profile and linked Resident account alexisjuridico0126.', '2026-10-15 20:31:32'),
(164, 3, 'Created', 'Homeowner Records', 127, 'Created homeowner profile and linked Resident account annebelenalensuela0127.', '2026-10-15 20:31:58'),
(165, 3, 'Created', 'Homeowner Records', 128, 'Created homeowner profile and linked Resident account vizmindamiguel0128.', '2026-10-15 20:32:21'),
(166, 3, 'Created', 'Homeowner Records', 129, 'Created homeowner profile and linked Resident account evabrillo0129.', '2026-10-15 20:32:46'),
(167, 2, 'Created', 'Homeowner Records', 130, 'Created homeowner profile and linked Resident account manueltolentino0130.', '2026-10-15 20:33:08'),
(168, 3, 'Created', 'Homeowner Records', 131, 'Created homeowner profile and linked Resident account anamariedelavega0131.', '2026-10-15 20:33:14'),
(169, 2, 'Created', 'Homeowner Records', 132, 'Created homeowner profile and linked Resident account manueltio0132.', '2026-10-15 20:33:29'),
(170, 3, 'Created', 'Homeowner Records', 133, 'Created homeowner profile and linked Resident account irishuy0133.', '2026-10-15 20:33:43'),
(171, 2, 'Created', 'Homeowner Records', 134, 'Created homeowner profile and linked Resident account josephdeluna0134.', '2026-10-15 20:33:44'),
(172, 2, 'Created', 'Homeowner Records', 135, 'Created homeowner profile and linked Resident account aidaesperanza0135.', '2026-10-15 20:33:58'),
(173, 2, 'Created', 'Homeowner Records', 136, 'Created homeowner profile and linked Resident account melinadaduya0136.', '2026-10-15 20:34:17'),
(174, 3, 'Created', 'Homeowner Records', 137, 'Created homeowner profile and linked Resident account andyanasco0137.', '2026-10-15 20:34:27'),
(175, 2, 'Created', 'Homeowner Records', 138, 'Created homeowner profile and linked Resident account rosaliaarce0138.', '2026-10-15 20:34:35'),
(176, 2, 'Created', 'Homeowner Records', 139, 'Created homeowner profile and linked Resident account marcelosongor0139.', '2026-10-15 20:34:47'),
(177, 2, 'Created', 'Homeowner Records', 140, 'Created homeowner profile and linked Resident account lovellekeithgalutan0140.', '2026-10-15 20:35:03'),
(178, 3, 'Created', 'Homeowner Records', 141, 'Created homeowner profile and linked Resident account lorenzomagsingit0141.', '2026-10-15 20:35:13'),
(179, 2, 'Created', 'Homeowner Records', 142, 'Created homeowner profile and linked Resident account maryannmertopangilinan0142.', '2026-10-15 20:35:25'),
(180, 2, 'Created', 'Homeowner Records', 143, 'Created homeowner profile and linked Resident account racheldaolaez0143.', '2026-10-15 20:35:40'),
(181, 3, 'Created', 'Homeowner Records', 144, 'Created homeowner profile and linked Resident account terenciotaloma0144.', '2026-10-15 20:35:47'),
(182, 2, 'Created', 'Homeowner Records', 145, 'Created homeowner profile and linked Resident account limuelisaacpaulo0145.', '2026-10-15 20:35:58'),
(183, 3, 'Created', 'Homeowner Records', 146, 'Created homeowner profile and linked Resident account winstonconcepcion0146.', '2026-10-15 20:36:10'),
(184, 2, 'Created', 'Homeowner Records', 147, 'Created homeowner profile and linked Resident account gervaciochavez0147.', '2026-10-15 20:36:17'),
(185, 3, 'Created', 'Homeowner Records', 148, 'Created homeowner profile and linked Resident account carlospaoloalcodia0148.', '2026-10-15 20:36:32'),
(186, 2, 'Created', 'Homeowner Records', 149, 'Created homeowner profile and linked Resident account herberttiulaurel0149.', '2026-10-15 20:36:34'),
(187, 2, 'Created', 'Homeowner Records', 150, 'Created homeowner profile and linked Resident account arseniomancera0150.', '2026-10-15 20:36:52'),
(188, 3, 'Created', 'Homeowner Records', 151, 'Created homeowner profile and linked Resident account candylousalazar0151.', '2026-10-15 20:37:02'),
(189, 2, 'Created', 'Homeowner Records', 152, 'Created homeowner profile and linked Resident account normalorenzo0152.', '2026-10-15 20:37:28'),
(190, 3, 'Created', 'Homeowner Records', 153, 'Created homeowner profile and linked Resident account luzvimindabangloy0153.', '2026-10-15 20:37:44'),
(191, 2, 'Created', 'Homeowner Records', 154, 'Created homeowner profile and linked Resident account abdulhasibhajicosain0154.', '2026-10-15 20:37:48'),
(192, 2, 'Created', 'Homeowner Records', 155, 'Created homeowner profile and linked Resident account cesaramarillo0155.', '2026-10-15 20:38:10'),
(193, 3, 'Created', 'Homeowner Records', 156, 'Created homeowner profile and linked Resident account marilyndagdagin0156.', '2026-10-15 20:38:22'),
(194, 2, 'Created', 'Homeowner Records', 157, 'Created homeowner profile and linked Resident account reizamabasa0157.', '2026-10-15 20:38:36'),
(195, 2, 'Created', 'Homeowner Records', 158, 'Created homeowner profile and linked Resident account mrsreyes0158.', '2026-10-15 20:38:59'),
(196, 3, 'Created', 'Homeowner Records', 159, 'Created homeowner profile and linked Resident account domingoestabillojr0159.', '2026-10-15 20:39:00'),
(197, 3, 'Created', 'Homeowner Records', 160, 'Created homeowner profile and linked Resident account felicidadlopez0160.', '2026-10-15 20:39:32'),
(198, 2, 'Created', 'Homeowner Records', 161, 'Created homeowner profile and linked Resident account edwardbalthazarvdomeyeg0161.', '2026-10-15 20:40:03'),
(199, 3, 'Created', 'Homeowner Records', 162, 'Created homeowner profile and linked Resident account gleceriacanlas0162.', '2026-10-15 20:40:04'),
(200, 2, 'Created', 'Homeowner Records', 163, 'Created homeowner profile and linked Resident account arwayniandes0163.', '2026-10-15 20:40:23'),
(201, 3, 'Created', 'Homeowner Records', 164, 'Created homeowner profile and linked Resident account celsocachuela0164.', '2026-10-15 20:40:43'),
(202, 2, 'Created', 'Homeowner Records', 165, 'Created homeowner profile and linked Resident account cynthiaco0165.', '2026-10-15 20:40:51'),
(203, 2, 'Created', 'Homeowner Records', 166, 'Created homeowner profile and linked Resident account azenithllobrera0166.', '2026-10-15 20:41:24'),
(204, 3, 'Created', 'Homeowner Records', 167, 'Created homeowner profile and linked Resident account estanislaomaribelcorpuz0167.', '2026-10-15 20:41:30'),
(205, 2, 'Created', 'Homeowner Records', 168, 'Created homeowner profile and linked Resident account elenaalcantara0168.', '2026-10-15 20:41:55'),
(206, 3, 'Created', 'Homeowner Records', 169, 'Created homeowner profile and linked Resident account robertooyam0169.', '2026-10-15 20:42:21'),
(207, 3, 'Created', 'Homeowner Records', 170, 'Created homeowner profile and linked Resident account stephanielomuntod0170.', '2026-10-15 20:42:46'),
(208, 2, 'Created', 'Homeowner Records', 171, 'Created homeowner profile and linked Resident account royallanloreto0171.', '2026-10-15 20:42:59'),
(209, 3, 'Created', 'Homeowner Records', 172, 'Created homeowner profile and linked Resident account marygracemolina0172.', '2026-10-15 20:43:24'),
(210, 2, 'Created', 'Homeowner Records', 173, 'Created homeowner profile and linked Resident account lolitaloreto0173.', '2026-10-15 20:43:27'),
(211, 2, 'Created', 'Homeowner Records', 174, 'Created homeowner profile and linked Resident account evelynmasajo0174.', '2026-10-15 20:43:44'),
(212, 3, 'Created', 'Homeowner Records', 175, 'Created homeowner profile and linked Resident account jerrykitanjr0175.', '2026-10-15 20:44:07'),
(213, 3, 'Created', 'Homeowner Records', 176, 'Created homeowner profile and linked Resident account redencarlo0176.', '2026-10-15 20:44:35'),
(214, 3, 'Created', 'Homeowner Records', 177, 'Created homeowner profile and linked Resident account rolandotenio0177.', '2026-10-15 20:45:05'),
(215, 2, 'Created', 'Homeowner Records', 178, 'Created homeowner profile and linked Resident account marlonrambuyan0178.', '2026-10-15 20:46:40'),
(216, 3, 'Created', 'Homeowner Records', 179, 'Created homeowner profile and linked Resident account lindaestropia0179.', '2026-10-15 21:17:28'),
(217, 2, 'Created', 'Homeowner Records', 180, 'Created homeowner profile and linked Resident account gracereynante0180.', '2026-10-15 21:17:52'),
(218, 3, 'Created', 'Homeowner Records', 181, 'Created homeowner profile and linked Resident account arleneheradura0181.', '2026-10-15 21:18:35'),
(219, 2, 'Created', 'Homeowner Records', 182, 'Created homeowner profile and linked Resident account emilyjoves0182.', '2026-10-15 21:19:16'),
(220, 3, 'Created', 'Homeowner Records', 183, 'Created homeowner profile and linked Resident account tomasabayan0183.', '2026-10-15 21:19:19'),
(221, 2, 'Created', 'Homeowner Records', 184, 'Created homeowner profile and linked Resident account ferdinandjoves0184.', '2026-10-15 21:19:38'),
(222, 3, 'Created', 'Homeowner Records', 185, 'Created homeowner profile and linked Resident account aggarovida0185.', '2026-10-15 21:19:46'),
(223, 2, 'Created', 'Homeowner Records', 186, 'Created homeowner profile and linked Resident account carmensarabia0186.', '2026-10-15 21:20:12'),
(224, 3, 'Created', 'Homeowner Records', 187, 'Created homeowner profile and linked Resident account ameliamartinez0187.', '2026-10-15 21:20:22'),
(225, 3, 'Created', 'Homeowner Records', 188, 'Created homeowner profile and linked Resident account janetagcaoili0188.', '2026-10-15 21:20:51'),
(226, 2, 'Created', 'Homeowner Records', 189, 'Created homeowner profile and linked Resident account ednaquilban0189.', '2026-10-15 21:20:51'),
(227, 3, 'Created', 'Homeowner Records', 190, 'Created homeowner profile and linked Resident account elainepalentinos0190.', '2026-10-15 21:21:17'),
(228, 2, 'Created', 'Homeowner Records', 191, 'Created homeowner profile and linked Resident account ameliamtorres0191.', '2026-10-15 21:21:28'),
(229, 2, 'Created', 'Homeowner Records', 192, 'Created homeowner profile and linked Resident account marialudybernardo0192.', '2026-10-15 21:22:09'),
(230, 2, 'Created', 'Homeowner Records', 193, 'Created homeowner profile and linked Resident account carlosbernardo0193.', '2026-10-15 21:22:32'),
(231, 2, 'Created', 'Homeowner Records', 194, 'Created homeowner profile and linked Resident account rocemillialopezkamiyama0194.', '2026-10-15 21:23:11'),
(232, 2, 'Created', 'Homeowner Records', 195, 'Created homeowner profile and linked Resident account rosalindoacacio0195.', '2026-10-15 21:23:46'),
(233, 2, 'Created', 'Homeowner Records', 196, 'Created homeowner profile and linked Resident account roselyndanginlim0196.', '2026-10-15 21:24:01'),
(234, 3, 'Created', 'Homeowner Records', 197, 'Created homeowner profile and linked Resident account attyvincentventus0197.', '2026-10-15 21:24:32'),
(235, 3, 'Created', 'Homeowner Records', 198, 'Created homeowner profile and linked Resident account aurorarosario0198.', '2026-10-15 21:25:40'),
(236, 3, 'Created', 'Homeowner Records', 199, 'Created homeowner profile and linked Resident account jeejeevillegas0199.', '2026-10-15 21:27:02'),
(237, 3, 'Created', 'Homeowner Records', 200, 'Created homeowner profile and linked Resident account lightoftheworld0200.', '2026-10-15 21:27:44'),
(238, 3, 'Created', 'Homeowner Records', 201, 'Created homeowner profile and linked Resident account sorianoevelyn0201.', '2026-10-15 21:28:08'),
(239, 3, 'Created', 'Homeowner Records', 202, 'Created homeowner profile and linked Resident account evelynrotoni0202.', '2026-10-15 21:28:43'),
(240, 3, 'Created', 'Homeowner Records', 203, 'Created homeowner profile and linked Resident account zenyvaldez0203.', '2026-10-15 21:29:09'),
(241, 3, 'Created', 'Homeowner Records', 204, 'Created homeowner profile and linked Resident account carlitoalcodia0204.', '2026-10-15 21:29:27'),
(242, 3, 'Created', 'Homeowner Records', 205, 'Created homeowner profile and linked Resident account pauloalcodia0205.', '2026-10-15 21:29:45'),
(243, 3, 'Created', 'Homeowner Records', 206, 'Created homeowner profile and linked Resident account noelhernandez0206.', '2026-10-15 21:31:39'),
(244, 3, 'Created', 'Homeowner Records', 207, 'Created homeowner profile and linked Resident account almariorefutal0207.', '2026-10-15 21:32:15'),
(245, 3, 'Created', 'Homeowner Records', 208, 'Created homeowner profile and linked Resident account maximinoines0208.', '2026-10-15 21:32:53'),
(246, 3, 'Created', 'Homeowner Records', 209, 'Created homeowner profile and linked Resident account isidrosantos0209.', '2026-10-15 21:33:28'),
(247, 3, 'Updated', 'Homeowner Records', 209, 'Updated homeowner record.', '2026-10-15 21:33:56'),
(248, 3, 'Created', 'Homeowner Records', 210, 'Created homeowner profile and linked Resident account newvisionsatelitenetwork0210.', '2026-10-15 21:34:27'),
(249, 3, 'Created', 'Homeowner Records', 211, 'Created homeowner profile and linked Resident account villamorvilla0211.', '2026-10-15 21:34:55'),
(250, 3, 'Created', 'Homeowner Records', 212, 'Created homeowner profile and linked Resident account danilodomingo0212.', '2026-10-15 21:35:25'),
(251, 3, 'Created', 'Homeowner Records', 213, 'Created homeowner profile and linked Resident account attyjohnarlincaingat0213.', '2026-10-15 21:37:46'),
(252, 3, 'Updated', 'Homeowner Records', 212, 'Updated homeowner record.', '2026-10-15 21:38:07'),
(253, 3, 'Created', 'Homeowner Records', 214, 'Created homeowner profile and linked Resident account esperanzapolicarpo0214.', '2026-10-15 21:38:40'),
(254, 3, 'Created', 'Homeowner Records', 215, 'Created homeowner profile and linked Resident account aaronjamesurena0215.', '2026-10-15 21:39:13'),
(255, 3, 'Created', 'Homeowner Records', 216, 'Created homeowner profile and linked Resident account elenafactora0216.', '2026-10-15 21:39:37'),
(256, 3, 'Created', 'Homeowner Records', 217, 'Created homeowner profile and linked Resident account milagrascaras0217.', '2026-10-15 21:39:56'),
(257, 2, 'Created', 'Homeowner Records', 218, 'Created homeowner profile and linked Resident account javierfernando0218.', '2026-10-15 21:41:01'),
(258, 2, 'Created', 'Homeowner Records', 219, 'Created homeowner profile and linked Resident account antonioyamsuan0219.', '2026-10-15 21:41:16'),
(259, 3, 'Created', 'Homeowner Records', 220, 'Created homeowner profile and linked Resident account primodepnasin0220.', '2026-10-15 21:41:25'),
(260, 2, 'Created', 'Homeowner Records', 221, 'Created homeowner profile and linked Resident account fevergara0221.', '2026-10-15 21:41:33'),
(261, 3, 'Created', 'Homeowner Records', 222, 'Created homeowner profile and linked Resident account jasontan0222.', '2026-10-15 21:41:53'),
(262, 3, 'Created', 'Homeowner Records', 223, 'Created homeowner profile and linked Resident account amorvilla0223.', '2026-10-15 21:42:17'),
(263, 2, 'Created', 'Homeowner Records', 224, 'Created homeowner profile and linked Resident account ruthabalospomposelli0224.', '2026-10-15 21:42:26'),
(264, 3, 'Created', 'Homeowner Records', 225, 'Created homeowner profile and linked Resident account cesarlippad0225.', '2026-10-15 21:42:42'),
(265, 3, 'Created', 'Homeowner Records', 226, 'Created homeowner profile and linked Resident account joelbaccoy0226.', '2026-10-15 21:43:07'),
(266, 3, 'Created', 'Homeowner Records', 227, 'Created homeowner profile and linked Resident account nitzbarranco0227.', '2026-10-15 21:43:38'),
(267, 2, 'Created', 'Homeowner Records', 228, 'Created homeowner profile and linked Resident account dreugeniocu0228.', '2026-10-15 21:43:50'),
(268, 3, 'Created', 'Homeowner Records', 229, 'Created homeowner profile and linked Resident account sallypalisoc0229.', '2026-10-15 21:44:07'),
(269, 2, 'Created', 'Homeowner Records', 230, 'Created homeowner profile and linked Resident account leonciadelacruz0230.', '2026-10-15 21:44:35'),
(270, 3, 'Created', 'Homeowner Records', 231, 'Created homeowner profile and linked Resident account jerrybrioso0231.', '2026-10-15 21:44:37'),
(271, 2, 'Created', 'Homeowner Records', 232, 'Created homeowner profile and linked Resident account daisymolas0232.', '2026-10-15 21:44:51'),
(272, 3, 'Created', 'Homeowner Records', 233, 'Created homeowner profile and linked Resident account baldomerabrioso0233.', '2026-10-15 21:45:05'),
(273, 3, 'Created', 'Homeowner Records', 234, 'Created homeowner profile and linked Resident account galimacristeta0234.', '2026-10-15 21:45:36'),
(274, 2, 'Created', 'Homeowner Records', 235, 'Created homeowner profile and linked Resident account sultanferdausiabbas0235.', '2026-10-15 21:45:39'),
(275, 2, 'Created', 'Homeowner Records', 236, 'Created homeowner profile and linked Resident account restitutocolis0236.', '2026-10-15 21:45:56'),
(276, 3, 'Created', 'Homeowner Records', 237, 'Created homeowner profile and linked Resident account georgebaccud0237.', '2026-10-15 21:46:02'),
(277, 2, 'Created', 'Homeowner Records', 238, 'Created homeowner profile and linked Resident account alvilyngonzales0238.', '2026-10-15 21:46:15'),
(278, 3, 'Created', 'Homeowner Records', 239, 'Created homeowner profile and linked Resident account doloreswsquivel0239.', '2026-10-15 21:46:24'),
(279, 2, 'Created', 'Homeowner Records', 240, 'Created homeowner profile and linked Resident account melaniecoronel0240.', '2026-10-15 21:46:32'),
(280, 3, 'Updated', 'Homeowner Records', 239, 'Updated homeowner record.', '2026-10-15 21:46:47'),
(281, 2, 'Created', 'Homeowner Records', 241, 'Created homeowner profile and linked Resident account rebydelagua0241.', '2026-10-15 21:46:57'),
(282, 2, 'Created', 'Homeowner Records', 242, 'Created homeowner profile and linked Resident account noelmanimtim0242.', '2026-10-15 21:47:09'),
(283, 3, 'Created', 'Homeowner Records', 243, 'Created homeowner profile and linked Resident account allanroldan0243.', '2026-10-15 21:47:11'),
(284, 2, 'Created', 'Homeowner Records', 244, 'Created homeowner profile and linked Resident account riadnepomuceno0244.', '2026-10-15 21:47:29'),
(285, 3, 'Created', 'Homeowner Records', 245, 'Created homeowner profile and linked Resident account virginiaalcodia0245.', '2026-10-15 21:47:36'),
(286, 2, 'Created', 'Homeowner Records', 246, 'Created homeowner profile and linked Resident account ronelmediavillo0246.', '2026-10-15 21:47:46'),
(287, 2, 'Created', 'Homeowner Records', 247, 'Created homeowner profile and linked Resident account madivinabernardo0247.', '2026-10-15 21:48:20'),
(288, 3, 'Created', 'Homeowner Records', 248, 'Created homeowner profile and linked Resident account elenaalcantara0248.', '2026-10-15 21:48:28'),
(289, 3, 'Created', 'Homeowner Records', 249, 'Created homeowner profile and linked Resident account geronimoparaguas0249.', '2026-10-15 21:48:53'),
(290, 3, 'Created', 'Homeowner Records', 250, 'Created homeowner profile and linked Resident account marinocastilla0250.', '2026-10-15 21:49:42'),
(291, 2, 'Created', 'Homeowner Records', 251, 'Created homeowner profile and linked Resident account maconsolacionsajorda0251.', '2026-10-15 21:50:07'),
(292, 3, 'Created', 'Homeowner Records', 252, 'Created homeowner profile and linked Resident account rudyochosa0252.', '2026-10-15 21:50:10'),
(293, 2, 'Created', 'Homeowner Records', 253, 'Created homeowner profile and linked Resident account chingosman0253.', '2026-10-15 21:50:18'),
(294, 2, 'Created', 'Homeowner Records', 254, 'Created homeowner profile and linked Resident account ramoncitofernandez0254.', '2026-10-15 21:50:36'),
(295, 3, 'Created', 'Homeowner Records', 255, 'Created homeowner profile and linked Resident account dignoparanada0255.', '2026-10-15 21:50:46'),
(296, 2, 'Created', 'Homeowner Records', 256, 'Created homeowner profile and linked Resident account edgarrobertvillarosa0256.', '2026-10-15 21:51:05'),
(297, 3, 'Created', 'Homeowner Records', 257, 'Created homeowner profile and linked Resident account teresitacolobong0257.', '2026-10-15 21:51:11'),
(298, 3, 'Created', 'Homeowner Records', 258, 'Created homeowner profile and linked Resident account deograciasdiez0258.', '2026-10-15 21:51:36'),
(299, 3, 'Updated', 'Homeowner Records', 258, 'Updated homeowner record.', '2026-10-15 21:51:57'),
(300, 3, 'Created', 'Homeowner Records', 259, 'Created homeowner profile and linked Resident account padeninocente0259.', '2026-10-15 21:52:26'),
(301, 3, 'Created', 'Homeowner Records', 260, 'Created homeowner profile and linked Resident account danilobautista0260.', '2026-10-15 21:53:06'),
(302, 2, 'Created', 'Homeowner Records', 261, 'Created homeowner profile and linked Resident account legaspisavings0261.', '2026-10-15 21:53:09'),
(303, 2, 'Created', 'Homeowner Records', 262, 'Created homeowner profile and linked Resident account eduardonavarrojr0262.', '2026-10-15 21:53:30'),
(304, 3, 'Created', 'Homeowner Records', 263, 'Created homeowner profile and linked Resident account ednahernandez0263.', '2026-10-15 21:53:34'),
(305, 2, 'Created', 'Homeowner Records', 264, 'Created homeowner profile and linked Resident account annnavarropadilla0264.', '2026-10-15 21:53:46'),
(306, 3, 'Created', 'Homeowner Records', 265, 'Created homeowner profile and linked Resident account danilogerona0265.', '2026-10-15 21:54:00'),
(307, 2, 'Created', 'Homeowner Records', 266, 'Created homeowner profile and linked Resident account tomasabayan0266.', '2026-10-15 21:54:03'),
(308, 2, 'Created', 'Homeowner Records', 267, 'Created homeowner profile and linked Resident account angelruiz0267.', '2026-10-15 21:54:19'),
(309, 3, 'Created', 'Homeowner Records', 268, 'Created homeowner profile and linked Resident account lornayap0268.', '2026-10-15 21:54:22'),
(310, 2, 'Created', 'Homeowner Records', 269, 'Created homeowner profile and linked Resident account myleneacosta0269.', '2026-10-15 21:54:42'),
(311, 3, 'Created', 'Homeowner Records', 270, 'Created homeowner profile and linked Resident account jessienicolas0270.', '2026-10-15 21:54:43'),
(312, 2, 'Created', 'Homeowner Records', 271, 'Created homeowner profile and linked Resident account teresitaaure0271.', '2026-10-15 21:55:00'),
(313, 3, 'Created', 'Homeowner Records', 272, 'Created homeowner profile and linked Resident account sultanferdausiabbas0272.', '2026-10-15 21:55:18'),
(314, 2, 'Created', 'Homeowner Records', 273, 'Created homeowner profile and linked Resident account dulceliwanag0273.', '2026-10-15 21:55:22'),
(315, 2, 'Created', 'Homeowner Records', 274, 'Created homeowner profile and linked Resident account severobreva0274.', '2026-10-15 21:55:45'),
(316, 3, 'Created', 'Homeowner Records', 275, 'Created homeowner profile and linked Resident account eunicemarte0275.', '2026-10-15 21:55:46'),
(317, 3, 'Created', 'Homeowner Records', 276, 'Created homeowner profile and linked Resident account leonavarra0276.', '2026-10-15 21:56:03'),
(318, 3, 'Created', 'Homeowner Records', 277, 'Created homeowner profile and linked Resident account gretchentutuna0277.', '2026-10-15 21:56:26'),
(319, 2, 'Created', 'Homeowner Records', 278, 'Created homeowner profile and linked Resident account daxvillanueva0278.', '2026-10-15 21:56:36'),
(320, 2, 'Created', 'Homeowner Records', 279, 'Created homeowner profile and linked Resident account divineyasay0279.', '2026-10-15 21:56:53'),
(321, 3, 'Created', 'Homeowner Records', 280, 'Created homeowner profile and linked Resident account rahmansharifur0280.', '2026-10-15 21:56:53'),
(322, 2, 'Created', 'Homeowner Records', 281, 'Created homeowner profile and linked Resident account arnoldtorre0281.', '2026-10-15 21:57:09'),
(323, 3, 'Created', 'Homeowner Records', 282, 'Created homeowner profile and linked Resident account joselitobuenavista0282.', '2026-10-15 21:57:20'),
(324, 2, 'Created', 'Homeowner Records', 283, 'Created homeowner profile and linked Resident account ahezahtiongson0283.', '2026-10-15 21:57:28'),
(325, 3, 'Created', 'Homeowner Records', 284, 'Created homeowner profile and linked Resident account lilibethpaguio0284.', '2026-10-15 21:57:47'),
(326, 2, 'Created', 'Homeowner Records', 285, 'Created homeowner profile and linked Resident account merceditaplata0285.', '2026-10-15 21:58:11'),
(327, 3, 'Created', 'Homeowner Records', 286, 'Created homeowner profile and linked Resident account ramonbenitez0286.', '2026-10-15 21:58:24'),
(328, 2, 'Created', 'Homeowner Records', 287, 'Created homeowner profile and linked Resident account maisabeldelfina0287.', '2026-10-15 21:58:32'),
(329, 3, 'Created', 'Homeowner Records', 288, 'Created homeowner profile and linked Resident account oliviapadilla0288.', '2026-10-15 21:58:56'),
(330, 3, 'Created', 'Homeowner Records', 289, 'Created homeowner profile and linked Resident account myrnaabad0289.', '2026-10-15 21:59:16'),
(331, 3, 'Created', 'Homeowner Records', 290, 'Created homeowner profile and linked Resident account richardconte0290.', '2026-10-15 21:59:37'),
(332, 3, 'Created', 'Homeowner Records', 291, 'Created homeowner profile and linked Resident account corazonnucum0291.', '2026-10-15 22:00:35'),
(333, 3, 'Created', 'Homeowner Records', 292, 'Created homeowner profile and linked Resident account elizabethpiad0292.', '2026-10-15 22:01:16'),
(334, 3, 'Created', 'Homeowner Records', 293, 'Created homeowner profile and linked Resident account charlesgarcia0293.', '2026-10-15 22:02:00'),
(335, 3, 'Created', 'Homeowner Records', 294, 'Created homeowner profile and linked Resident account kurtcapistrano0294.', '2026-10-15 22:02:28'),
(336, 3, 'Created', 'Homeowner Records', 295, 'Created homeowner profile and linked Resident account shirleysuratos0295.', '2026-10-15 22:03:01'),
(337, 3, 'Created', 'Homeowner Records', 296, 'Created homeowner profile and linked Resident account noeldelrosario0296.', '2026-10-15 22:03:29'),
(338, 3, 'Created', 'Homeowner Records', 297, 'Created homeowner profile and linked Resident account camilconopio0297.', '2026-10-15 22:04:00'),
(339, 3, 'Created', 'Homeowner Records', 298, 'Created homeowner profile and linked Resident account hazelannealcantara0298.', '2026-10-15 22:04:27'),
(340, 3, 'Created', 'Homeowner Records', 299, 'Created homeowner profile and linked Resident account anelynjimenez0299.', '2026-10-15 22:04:54'),
(341, 3, 'Created', 'Homeowner Records', 300, 'Created homeowner profile and linked Resident account alexisjuridico0300.', '2026-10-15 22:05:29'),
(342, 3, 'Created', 'Homeowner Records', 301, 'Created homeowner profile and linked Resident account eduardoberran0301.', '2026-10-15 22:05:48'),
(343, 3, 'Created', 'Homeowner Records', 302, 'Created homeowner profile and linked Resident account marichumangligot0302.', '2026-10-15 22:06:23'),
(344, 3, 'Created', 'Homeowner Records', 303, 'Created homeowner profile and linked Resident account silangantemplebuilders0303.', '2026-10-15 22:07:07'),
(345, 3, 'Created', 'Homeowner Records', 304, 'Created homeowner profile and linked Resident account susancasipit0304.', '2026-10-15 22:07:51'),
(346, 3, 'Created', 'Homeowner Records', 305, 'Created homeowner profile and linked Resident account johnpatrickcorpuz0305.', '2026-10-15 22:08:27'),
(347, 3, 'Created', 'Homeowner Records', 306, 'Created homeowner profile and linked Resident account genalynortiz0306.', '2026-10-15 22:08:50'),
(348, 3, 'Created', 'Homeowner Records', 307, 'Created homeowner profile and linked Resident account gilgari0307.', '2026-10-15 22:09:05'),
(349, 3, 'Created', 'Homeowner Records', 308, 'Created homeowner profile and linked Resident account edgardotividad0308.', '2026-10-15 22:09:27'),
(350, 3, 'Created', 'Homeowner Records', 309, 'Created homeowner profile and linked Resident account richardtelan0309.', '2026-10-15 22:09:56'),
(351, 3, 'Created', 'Homeowner Records', 310, 'Created homeowner profile and linked Resident account irnieofalarcajr0310.', '2026-10-15 22:10:22'),
(352, 3, 'Created', 'Homeowner Records', 311, 'Created homeowner profile and linked Resident account melinadaduya0311.', '2026-10-15 22:10:41'),
(353, 3, 'Created', 'Homeowner Records', 312, 'Created homeowner profile and linked Resident account salvacionmapa0312.', '2026-10-15 22:11:29'),
(354, 2, 'Created', 'Homeowner Records', 313, 'Created homeowner profile and linked Resident account consorciagabitanan0313.', '2026-10-15 22:11:40'),
(355, 3, 'Created', 'Homeowner Records', 314, 'Created homeowner profile and linked Resident account thermopower0314.', '2026-10-15 22:11:47'),
(356, 2, 'Created', 'Homeowner Records', 315, 'Created homeowner profile and linked Resident account renatoalibangbang0315.', '2026-10-15 22:11:55'),
(357, 3, 'Created', 'Homeowner Records', 316, 'Created homeowner profile and linked Resident account melinadaduya0316.', '2026-10-15 22:12:05'),
(358, 2, 'Created', 'Homeowner Records', 317, 'Created homeowner profile and linked Resident account tessieabacan0317.', '2026-10-15 22:13:04'),
(359, 2, 'Created', 'Homeowner Records', 318, 'Created homeowner profile and linked Resident account benitoarnoldcrosete0318.', '2026-10-15 22:13:21'),
(360, 3, 'Created', 'Homeowner Records', 319, 'Created homeowner profile and linked Resident account maricoracierto0319.', '2026-10-15 22:13:28');
INSERT INTO `audit_logs` (`log_id`, `user_id`, `action`, `module`, `record_id`, `details`, `created_at`) VALUES
(361, 2, 'Created', 'Homeowner Records', 320, 'Created homeowner profile and linked Resident account lorenzoruiz0320.', '2026-10-15 22:13:41'),
(362, 3, 'Created', 'Homeowner Records', 321, 'Created homeowner profile and linked Resident account joesephinebasa0321.', '2026-10-15 22:13:57'),
(363, 3, 'Created', 'Homeowner Records', 322, 'Created homeowner profile and linked Resident account bernadettevidad0322.', '2026-10-15 22:14:20'),
(364, 2, 'Created', 'Homeowner Records', 323, 'Created homeowner profile and linked Resident account fullerlourdes0323.', '2026-10-15 22:14:34'),
(365, 2, 'Created', 'Homeowner Records', 324, 'Created homeowner profile and linked Resident account mafranciscaviray0324.', '2026-10-15 22:14:52'),
(366, 2, 'Created', 'Homeowner Records', 325, 'Created homeowner profile and linked Resident account robertcapio0325.', '2026-10-15 22:15:09'),
(367, 3, 'Updated', 'Homeowner Records', 322, 'Updated homeowner record.', '2026-10-15 22:15:13'),
(368, 3, 'Created', 'Homeowner Records', 326, 'Created homeowner profile and linked Resident account carminapoon0326.', '2026-10-15 22:15:30'),
(369, 2, 'Created', 'Homeowner Records', 327, 'Created homeowner profile and linked Resident account arnelfortes0327.', '2026-10-15 22:15:41'),
(370, 3, 'Created', 'Homeowner Records', 328, 'Created homeowner profile and linked Resident account susanmendoza0328.', '2026-10-15 22:15:54'),
(371, 2, 'Created', 'Homeowner Records', 329, 'Created homeowner profile and linked Resident account joselaurel0329.', '2026-10-15 22:16:01'),
(372, 2, 'Created', 'Homeowner Records', 330, 'Created homeowner profile and linked Resident account blancatrinidad0330.', '2026-10-15 22:16:14'),
(373, 2, 'Created', 'Homeowner Records', 331, 'Created homeowner profile and linked Resident account vanessacayabyab0331.', '2026-10-15 22:16:57'),
(374, 2, 'Created', 'Homeowner Records', 332, 'Created homeowner profile and linked Resident account carmenlloyd0332.', '2026-10-15 22:17:13'),
(375, 3, 'Created', 'Homeowner Records', 333, 'Created homeowner profile and linked Resident account silvestreacejas0333.', '2026-10-15 22:17:24'),
(376, 2, 'Created', 'Homeowner Records', 334, 'Created homeowner profile and linked Resident account joyventurenza0334.', '2026-10-15 22:17:32'),
(377, 3, 'Created', 'Homeowner Records', 335, 'Created homeowner profile and linked Resident account reginaldobautista0335.', '2026-10-15 22:17:40'),
(378, 2, 'Created', 'Homeowner Records', 336, 'Created homeowner profile and linked Resident account biancanieves0336.', '2026-10-15 22:17:46'),
(379, 2, 'Created', 'Homeowner Records', 337, 'Created homeowner profile and linked Resident account engrquirinoabalde0337.', '2026-10-15 22:18:15'),
(380, 3, 'Created', 'Homeowner Records', 338, 'Created homeowner profile and linked Resident account mariamercedesllobrera0338.', '2026-10-15 22:18:22'),
(381, 2, 'Created', 'Homeowner Records', 339, 'Created homeowner profile and linked Resident account azenithllobrera0339.', '2026-10-15 22:18:28'),
(382, 2, 'Created', 'Homeowner Records', 340, 'Created homeowner profile and linked Resident account rizalynmong0340.', '2026-10-15 22:18:43'),
(383, 3, 'Created', 'Homeowner Records', 341, 'Created homeowner profile and linked Resident account alexisjuridico0341.', '2026-10-15 22:18:45'),
(384, 2, 'Created', 'Homeowner Records', 342, 'Created homeowner profile and linked Resident account lornaojeda0342.', '2026-10-15 22:19:19'),
(385, 3, 'Created', 'Homeowner Records', 343, 'Created homeowner profile and linked Resident account romanitanagai0343.', '2026-10-15 22:19:29'),
(386, 2, 'Created', 'Homeowner Records', 344, 'Created homeowner profile and linked Resident account edgardotope0344.', '2026-10-15 22:19:54'),
(387, 3, 'Created', 'Homeowner Records', 345, 'Created homeowner profile and linked Resident account alexisjuridico0345.', '2026-10-15 22:20:05'),
(388, 3, 'Created', 'Homeowner Records', 346, 'Created homeowner profile and linked Resident account jeanveloria0346.', '2026-10-15 22:20:24'),
(389, 3, 'Created', 'Homeowner Records', 347, 'Created homeowner profile and linked Resident account draviennabaloloy0347.', '2026-10-15 22:20:51'),
(390, 3, 'Created', 'Homeowner Records', 348, 'Created homeowner profile and linked Resident account lorieledesma0348.', '2026-10-15 22:21:10'),
(391, 2, 'Created', 'Homeowner Records', 349, 'Created homeowner profile and linked Resident account odulinatope0349.', '2026-10-15 22:21:40'),
(392, 3, 'Created', 'Homeowner Records', 350, 'Created homeowner profile and linked Resident account precillafaustino0350.', '2026-10-15 22:21:51'),
(393, 2, 'Created', 'Homeowner Records', 351, 'Created homeowner profile and linked Resident account lennydelacruz0351.', '2026-10-15 22:21:52'),
(394, 2, 'Created', 'Homeowner Records', 352, 'Created homeowner profile and linked Resident account faroukdisangcopan0352.', '2026-10-15 22:22:14'),
(395, 3, 'Created', 'Homeowner Records', 353, 'Created homeowner profile and linked Resident account aldensalanga0353.', '2026-10-15 22:22:15'),
(396, 2, 'Created', 'Homeowner Records', 354, 'Created homeowner profile and linked Resident account antonettecaballes0354.', '2026-10-15 22:22:27'),
(397, 3, 'Created', 'Homeowner Records', 355, 'Created homeowner profile and linked Resident account floragavero0355.', '2026-10-15 22:22:40'),
(398, 2, 'Created', 'Homeowner Records', 356, 'Created homeowner profile and linked Resident account corazontiempo0356.', '2026-10-15 22:22:58'),
(399, 3, 'Created', 'Homeowner Records', 357, 'Created homeowner profile and linked Resident account romellestipular0357.', '2026-10-15 22:23:06'),
(400, 2, 'Created', 'Homeowner Records', 358, 'Created homeowner profile and linked Resident account marceloarenas0358.', '2026-10-15 22:23:16'),
(401, 3, 'Created', 'Homeowner Records', 359, 'Created homeowner profile and linked Resident account baberuthobado0359.', '2026-10-15 22:23:28'),
(402, 3, 'Created', 'Homeowner Records', 360, 'Created homeowner profile and linked Resident account mannyvidad0360.', '2026-10-15 22:24:02'),
(403, 3, 'Created', 'Homeowner Records', 361, 'Created homeowner profile and linked Resident account larissetan0361.', '2026-10-15 22:24:23'),
(404, 2, 'Created', 'Homeowner Records', 362, 'Created homeowner profile and linked Resident account jocelynbasilan0362.', '2026-10-15 22:24:30'),
(405, 3, 'Created', 'Homeowner Records', 363, 'Created homeowner profile and linked Resident account attymarkarenas0363.', '2026-10-15 22:24:50'),
(406, 2, 'Created', 'Homeowner Records', 364, 'Created homeowner profile and linked Resident account wilfredoeranajr0364.', '2026-10-15 22:25:09'),
(407, 2, 'Created', 'Homeowner Records', 365, 'Created homeowner profile and linked Resident account jaimechua0365.', '2026-10-15 22:25:25'),
(408, 2, 'Created', 'Homeowner Records', 366, 'Created homeowner profile and linked Resident account sheilaaquino0366.', '2026-10-15 22:25:38'),
(409, 2, 'Created', 'Homeowner Records', 367, 'Created homeowner profile and linked Resident account aladencayago0367.', '2026-10-15 22:26:09'),
(410, 2, 'Created', 'Homeowner Records', 368, 'Created homeowner profile and linked Resident account teresitaaquino0368.', '2026-10-15 22:26:46'),
(411, 2, 'Created', 'Homeowner Records', 369, 'Created homeowner profile and linked Resident account victoraquino0369.', '2026-10-15 22:27:04'),
(412, 2, 'Created', 'Homeowner Records', 370, 'Created homeowner profile and linked Resident account avelinalachica0370.', '2026-10-15 22:27:23'),
(413, 2, 'Created', 'Homeowner Records', 371, 'Created homeowner profile and linked Resident account reynaldomoncal0371.', '2026-10-15 22:28:01'),
(414, 2, 'Created', 'Homeowner Records', 372, 'Created homeowner profile and linked Resident account marilouazurin0372.', '2026-10-15 22:28:19'),
(415, 2, 'Created', 'Homeowner Records', 373, 'Created homeowner profile and linked Resident account lydiamerilles0373.', '2026-10-15 22:28:39'),
(416, 2, 'Created', 'Homeowner Records', 374, 'Created homeowner profile and linked Resident account jimenezzenaida0374.', '2026-10-15 22:29:24'),
(417, 2, 'Created', 'Homeowner Records', 375, 'Created homeowner profile and linked Resident account colisjosefina0375.', '2026-10-15 22:29:44'),
(418, 2, 'Created', 'Homeowner Records', 376, 'Created homeowner profile and linked Resident account mariabautista0376.', '2026-10-15 22:29:57'),
(419, 2, 'Created', 'Homeowner Records', 377, 'Created homeowner profile and linked Resident account florantecudiamat0377.', '2026-10-15 22:30:11'),
(420, 2, 'Created', 'Homeowner Records', 378, 'Created homeowner profile and linked Resident account rubenabad0378.', '2026-10-15 22:30:29'),
(421, 2, 'Created', 'Homeowner Records', 379, 'Created homeowner profile and linked Resident account sianestor0379.', '2026-10-15 22:30:40'),
(422, 2, 'Created', 'Homeowner Records', 380, 'Created homeowner profile and linked Resident account mariperaguilar0380.', '2026-10-15 22:30:58'),
(423, 2, 'Created', 'Homeowner Records', 381, 'Created homeowner profile and linked Resident account umaliteresa0381.', '2026-10-15 22:31:28'),
(424, 2, 'Created', 'Homeowner Records', 382, 'Created homeowner profile and linked Resident account ahmadalidiamel0382.', '2026-10-15 22:31:47'),
(425, 2, 'Created', 'Homeowner Records', 383, 'Created homeowner profile and linked Resident account abdulbashetbangcolaliwalag0383.', '2026-10-15 22:32:39'),
(426, 3, 'Updated', 'Homeowner Records', 209, 'Updated homeowner record.', '2026-10-16 02:13:14'),
(427, 3, 'Updated', 'Homeowner Records', 229, 'Updated homeowner record.', '2026-10-16 02:14:26'),
(428, 3, 'Updated', 'Homeowner Records', 158, 'Updated homeowner record.', '2026-10-16 03:10:07'),
(429, 3, 'Updated', 'Homeowner Records', 122, 'Updated homeowner record.', '2026-10-16 03:12:57'),
(430, 3, 'Updated', 'Homeowner Records', 185, 'Updated homeowner record.', '2026-10-16 03:16:25'),
(431, 1, 'Updated Status', 'Homeowner Records', 315, 'Changed membership status.', '2026-10-16 16:34:20'),
(432, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-16 18:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `document_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `uploaded_by` int(10) UNSIGNED NOT NULL,
  `visibility` enum('Administrator','Clerk','Resident','All') NOT NULL DEFAULT 'All',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeowners`
--

CREATE TABLE `homeowners` (
  `homeowner_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `household_name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `block` varchar(50) DEFAULT NULL,
  `lot` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `no_of_vehicles` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `no_of_households` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `profile_image_path` varchar(500) DEFAULT NULL,
  `membership_status` enum('Active','Inactive','Delinquent') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homeowners`
--

INSERT INTO `homeowners` (`homeowner_id`, `user_id`, `household_name`, `address`, `street`, `block`, `lot`, `contact_number`, `email`, `no_of_vehicles`, `no_of_households`, `profile_image_path`, `membership_status`, `created_at`, `updated_at`) VALUES
(1, 6, 'Maiso', '5', 'Burney Street', '50', NULL, '+639179023228', NULL, 0, 1, NULL, 'Active', '2026-10-06 10:40:59', '2026-10-06 10:42:37'),
(2, 7, 'Pobre, Jocelyn', '3-B', 'Byron Street', '45', '3-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:24:44', '2026-10-15 21:25:18'),
(3, 8, 'Mary Ann Lazaro', '3-A', 'Byron Street', '45', '3-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:26:09', '2026-10-15 21:26:35'),
(4, 9, 'Fe Gerben', '5', 'Byron Street', '45', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:26:47', '2026-10-15 21:27:02'),
(5, 10, 'Ronnie Valenzuela', '7', 'Byron Street', '45', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:28:29', '2026-10-15 21:28:43'),
(6, 11, 'Teresita Seelin', '9', 'Byron Street', '45', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:29:39', '2026-10-15 21:29:45'),
(7, 12, 'Letecia Arevalo', '11-A', 'Byron Street', '45', '11-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:30:16', '2026-10-15 21:30:40'),
(8, 13, 'Diane Magat', '11-B', 'Byron Street', '45', '11-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:31:09', '2026-10-15 21:31:39'),
(9, 14, 'Letecia Fulo', '13-A', 'Byron Street', '45', '13-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:32:05', '2026-10-15 21:32:15'),
(10, 15, 'Wellington Wong', '13-B', 'Byron Street', '45', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:33:15', '2026-10-15 21:33:28'),
(11, 16, 'Jerry Vistar', '15', 'Byron Street', '45', '15', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:34:22', '2026-10-15 21:34:27'),
(12, 17, 'Anne Cruz', '16-B', 'Byron Street', '45', '16-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:36:03', '2026-10-15 21:37:46'),
(13, 18, 'Melchor Tumolva', '17', 'Byron Street', '45', '17', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:39:35', '2026-10-15 21:39:37'),
(14, 19, 'Benedicto Sundiang', '19-A', 'Byron Street', '45', '19-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:41:52', '2026-10-15 21:41:53'),
(15, 20, 'Arthuro Dellosa', '19-B', 'Byron Street', '45', '19-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:42:25', '2026-10-15 21:42:26'),
(16, 21, 'Plaridel Sespene', '25', 'Byron Street', '45', '25', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:43:02', '2026-10-15 21:43:03'),
(17, 22, 'Maria Mercedes Llobrera', '27', 'Byron Street', '45', '27', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:43:44', '2026-10-15 21:43:50'),
(18, 23, 'Aben, Josefina', '2', 'Byron Street', '48', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:51:27', '2026-10-15 21:51:36'),
(19, 24, 'Maria Elena Ginoo', '4', 'Byron Street', '48', '4', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:52:01', '2026-10-15 21:52:26'),
(20, 25, 'Gloria Sumera', '6', 'Byron Street', '48', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:53:09', '2026-10-15 21:53:09'),
(21, 26, 'Ericson Velasco', '8-A', 'Byron Street', '48', '8-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:53:44', '2026-10-15 21:53:46'),
(22, 27, 'Dolores Alo', '8-B', 'Byron Street', '48', '8-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:54:13', '2026-10-15 21:54:19'),
(23, 28, 'Robin De Borja', '10-A', 'Byron Street', '48', '10-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:55:19', '2026-10-15 21:55:22'),
(24, 29, 'Dewy boquiron', '10-B', 'Byron Street', '48', '10-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:55:47', '2026-10-15 21:55:47'),
(25, 30, 'Gerald Tamayo', '1', 'Bremen Street', '34', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:56:11', '2026-10-15 21:56:26'),
(26, 31, 'Rudy Nirona', '3', 'Bremen Street', '34', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:56:40', '2026-10-15 21:56:53'),
(27, 32, 'Cabrera, Decedrio', '16-A', 'Byron Street', '48', '16-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:56:50', '2026-10-15 21:56:53'),
(28, 33, 'Shirley Velasco', '18', 'Byron Street', '48', '18', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:57:23', '2026-10-15 21:57:28'),
(29, 34, 'Dolores Crisostomo', '21', 'Byron Street', '48', '21', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:57:45', '2026-10-15 21:57:47'),
(30, 35, 'Anthony Teves', '5', 'Bremen Street', '34', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:58:00', '2026-10-15 21:58:11'),
(31, 36, 'Jimmy Santos', '6', 'Bremen Street', '34', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:58:31', '2026-10-15 21:58:32'),
(32, 37, 'Hazmein Salinas', '26', 'Byron Street', '48', '26', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:58:36', '2026-10-15 21:58:56'),
(33, 38, 'Aginaldo', '7', 'Bremen Street', '34', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:59:02', '2026-10-15 21:59:16'),
(34, 39, 'Mark Schwab', '9', 'Bremen Street', '34', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:59:25', '2026-10-15 21:59:37'),
(35, 40, 'Honesto Nunag', '1', 'Burney Street', '48', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:59:51', '2026-10-15 22:00:01'),
(36, 41, 'Virginia Vergara', '48', 'Bremen Street', '39', '48', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 19:59:53', '2026-10-15 22:00:01'),
(37, 42, 'Ronald Benusa', '2', 'Burney Street', '50', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:00:14', '2026-10-15 22:00:35'),
(38, 43, 'Rossano Charmaine Abata', '46', 'Bremen Street', '40', '46', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:00:16', '2026-10-15 22:00:35'),
(39, 44, 'Rose Yanga', '3', 'Burney Street', '50', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:00:41', '2026-10-15 22:01:16'),
(40, 45, 'Maurecio Batas', '6', 'Butler Street', '33', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:01:12', '2026-10-15 22:01:16'),
(41, 46, 'John Mark Camigla', '9', 'Butler Street', '33', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:01:54', '2026-10-15 22:02:00'),
(42, 47, 'Niño Hernandez', '4-A', 'Burney Street', '50', '4-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:02:26', '2026-10-15 22:02:28'),
(43, 48, 'Sandra Sumagaysay', '10', 'Butler Street', '33', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:02:51', '2026-10-15 22:03:01'),
(44, 49, 'Helen Buena', '4-B', 'Burney Street', '50', '4-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:03:01', '2026-10-15 22:03:01'),
(45, 50, 'Jennifer Gonong', '5-B', 'Burney Street', '50', '5-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:04:27', '2026-10-15 22:04:27'),
(46, 51, 'Judy Delgado', '11', 'Butler Street', '33', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:04:50', '2026-10-15 22:04:54'),
(47, 52, 'Ardo Mingoa', '6', 'Burney Street', '50', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:05:03', '2026-10-15 22:05:28'),
(48, 53, 'Verender Bhatia', '0', 'Butler Street', '33', NULL, '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:05:14', '2026-10-15 22:05:28'),
(49, 54, 'Jinny Tutor Lorenzo', '7', 'Burney Street', '50', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:05:27', '2026-10-15 22:05:28'),
(50, 55, 'Micoh Gerard Nguid', '8', 'Burney Street', '50', '8', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:06:00', '2026-10-15 22:06:23'),
(51, 56, 'Shirley Mendoza', '10-A', 'Burney Street', '50', '10-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:06:31', '2026-10-15 22:07:06'),
(52, 57, 'Grefiel Cahel', '10-B', 'Burney Street', '50', '10-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:07:02', '2026-10-15 22:07:06'),
(53, 58, 'James Agawa', '12', 'Butler Street', '33', '12', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:07:05', '2026-10-15 22:07:06'),
(54, 59, 'Glen Asas', '12', 'Butler Street', '33', '12', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:07:21', '2026-10-15 22:07:51'),
(55, 60, 'Rogelio Bautista', '12-A', 'Burney Street', '50', '12-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:07:40', '2026-10-15 22:07:51'),
(56, 61, 'Dennis Choi', '12', 'Butler Street', '33', '12', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:07:40', '2026-10-15 22:07:51'),
(57, 62, 'Juliet Gundan', '13', 'Butler Street', '33', '13', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:07:55', '2026-10-15 22:08:27'),
(58, 63, 'Marlen Razon', '12-B', 'Burney Street', '50', '12-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:08:05', '2026-10-15 22:08:27'),
(59, 64, 'Juliet Borja', '20', 'Burney Street', '50', '20', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:08:24', '2026-10-15 22:08:27'),
(60, 65, 'Ramon Chua', '22', 'Burney Street', '50', '22', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:09:04', '2026-10-15 22:09:05'),
(61, 66, 'Antonneite Quirafu', '13', 'Butler Street', '33', '13', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:09:28', '2026-10-15 22:09:56'),
(62, 67, 'Ronald Robeles', '24-A', 'Burney Street', '50', '24-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:09:35', '2026-10-15 22:09:56'),
(63, 68, 'Francis Tan', '6', 'Butler Street', '33', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:09:52', '2026-10-15 22:09:56'),
(64, 69, 'Elena Alcantara', '24-B', 'Burney Street', '50', '24-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:10:00', '2026-10-15 22:10:22'),
(65, 70, 'Robert Real', '10-A', 'Butler Street', '34', '10-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:10:22', '2026-10-15 22:10:22'),
(66, 71, 'Juan Gerardo Ledonio', '18-C', 'Burney Street', '50', '18-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:10:39', '2026-10-15 22:10:41'),
(67, 72, 'Richard Daryl', '18-B', 'Burney Street', '50', '18-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:11:25', '2026-10-15 22:11:29'),
(68, 73, 'Evelyn Manangan', '12-B', 'Butler Street', '34', '12-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:11:32', '2026-10-15 22:11:40'),
(69, 74, 'Manuel Ang', '12-A', 'Butler Street', '34', '12-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:12:03', '2026-10-15 22:12:05'),
(70, 75, 'Wilbur Agonias', '18-A', 'Burney Street', '50', '18-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:12:03', '2026-10-15 22:12:05'),
(71, 76, 'Aurora Borra', '5', 'Burney Street', '53', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:12:28', '2026-10-15 22:13:04'),
(72, 77, 'Robert Condat', '14', 'Butler Street', '34', '14', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:12:40', '2026-10-15 22:13:04'),
(73, 78, 'Elena Alcantara', '2', 'Boles Street', '45', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:13:59', '2026-10-15 22:14:01'),
(74, 79, 'Alberto Gapas', '4', 'Boles Street', '45', '4', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:14:35', '2026-10-15 22:14:44'),
(75, 80, 'Amelia Vitaliano', '6', 'Boles Street', '45', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:15:12', '2026-10-15 22:15:13'),
(76, 81, 'alexis Juridico', '8-A', 'Boles Street', '45', '8-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:16:07', '2026-10-15 22:16:14'),
(77, 82, 'Teresita Seelin', '10', 'Boles Street', '45', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:16:34', '2026-10-15 22:16:57'),
(78, 83, 'Mennard Aglipay', '14', 'Boles Street', '45', '14', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:17:14', '2026-10-15 22:17:14'),
(79, 84, 'Vincent Agcaoili', '1', 'Adrian Street', '', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:17:54', '2026-10-15 22:18:15'),
(80, 85, 'Alexis Juridico', '16', 'Boles Street', '45', '16', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:17:56', '2026-10-15 22:18:15'),
(81, 86, 'Mirasol Chan', '1', 'Adrian Street', '', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:18:09', '2026-10-15 22:18:15'),
(82, 87, 'Jomar Cordero', '22-A', 'Boles Street', '45', '22-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:18:16', '2026-10-15 22:18:22'),
(83, 88, 'Mary Grace Villabos', '3-B', 'Adrian Street', '', '3-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:18:26', '2026-10-15 22:18:28'),
(84, 89, 'Antonio Quillo', '11', 'Adrian Street', '', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:18:48', '2026-10-15 22:19:19'),
(85, 90, 'Noel Cordero', '22-B', 'Boles Street', '45', '22-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:18:52', '2026-10-15 22:19:19'),
(86, 91, 'Perpetua Ilagan', '5', 'Adrian Street', '', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:19:04', '2026-10-15 22:19:19'),
(87, 92, 'Cristito Perez', '7', 'Adrian Street', '', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:19:20', '2026-10-15 22:19:20'),
(88, 93, 'Rickson Dayag', '24-A', 'Boles Street', '45', '24-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:19:33', '2026-10-15 22:19:39'),
(89, 94, 'Jesus Santos', '7', 'Adrian Street', '', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:19:37', '2026-10-15 22:19:39'),
(90, 95, 'Cornelio Merioles', '24-B', 'Boles Street', '45', '24-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:20:06', '2026-10-15 22:20:06'),
(91, 96, 'Evelyn Manangan', '26', 'Boles Street', '45', '26', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:20:39', '2026-10-15 22:20:51'),
(92, 97, 'Bernadette Mañez', '9-A', 'Adrian Street', '', '9-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:20:40', '2026-10-15 22:20:51'),
(93, 98, 'Efren Sumagit', '7-B', 'Adrian Street', '', '7-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:21:13', '2026-10-15 22:21:39'),
(94, 99, 'Ma. Mercedes Llobrera', '28', 'Boles Street', '45', '28', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:21:14', '2026-10-15 22:21:39'),
(95, 100, 'Vergie Matalicia', '9-B', 'Adrian Street', '', '9-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:21:34', '2026-10-15 22:21:39'),
(96, 101, 'Ruben Melendrez', '11-B', 'Adrian Street', '', '11-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:21:53', '2026-10-15 22:22:14'),
(97, 102, 'Jeralyn V Cinnela', '30', 'Boles Street', '45', '30', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:21:54', '2026-10-15 22:22:14'),
(98, 103, 'Ruben Otbo', '13-A', 'Adrian Street', '', '13-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:22:08', '2026-10-15 22:22:14'),
(99, 104, 'Jeenee Tutor', '16-F', 'Boles Street', '53', '16-F', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:22:23', '2026-10-15 22:22:27'),
(100, 105, 'Villamor Gatchalian', '13-B', 'Adrian Street', '', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:22:25', '2026-10-15 22:22:27'),
(101, 106, 'Lucila Recio', '15', 'Adrian Street', '', '15', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:22:50', '2026-10-15 22:22:58'),
(102, 107, 'Joey Caballero', '15', 'Adrian Street', '', '15', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:23:01', '2026-10-15 22:23:06'),
(103, 108, 'Gamma velasco', '29', 'Bronson Street', '45', '29', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:23:07', '2026-10-15 22:23:07'),
(104, 109, 'Andy Mariposque', '15-B', 'Adrian Street', '', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:23:28', '2026-10-15 22:23:28'),
(105, 110, 'Richard Sy', '1', 'Bronson Street', '46', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:23:29', '2026-10-15 22:23:29'),
(106, 111, 'Rechie Perocho', '15-C', 'Adrian Street', '', '15-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:24:06', '2026-10-15 22:24:23'),
(107, 112, 'Paolo Rodeo', '1', 'Bronson Street', '47', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:24:07', '2026-10-15 22:24:23'),
(108, 113, 'Pedro Nevarra', '2-B', 'Bronson Street', '47', '2-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:24:35', '2026-10-15 22:24:50'),
(109, 114, 'Manuel Ducat', '2-A', 'Bronson Street', '47', '2-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:25:15', '2026-10-15 22:25:24'),
(110, 115, 'Erlinda Bontigao', '4', 'Bronson Street', '47', '4', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:25:41', '2026-10-15 22:26:08'),
(111, 116, 'Remedios Pabila', '5', 'Bronson Street', '47', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:26:47', '2026-10-15 22:27:04'),
(112, 117, 'Annabel Rosario', '15', 'Adrian Street', '', '15', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:26:56', '2026-10-15 22:27:04'),
(113, 118, 'Cely Palac', '6', 'Bronson Street', '47', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:27:04', '2026-10-15 22:27:04'),
(114, 119, 'Joey Marron', '7-A', 'Adrian Street', '', '7-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:27:39', '2026-10-15 22:27:40'),
(115, 120, 'Dominga Fatton', '11', 'Adrian Street', '', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:27:55', '2026-10-15 22:28:01'),
(116, 121, 'Zenaida Valdez', '7', 'Bronson Street', '47', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:28:07', '2026-10-15 22:28:19'),
(117, 122, 'Vicky Vergara', '8', 'Bronson Street', '47', '8', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:28:31', '2026-10-15 22:28:38'),
(118, 123, 'Gina Cabaluna', '11-A', 'Adrian Street', '', '11-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:28:35', '2026-10-15 22:28:38'),
(119, 124, 'Gia Lo', '33', 'Adrian Street', '', '33', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:28:47', '2026-10-15 22:28:51'),
(120, 125, 'Efren Angelo', '21', 'Adrian Street', '', '21', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:28:58', '2026-10-15 22:28:58'),
(121, 126, 'Eddie Ramos', '8-A', 'Bronson Street', '47', '8-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:29:23', '2026-10-15 22:29:24'),
(122, 127, 'Imelda Gallo', '25', 'Adrian Street', '', '25', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:29:26', '2026-10-16 03:12:57'),
(123, 128, 'Yolly Molas', '9-A', 'Bronson Street', '47', '9-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:30:07', '2026-10-15 22:30:11'),
(124, 129, 'Rose Lily Moris', '9-B', 'Bronson Street', '47', '9-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:30:47', '2026-10-15 22:30:58'),
(125, 130, 'Lina Corpuz', '10', 'Bronson Street', '47', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:31:09', '2026-10-15 22:31:16'),
(126, 131, 'Alexis Juridico', '11', 'Bronson Street', '47', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:31:32', '2026-10-15 22:31:46'),
(127, 132, 'Anne Belen Alensuela', '12', 'Bronson Street', '47', '12', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:31:58', '2026-10-15 22:32:39'),
(128, 133, 'Vizminda Miguel', '13', 'Bronson Street', '47', '13', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:32:21', '2026-10-15 22:32:39'),
(129, 134, 'Eva Brillo', '14-A', 'Bronson Street', '47', '14-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:32:45', '2026-10-15 22:32:48'),
(130, 135, 'Manuel Tolentino', '29', 'Adrian Street', '', '29', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:33:08', '2026-10-15 22:33:27'),
(131, 136, 'Ana Marie Dela Vega', '14-B', 'Bronson Street', '47', '14-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:33:14', '2026-10-15 22:33:27'),
(132, 137, 'Manuel Tio', '31', 'Adrian Street', '', '31', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:33:29', '2026-10-16 02:10:53'),
(133, 138, 'Irish Uy', '15-A', 'Bronson Street', '47', '15-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:33:43', '2026-10-16 02:10:53'),
(134, 139, 'Joseph De Luna', '4-B', 'Adrian Street', '', '4-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:33:44', '2026-10-16 02:10:53'),
(135, 140, 'Aida Esperanza', '7', 'Adrian Street', '', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:33:58', '2026-10-16 02:10:53'),
(136, 141, 'Melina Daduya', '17', 'Adrian Street', '', '17', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:34:17', '2026-10-16 02:10:53'),
(137, 142, 'Andy Anasco', '15-B', 'Bronson Street', '47', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:34:27', '2026-10-16 02:10:53'),
(138, 143, 'Rosalia Arce', '27', 'Adrian Street', '', '27', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:34:35', '2026-10-16 02:10:53'),
(139, 144, 'Marcelo Songor', '1', 'Adrian Street', '', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:34:47', '2026-10-16 02:10:53'),
(140, 145, 'Lovelle Keith Galutan', '18', 'Adrian Street', '', '18', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:35:03', '2026-10-16 02:10:53'),
(141, 146, 'Lorenzo Magsingit', '16', 'Bronson Street', '47', '16', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:35:13', '2026-10-16 02:10:53'),
(142, 147, 'Mary Ann Merto Pangilinan', '25-A', 'Adrian Street', '', '25-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:35:25', '2026-10-16 02:10:53'),
(143, 148, 'Rachelda Olaez', '25-B', 'Adrian Street', '', '25-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:35:40', '2026-10-16 02:10:53'),
(144, 149, 'Terencio Taloma', '17', 'Bronson Street', '47', '17', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:35:47', '2026-10-16 02:10:53'),
(145, 150, 'Limuel Isaac Paulo', '25-C', 'Adrian Street', '', '25-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:35:58', '2026-10-16 02:10:53'),
(146, 151, 'Winston Concepcion', '18', 'Bronson Street', '47', '18', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:36:10', '2026-10-16 02:10:53'),
(147, 152, 'Gervacio Chavez', '7', 'Adrian Street', '', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:36:17', '2026-10-16 02:10:53'),
(148, 153, 'Carlos Paolo Alcodia', '19', 'Bronson Street', '47', '19', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:36:32', '2026-10-16 02:10:53'),
(149, 154, 'Herbert Tiu Laurel', '2', 'Adrian Street', '', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:36:34', '2026-10-16 02:10:53'),
(150, 155, 'Arsenio Mancera', '4-A', 'Adrian Street', '', '4-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:36:52', '2026-10-16 02:10:53'),
(151, 156, 'Candy Lou Salazar', '29-A', 'Bronson Street', '48', '29-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:37:02', '2026-10-16 02:10:53'),
(152, 157, 'Norma Lorenzo', '5-C', 'Adrian Street', '', '5-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:37:28', '2026-10-16 02:10:53'),
(153, 158, 'Luzviminda Bangloy', '29', 'Bronson Street', '49', '29', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:37:44', '2026-10-16 02:10:53'),
(154, 159, 'Abdulhasib Hajicosain', '5-B', 'Adrian Street', '', '5-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:37:48', '2026-10-16 02:10:53'),
(155, 160, 'Cesar Amarillo', '5-A', 'Adrian Street', '', '5-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:38:09', '2026-10-16 02:10:53'),
(156, 161, 'Marilyn Dagdagin', '30-A', 'Bronson Street', '49', '30-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:38:22', '2026-10-16 02:10:53'),
(157, 162, 'Reiza Mabasa', '0', 'Adrian Street', '', NULL, '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:38:35', '2026-10-16 02:10:53'),
(158, 163, 'Marilyn Reyes', '11', 'Adrian Street', '', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:38:59', '2026-10-16 03:10:07'),
(159, 164, 'Domingo Estabillo Jr', '30-B', 'Bronson Street', '49', '30-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:39:00', '2026-10-16 02:10:53'),
(160, 165, 'Felicidad Lopez', '31', 'Bronson Street', '51', '31', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:39:32', '2026-10-16 02:10:53'),
(161, 166, 'Edward Balthazar V. Domeyeg', '1-B', 'Bronx Street', '34', '1-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:40:03', '2026-10-16 02:10:53'),
(162, 167, 'Gleceria Canlas', '11-A', 'Bronson Street', '53', '11-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:40:04', '2026-10-16 02:10:53'),
(163, 168, 'Arwayni Andes', '2', 'Bronx Street', '34', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:40:23', '2026-10-16 02:10:53'),
(164, 169, 'Celso Cachuela', '16-B', 'Bronson Street', '53', '16-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:40:43', '2026-10-16 02:10:53'),
(165, 170, 'Cynthia Co', '0', 'Bronx Street', '40', NULL, '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:40:51', '2026-10-16 02:10:53'),
(166, 171, 'Azenith Llobrera', '11', 'Bronx Street', '40', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:41:24', '2026-10-16 02:10:53'),
(167, 172, 'Estanislao/ Maribel Corpuz', '10-B', 'Bronson Street', '53', '10-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:41:30', '2026-10-16 02:10:53'),
(168, 173, 'Elena Alcantara', '19', 'Bronx Street', '40', '19', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:41:55', '2026-10-16 02:10:53'),
(169, 174, 'Roberto Oyam', '3', 'Burke Street', '48', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:42:21', '2026-10-16 02:10:53'),
(170, 175, 'Stephanie Lomuntod', '7-A', 'Burke Street', '48', '7-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:42:46', '2026-10-16 02:10:53'),
(171, 176, 'Roy Allan Loreto', '23-A', 'Bronx Street', '40', '23-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:42:59', '2026-10-16 02:10:53'),
(172, 177, 'Mary Grace Molina', '7-B', 'Burke Street', '48', '7-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:43:24', '2026-10-16 02:10:53'),
(173, 178, 'Lolita Loreto', '25', 'Bronx Street', '40', '25', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:43:27', '2026-10-16 02:10:53'),
(174, 179, 'Evelyn Masajo', '29-A', 'Bronx Street', '40', '29-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:43:44', '2026-10-16 02:10:53'),
(175, 180, 'Jerry Kitan Jr.', '9', 'Burke Street', '48', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:44:07', '2026-10-16 02:10:53'),
(176, 181, 'Reden Carlo', '15-A', 'Burke Street', '48', '15-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:44:35', '2026-10-16 02:10:53'),
(177, 182, 'Rolando Tenio', '15-B', 'Burke Street', '48', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:45:05', '2026-10-16 02:10:53'),
(178, 183, 'Marlon Rambuyan', '27-B', 'Bronx Street', '40', '27-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 20:46:40', '2026-10-16 02:10:53'),
(179, 184, 'Linda Estropia', '17', 'Burke Street', '48', '17', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:17:28', '2026-10-16 02:10:53'),
(180, 185, 'Grace Reynante', '29', 'Bronx Street', '40', '29', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:17:52', '2026-10-16 02:10:53'),
(181, 186, 'Arlene Heradura', '19', 'Burke Street', '48', '19', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:18:35', '2026-10-16 02:10:53'),
(182, 187, 'Emily Joves', '31', 'Bronx Street', '40', '31', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:19:16', '2026-10-16 02:10:53'),
(183, 188, 'Tomas Abayan', '21-B', 'Burke Street', '48', '21-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:19:19', '2026-10-16 02:10:53'),
(184, 189, 'Ferdinand Joves', '0', 'Bronx Street', '40', NULL, '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:19:38', '2026-10-16 02:10:53'),
(185, 190, 'Aggarao ida', '21-A', 'Burke Street', '48', '21-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:19:46', '2026-10-16 03:16:25'),
(186, 191, 'Carmen Sarabia', '7', 'Bronx Street', '40', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:20:12', '2026-10-16 02:10:53'),
(187, 192, 'Amelia Martinez', '23', 'Burke Street', '48', '23', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:20:22', '2026-10-16 02:10:53'),
(188, 193, 'Janet Agcaoili', '25', 'Burke Street', '48', '25', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:20:51', '2026-10-16 02:10:53'),
(189, 194, 'Edna Quilban', '35-B', 'Bronx Street', '40', '35-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:20:51', '2026-10-16 02:10:53'),
(190, 195, 'Elaine Palentinos', '27', 'Burke Street', '48', '27', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:21:17', '2026-10-16 02:10:53'),
(191, 196, 'Amelia M. Torres', '41-B', 'Bronx Street', '40', '41-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:21:28', '2026-10-16 02:10:53'),
(192, 197, 'Maria Ludy Bernardo', '41-B', 'Bronx Street', '40', '41-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:22:09', '2026-10-16 02:10:53'),
(193, 198, 'Carlos Bernardo', '43-A', 'Bronx Street', '40', '43-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:22:32', '2026-10-16 02:10:53'),
(194, 199, 'Rocemillia Lopez Kamiyama', '43-B', 'Bronx Street', '40', '43-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:23:11', '2026-10-16 02:10:53'),
(195, 200, 'Rosalindo Acacio', '47', 'Bronx Street', '40', '47', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:23:46', '2026-10-16 02:10:53'),
(196, 201, 'Roselyn Dangin Lim', '39', 'Bronx Street', '40', '39', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:24:01', '2026-10-16 02:10:53'),
(197, 202, 'Atty. Vincent Ventus', '6', 'Burke Street', '49', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:24:32', '2026-10-16 02:10:53'),
(198, 203, 'Aurora Rosario', '8', 'Burke Street', '49', '8', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:25:40', '2026-10-16 02:10:53'),
(199, 204, 'Jeejee Villegas', '10', 'Burke Street', '49', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:27:02', '2026-10-16 02:10:53'),
(200, 205, 'Light of the World', '12', 'Burke Street', '49', '12', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:27:44', '2026-10-16 02:10:53'),
(201, 206, 'Soriano, Evelyn', '14-A', 'Burke Street', '49', '14-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:28:08', '2026-10-16 02:10:53'),
(202, 207, 'Evelyn Rotoni', '14-B', 'Burke Street', '49', '14-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:28:43', '2026-10-16 02:10:53'),
(203, 208, 'Zeny Valdez', '16', 'Burke Street', '49', '16', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:29:09', '2026-10-16 02:10:53'),
(204, 209, 'Carlito Alcodia', '22', 'Burke Street', '49', '22', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:29:27', '2026-10-16 02:10:53'),
(205, 210, 'Paulo Alcodia', '26', 'Burke Street', '49', '26', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:29:45', '2026-10-16 02:10:53'),
(206, 211, 'Noel Hernandez', '3-A', 'Bryant Street', '49', '3-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:31:39', '2026-10-16 02:10:53'),
(207, 212, 'Almario Refutal', '3-B', 'Bryant Street', '49', '3-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:32:15', '2026-10-16 02:10:53'),
(208, 213, 'Maximino Ines', '5', 'Bryant Street', '49', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:32:53', '2026-10-16 02:10:53'),
(209, 214, 'Bella Santos', '7', 'Bryant Street', '49', '7', '', '', 2, 1, 'homeowners/a2a75a5c7713f97473a47593b3114407.jpg', 'Inactive', '2026-10-15 21:33:28', '2026-10-16 02:13:14'),
(210, 215, 'New Vision Satelite Network', '9', 'Bryant Street', '49', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:34:27', '2026-10-16 02:10:53'),
(211, 216, 'Villamor Villa', '13-B', 'Bryant Street', '49', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:34:55', '2026-10-16 02:10:53'),
(212, 217, 'Danilo Domingo', '25-A', 'Bryant Street', '49', '25-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:35:25', '2026-10-16 02:10:53'),
(213, 218, 'Atty. John Arlin Caingat', '27-A', 'Bryant Street', '49', '27-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:37:46', '2026-10-16 02:10:53'),
(214, 219, 'Esperanza Policarpo', '25-B', 'Bryant Street', '49', '25-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:38:40', '2026-10-16 02:10:53'),
(215, 220, 'Aaron James Ureña', '2', 'Bryant Street', '50', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:39:12', '2026-10-16 02:10:53'),
(216, 221, 'Elena Factora', '1-A', 'Bryant Street', '51', '1-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:39:37', '2026-10-16 02:10:53'),
(217, 222, 'Milagras Caras', '7', 'Bryant Street', '51', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:39:56', '2026-10-16 02:10:53'),
(218, 223, 'Javier Fernando', '16', 'Bronx Street', '41', '16', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:41:00', '2026-10-16 02:10:53'),
(219, 224, 'Antonio Yamsuan', '18', 'Bronx Street', '41', '18', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:41:16', '2026-10-16 02:10:53'),
(220, 225, 'Primo Depnasin', '9', 'Bryant Street', '51', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:41:25', '2026-10-16 02:10:53'),
(221, 226, 'Fe Vergara', '22', 'Bronx Street', '41', '22', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:41:33', '2026-10-16 02:10:53'),
(222, 227, 'Jason Tan', '13-A', 'Bryant Street', '51', '13-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:41:53', '2026-10-16 02:10:53'),
(223, 228, 'Amor Villa', '13-B', 'Bryant Street', '51', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:42:16', '2026-10-16 02:10:53'),
(224, 229, 'Ruth Abalos Pomposelli', '24', 'Bronx Street', '41', '24', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:42:26', '2026-10-16 02:10:53'),
(225, 230, 'Cesar Lippad', '15-A', 'Bryant Street', '51', '15-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:42:42', '2026-10-16 02:10:53'),
(226, 231, 'Joel Baccoy', '15-B', 'Bryant Street', '51', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:43:07', '2026-10-16 02:10:53'),
(227, 232, 'Nitz Barranco', '17-A', 'Bryant Street', '51', '17-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:43:38', '2026-10-16 02:10:53'),
(228, 233, 'Dr. Eugenio Cu', '26', 'Bronx Street', '41', '26, 28, 30', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:43:50', '2026-10-16 02:10:53'),
(229, 234, 'Delfin Palisoc', '17-B', 'Bryant Street', '51', '17-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:44:07', '2026-10-16 02:14:26'),
(230, 235, 'Leoncia Dela Cruz', '32', 'Bronx Street', '41', '32', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:44:34', '2026-10-16 02:10:53'),
(231, 236, 'Jerry Brioso', '19-A', 'Bryant Street', '51', '19-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:44:37', '2026-10-16 02:10:53'),
(232, 237, 'Daisy Molas', '34', 'Bronx Street', '41', '34', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:44:51', '2026-10-16 02:10:53'),
(233, 238, 'Baldomera Brioso', '19-B', 'Bryant Street', '51', '19-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:45:05', '2026-10-16 02:10:53'),
(234, 239, 'Galima, Cristeta', '21-A', 'Bryant Street', '51', '21-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:45:36', '2026-10-16 02:10:53'),
(235, 240, 'Sultan Ferdausi Abbas', '36', 'Bronx Street', '41', '37, 40, 42', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:45:39', '2026-10-16 02:10:53'),
(236, 241, 'Restituto Colis', '3', 'Bronx Street', '46', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:45:56', '2026-10-16 02:10:53'),
(237, 242, 'George Baccud', '21-B', 'Bryant Street', '51', '21-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:46:02', '2026-10-16 02:10:53'),
(238, 243, 'Alvilyn Gonzales', '5-A', 'Bronx Street', '46', '5-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:46:15', '2026-10-16 02:10:53'),
(239, 244, 'Dolores Esquivel', '25', 'Bryant Street', '51', '25', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:46:24', '2026-10-16 02:10:53'),
(240, 245, 'Melanie Coronel', '5-B', 'Bronx Street', '46', '5-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:46:32', '2026-10-16 02:10:53'),
(241, 246, 'Reby Del Agua', '5-C', 'Bronx Street', '46', '5-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:46:57', '2026-10-16 02:10:53'),
(242, 247, 'Noel Manimtim', '2', 'Bronx Street', '46', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:47:09', '2026-10-16 02:10:53'),
(243, 248, 'Allan Roldan', '27-A', 'Bryant Street', '51', '27-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:47:11', '2026-10-16 02:10:53'),
(244, 249, 'Riad Nepomuceno', '4-A', 'Bronx Street', '46', '4-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:47:29', '2026-10-16 02:10:53'),
(245, 250, 'Virginia Alcodia', '27-B', 'Bryant Street', '51', '27-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:47:36', '2026-10-16 02:10:53'),
(246, 251, 'Ronel Mediavillo', '4-B', 'Bronx Street', '46', '4-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:47:46', '2026-10-16 02:10:53'),
(247, 252, 'Ma Divina Bernardo', '4-C', 'Bronx Street', '46', '4-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:48:20', '2026-10-16 02:10:53'),
(248, 253, 'Elena Alcantara', '3', 'Bonner Street', '41', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:48:28', '2026-10-16 02:10:53'),
(249, 254, 'Geronimo Paraguas', '7', 'Bonner Street', '41', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:48:53', '2026-10-16 02:10:53'),
(250, 255, 'Marino Castilla', '9', 'Bonner Street', '41', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:49:42', '2026-10-16 02:10:53'),
(251, 256, 'Ma Consolacion Sajorda', '1', 'Banning Street', '39', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:50:07', '2026-10-16 02:10:53'),
(252, 257, 'Rudy Ochosa', '15', 'Bonner Street', '41', '15', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:50:10', '2026-10-16 02:10:53'),
(253, 258, 'Ching Osman', '3', 'Banning Street', '39', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:50:18', '2026-10-16 02:10:53'),
(254, 259, 'Ramoncito Fernandez', '7', 'Banning Street', '39', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:50:36', '2026-10-16 02:10:53'),
(255, 260, 'Digno Paranada', '17', 'Bonner Street', '41', '17', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:50:46', '2026-10-16 02:10:53'),
(256, 261, 'Edgar Robert Villarosa', '9', 'Banning Street', '39', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:51:05', '2026-10-16 02:10:53'),
(257, 262, 'Teresita Colobong', '19', 'Bonner Street', '41', '19', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:51:11', '2026-10-16 02:10:53'),
(258, 263, 'Deogracias Diez', '23', 'Bonner Street', '41', '23', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:51:36', '2026-10-16 02:10:53'),
(259, 264, 'Paden, Inocente', '25', 'Bonner Street', '41', '25', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:52:26', '2026-10-16 02:10:53'),
(260, 265, 'Danilo Bautista', '27', 'Bonner Street', '41', '27', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:53:06', '2026-10-16 02:10:53'),
(261, 266, 'Legaspi Savings', '11-A', 'Banning Street', '39', '11-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:53:09', '2026-10-16 02:10:53'),
(262, 267, 'Eduardo Navarro Jr.', '11-B', 'Banning Street', '39', '11-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:53:30', '2026-10-16 02:10:53'),
(263, 268, 'Edna Hernandez', '33-A', 'Bonner Street', '41', '33-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:53:34', '2026-10-16 02:10:53'),
(264, 269, 'Ann Navarro Padilla', '11', 'Banning Street', '39', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:53:46', '2026-10-16 02:10:53'),
(265, 270, 'Danilo Gerona', '33-B', 'Bonner Street', '41', '33-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:54:00', '2026-10-16 02:10:53'),
(266, 271, 'Tomas Abayan', '13-A', 'Banning Street', '39', '13-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:54:03', '2026-10-16 02:10:53'),
(267, 272, 'Angel Ruiz', '13-B', 'Banning Street', '39', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:54:19', '2026-10-16 02:10:53'),
(268, 273, 'Lorna Yap', '35', 'Bonner Street', '41', '35', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:54:21', '2026-10-16 02:10:53'),
(269, 274, 'Mylene Acosta', '15-B', 'Banning Street', '39', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:54:42', '2026-10-16 02:10:53'),
(270, 275, 'Jessie Nicolas', '37', 'Bonner Street', '41', '37', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:54:43', '2026-10-16 02:10:53'),
(271, 276, 'Teresita Aure', '17-B', 'Banning Street', '39', '17-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:55:00', '2026-10-16 02:10:53'),
(272, 277, 'Sultan Ferdausi Abbas', '39', 'Bonner Street', '41', '39', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:55:18', '2026-10-16 02:10:53'),
(273, 278, 'Dulce Liwanag', '19-A', 'Banning Street', '39', '19-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:55:22', '2026-10-16 02:10:53'),
(274, 279, 'Severo Breva', '19-B', 'Banning Street', '39', '19-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:55:45', '2026-10-16 02:10:53'),
(275, 280, 'Eunice Marte', '1', 'Bonner Street', '44', '1', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:55:46', '2026-10-16 02:10:53'),
(276, 281, 'Leo Navarra', '2', 'Bonner Street', '44', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:56:03', '2026-10-16 02:10:53'),
(277, 282, 'Gretchen Tutuna', '3', 'Bonner Street', '44', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:56:26', '2026-10-16 02:10:53'),
(278, 283, 'Dax Villanueva', '21', 'Banning Street', '39', '21', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:56:36', '2026-10-16 02:10:53'),
(279, 284, 'Divine Yasay', '23', 'Banning Street', '39', '23', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:56:53', '2026-10-16 02:10:53'),
(280, 285, 'Rahman Sharifur', '4', 'Bonner Street', '44', '4', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:56:53', '2026-10-16 02:10:53'),
(281, 286, 'Arnold Torre', '22-A', 'Banning Street', '39', '22-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:57:09', '2026-10-16 02:10:53'),
(282, 287, 'Joselito Buenavista', '5', 'Bonner Street', '44', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:57:20', '2026-10-16 02:10:53'),
(283, 288, 'Ahezah Tiongson', '25-B', 'Banning Street', '39', '25-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:57:28', '2026-10-16 02:10:53'),
(284, 289, 'Lilibeth Paguio', '6', 'Bonner Street', '44', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:57:47', '2026-10-16 02:10:53'),
(285, 290, 'Mercedita Plata', '27-B', 'Banning Street', '39', '27-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:58:11', '2026-10-16 02:10:53'),
(286, 291, 'Ramon Benitez', '8', 'Bonner Street', '50', '8', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:58:24', '2026-10-16 02:10:53'),
(287, 292, 'Ma. Isabel Delfina', '27', 'Banning Street', '39', '27', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:58:32', '2026-10-16 02:10:53'),
(288, 293, 'Olivia Padilla', '6', 'Bonner Street', '53', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:58:56', '2026-10-16 02:10:53'),
(289, 294, 'Myrna Abad', '7', 'Bonner Street', '53', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:59:16', '2026-10-16 02:10:53'),
(290, 295, 'Richard Conte', '8', 'Bonner Street', '53', '8', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 21:59:37', '2026-10-16 02:10:53'),
(291, 296, 'Corazon Nucum', '9', 'Bonner Street', '53', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:00:35', '2026-10-16 02:10:53'),
(292, 297, 'Elizabeth Piad', '10-A', 'Bonner Street', '53', '10-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:01:16', '2026-10-16 02:10:53'),
(293, 298, 'Charles Garcia', '12-B', 'Bonner Street', '53', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:02:00', '2026-10-16 02:10:53'),
(294, 299, 'Kurt Capistrano', '13-A', 'Bonner Street', '53', '13-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:02:28', '2026-10-16 02:10:53'),
(295, 300, 'Shirley Suratos', '15', 'Bonner Street', '53', '15', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:03:01', '2026-10-16 02:10:53'),
(296, 301, 'Noel Del Rosario', '13-B', 'Bonner Street', '53', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:03:29', '2026-10-16 02:10:53'),
(297, 302, 'Camil Conopio', '14-A', 'Bonner Street', '53', '14-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:04:00', '2026-10-16 02:10:53'),
(298, 303, 'Hazel Anne Alcantara', '14-B', 'Bonner Street', '53', '14-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:04:27', '2026-10-16 02:10:53'),
(299, 304, 'Anelyn Jimenez', '6', 'Bonner Street', '53', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:04:54', '2026-10-16 02:10:53'),
(300, 305, 'Alexis Juridico', '2', 'Badger Street', '44', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:05:28', '2026-10-16 02:10:53'),
(301, 306, 'Eduardo Berran', '3', 'Badger Street', '44', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:05:48', '2026-10-16 02:10:53'),
(302, 307, 'Marichu Mangligot', '8-B', 'Badger Street', '44', '8-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:06:23', '2026-10-16 02:10:53'),
(303, 308, 'Silangan Temple Builders', '7', 'Badger Street', '44', '7', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:07:06', '2026-10-16 02:10:53'),
(304, 309, 'Susan Casipit', '5-A', 'Badger Street', '44', '5-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:07:51', '2026-10-16 02:10:53'),
(305, 310, 'John Patrick Corpuz', '5-B', 'Badger Street', '44', '5-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:08:27', '2026-10-16 02:10:53'),
(306, 311, 'Genalyn Ortiz', '6', 'Badger Street', '44', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:08:50', '2026-10-16 02:10:53'),
(307, 312, 'Gil Gari', '10', 'Badger Street', '44', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:09:05', '2026-10-16 02:10:53'),
(308, 313, 'Edgardo Tividad', '12', 'Badger Street', '44', '12', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:09:27', '2026-10-16 02:10:53'),
(309, 314, 'Richard Telan', '8-A', 'Badger Street', '44', '8-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:09:56', '2026-10-16 02:10:53'),
(310, 315, 'Irnieo Falarca Jr.', '14', 'Badger Street', '44', '14', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:10:22', '2026-10-16 02:10:53'),
(311, 316, 'Melina Daduya', '18', 'Badger Street', '44', '18', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:10:41', '2026-10-16 02:10:53'),
(312, 317, 'Salvacion Mapa', '20', 'Badger Street', '44', '20', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:11:29', '2026-10-16 02:10:53'),
(313, 318, 'Consorcia Gabitanan', '29', 'Banning Street', '39', '29', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:11:40', '2026-10-16 02:10:53'),
(314, 319, 'Thermo Power', '22', 'Badger Street', '44', '22', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:11:47', '2026-10-16 02:10:53'),
(315, 320, 'Renato Alibangbang', '31-A', 'Banning Street', '39', '31-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:11:55', '2026-10-16 16:34:20'),
(316, 321, 'Melina Daduya', '24', 'Badger Street', '44', '24', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:12:05', '2026-10-16 02:10:53'),
(317, 322, 'Tessie Abacan', '31-B', 'Banning Street', '39', '31-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:13:04', '2026-10-16 02:10:53'),
(318, 323, 'Benito Arnold C. Rosete', '33-A', 'Banning Street', '39', '33-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:13:21', '2026-10-16 02:10:53'),
(319, 324, 'Maricor Acierto', '26-B', 'Badger Street', '44', '26-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:13:27', '2026-10-16 02:10:53'),
(320, 325, 'Lorenzo Ruiz', '33-A', 'Banning Street', '39', '33-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:13:41', '2026-10-16 02:10:53'),
(321, 326, 'Joesephine Basa', '26-A', 'Badger Street', '44', '26-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:13:57', '2026-10-16 02:10:53'),
(322, 327, 'Bernadette Vidad', '24', 'Badger Street', '44', '24', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:14:20', '2026-10-16 02:10:53'),
(323, 328, 'Fuller Lourdes', '35-A', 'Banning Street', '39', '35-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:14:34', '2026-10-16 02:10:53'),
(324, 329, 'Ma. Francisca Viray', '35-B', 'Banning Street', '39', '35-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:14:52', '2026-10-16 02:10:53'),
(325, 330, 'Robert Capio', '37-B', 'Banning Street', '39', '37-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:15:09', '2026-10-16 02:10:53'),
(326, 331, 'Carmina Poon', '26', 'Badger Street', '44', '26', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:15:30', '2026-10-16 02:10:53'),
(327, 332, 'Arnel Fortes', '41', 'Banning Street', '39', '41', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:15:41', '2026-10-16 02:10:53'),
(328, 333, 'Susan Mendoza', '28', 'Badger Street', '44', '28', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:15:54', '2026-10-16 02:10:53'),
(329, 334, 'Jose Laurel', '43', 'Banning Street', '39', '43', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:16:01', '2026-10-16 02:10:53'),
(330, 335, 'Blanca Trinidad', '45', 'Banning Street', '39', '45', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:16:14', '2026-10-16 02:10:53'),
(331, 336, 'Vanessa Cayabyab', '2', 'Banning Street', '40', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:16:57', '2026-10-16 02:10:53'),
(332, 337, 'Carmen Lloyd', '4-A', 'Banning Street', '40', '4-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:17:13', '2026-10-16 02:10:53'),
(333, 338, 'Silvestre Acejas', '2', 'Badger Street', '50', '2', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:17:24', '2026-10-16 02:10:53'),
(334, 339, 'Joy Venturenza', '4-B', 'Banning Street', '40', '4-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:17:32', '2026-10-16 02:10:53'),
(335, 340, 'Reginaldo Bautista', '3', 'Badger Street', '50', '3', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:17:40', '2026-10-16 02:10:53'),
(336, 341, 'Bianca Nieves', '0', 'Banning Street', '40', NULL, '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:17:46', '2026-10-16 02:10:53'),
(337, 342, 'Engr. Quirino Abalde', '6', 'Banning Street', '40', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:18:15', '2026-10-16 02:10:53'),
(338, 343, 'Maria Mercedes Llobrera', '4', 'Badger Street', '50', '4', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:18:22', '2026-10-16 02:10:53'),
(339, 344, 'Azenith Llobrera', '10', 'Banning Street', '40', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:18:28', '2026-10-16 02:10:53'),
(340, 345, 'Rizalyn M. Ong', '14', 'Banning Street', '40', '14', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:18:43', '2026-10-16 02:10:53'),
(341, 346, 'Alexis Juridico', '5', 'Badger Street', '50', '5', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:18:45', '2026-10-16 02:10:53'),
(342, 347, 'Lorna Ojeda', '24', 'Banning Street', '40', '24', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:19:19', '2026-10-16 02:10:53'),
(343, 348, 'Romanita Nagai', '6', 'Badger Street', '50', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:19:29', '2026-10-16 02:10:53'),
(344, 349, 'Edgardo Tope', '22', 'Banning Street', '40', '22', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:19:54', '2026-10-16 02:10:53'),
(345, 350, 'Alexis Juridico', '7-A', 'Badger Street', '50', '7-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:20:05', '2026-10-16 02:10:53'),
(346, 351, 'Jean Veloria', '7-B', 'Badger Street', '50', '7-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:20:24', '2026-10-16 02:10:53'),
(347, 352, 'Dra. Vienna Baloloy', '9', 'Badger Street', '50', '9', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:20:51', '2026-10-16 02:10:53'),
(348, 353, 'Lorie Ledesma', '11', 'Badger Street', '50', '11', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:21:10', '2026-10-16 02:10:53'),
(349, 354, 'Odulina Tope', '0', 'Banning Street', '40', NULL, '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:21:39', '2026-10-16 02:10:53'),
(350, 355, 'Precilla Faustino', '13-A', 'Badger Street', '50', '13-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:21:51', '2026-10-16 02:10:53');
INSERT INTO `homeowners` (`homeowner_id`, `user_id`, `household_name`, `address`, `street`, `block`, `lot`, `contact_number`, `email`, `no_of_vehicles`, `no_of_households`, `profile_image_path`, `membership_status`, `created_at`, `updated_at`) VALUES
(351, 356, 'Lenny Dela Cruz', '30', 'Banning Street', '40', '30', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:21:52', '2026-10-16 02:10:53'),
(352, 357, 'Farouk Disangcopan', '32-A', 'Banning Street', '40', '32-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:22:14', '2026-10-16 02:10:53'),
(353, 358, 'Alden Salanga', '13-B', 'Badger Street', '50', '13-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:22:15', '2026-10-16 02:10:53'),
(354, 359, 'Antonette Caballes', '38', 'Banning Street', '40', '38', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:22:27', '2026-10-16 02:10:53'),
(355, 360, 'Flora Gavero', '15-A', 'Badger Street', '50', '15-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:22:40', '2026-10-16 02:10:53'),
(356, 361, 'Corazon Tiempo', '42', 'Banning Street', '40', '42', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:22:58', '2026-10-16 02:10:53'),
(357, 362, 'Romell Estipular', '15-B', 'Badger Street', '50', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:23:06', '2026-10-16 02:10:53'),
(358, 363, 'Marcelo Arenas', '46', 'Banning Street', '40', '46', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:23:16', '2026-10-16 02:10:53'),
(359, 364, 'Babe Ruth Obado', '27', 'Badger Street', '50', '27', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:23:28', '2026-10-16 02:10:53'),
(360, 365, 'Manny Vidad', '25-A', 'Badger Street', '50', '25-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:24:02', '2026-10-16 02:10:53'),
(361, 366, 'Larisse Tan', '25-B', 'Badger Street', '50', '25-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:24:23', '2026-10-16 02:10:53'),
(362, 367, 'Jocelyn Basilan', '15-A', 'Baker Street', '38', '15-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:24:30', '2026-10-16 02:10:53'),
(363, 368, 'Atty. Mark Arenas', '25-C', 'Badger Street', '50', '25-C', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:24:50', '2026-10-16 02:10:53'),
(364, 369, 'Wilfredo Erana Jr.', '15-B', 'Baker Street', '38', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:25:09', '2026-10-16 02:10:53'),
(365, 370, 'Jaime Chua', '4', 'Baker Street', '38', '4', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:25:24', '2026-10-16 02:10:53'),
(366, 371, 'Sheila Aquino', '6', 'Baker Street', '38', '6', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:25:38', '2026-10-16 02:10:53'),
(367, 372, 'Aladen Cayago', '8', 'Baker Street', '38', '8', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:26:09', '2026-10-16 02:10:53'),
(368, 373, 'Teresita Aquino', '10', 'Baker Street', '38', '10', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:26:46', '2026-10-16 02:10:53'),
(369, 374, 'Victor Aquino', '12-B', 'Baker Street', '38', '12-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:27:04', '2026-10-16 02:10:53'),
(370, 375, 'Avelina Lachica', '16-A', 'Baker Street', '38', '16-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:27:23', '2026-10-16 02:10:53'),
(371, 376, 'Reynaldo Moncal', '16-B', 'Baker Street', '38', '16-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:28:01', '2026-10-16 02:10:53'),
(372, 377, 'Marilou Azurin', '18', 'Baker Street', '38', '18', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:28:19', '2026-10-16 02:10:53'),
(373, 378, 'Lydia Merilles', '20', 'Baker Street', '38', '20', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:28:38', '2026-10-16 02:10:53'),
(374, 379, 'Jimenez Zenaida', '22-A', 'Baker Street', '38', '22-A', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:29:24', '2026-10-16 02:10:53'),
(375, 380, 'Colis Josefina', '24', 'Baker Street', '38', '24', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:29:44', '2026-10-16 02:10:53'),
(376, 381, 'Maria Bautista', '28', 'Baker Street', '38', '28', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:29:57', '2026-10-16 02:10:53'),
(377, 382, 'Florante Cudiamat', '30', 'Baker Street', '38', '30', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:30:11', '2026-10-16 02:10:53'),
(378, 383, 'Ruben Abad', '36', 'Baker Street', '38', '36', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:30:29', '2026-10-16 02:10:53'),
(379, 384, 'Sia Nestor', '38', 'Baker Street', '38', '38', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:30:40', '2026-10-16 02:10:53'),
(380, 385, 'Mariper Aguilar', '42', 'Baker Street', '38', '42', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:30:58', '2026-10-16 02:10:53'),
(381, 386, 'Umali Teresa', '44', 'Baker Street', '38', '44', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:31:28', '2026-10-16 02:10:53'),
(382, 387, 'Ahmad Ali Diamel', '26', 'Baker Street', '38', '26', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:31:46', '2026-10-16 02:10:53'),
(383, 388, 'Abdul Bashet Bangcola Liwalag', '15-B', 'Baker Street', '38', '15-B', '', '', 0, 1, NULL, 'Inactive', '2026-10-15 22:32:39', '2026-10-16 02:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `login_2fa_challenges`
--

CREATE TABLE `login_2fa_challenges` (
  `challenge_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code_hash` varchar(255) NOT NULL,
  `delivery_method` enum('Email','SMS','Email + SMS') NOT NULL,
  `expires_at` datetime NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `attempt_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `failed_attempts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `last_attempt_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`attempt_id`, `username`, `ip_address`, `failed_attempts`, `locked_until`, `last_attempt_at`) VALUES
(7, 'Maduli', '110.54.149.227', 2, NULL, '2026-10-06 16:16:08'),
(9, 'Maduli', '209.35.160.145', 2, NULL, '2026-10-12 10:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `login_slides`
--

CREATE TABLE `login_slides` (
  `slide_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image_path` varchar(500) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `uploaded_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_collection_reports`
--

CREATE TABLE `monthly_collection_reports` (
  `monthly_report_id` int(10) UNSIGNED NOT NULL,
  `report_year` smallint(5) UNSIGNED NOT NULL,
  `report_month` tinyint(3) UNSIGNED NOT NULL,
  `total_validated` decimal(14,2) NOT NULL DEFAULT 0.00,
  `validated_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `archived_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Info',
  `module` varchar(100) DEFAULT NULL,
  `record_id` int(10) UNSIGNED DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `title`, `message`, `type`, `module`, `record_id`, `is_read`, `created_at`) VALUES
(1, 1, 'Reservation request recorded', 'Kyle requested Court 1 on 2026-10-06.', 'Info', 'Reservations', 1, 1, '2026-10-06 02:41:27'),
(2, 2, 'Reservation request recorded', 'Kyle requested Court 1 on 2026-10-06.', 'Info', 'Reservations', 1, 1, '2026-10-06 02:41:27'),
(3, 3, 'Reservation request recorded', 'Kyle requested Court 1 on 2026-10-06.', 'Info', 'Reservations', 1, 0, '2026-10-06 02:41:27'),
(4, 4, 'Reservation request recorded', 'Kyle requested Court 1 on 2026-10-06.', 'Info', 'Reservations', 1, 0, '2026-10-06 02:41:27'),
(5, 5, 'Reservation request recorded', 'Kyle requested Court 1 on 2026-10-06.', 'Info', 'Reservations', 1, 0, '2026-10-06 02:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `homeowner_id` int(10) UNSIGNED NOT NULL,
  `si_number` varchar(100) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('Cash','Bank Transfer','Cheque') NOT NULL,
  `reference_number` varchar(150) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `proof_image_path` varchar(500) DEFAULT NULL,
  `status` enum('Pending','Validated','Rejected') NOT NULL DEFAULT 'Pending',
  `encoded_by` int(10) UNSIGNED NOT NULL,
  `validated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `report_type` varchar(100) NOT NULL,
  `generated_by` int(10) UNSIGNED NOT NULL,
  `generated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `homeowner_id` int(10) UNSIGNED DEFAULT NULL,
  `facility` enum('Court 1','Court 2') NOT NULL DEFAULT 'Court 1',
  `requester_name` varchar(150) NOT NULL,
  `requester_type` enum('Resident','Outside User') NOT NULL,
  `requester_affiliation` varchar(200) DEFAULT NULL,
  `requester_contact` varchar(50) DEFAULT NULL,
  `requester_email` varchar(150) DEFAULT NULL,
  `reservation_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `payment_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `purpose` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected','Cancelled','Completed') NOT NULL DEFAULT 'Pending',
  `cancellation_reason` varchar(500) DEFAULT NULL,
  `requested_by` int(10) UNSIGNED DEFAULT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `homeowner_id`, `facility`, `requester_name`, `requester_type`, `requester_affiliation`, `requester_contact`, `requester_email`, `reservation_date`, `start_time`, `end_time`, `payment_amount`, `purpose`, `status`, `cancellation_reason`, `requested_by`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Court 1', 'Kyle', 'Outside User', 'STI', '+639179023228', NULL, '2026-10-06', '06:00:00', '12:00:00', 1500.00, NULL, 'Completed', NULL, 2, 1, '2026-10-06 02:41:27', '2026-10-06 16:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `reservation_payments`
--

CREATE TABLE `reservation_payments` (
  `reservation_payment_id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `homeowner_id` int(10) UNSIGNED DEFAULT NULL,
  `si_number` varchar(100) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `payment_method` enum('Cash','Bank Transfer','Cheque','Online Payment') NOT NULL,
  `reference_number` varchar(150) DEFAULT NULL,
  `proof_image_path` varchar(500) DEFAULT NULL,
  `status` enum('Pending','Validated','Rejected') NOT NULL DEFAULT 'Validated',
  `encoded_by` int(10) UNSIGNED NOT NULL,
  `validated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation_payments`
--

INSERT INTO `reservation_payments` (`reservation_payment_id`, `reservation_id`, `homeowner_id`, `si_number`, `payment_date`, `amount`, `payment_method`, `reference_number`, `proof_image_path`, `status`, `encoded_by`, `validated_by`, `created_at`) VALUES
(1, 1, NULL, 'RES-20261006024133-1', '2026-10-06', 1500.00, 'Cash', NULL, NULL, 'Validated', 2, NULL, '2026-10-06 02:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `two_factor_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('Administrator','Clerk','Resident') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `account_source` enum('Manual','Homeowner') NOT NULL DEFAULT 'Manual',
  `must_change_password` tinyint(1) NOT NULL DEFAULT 0,
  `temporary_password_expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `mobile_number`, `two_factor_enabled`, `password_hash`, `role`, `status`, `account_source`, `must_change_password`, `temporary_password_expires_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'kylechristianmaiso@gmail.com', NULL, 0, '$2y$10$Zr1UkwVzhCKu.UHCwe/9Tu4oCPc3FYY.2D/HuM1zpl7CEyFZsUlQ.', 'Administrator', 'Active', 'Manual', 0, NULL, '2026-10-06 02:31:10', '2026-10-06 02:31:10'),
(2, 'Maiso', 'kylechristianmaiso@gmail.com', '+639179023228', 1, '$2y$10$ET2Wq89cm6GrX.k6HKsC3O6Gln/fHwdXgrjgdPxC9/nL3cXwN8wdm', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:32:22', '2026-10-06 10:38:09'),
(3, 'Maduli', 'cootmaduli@gmail.com', NULL, 0, '$2y$10$GtAAUrjGdJWxpktw9ekkZuLMF2hicTFM0lhPUY9q7WOHwc/rY/PPq', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:32:37', '2026-10-06 02:32:37'),
(4, 'Darlucio', NULL, NULL, 0, '$2y$10$enaBL7cfEwLAbD2ssGMubOYuSN56mZCnzCwlO9QA6WqglO7baEhTC', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:32:59', '2026-10-06 02:32:59'),
(5, 'Quijano', NULL, NULL, 0, '$2y$10$o9geCwDTV8jO9AMDTUYni.417gFMdDY6vXPSv.P/MUP6HE5O/LCVa', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:33:09', '2026-10-06 02:33:09'),
(6, 'maiso0001', NULL, '+639179023228', 0, '$2y$10$FBjBi0S4y99S7nrfVzlA/efcXpl0Dob4Dn5Usq.e7WYlpXXsnf64.', 'Resident', 'Active', 'Homeowner', 0, NULL, '2026-10-06 10:40:59', '2026-10-06 10:42:37'),
(7, 'pobrejocelyn0002', NULL, NULL, 0, '$2y$10$8iMH3ToNIsspFnUTvxlPHOvNfKXETp1mJUWE98IUL6NFMn8hc3BBa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:24:44', '2026-10-15 19:24:44', '2026-10-15 21:25:18'),
(8, 'maryannlazaro0003', NULL, NULL, 0, '$2y$10$9UEP0v3W5S1tjfazAlbevO1.pZwBLLIfOCKowZ1GzGSUkV/lzcpEW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:26:09', '2026-10-15 19:26:09', '2026-10-15 21:26:35'),
(9, 'fegerben0004', NULL, NULL, 0, '$2y$10$pIU.vjfWNQGqufr9WK.CyuJtYfsvyfaErN/3fFkXkyCKJfhrPlqHG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:26:47', '2026-10-15 19:26:47', '2026-10-15 21:27:02'),
(10, 'ronnievalenzuela0005', NULL, NULL, 0, '$2y$10$Ttp75oKRgJP2bta4AJ3w9.vMR.6bBx8ux2/cmvGsQhHYFKfhMrEua', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:28:29', '2026-10-15 19:28:29', '2026-10-15 21:28:43'),
(11, 'teresitaseelin0006', NULL, NULL, 0, '$2y$10$3mJJCTFGaFITDPnw9CDES.yDmhDu6Ipkv6RlJR7/0vzU2CkVyZTqq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:29:39', '2026-10-15 19:29:39', '2026-10-15 21:29:45'),
(12, 'leteciaarevalo0007', NULL, NULL, 0, '$2y$10$VvNrbDYVgjzN.9JdsWBiVu9Qt1dy0tohMCmWMcKIsgIGEe8Uyypf.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:30:16', '2026-10-15 19:30:16', '2026-10-15 21:30:40'),
(13, 'dianemagat0008', NULL, NULL, 0, '$2y$10$Q8DKgksOnfk4OvLxGv6TQee1bVPZX9CgyruaxAUJ3JZMpz5gbD0Hi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:31:09', '2026-10-15 19:31:09', '2026-10-15 21:31:39'),
(14, 'leteciaarevalo0009', NULL, NULL, 0, '$2y$10$wxXC.S4S5wqCYvAIH.g2/eMUzAfqmzMoLcj3h8365Um0zNr67hxMe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:32:05', '2026-10-15 19:32:05', '2026-10-15 21:32:15'),
(15, 'wellingtonwong0010', NULL, NULL, 0, '$2y$10$ektLlHIl5qqHoy23oQq4Pep34utFvXc04pQtVRlBEhusBkpPKbf8.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:33:15', '2026-10-15 19:33:15', '2026-10-15 21:33:28'),
(16, 'jerryvistar0011', NULL, NULL, 0, '$2y$10$MeOkipm/4N7fiv31tBIuyu0fpNi1qPmTsLOGg4Q/khrMoVCt/yIiy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:34:22', '2026-10-15 19:34:22', '2026-10-15 21:34:27'),
(17, 'annecruz0012', NULL, NULL, 0, '$2y$10$7W9L25WGqH9/NCSbsTLlsumzbYoqrSZKRs8pSFhi9VrWsBZEWGxAm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:36:03', '2026-10-15 19:36:03', '2026-10-15 21:37:46'),
(18, 'melchortumolva0013', NULL, NULL, 0, '$2y$10$/uRE.kYp7FXYHGezWOFAj.Zq.DZKG8wvY2d6Wzw.LYEd.4O/Z.YQi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:39:35', '2026-10-15 19:39:35', '2026-10-15 21:39:37'),
(19, 'benedictosundiang0014', NULL, NULL, 0, '$2y$10$hq1.SGS9stK0ne8iyrOWqO/MoKHZid9iOFYlmPmHSSvmt4.vL6TYi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:41:52', '2026-10-15 19:41:52', '2026-10-15 21:41:53'),
(20, 'arthurodellosa0015', NULL, NULL, 0, '$2y$10$ivL0u7FTgFmXfV4kN8AAxuj2w15l4wpfaqKn7xXUa8EZ9p9IeUEU6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:42:25', '2026-10-15 19:42:25', '2026-10-15 21:42:26'),
(21, 'plaridelsespene0016', NULL, NULL, 0, '$2y$10$ECK7UO4o9bP6.e2HOHUPOuzJUIrcNjTqdvfz1PuQg7S6ooS6EcbxG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:43:02', '2026-10-15 19:43:02', '2026-10-15 21:43:03'),
(22, 'mariamercedesllobrera0017', NULL, NULL, 0, '$2y$10$zMBgYV94xfcKV1gQwE9cXesv1.CWhaVJ/kAvv47mmhlGeePrFi7WO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:43:44', '2026-10-15 19:43:44', '2026-10-15 21:43:50'),
(23, 'abenjosefina0018', NULL, NULL, 0, '$2y$10$0IcUwd1fmyWOmWn09IzBy.rKhS8KiwyMRcwBm6sOZ0oZ2HYZJDYC6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:51:27', '2026-10-15 19:51:27', '2026-10-15 21:51:36'),
(24, 'mariaelenaginoo0019', NULL, NULL, 0, '$2y$10$7LYEH1MhC5XSuUcNT4a5SOy.c91gVnqPvzxyHmmsvi/K/Dhu5xmd.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:52:01', '2026-10-15 19:52:01', '2026-10-15 21:52:26'),
(25, 'gloriasumera0020', NULL, NULL, 0, '$2y$10$iLlV2iYW6nYYPYseXe/7m.QpaDal6NlggYKF9fgwioHMg86yM.SKG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:53:09', '2026-10-15 19:53:09', '2026-10-15 21:53:09'),
(26, 'ericsonvelasco0021', NULL, NULL, 0, '$2y$10$MojkyjSmEEausQwvC2vXs.BnRJl33MtUQDTO.9gMsAUdHjE2YnWLS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:53:44', '2026-10-15 19:53:44', '2026-10-15 21:53:46'),
(27, 'doloresalo0022', NULL, NULL, 0, '$2y$10$RQukC4Pf6mddR8X5WLOdw.NFSe9FzWI9DE0z.e7JCZtSYqKczH/v.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:54:13', '2026-10-15 19:54:13', '2026-10-15 21:54:19'),
(28, 'robindeborja0023', NULL, NULL, 0, '$2y$10$AFZ0u.wqAqFdSvGNnyJLw..AzoNHtx/gRMyIeUSsJxvzymUjk9GNa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:55:19', '2026-10-15 19:55:19', '2026-10-15 21:55:22'),
(29, 'dewyboquiron0024', NULL, NULL, 0, '$2y$10$VZRGBvIG.3K75cKWmxUMiO9EXHQ5g2Ib68kAzjOLWBDQFZES6t0M2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:55:47', '2026-10-15 19:55:47', '2026-10-15 21:55:47'),
(30, 'geraldtamayo0025', NULL, NULL, 0, '$2y$10$SXDU0mK7Sv0vy4LcIf4cLuDkfpnLYeam5UT.bJrvNWuY5seth43Xq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:56:11', '2026-10-15 19:56:11', '2026-10-15 21:56:26'),
(31, 'rudynirona0026', NULL, NULL, 0, '$2y$10$e/QZnfl5JmVv7.4ZYaK1lOW30y/P0juc1rR2GGTatvoIC1RxfLogG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:56:40', '2026-10-15 19:56:40', '2026-10-15 21:56:53'),
(32, 'cabreradecedrio0027', NULL, NULL, 0, '$2y$10$w.WxD9j0fur8QhhxpEGkleknKzhgRrBukDX0HVOylhoInBNgHhs1m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:56:50', '2026-10-15 19:56:50', '2026-10-15 21:56:53'),
(33, 'shirleyjesusvelasco0028', NULL, NULL, 0, '$2y$10$7vpp.zs78nM4KuN/Qzauoef2QE1vACt2qA.CaDc25sq99juDzLccK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:57:23', '2026-10-15 19:57:23', '2026-10-15 21:57:28'),
(34, 'dolorescrisostomo0029', NULL, NULL, 0, '$2y$10$fWSEw4XvHpdhQptf8yxBLeA/xeCAtHPGWqRwucQ.2RuNbJAkSuW42', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:57:46', '2026-10-15 19:57:46', '2026-10-15 21:57:47'),
(35, 'anthonyteves0030', NULL, NULL, 0, '$2y$10$EDwPrbwk4Vb2IdLibNPufuS4cM/x6UT7EztVtxxJSIRDnJdMSR7qa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:58:00', '2026-10-15 19:58:00', '2026-10-15 21:58:11'),
(36, 'jimmysantos0031', NULL, NULL, 0, '$2y$10$a8GgqI7M.GC5aiA6Av4WeuN6jm7r5BS6025bP4EPXGnl6B2112Bw.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:58:31', '2026-10-15 19:58:31', '2026-10-15 21:58:32'),
(37, 'hazmeinsalinas0032', NULL, NULL, 0, '$2y$10$.YwwTjqjUbtAuo7P2wBOGerUZYsJKnBu7NKXEQVUXukC0nbRqmPT.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:58:36', '2026-10-15 19:58:36', '2026-10-15 21:58:56'),
(38, 'aginaldo0033', NULL, NULL, 0, '$2y$10$jYrQ2vK0llKfFrHPZkwC1OTMh7YLi0RIsuaD./eH5Avm7/BmcRzvK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:59:02', '2026-10-15 19:59:02', '2026-10-15 21:59:16'),
(39, 'markschwab0034', NULL, NULL, 0, '$2y$10$L2K4Sy69tHeaVWxL4uptBud9xZ7DOR5iv.aZIXxdguZUGLpoe8Q2O', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:59:25', '2026-10-15 19:59:25', '2026-10-15 21:59:37'),
(40, 'honestonunag0035', NULL, NULL, 0, '$2y$10$gy8ZRc/l6HPlN.pTHJvf3ezr5SEbCg7AguFx4kZBOu9Dlc1NksVEG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:59:51', '2026-10-15 19:59:51', '2026-10-15 22:00:01'),
(41, 'virginiavergara0036', NULL, NULL, 0, '$2y$10$OnZej/7O7SkuTYeIN8LeOuz0sxuRd0CLnItgDe.ZB0aKyv0.ASd.S', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 21:59:53', '2026-10-15 19:59:53', '2026-10-15 22:00:01'),
(42, 'ronaldbenusa0037', NULL, NULL, 0, '$2y$10$REqnE4EA5TNL.ZxhdKqsN.u5hxftZt8g6dG3gMNevZ0Smh8FOi.ti', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:00:14', '2026-10-15 20:00:14', '2026-10-15 22:00:35'),
(43, 'rossanocharmaineabata0038', NULL, NULL, 0, '$2y$10$X.rpen3wtPrpr86wMZgObeJTg8kdqnES5wvmryryrJLTc89QxkLQe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:00:16', '2026-10-15 20:00:16', '2026-10-15 22:00:35'),
(44, 'rosearielyanga0039', NULL, NULL, 0, '$2y$10$JL8PEWWUn3IL9Pjv6M85y.3n3ueOcMPPiHGGZR.iaeiZPh/VKEm/C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:00:41', '2026-10-15 20:00:41', '2026-10-15 22:01:16'),
(45, 'maureciobatas0040', NULL, NULL, 0, '$2y$10$JDfaIk7uwGC300ZOdi36Uu/0x/Ov37fmajn0ok7NEfJzy3XujEdki', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:01:12', '2026-10-15 20:01:12', '2026-10-15 22:01:16'),
(46, 'johnmarkcamigla0041', NULL, NULL, 0, '$2y$10$8UFe28REgR/NYg2j8Jr78.ZZaImsikC3cpuXl5P5f3dVaKCfH/PYG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:01:54', '2026-10-15 20:01:54', '2026-10-15 22:02:00'),
(47, 'ninohernandez0042', NULL, NULL, 0, '$2y$10$7NWXi3PTcyn0jh9/rpu2BezcafluF8Z4kl2P60e1xLVfe89qNjyrW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:02:26', '2026-10-15 20:02:26', '2026-10-15 22:02:28'),
(48, 'sandrasumagaysay0043', NULL, NULL, 0, '$2y$10$U76fdlt.FpWPFWBlzWwWp.phRsWwSgOuhcGQPa2EpRUvObkFG4Pqe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:02:51', '2026-10-15 20:02:51', '2026-10-15 22:03:01'),
(49, 'helenbuena0044', NULL, NULL, 0, '$2y$10$RfgcNOZcKW.6boWNaq1AWOCUo9OylVBy.AAKknXlPYOrJj9QAmPmS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:03:01', '2026-10-15 20:03:01', '2026-10-15 22:03:01'),
(50, 'jennifergonong0045', NULL, NULL, 0, '$2y$10$wlbB1SUDeBCusAir6sJJXu/7fRg7JRiLgZO6ifHMPe6AvGHqN4H3S', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:04:27', '2026-10-15 20:04:27', '2026-10-15 22:04:27'),
(51, 'judydelgado0046', NULL, NULL, 0, '$2y$10$/L0rB7kN9zAJhZYlqM0p/OgSjKbeHNy/TBot3hFjrvu3tP/aee8We', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:04:50', '2026-10-15 20:04:50', '2026-10-15 22:04:54'),
(52, 'ardomingoa0047', NULL, NULL, 0, '$2y$10$gGAvxhn3R5IZVJN.mQVwbeAUbBcIeLtKOVZP6rHsVSKJkgfAP0Q/G', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:05:03', '2026-10-15 20:05:03', '2026-10-15 22:05:28'),
(53, 'verenderbhatia0048', NULL, NULL, 0, '$2y$10$bCKL5u8zWg4mDQ47PWEwg.KJbCEQZ72y9w.4k9IV6vm7gr5MQ0VQ.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:05:14', '2026-10-15 20:05:14', '2026-10-15 22:05:28'),
(54, 'jinnytutorlorenzo0049', NULL, NULL, 0, '$2y$10$E7wz2mOJ/LYZLh2rMFX3GOYtE/jn1RSQUYcgw40wxBBcBO1P0fFt.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:05:27', '2026-10-15 20:05:27', '2026-10-15 22:05:28'),
(55, 'micohgerardnguid0050', NULL, NULL, 0, '$2y$10$heyc8JfRCc/EvOo9Mu3sFuuQXRG6J94nDDBSLGhjpcIXDE86QoxXC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:06:00', '2026-10-15 20:06:00', '2026-10-15 22:06:23'),
(56, 'shirleymendoza0051', NULL, NULL, 0, '$2y$10$ulhWgE1whJv0490ej64RmOU6BToCIkmLPC4YZhWFV.CaQR0W6Zc3G', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:06:31', '2026-10-15 20:06:31', '2026-10-15 22:07:06'),
(57, 'grefielcahel0052', NULL, NULL, 0, '$2y$10$GEWx5bsKbbx0JVrfwebH2uB51WPbtZ2ftOA5NecjiTB/d7FpWqvbi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:07:02', '2026-10-15 20:07:02', '2026-10-15 22:07:06'),
(58, 'jamesagawa0053', NULL, NULL, 0, '$2y$10$Pb5T9G.7J9bWIYir21YN9Oa8i3pFzUP4POL6mxAK35wNt1RDV.C2K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:07:05', '2026-10-15 20:07:05', '2026-10-15 22:07:06'),
(59, 'glenasas0054', NULL, NULL, 0, '$2y$10$w4yzKNoqvgrPAkwzJ7/aCOWtOJmgRHhRNCD.3zz0AxAJ6jcMGGs1K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:07:21', '2026-10-15 20:07:21', '2026-10-15 22:07:51'),
(60, 'rogeliobautista0055', NULL, NULL, 0, '$2y$10$3o/Y5CWfXqWf7WbYiLZI5.gkqgz9S2ULHvWYq3ZJ9RcScvWNoSW92', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:07:40', '2026-10-15 20:07:40', '2026-10-15 22:07:51'),
(61, 'dennischoi0056', NULL, NULL, 0, '$2y$10$z9bz//5.e7W9RjqrMooIt.wtEDPWnhXzdQNPPrGDxrJEBZGtDsVxm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:07:40', '2026-10-15 20:07:40', '2026-10-15 22:07:51'),
(62, 'julietgundan0057', NULL, NULL, 0, '$2y$10$6q84Awf0ADwg0ZAYUa6dLe/QVCDkJLaPt.PGnleu5jfUuniOOdFcO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:07:55', '2026-10-15 20:07:55', '2026-10-15 22:08:27'),
(63, 'marlenrazon0058', NULL, NULL, 0, '$2y$10$9GiuYGbndg6yYblxsSiqyO1fa9LvkDUuSIbNRVeKhbv1Ln5E9PFba', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:08:05', '2026-10-15 20:08:05', '2026-10-15 22:08:27'),
(64, 'julietborja0059', NULL, NULL, 0, '$2y$10$iCim9.e5HbkpL/s1Xcgp6O5IYgKK.m0.gOjVxC48cVd..xHRiH/ka', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:08:24', '2026-10-15 20:08:24', '2026-10-15 22:08:27'),
(65, 'ramonchua0060', NULL, NULL, 0, '$2y$10$xKNuhTXD7SA/DxviqNKl8OVTPropbNMVXuSSEh68W8umUgmAhCRMi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:09:04', '2026-10-15 20:09:04', '2026-10-15 22:09:05'),
(66, 'antonneitequirafu0061', NULL, NULL, 0, '$2y$10$.vKuC.3EivYovL8zWMxDG.GVbCrFVmZma31ZIVX0XTUThM/Jd8fvi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:09:28', '2026-10-15 20:09:28', '2026-10-15 22:09:56'),
(67, 'ronaldrobeles0062', NULL, NULL, 0, '$2y$10$X0U7CKo5cla1/eLr.DEQru/DiW2PEvp5SbiEPfmvBjUZWpu4NHuQ2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:09:35', '2026-10-15 20:09:35', '2026-10-15 22:09:56'),
(68, 'francistan0063', NULL, NULL, 0, '$2y$10$VxiCD3feul1lN3KpF/ZN1e/KM1bKto977dyO27u6Zg/yf5uHo.hX2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:09:52', '2026-10-15 20:09:52', '2026-10-15 22:09:56'),
(69, 'elenaalcantara0064', NULL, NULL, 0, '$2y$10$vuQfMTSHX4S/83uoQdqOP.jOYhG2yN7ygIG0y0bopmMFHPo5v3qDS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:10:00', '2026-10-15 20:10:00', '2026-10-15 22:10:22'),
(70, 'robertreal0065', NULL, NULL, 0, '$2y$10$PO291rJuM5rpXbyUzPieIegbHlGT/n.ptWYpTpvznQg7q1hgV8SNG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:10:22', '2026-10-15 20:10:22', '2026-10-15 22:10:22'),
(71, 'juangerardoledonio0066', NULL, NULL, 0, '$2y$10$MLNZRozKNZr6Vt7/MJsAGuVLr2hKS/dsEY2.8CJbDgDMMwqVymHPq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:10:39', '2026-10-15 20:10:39', '2026-10-15 22:10:41'),
(72, 'richarddaryl0067', NULL, NULL, 0, '$2y$10$D9OqkuvDnFfLL8fj8/1OEO7jr9UFFB.QfKDeTg3XeJyiEpFkqTnjO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:11:25', '2026-10-15 20:11:25', '2026-10-15 22:11:29'),
(73, 'evelynmanangan0068', NULL, NULL, 0, '$2y$10$AOngwvVAtm7ic2AFTE2v0eAszjDql8Y5o.SeAhUCgDyMa/hC6Gp2y', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:11:32', '2026-10-15 20:11:32', '2026-10-15 22:11:40'),
(74, 'manuelang0069', NULL, NULL, 0, '$2y$10$QswOHxcevcqednNXc6zIJOF8NEmHrbPnRnrWrDSu4v/WLCizCqpxu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:12:03', '2026-10-15 20:12:03', '2026-10-15 22:12:05'),
(75, 'wilburagonias0070', NULL, NULL, 0, '$2y$10$C6dzT10Fz/x7.QiO2iXM8eKJMJyIaNZS5ZGC.CLxHKOlM8nYXdL1e', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:12:04', '2026-10-15 20:12:04', '2026-10-15 22:12:05'),
(76, 'auroraborra0071', NULL, NULL, 0, '$2y$10$gxjBdMU9sowZzWmHlm82uumekU6a5xC.1gR1H9rl2biS4jTDSndRW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:12:28', '2026-10-15 20:12:28', '2026-10-15 22:13:04'),
(77, 'robertcondat0072', NULL, NULL, 0, '$2y$10$KPEssoR8qleDJ39sPbZGDOsL1Jua7sjCUzLN5UxR2n39PmKJDyl76', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:12:40', '2026-10-15 20:12:40', '2026-10-15 22:13:04'),
(78, 'elenaalcantara0073', NULL, NULL, 0, '$2y$10$2V0TNdZCQm5mnUO3AAEn2.vHAiANRLxd5dL8lXWOJ3.W4.Vwf7K1S', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:13:59', '2026-10-15 20:13:59', '2026-10-15 22:14:01'),
(79, 'albertogapas0074', NULL, NULL, 0, '$2y$10$aiMrXulgsyRNTnt/41UNrO8Y546cfi9OEPiCefcfBMECaorJ6iT9K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:14:35', '2026-10-15 20:14:35', '2026-10-15 22:14:44'),
(80, 'ameliavitaliano0075', NULL, NULL, 0, '$2y$10$fZ1Er4poQG.ZvZjk80ubdOEWtDZ9VuZGxljfmnrpyHv2SKaFnovMK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:15:12', '2026-10-15 20:15:12', '2026-10-15 22:15:13'),
(81, 'alexisjuridico0076', NULL, NULL, 0, '$2y$10$bk9oYsZGF/B3O7VbZSPNH.bNB0lKHhaLUzPjmGlSv0jjoxZWipY9u', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:16:07', '2026-10-15 20:16:07', '2026-10-15 22:16:14'),
(82, 'teresitaseelin0077', NULL, NULL, 0, '$2y$10$.34HJ01h5s2zOK2ZkSS1P.K.YXbrwfE61dhxhdVC5tCS8K5QeeKo2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:16:34', '2026-10-15 20:16:34', '2026-10-15 22:16:57'),
(83, 'mennardaglipay0078', NULL, NULL, 0, '$2y$10$3d3ZXaueT29kV4pQEYUJDeXQnDCRHTEttpaS4kzGDb2UR5XO3F.Q.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:17:14', '2026-10-15 20:17:14', '2026-10-15 22:17:14'),
(84, 'vincentagcaoili0079', NULL, NULL, 0, '$2y$10$YOVyO1WWS7iZIVmRt9NYHuw44ZICFMtx95BhRnoT636vcvH7PgCNm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:17:54', '2026-10-15 20:17:54', '2026-10-15 22:18:15'),
(85, 'alexisjuridico0080', NULL, NULL, 0, '$2y$10$wm2kS2wI1MwNxqiqN/rzquHi/MPX9EMZdJuoYkzhGg.oGtmJQobV6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:17:56', '2026-10-15 20:17:56', '2026-10-15 22:18:15'),
(86, 'mirasolchan0081', NULL, NULL, 0, '$2y$10$.odgLPAp87EbyV/rSZfAeOLnW6sFUy0Be0YmWT/1tE0XlTJI7a1vO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:18:09', '2026-10-15 20:18:09', '2026-10-15 22:18:15'),
(87, 'jomarcordero0082', NULL, NULL, 0, '$2y$10$1q17Bewdt636AMI0VAw9gumIzUHHyB9vSotyadfXG0rX9RAEPakj.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:18:16', '2026-10-15 20:18:16', '2026-10-15 22:18:22'),
(88, 'marygracevillabos0083', NULL, NULL, 0, '$2y$10$3F/sMyA82bPjzIkrfEu/JO5tPe4mD2dspoYai0JiyL/4TIOa0dTOu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:18:26', '2026-10-15 20:18:26', '2026-10-15 22:18:28'),
(89, 'antonioquillo0084', NULL, NULL, 0, '$2y$10$WHODfa.AoB5IiWOtexIWve7vhkt0t1u34IL3Fqjqkl9j5x8nqDwh2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:18:48', '2026-10-15 20:18:48', '2026-10-15 22:19:19'),
(90, 'noelcordero0085', NULL, NULL, 0, '$2y$10$4PK/Lfkb1bpkPxCLRWkQzOxg7FrXfsI4HEqarNxsUyBEZQ/Rj6B2i', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:18:52', '2026-10-15 20:18:52', '2026-10-15 22:19:19'),
(91, 'perpetuailagan0086', NULL, NULL, 0, '$2y$10$DvkkzkxGcvToiRo3GLdrm.W6GgFnXEhwN8veCZCX2vywnIHjMPIcK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:19:04', '2026-10-15 20:19:04', '2026-10-15 22:19:19'),
(92, 'cristitoperez0087', NULL, NULL, 0, '$2y$10$a1UQIyW7mXq27/Avlcn8YeBddIFEZRbRNX/HYcLMtGBG7Qb7UMnW2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:19:20', '2026-10-15 20:19:20', '2026-10-15 22:19:20'),
(93, 'ricksondayag0088', NULL, NULL, 0, '$2y$10$fsOz0.lNYq8yoT5OPPX2qO4DKV9/ETN9KY4fzInUN8LTSrlqDjBl6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:19:33', '2026-10-15 20:19:33', '2026-10-15 22:19:39'),
(94, 'jesussantos0089', NULL, NULL, 0, '$2y$10$8X0xMrJc1gg8OUwYVhvquuTFx4Lc.YuWuascRlv.VkZLsNhw5RIre', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:19:37', '2026-10-15 20:19:37', '2026-10-15 22:19:39'),
(95, 'corneliomerioles0090', NULL, NULL, 0, '$2y$10$w9cKEtDunlB.W1wyfoTTteae1U4ZAT2TchfUYy01KE3B/V8pF8wQ.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:20:06', '2026-10-15 20:20:06', '2026-10-15 22:20:06'),
(96, 'evelynmanangan0091', NULL, NULL, 0, '$2y$10$QvoVEVVQyekvEGyNZBWZt.W8HCEg3i7Ml9UTZNF.5v6v3gVrupwdK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:20:39', '2026-10-15 20:20:39', '2026-10-15 22:20:51'),
(97, 'bernadettemanez0092', NULL, NULL, 0, '$2y$10$gh4XvFHjLUxlJoO7QbcsieaLymmpMcLMRnOh0glu23Dn4UnGz/Xmq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:20:41', '2026-10-15 20:20:41', '2026-10-15 22:20:51'),
(98, 'efrensumagit0093', NULL, NULL, 0, '$2y$10$6G1xcEZxnK9jGWqH0WTs6OnKO/GAOJz9HGEBWVD90.2aN8WsKsUwO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:21:13', '2026-10-15 20:21:13', '2026-10-15 22:21:39'),
(99, 'mamercedesllobrera0094', NULL, NULL, 0, '$2y$10$s9ENvGE8QJ88610z7A0KKO3mWFZcIs99Wc66E5bEjrfD/lpTZX7j.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:21:14', '2026-10-15 20:21:14', '2026-10-15 22:21:39'),
(100, 'vergiematalicia0095', NULL, NULL, 0, '$2y$10$SIadhaXMpiR9ul150wpATuC.eM6/etDv4fmkYRc9rmBUnvtPPzlqe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:21:34', '2026-10-15 20:21:34', '2026-10-15 22:21:39'),
(101, 'rubenmelendrez0096', NULL, NULL, 0, '$2y$10$HFO7/cA9w.sptlnczrb.g.fqESTOgqRnguXuw9JxYk49EaEvZ4kB2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:21:54', '2026-10-15 20:21:54', '2026-10-15 22:22:14'),
(102, 'jeralynvcinnela0097', NULL, NULL, 0, '$2y$10$ZrzcsXhYD7C5AeeQzv7rhemQbokwNnzLQMfCS1/ymo8WeUMRgmdC.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:21:54', '2026-10-15 20:21:54', '2026-10-15 22:22:14'),
(103, 'rubenotbo0098', NULL, NULL, 0, '$2y$10$s8df38YPr88Zagve8ILd7.Zi2pcG8frOfQM0ZQRa4sZzt.0NHXO36', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:22:08', '2026-10-15 20:22:08', '2026-10-15 22:22:14'),
(104, 'jeeneetutor0099', NULL, NULL, 0, '$2y$10$kWaI1T3J2nrB/z25x5ecweGZtWcwQ16yw5fq7R36HUROZfsJbIN/.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:22:23', '2026-10-15 20:22:23', '2026-10-15 22:22:27'),
(105, 'villamorgatchalian0100', NULL, NULL, 0, '$2y$10$Nr/t4sEwkkmNHN3CgDDPPOqG1ntT.KYDoJ2Kt76ea5m6XtU8ZdMpK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:22:25', '2026-10-15 20:22:25', '2026-10-15 22:22:27'),
(106, 'lucilarecio0101', NULL, NULL, 0, '$2y$10$TB.95ufpA7qp4rUEsp3Z3uDW2qr8GbZoHNTZNPtSwEO9n2coygZBu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:22:50', '2026-10-15 20:22:50', '2026-10-15 22:22:58'),
(107, 'joeycaballero0102', NULL, NULL, 0, '$2y$10$T3/wLbBN5xrNc10hTap86u.QBc4h0bisIYFZ2CsuL.jdxi5Jq7kQa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:23:01', '2026-10-15 20:23:01', '2026-10-15 22:23:06'),
(108, 'gammavelasco0103', NULL, NULL, 0, '$2y$10$tnPY7IQMCqFnJUIRKJBheuN1oVOx.VtujqhgTgI3bpQquoyANOPPS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:23:07', '2026-10-15 20:23:07', '2026-10-15 22:23:07'),
(109, 'andymariposque0104', NULL, NULL, 0, '$2y$10$LHWXPDE759kQcpPKCYspauxn0t1AkjQRSKucGTBBbllA8A5/rDK/y', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:23:28', '2026-10-15 20:23:28', '2026-10-15 22:23:28'),
(110, 'richardsy0105', NULL, NULL, 0, '$2y$10$XlGkJCZ65NrOKypGtcZXw.ECORzBqHLmeHJaW9OTemZohonEoiEhK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:23:29', '2026-10-15 20:23:29', '2026-10-15 22:23:29'),
(111, 'rechieperocho0106', NULL, NULL, 0, '$2y$10$loSIqlb7BXA3oz7i/pwYlum42yYRuc5eCBwsD0aMpnYO8e/76ikSu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:24:06', '2026-10-15 20:24:06', '2026-10-15 22:24:23'),
(112, 'paolorodeo0107', NULL, NULL, 0, '$2y$10$QaYB7/yNGw0mkZgXPzbjOeOGsHbmKHq4tYtlfK3dBibVniuOX20iu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:24:07', '2026-10-15 20:24:07', '2026-10-15 22:24:23'),
(113, 'pedronevarra0108', NULL, NULL, 0, '$2y$10$E2FiWF4R7p.j4EMexCsHouwInEt5BZW0OtFjTtTfKvs.2iNYwISza', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:24:36', '2026-10-15 20:24:36', '2026-10-15 22:24:50'),
(114, 'manuelducat0109', NULL, NULL, 0, '$2y$10$G6o5jlHU6aAmhEL/EPXRG.Qh4nho3/LW6QIpCUG1gGXfXhsrYTTGm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:25:15', '2026-10-15 20:25:15', '2026-10-15 22:25:24'),
(115, 'eromdabontigao0110', NULL, NULL, 0, '$2y$10$4wD/Yw7RzzYMGv4MihSiqemSZfPlzYx6SmvBFHIgKKMRQ/CjeoYMW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:25:41', '2026-10-15 20:25:41', '2026-10-15 22:26:08'),
(116, 'remediospabila0111', NULL, NULL, 0, '$2y$10$PcBl5/ZcLFwZSGdzty7z8.XCSGJip8JGeZUwh3mSTL0PIa7dxRbye', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:26:47', '2026-10-15 20:26:47', '2026-10-15 22:27:04'),
(117, 'annabelrosario0112', NULL, NULL, 0, '$2y$10$WddhLbD2FbyQM6.cs7FAzep18WyFSxUDSwIhrsYImUOPO6O6EzuN.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:26:56', '2026-10-15 20:26:56', '2026-10-15 22:27:04'),
(118, 'celypalac0113', NULL, NULL, 0, '$2y$10$Im1fi/jIfEtCEmkFeJwLROgftiOfHxhEX2KfbJ45D8o.9i46El9Cy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:27:04', '2026-10-15 20:27:04', '2026-10-15 22:27:04'),
(119, 'joeymarron0114', NULL, NULL, 0, '$2y$10$YAy0O6jQRnD6Tm2BbSbyYeeuAmDjet7CWQ7GKz4CRlnXh3Ck44Kqu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:27:39', '2026-10-15 20:27:39', '2026-10-15 22:27:40'),
(120, 'domingafatton0115', NULL, NULL, 0, '$2y$10$Z40yAlbNNpvo0n.awRLlEe5okK9P9QmSe8BLHUBbFZwmUOQ0lTh8C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:27:55', '2026-10-15 20:27:55', '2026-10-15 22:28:01'),
(121, 'zenaidavaldez0116', NULL, NULL, 0, '$2y$10$SZSSHnN1c8BJ8yomzGKDl.bqwzfH7WyOAF6fmZjA/Bec2F1oCGaJm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:28:07', '2026-10-15 20:28:07', '2026-10-15 22:28:19'),
(122, 'vickyvergara0117', NULL, NULL, 0, '$2y$10$kT0LOq.IJ1lFCaFTntBVGu8nkv0eAnS8e7ftCKV36LhbfUUAaWO66', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:28:31', '2026-10-15 20:28:31', '2026-10-15 22:28:38'),
(123, 'ginacabaluna0118', NULL, NULL, 0, '$2y$10$fdG2WHgcPLshU9OtcWMWQugYxlA537KeeFd1laH358Pr.eZbwrNRe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:28:35', '2026-10-15 20:28:35', '2026-10-15 22:28:38'),
(124, 'gialo0119', NULL, NULL, 0, '$2y$10$vt0uJJxITtpzz2NKCF84KOUupcSsOK3bM4wQl6ge7S5oslxqSKy5K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:28:47', '2026-10-15 20:28:47', '2026-10-15 22:28:51'),
(125, 'efrenangelo0120', NULL, NULL, 0, '$2y$10$0x7JQc.SEm7.uPc4z8vttO/WPsl12QVgYoxiKc6lEunr4ZZfvE8.a', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:28:58', '2026-10-15 20:28:58', '2026-10-15 22:28:58'),
(126, 'eddieramos0121', NULL, NULL, 0, '$2y$10$g/KH4cG1KEyJwNESl5XuTuO3WMq.T2aXqQO5QpQHa8wfDB5/1.1vm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:29:23', '2026-10-15 20:29:23', '2026-10-15 22:29:24'),
(127, 'galloimelda0122', NULL, NULL, 0, '$2y$10$cxBvyXHDFENOlLa0L4SuZugfj48aeoFbgAXXQurDAxn1NcOmoovFi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:29:26', '2026-10-15 20:29:26', '2026-10-15 22:29:44'),
(128, 'yollymolas0123', NULL, NULL, 0, '$2y$10$ju/9Urz8j4e80YV6wB.wMuGAB.OcNsRQUail93dc3k0FBMocNbQdW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:30:07', '2026-10-15 20:30:07', '2026-10-15 22:30:11'),
(129, 'roselilymoris0124', NULL, NULL, 0, '$2y$10$iFH00cgqWOi.Amp8O3gNtOTaW61MPNUzX5hrTGxDGJslY8Ao/yWjG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:30:47', '2026-10-15 20:30:47', '2026-10-15 22:30:58'),
(130, 'linacorpuz0125', NULL, NULL, 0, '$2y$10$lA0ZwNmaRQHnqueP6S8pRuUaYeTh4uDuvPA6LalA4Nl4kt.g3o3hC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:31:09', '2026-10-15 20:31:09', '2026-10-15 22:31:16'),
(131, 'alexisjuridico0126', NULL, NULL, 0, '$2y$10$uRVT.4y5riB8MPYvf3s90.kzoSwWlUqa/xNiwT2hQKCUjmFQ/mJbC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:31:32', '2026-10-15 20:31:32', '2026-10-15 22:31:46'),
(132, 'annebelenalensuela0127', NULL, NULL, 0, '$2y$10$SsgWvFsje/zaSoMEtrJodeIy7MqHIuXa89xZocMtIGN3GVIjo0Rg2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:31:58', '2026-10-15 20:31:58', '2026-10-15 22:32:39'),
(133, 'vizmindamiguel0128', NULL, NULL, 0, '$2y$10$XN8E4V.da0ozjzoaeF5/kO1l3QbCr/5PonM73tUXHWkJzRSK.QnJK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:32:21', '2026-10-15 20:32:21', '2026-10-15 22:32:39'),
(134, 'evabrillo0129', NULL, NULL, 0, '$2y$10$esMyoWQfmcwbA4NK6dmJ2OzbhMB40KMCxB2leg/6XYcx8pufkNsga', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:32:46', '2026-10-15 20:32:46', '2026-10-15 22:32:48'),
(135, 'manueltolentino0130', NULL, NULL, 0, '$2y$10$R7Ryw6FSu5EN2Doiaw5XRObsLhbElyO7cKxWzfK3ga0WWqiZUePw2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:33:08', '2026-10-15 20:33:08', '2026-10-15 22:33:27'),
(136, 'anamariedelavega0131', NULL, NULL, 0, '$2y$10$jpqT6Dwnuiov1cwE3xGkkuU/ARDl5xAao4tLLOd8Yoghts.tlOgLq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:33:14', '2026-10-15 20:33:14', '2026-10-15 22:33:27'),
(137, 'manueltio0132', NULL, NULL, 0, '$2y$10$esw3Veb8A1SIuq1jV/l3WOW0JoMzx/tjfs39ldGkehloFQRTAuAOC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:33:29', '2026-10-15 20:33:29', '2026-10-16 02:10:53'),
(138, 'irishuy0133', NULL, NULL, 0, '$2y$10$sSdkA9e0KANS4pt1a4IfYe8G5/c8H62dPpoD/KLLNeJgw6sR42fCO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:33:43', '2026-10-15 20:33:43', '2026-10-16 02:10:53'),
(139, 'josephdeluna0134', NULL, NULL, 0, '$2y$10$aBT/FZLYk8yk4QsMbSh9suN.XLXMaW7L4pHjivnzOna2BM6J198WW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:33:44', '2026-10-15 20:33:44', '2026-10-16 02:10:53'),
(140, 'aidaesperanza0135', NULL, NULL, 0, '$2y$10$LiMQIEcwoD/ockMEjbDf.ud4IX0X22CddESrzmV8OeWPevYcwIsAK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:33:58', '2026-10-15 20:33:58', '2026-10-16 02:10:53'),
(141, 'melinadaduya0136', NULL, NULL, 0, '$2y$10$PftdaqEMyj6LlTAGGhtnIuPRJhZE5nKAAN3BNAtvTFZ24PK0Ip3CW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:34:17', '2026-10-15 20:34:17', '2026-10-16 02:10:53'),
(142, 'andyanasco0137', NULL, NULL, 0, '$2y$10$XTXBWMiMRzhlOv3jVsYKCu.r.lRnzV.9tuA94WC6roInZQjYCcGPG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:34:27', '2026-10-15 20:34:27', '2026-10-16 02:10:53'),
(143, 'rosaliaarce0138', NULL, NULL, 0, '$2y$10$Ot0dAgFvo61S7xJVL2j9ienOjubokSdQPJDmr.wqA1f/07kCf8JPK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:34:35', '2026-10-15 20:34:35', '2026-10-16 02:10:53'),
(144, 'marcelosongor0139', NULL, NULL, 0, '$2y$10$RFR8ZxG6LOqq5w9ZWryLR.akTb/2CcQWYBERLzo/yYnS/DnQy/vXC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:34:47', '2026-10-15 20:34:47', '2026-10-16 02:10:53'),
(145, 'lovellekeithgalutan0140', NULL, NULL, 0, '$2y$10$Z0H.As6lsWgYC7w5GgxVs.E2WqmaSn7ROjQEgsjkgfll9V7wdrBIa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:35:03', '2026-10-15 20:35:03', '2026-10-16 02:10:53'),
(146, 'lorenzomagsingit0141', NULL, NULL, 0, '$2y$10$24zY0d3OEDBPCB1eCO5JSuR0FDAQl3bfdoaChjY67yQQUmRS55.IK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:35:13', '2026-10-15 20:35:13', '2026-10-16 02:10:53'),
(147, 'maryannmertopangilinan0142', NULL, NULL, 0, '$2y$10$Zsd.lMRc0b2a7d7ZaLPakOjf5JgT79eMADUi3pAMfbXSYE.QL4qZa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:35:25', '2026-10-15 20:35:25', '2026-10-16 02:10:53'),
(148, 'racheldaolaez0143', NULL, NULL, 0, '$2y$10$mJEolEPiuCr9gV/EVsWAeukDczoqskz22QV.CLPG4fJKByd0YdMQy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:35:40', '2026-10-15 20:35:40', '2026-10-16 02:10:53'),
(149, 'terenciotaloma0144', NULL, NULL, 0, '$2y$10$W2GBCLv1jQeW/g5.Hx5sZeC1h.BzCdQyAf2DwA0Mk5hMqpts1I636', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:35:47', '2026-10-15 20:35:47', '2026-10-16 02:10:53'),
(150, 'limuelisaacpaulo0145', NULL, NULL, 0, '$2y$10$3D0Y70Bm04dLvexCuytC6uKy1trPBBnocyHawc43kZMHS92Yh9n7O', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:35:58', '2026-10-15 20:35:58', '2026-10-16 02:10:53'),
(151, 'winstonconcepcion0146', NULL, NULL, 0, '$2y$10$Sg4Zgh/k2LaYxmNvP2qPk.sUuHzd1/lsLMtRe1g.Sc/QLLShD4ByC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:36:10', '2026-10-15 20:36:10', '2026-10-16 02:10:53'),
(152, 'gervaciochavez0147', NULL, NULL, 0, '$2y$10$ftZB33VFXZjT9GV.6cEXFuP93z3nK6TI89rjfyYhvx0H6Kf14dCk6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:36:17', '2026-10-15 20:36:17', '2026-10-16 02:10:53'),
(153, 'carlospaoloalcodia0148', NULL, NULL, 0, '$2y$10$nOpNw0//XTnEEs3Ij.vHFujR.Mq4jr1JSSdgXRdOll0pkH1TG7hLG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:36:32', '2026-10-15 20:36:32', '2026-10-16 02:10:53'),
(154, 'herberttiulaurel0149', NULL, NULL, 0, '$2y$10$6JDuuBnCWXct/NnVNW48I.aftIb515RfVdo9ww9KR4mKn0gSJ2pZy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:36:34', '2026-10-15 20:36:34', '2026-10-16 02:10:53'),
(155, 'arseniomancera0150', NULL, NULL, 0, '$2y$10$jq2V9CGzFn454uiZFfB4.uCQB1z0vLpSaqdWgYm3Zv3v4haR8xo4O', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:36:52', '2026-10-15 20:36:52', '2026-10-16 02:10:53'),
(156, 'candylousalazar0151', NULL, NULL, 0, '$2y$10$nQCWkyClwUenoJ8tRfvuJupozs0kbWfOMTHXVXkZ.ArWPvSrJ3bSi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:37:02', '2026-10-15 20:37:02', '2026-10-16 02:10:53'),
(157, 'normalorenzo0152', NULL, NULL, 0, '$2y$10$UPlXNEKSnpaPQ1Rk93lJVeKhCwHdMeq0C44rKr8zyA3IuREjt2LC.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:37:28', '2026-10-15 20:37:28', '2026-10-16 02:10:53'),
(158, 'luzvimindabangloy0153', NULL, NULL, 0, '$2y$10$/5KRDDZku5FVeoXcACjnHeBF4ig1rJvisxd4dOC1Xb7ghf.hX1f1G', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:37:44', '2026-10-15 20:37:44', '2026-10-16 02:10:53'),
(159, 'abdulhasibhajicosain0154', NULL, NULL, 0, '$2y$10$/qBDidSZkSDcgrZTZ7Yk7uoHc7VgfhClwzZSMKHbqcLYrmvou52hW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:37:48', '2026-10-15 20:37:48', '2026-10-16 02:10:53'),
(160, 'cesaramarillo0155', NULL, NULL, 0, '$2y$10$w4Jdnc8XMn7NtzDTfh/AxOKtMDWy4Cc5n8W9gZv1.fbiCtho9NCry', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:38:10', '2026-10-15 20:38:10', '2026-10-16 02:10:53'),
(161, 'marilyndagdagin0156', NULL, NULL, 0, '$2y$10$x84EkE/keTfez//dFDQBQuFWRF.4vUjFQZMdtLb01EAmDOASCkdGS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:38:22', '2026-10-15 20:38:22', '2026-10-16 02:10:53'),
(162, 'reizamabasa0157', NULL, NULL, 0, '$2y$10$thMQ1O0yScv0ReobFDotyececo3U0HJbarSMKss9O7DRnGjLNurde', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:38:36', '2026-10-15 20:38:36', '2026-10-16 02:10:53'),
(163, 'mrsreyes0158', NULL, NULL, 0, '$2y$10$IwJk6Dl56t20XSfS87ZZn.cWlAqirEn2Vwh6lseLEu.FQ.VEh4K82', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:38:59', '2026-10-15 20:38:59', '2026-10-16 02:10:53'),
(164, 'domingoestabillojr0159', NULL, NULL, 0, '$2y$10$.vv/MTWL5YkybOF61jWcm.TOY1G6cVD1TnzzYa4tm5Lqo8NM.tQnm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:39:00', '2026-10-15 20:39:00', '2026-10-16 02:10:53'),
(165, 'felicidadlopez0160', NULL, NULL, 0, '$2y$10$YBHIOCvsLW8NCe4HR6SnQ.uzKQ/qMu.DdcaEyazTj6FNOcALdHY46', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:39:32', '2026-10-15 20:39:32', '2026-10-16 02:10:53'),
(166, 'edwardbalthazarvdomeyeg0161', NULL, NULL, 0, '$2y$10$mMWMDh3lsn1hv3IPG28aR.NRoGzLyO5EF.AuF9RzINAMKerjCK066', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:40:03', '2026-10-15 20:40:03', '2026-10-16 02:10:53'),
(167, 'gleceriacanlas0162', NULL, NULL, 0, '$2y$10$WjoPCHtuHN57LtZ7z0C6rekueQOh46WHMq.F018/EXqwbwEwO6Kt2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:40:04', '2026-10-15 20:40:04', '2026-10-16 02:10:53'),
(168, 'arwayniandes0163', NULL, NULL, 0, '$2y$10$/qnNz7wvrbxvocIss2OPn.mQX3H7b1vH6XWpwhz3gALo4xnSFPWg.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:40:23', '2026-10-15 20:40:23', '2026-10-16 02:10:53'),
(169, 'celsocachuela0164', NULL, NULL, 0, '$2y$10$oIK9giXMCzVoqvRjvcCtdu5dY9BxRNpoNUm7gYBWB7qjH8Mttm2x6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:40:43', '2026-10-15 20:40:43', '2026-10-16 02:10:53'),
(170, 'cynthiaco0165', NULL, NULL, 0, '$2y$10$1fbZgru5i6DRoX5kqMlNVuhnDEAgHuTLihzu.K4wB2z03y/j7dHae', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:40:51', '2026-10-15 20:40:51', '2026-10-16 02:10:53'),
(171, 'azenithllobrera0166', NULL, NULL, 0, '$2y$10$Se6HFwp3x.LlhOnG84r2G.EQxhOd3F2DrNYVC/3Pch9Y/rPI3MCBe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:41:24', '2026-10-15 20:41:24', '2026-10-16 02:10:53'),
(172, 'estanislaomaribelcorpuz0167', NULL, NULL, 0, '$2y$10$d8tvMFnzIrCpHAVU0b7DOeTRxnbIhlNHZCoy0gxT6UvWNVCF79kUS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:41:30', '2026-10-15 20:41:30', '2026-10-16 02:10:53'),
(173, 'elenaalcantara0168', NULL, NULL, 0, '$2y$10$LuNamwCzc1MosOS7akY7A.tnzRgxTwmJ8xdYywrP.GVC7076b4gRS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:41:55', '2026-10-15 20:41:55', '2026-10-16 02:10:53'),
(174, 'robertooyam0169', NULL, NULL, 0, '$2y$10$ag2pLVT8a4qqV6M0jU10duNzDw45uoCCwuYmhEx8AhFhLi/ybnKHy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:42:21', '2026-10-15 20:42:21', '2026-10-16 02:10:53'),
(175, 'stephanielomuntod0170', NULL, NULL, 0, '$2y$10$8Z07ErGFWBcpeWpEh3waHugsvfWxFM5oOKWTGavUplmkP9.XY4z4K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:42:46', '2026-10-15 20:42:46', '2026-10-16 02:10:53'),
(176, 'royallanloreto0171', NULL, NULL, 0, '$2y$10$z52gHEFu.Nu3BDTWThq41egw61oShsvcsRqPoAMYPXIAI.1jQyM3u', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:42:59', '2026-10-15 20:42:59', '2026-10-16 02:10:53'),
(177, 'marygracemolina0172', NULL, NULL, 0, '$2y$10$fLYj3bs8cmXLKNI/NVZ5cueA1OlvHrjWXA9zG/u4SQWwDU9qIix9W', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:43:24', '2026-10-15 20:43:24', '2026-10-16 02:10:53'),
(178, 'lolitaloreto0173', NULL, NULL, 0, '$2y$10$sDnFP.6cic57zUXGjq93keoyre4jVMIq18kjZ97.Z.3yf.449rZiS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:43:27', '2026-10-15 20:43:27', '2026-10-16 02:10:53'),
(179, 'evelynmasajo0174', NULL, NULL, 0, '$2y$10$m23VnhZeskWq8f2RdS7Ju.OFvr8mzT8oFFt/bBX7IQJI/ZPF5SwAa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:43:44', '2026-10-15 20:43:44', '2026-10-16 02:10:53'),
(180, 'jerrykitanjr0175', NULL, NULL, 0, '$2y$10$q8jI5bjEM57bKWvXZRLNrOVAuyUajs0yxZcnVmHPm/sqSwfGO812i', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:44:07', '2026-10-15 20:44:07', '2026-10-16 02:10:53'),
(181, 'redencarlo0176', NULL, NULL, 0, '$2y$10$KOmge5omSjdgAwa3X3LeXe/TBQVhed3p1wjJX/frhQJBfU9GJzXpC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:44:35', '2026-10-15 20:44:35', '2026-10-16 02:10:53'),
(182, 'rolandotenio0177', NULL, NULL, 0, '$2y$10$LGwi7dWWFrdhDCrgXQo5Ru7vc7Yoe/rwg/qY1KWqqR0xSecgwmIga', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:45:05', '2026-10-15 20:45:05', '2026-10-16 02:10:53'),
(183, 'marlonrambuyan0178', NULL, NULL, 0, '$2y$10$tShwN9OOewW26YWCBNgU1eS9OJgSZxXvxj651UhjXbizAqqCx0MpS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 22:46:40', '2026-10-15 20:46:40', '2026-10-16 02:10:53'),
(184, 'lindaestropia0179', NULL, NULL, 0, '$2y$10$NDZ6W61pBkTfYyxSFULTdOd891SfOSEFKNZN6DCqR9emirYHqpEs.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:17:28', '2026-10-15 21:17:28', '2026-10-16 02:10:53'),
(185, 'gracereynante0180', NULL, NULL, 0, '$2y$10$UAo5dmccfmOGb.WGwNHc9ucmh4dtOndQX2rykzpTxiAYcDCCP3zji', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:17:52', '2026-10-15 21:17:52', '2026-10-16 02:10:53'),
(186, 'arleneheradura0181', NULL, NULL, 0, '$2y$10$3TW/JwWCiJOL7DokIYvaLOPZYVkiN/ZL52BfAcP/4.r4zxrAWoXYa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:18:35', '2026-10-15 21:18:35', '2026-10-16 02:10:53'),
(187, 'emilyjoves0182', NULL, NULL, 0, '$2y$10$nxjdIp4NYDApe2.0Wsc1hO9YlD0tkFWsb8D6UeBGhOQtCQJvYSos.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:19:16', '2026-10-15 21:19:16', '2026-10-16 02:10:53'),
(188, 'tomasabayan0183', NULL, NULL, 0, '$2y$10$OBip/Hfr6juJaCoaXgb3UueGoKtWLIMZ9aeMlqwEkzGuGZk8y2NM2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:19:19', '2026-10-15 21:19:19', '2026-10-16 02:10:53'),
(189, 'ferdinandjoves0184', NULL, NULL, 0, '$2y$10$/vmoq8HU92hwNFP58.UEluiDx.irnqZ4XIIXJtGXdI8u7vB6S0QQG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:19:38', '2026-10-15 21:19:38', '2026-10-16 02:10:53'),
(190, 'aggarovida0185', NULL, NULL, 0, '$2y$10$eaxbJDut/4ksKti63RLf/u2.RlflDPHMSlmzkpmKyy2YoWZxdlnoC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:19:46', '2026-10-15 21:19:46', '2026-10-16 02:10:53'),
(191, 'carmensarabia0186', NULL, NULL, 0, '$2y$10$dx4fvYfpxjllgkd/jImx3OGRSOkubj1C.3aCrGXMTardHytZTJcR.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:20:12', '2026-10-15 21:20:12', '2026-10-16 02:10:53'),
(192, 'ameliamartinez0187', NULL, NULL, 0, '$2y$10$UHIzzsnjlYyEQLMKq43GU.0ilv.brc3KZY91XFSJ51nRkzqv4lnqO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:20:22', '2026-10-15 21:20:22', '2026-10-16 02:10:53'),
(193, 'janetagcaoili0188', NULL, NULL, 0, '$2y$10$gw95oQXJmnG8iP2SM.EL1eI9dXtgZXFFnFXRBLSxChawuK9IRxOVi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:20:51', '2026-10-15 21:20:51', '2026-10-16 02:10:53'),
(194, 'ednaquilban0189', NULL, NULL, 0, '$2y$10$PcDAJ2SMzd8XLfLy7ME98u/Wdz3DM5123d9Xpw/ST4/fkZRVQxUPa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:20:51', '2026-10-15 21:20:51', '2026-10-16 02:10:53'),
(195, 'elainepalentinos0190', NULL, NULL, 0, '$2y$10$k2nThLQ4aXLfz8El1NVJvugSCbgp4b5VPireo2p88CbdsLN6OGTua', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:21:17', '2026-10-15 21:21:17', '2026-10-16 02:10:53'),
(196, 'ameliamtorres0191', NULL, NULL, 0, '$2y$10$UgTbO3sGo5R79diWRFdSFOamGIZDVX6zRjrIYx2AfeBfpafrlPWmK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:21:28', '2026-10-15 21:21:28', '2026-10-16 02:10:53'),
(197, 'marialudybernardo0192', NULL, NULL, 0, '$2y$10$f9q03GHCRKFleyJ9nRviH.Dn/rqcbwDtbE3e2/bb86HDBW2f9CsMu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:22:09', '2026-10-15 21:22:09', '2026-10-16 02:10:53'),
(198, 'carlosbernardo0193', NULL, NULL, 0, '$2y$10$v2EUrwhA2S9vvKa.RtWWNu4hp2Xg1sxT75VsMkZTHV6Z99WRp5OFa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:22:32', '2026-10-15 21:22:32', '2026-10-16 02:10:53'),
(199, 'rocemillialopezkamiyama0194', NULL, NULL, 0, '$2y$10$vrGeoHmzZLvhSfggGXJFNuRHbju0FBcmg3Vx23dE0rBh/0OYFyoNa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:23:11', '2026-10-15 21:23:11', '2026-10-16 02:10:53'),
(200, 'rosalindoacacio0195', NULL, NULL, 0, '$2y$10$mizCA2kyd5/Gsz8m0yWVTeN45ZrGMuu1GeyHGwIeIF6k4L42X5.LG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:23:46', '2026-10-15 21:23:46', '2026-10-16 02:10:53'),
(201, 'roselyndanginlim0196', NULL, NULL, 0, '$2y$10$nl0cErEW5d/1vOZeaDNVou/4lmJKzFl8iCiIKTXGT6.s2dm8k8Mi2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:24:01', '2026-10-15 21:24:01', '2026-10-16 02:10:53'),
(202, 'attyvincentventus0197', NULL, NULL, 0, '$2y$10$HmTaqf6FB7DUU6fNXKOC8ux7Eo9R5tryE2qUFQO4VM6PDgoBJ7Hsy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:24:32', '2026-10-15 21:24:32', '2026-10-16 02:10:53'),
(203, 'aurorarosario0198', NULL, NULL, 0, '$2y$10$ZeqspdoTev1LgENZow.iBOSxugl12WHLtwxfrd/4Ko0Hhe/uCGv3K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:25:40', '2026-10-15 21:25:40', '2026-10-16 02:10:53'),
(204, 'jeejeevillegas0199', NULL, NULL, 0, '$2y$10$EZkw38MIfw9BdSIAwfmsteCkDRl9UTrpODU0fDSQ.W0Ss13TYA7AG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:27:02', '2026-10-15 21:27:02', '2026-10-16 02:10:53'),
(205, 'lightoftheworld0200', NULL, NULL, 0, '$2y$10$BeMQXT/mR3XnkQpuMsN6Iu9gcf9ijyd9Ty5StZZPEnR0HI3jYqnQi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:27:44', '2026-10-15 21:27:44', '2026-10-16 02:10:53'),
(206, 'sorianoevelyn0201', NULL, NULL, 0, '$2y$10$1R0dg1ltOYvd4zroqjQHX.dGIspDYUL8fZd1uf4z4Kg2GoUVw9kZm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:28:08', '2026-10-15 21:28:08', '2026-10-16 02:10:53'),
(207, 'evelynrotoni0202', NULL, NULL, 0, '$2y$10$cxJaNonQb7adfYCQ5HdDU.m36qGZewBlB8tf98xN2Kh.j2mPJjfHO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:28:43', '2026-10-15 21:28:43', '2026-10-16 02:10:53'),
(208, 'zenyvaldez0203', NULL, NULL, 0, '$2y$10$AFziAeS1cjwblEUzzAx4RO3AupTCTaE2MS1yZeTJj/r/oUThr.i3S', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:29:09', '2026-10-15 21:29:09', '2026-10-16 02:10:53'),
(209, 'carlitoalcodia0204', NULL, NULL, 0, '$2y$10$jThWSBl.WC6lQPhBuOE9yu5d/XeLCA1m8yP1QITZY6NKxgv5Ltz2m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:29:27', '2026-10-15 21:29:27', '2026-10-16 02:10:53'),
(210, 'pauloalcodia0205', NULL, NULL, 0, '$2y$10$HzwUNn.UtGnCQBnv7IARtO.9bwEP2Ne3wFze.NcAIc/6NaUnmxttW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:29:45', '2026-10-15 21:29:45', '2026-10-16 02:10:53'),
(211, 'noelhernandez0206', NULL, NULL, 0, '$2y$10$i4pX0qs.rqimOfv5JS2lc.6uE/G1o5puc329SgXil5KWeW2xjzh4y', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:31:39', '2026-10-15 21:31:39', '2026-10-16 02:10:53'),
(212, 'almariorefutal0207', NULL, NULL, 0, '$2y$10$elzicMzwXVi3syjl3OfQHO6K397u8KSA58eBh5iCiHeDhf.WXrHMy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:32:15', '2026-10-15 21:32:15', '2026-10-16 02:10:53'),
(213, 'maximinoines0208', NULL, NULL, 0, '$2y$10$xt9wZ2UJ/VUYn.HRkup.NO3lxwDHE6xs0w2D/qAaAxSIH.pDfyYrq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:32:53', '2026-10-15 21:32:53', '2026-10-16 02:10:53'),
(214, 'isidrosantos0209', NULL, NULL, 0, '$2y$10$Gh.Tn9g6IgKcgAz6Ok110.dLR7caAwY370riuFL2IdokkvIZ1/2KK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:33:28', '2026-10-15 21:33:28', '2026-10-16 02:10:53'),
(215, 'newvisionsatelitenetwork0210', NULL, NULL, 0, '$2y$10$yT6rD01Yiimu2AOkqTyem.c08/KSgmoFw9ilMBxt2JOxS.LjjHe5m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:34:27', '2026-10-15 21:34:27', '2026-10-16 02:10:53'),
(216, 'villamorvilla0211', NULL, NULL, 0, '$2y$10$u0kAgO5BHTisnEPM6sMo2.gQukcMfEDsKDmpndYtM9uJzYF/f.1I.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:34:55', '2026-10-15 21:34:55', '2026-10-16 02:10:53'),
(217, 'danilodomingo0212', NULL, NULL, 0, '$2y$10$hFYHbj1ewNW7wZFyVw80Le66N09Ki9.vswsjh69BBAA7lfCWpHt1a', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:35:25', '2026-10-15 21:35:25', '2026-10-16 02:10:53'),
(218, 'attyjohnarlincaingat0213', NULL, NULL, 0, '$2y$10$CcgTanQScyKfOZKMYl/xS.bbzUU/Tv3VwjC1WgyrLKxsk/oR.9xlq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:37:46', '2026-10-15 21:37:46', '2026-10-16 02:10:53'),
(219, 'esperanzapolicarpo0214', NULL, NULL, 0, '$2y$10$TcKPa/XPbTJ75F/ZGMYRH.Rnd5E0vzRqHwVUVCvG5wLyoCt/dqesm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:38:40', '2026-10-15 21:38:40', '2026-10-16 02:10:53'),
(220, 'aaronjamesurena0215', NULL, NULL, 0, '$2y$10$ePwvCGyvvrA/khgygn1usuRQqVu441A9FAkQ05LRd76G2TYR/5H2C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:39:13', '2026-10-15 21:39:13', '2026-10-16 02:10:53'),
(221, 'elenafactora0216', NULL, NULL, 0, '$2y$10$Nnac8Aovjc4/cppHXqisx.lWBlpCfpGG0V9z0Ez0S.ABPOhDEqL8.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:39:37', '2026-10-15 21:39:37', '2026-10-16 02:10:53'),
(222, 'milagrascaras0217', NULL, NULL, 0, '$2y$10$3dSTerueegW7JN88SFzFSOoeklfJ1ng9EGkamuxEFfYdY3JlqdwOO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:39:56', '2026-10-15 21:39:56', '2026-10-16 02:10:53'),
(223, 'javierfernando0218', NULL, NULL, 0, '$2y$10$oKDq2rsBn28XpRMCs1Uhp.2HySHAcVDcU20T3YwHuaIfGSX2EHyrq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:41:01', '2026-10-15 21:41:01', '2026-10-16 02:10:53'),
(224, 'antonioyamsuan0219', NULL, NULL, 0, '$2y$10$xlKjOR30VRw4IPjgtqtUy.y0QeGFk9UN9BjoKr/qrMno3hm8dWlnW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:41:16', '2026-10-15 21:41:16', '2026-10-16 02:10:53'),
(225, 'primodepnasin0220', NULL, NULL, 0, '$2y$10$.KfuRnzWDVugEYZIZxavfeq9XtMaY0P84/zdDoM9Nn.m8sAlVyCsq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:41:25', '2026-10-15 21:41:25', '2026-10-16 02:10:53'),
(226, 'fevergara0221', NULL, NULL, 0, '$2y$10$offTheJPVgVFnZuUgUYr0.fRuCSbFkFi5g1eOO9MI0iA6uWNldbNK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:41:33', '2026-10-15 21:41:33', '2026-10-16 02:10:53'),
(227, 'jasontan0222', NULL, NULL, 0, '$2y$10$k/.LTS2c3ZZxYmiLkD4O/uDqQ9T0rIoDIXl0GZbOO2iNn9jpF7JuG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:41:53', '2026-10-15 21:41:53', '2026-10-16 02:10:53'),
(228, 'amorvilla0223', NULL, NULL, 0, '$2y$10$0DWezmIGSa7nni8lDhoueOmeHsAf63RJrbOYejEgnI5kXmBdclUkS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:42:17', '2026-10-15 21:42:17', '2026-10-16 02:10:53'),
(229, 'ruthabalospomposelli0224', NULL, NULL, 0, '$2y$10$eNxPxuWb7dxcNABGGFbrNuIIBgOuy4HZ779xV3NCvxROfbDamBLcu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:42:26', '2026-10-15 21:42:26', '2026-10-16 02:10:53'),
(230, 'cesarlippad0225', NULL, NULL, 0, '$2y$10$c.HM0hEOJDs86no3dewPsejwqgYs9R1WDxebv/Wihq0CYw6zG/9Zq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:42:42', '2026-10-15 21:42:42', '2026-10-16 02:10:53'),
(231, 'joelbaccoy0226', NULL, NULL, 0, '$2y$10$vOTpGxdWdWpXgR9gHVGN8eflnkVDf7b6Mx.2jmTovchnq.CD24OR.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:43:07', '2026-10-15 21:43:07', '2026-10-16 02:10:53'),
(232, 'nitzbarranco0227', NULL, NULL, 0, '$2y$10$p/1XH278rCltnEo4y2iehePmGImcVfRYb5eo.NIb.BkaHmBxVlPpK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:43:38', '2026-10-15 21:43:38', '2026-10-16 02:10:53'),
(233, 'dreugeniocu0228', NULL, NULL, 0, '$2y$10$/Y1VkTGDjIE8EJzEHb323uJZYUHt2HJY97m4AGdafed4Hiw9FKYIy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:43:50', '2026-10-15 21:43:50', '2026-10-16 02:10:53');
INSERT INTO `users` (`user_id`, `username`, `email`, `mobile_number`, `two_factor_enabled`, `password_hash`, `role`, `status`, `account_source`, `must_change_password`, `temporary_password_expires_at`, `created_at`, `updated_at`) VALUES
(234, 'sallypalisoc0229', NULL, NULL, 0, '$2y$10$7P5jQlTQ.vF5aMzoRQu2bevMV2g0AnnMmSUqLf89q2YPnp59yK4Za', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:44:07', '2026-10-15 21:44:07', '2026-10-16 02:10:53'),
(235, 'leonciadelacruz0230', NULL, NULL, 0, '$2y$10$v01dpxp8OObiOYxt69Rb.Op.5i4MMHjeRJV7kWYA7mqIkXMfKZD3C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:44:35', '2026-10-15 21:44:35', '2026-10-16 02:10:53'),
(236, 'jerrybrioso0231', NULL, NULL, 0, '$2y$10$ed1B2Q9xZ6WLAYE63OjLNO0fbyrowqcFJ/Y.HiEhzHLh3EFzNGocu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:44:37', '2026-10-15 21:44:37', '2026-10-16 02:10:53'),
(237, 'daisymolas0232', NULL, NULL, 0, '$2y$10$AW653WtvR5TxVreD/qO5/elnLg29U27/SED3th/8koTZRt2Xh4wXm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:44:51', '2026-10-15 21:44:51', '2026-10-16 02:10:53'),
(238, 'baldomerabrioso0233', NULL, NULL, 0, '$2y$10$gJKH4XRjldQPRsvfpn20jetzx9HNhbWOOpToMrhoZcWE5H4FVfRuO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:45:05', '2026-10-15 21:45:05', '2026-10-16 02:10:53'),
(239, 'galimacristeta0234', NULL, NULL, 0, '$2y$10$hrI.jozedOuiW37PSKOal.e.3bKYxjJiq8fMMVm.8gNF6NIUz5sFS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:45:36', '2026-10-15 21:45:36', '2026-10-16 02:10:53'),
(240, 'sultanferdausiabbas0235', NULL, NULL, 0, '$2y$10$Lym/aL/cQ9uRvcdAajwPbuxsuJgPtzshvzLW/HtfmuyiPBACb9Ubq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:45:39', '2026-10-15 21:45:39', '2026-10-16 02:10:53'),
(241, 'restitutocolis0236', NULL, NULL, 0, '$2y$10$BXVj6jemYcVkVOTOCchoIuiQrk/RHapdB4MAUOJeBeoTfR3qKqWhW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:45:56', '2026-10-15 21:45:56', '2026-10-16 02:10:53'),
(242, 'georgebaccud0237', NULL, NULL, 0, '$2y$10$oZ2nB1Jwzxw58xrWCvnmguuwsQ/AWXY/Gn/eodktJq/zb1dfo.ee2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:46:02', '2026-10-15 21:46:02', '2026-10-16 02:10:53'),
(243, 'alvilyngonzales0238', NULL, NULL, 0, '$2y$10$mQR95Eucv09oETYh8Rqz5.cGTTjI6nYR8W3N.eqqZPuMGdxDXoWNO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:46:15', '2026-10-15 21:46:15', '2026-10-16 02:10:53'),
(244, 'doloreswsquivel0239', NULL, NULL, 0, '$2y$10$otIyTQpf7r0H6.g5xQ8EP..dqN3PtkIgWRJ8lC.yCvicOCCcky5Pe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:46:24', '2026-10-15 21:46:24', '2026-10-16 02:10:53'),
(245, 'melaniecoronel0240', NULL, NULL, 0, '$2y$10$kYTzFl/EMc0T2O42BZbTJewalKJj8oaHT2C1o3/5NGtQkXWGGJn7a', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:46:32', '2026-10-15 21:46:32', '2026-10-16 02:10:53'),
(246, 'rebydelagua0241', NULL, NULL, 0, '$2y$10$0EiqOQS00YzMDasN5asedun8IaElxr7VHSdZpHySWEYipoopTFWQS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:46:57', '2026-10-15 21:46:57', '2026-10-16 02:10:53'),
(247, 'noelmanimtim0242', NULL, NULL, 0, '$2y$10$lsBSemsrlakJ6svAdT3nuu.rRGmqiMOZLzsNZ5qceb4ctrcrIWjn2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:47:09', '2026-10-15 21:47:09', '2026-10-16 02:10:53'),
(248, 'allanroldan0243', NULL, NULL, 0, '$2y$10$k/xotGCoOc8DJcikplPFpuKsV.Oh2k/88Y6WRkTgkz91keo5uppS.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:47:11', '2026-10-15 21:47:11', '2026-10-16 02:10:53'),
(249, 'riadnepomuceno0244', NULL, NULL, 0, '$2y$10$DC0G4uq877M/JWXPEWJ.5.tSB6gNDAIRlzMQGwR9Z5Ej0UbbgK6Hi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:47:29', '2026-10-15 21:47:29', '2026-10-16 02:10:53'),
(250, 'virginiaalcodia0245', NULL, NULL, 0, '$2y$10$iEC3CzmXnoAbvU0Sn.EW4ubLYmNVAGcaNYnMSIZYRBfUovrf.lIEG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:47:36', '2026-10-15 21:47:36', '2026-10-16 02:10:53'),
(251, 'ronelmediavillo0246', NULL, NULL, 0, '$2y$10$G5.mqe/E/vhYAeZ1/SQ1D.ccgPyMrf0o2b1wwoyRM8m0yJsdi3YVC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:47:46', '2026-10-15 21:47:46', '2026-10-16 02:10:53'),
(252, 'madivinabernardo0247', NULL, NULL, 0, '$2y$10$NAsT9owQ5.flOTf7LZHR0OIahXA7wO7zs4Z3TWZ8KOs9UJpvbaFBu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:48:20', '2026-10-15 21:48:20', '2026-10-16 02:10:53'),
(253, 'elenaalcantara0248', NULL, NULL, 0, '$2y$10$y4v4QH.KSuYnSxHZsVMO4eIuwz.MVXeLZu8FItD/Nz4iddaouqm..', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:48:28', '2026-10-15 21:48:28', '2026-10-16 02:10:53'),
(254, 'geronimoparaguas0249', NULL, NULL, 0, '$2y$10$TdM1teZY4lBl4QSX/iDyyuQ.LAwfQ.wgLN17UYkRo7m7ayquthqhS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:48:53', '2026-10-15 21:48:53', '2026-10-16 02:10:53'),
(255, 'marinocastilla0250', NULL, NULL, 0, '$2y$10$MPDBJPVc1JFESgmRESggh.Xxb5NXgL4iYUIY01GMFfHUSXSm22xEa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:49:42', '2026-10-15 21:49:42', '2026-10-16 02:10:53'),
(256, 'maconsolacionsajorda0251', NULL, NULL, 0, '$2y$10$sbKlD4ikjeHF73VwMpMgTuzQFYlYTCGvgApq7OB3QAX0rfUiZZOUO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:50:07', '2026-10-15 21:50:07', '2026-10-16 02:10:53'),
(257, 'rudyochosa0252', NULL, NULL, 0, '$2y$10$njs8DmEeVqbf39crO96V0.BoXNKtm0fFduCxILPKa1GygUlP7oUIy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:50:10', '2026-10-15 21:50:10', '2026-10-16 02:10:53'),
(258, 'chingosman0253', NULL, NULL, 0, '$2y$10$IL/vjcXgC6w3atGwLlGJ7uPhomDLkEZ8woMlmgdI.lS85nz6TNWs2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:50:18', '2026-10-15 21:50:18', '2026-10-16 02:10:53'),
(259, 'ramoncitofernandez0254', NULL, NULL, 0, '$2y$10$4BTRsuqguE0r.Dy5kZgHjOoPZM.kHk7NDy/ay9mxgyufMSd7RKqXG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:50:36', '2026-10-15 21:50:36', '2026-10-16 02:10:53'),
(260, 'dignoparanada0255', NULL, NULL, 0, '$2y$10$M.WQWINLOYWizxROdncSP.QIWcCqypjjHFLqc9T5zcD2MU8uEHh/a', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:50:46', '2026-10-15 21:50:46', '2026-10-16 02:10:53'),
(261, 'edgarrobertvillarosa0256', NULL, NULL, 0, '$2y$10$5jiuofKdli5H3UAH.bcb6eDLsaPh0QT0Pmyy8nH7kHqxcpyL9PDsS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:51:05', '2026-10-15 21:51:05', '2026-10-16 02:10:53'),
(262, 'teresitacolobong0257', NULL, NULL, 0, '$2y$10$/sdKY4Pe8ZLViFpEycnDh.JCHTluHdp0d8fBHFNbhYmtvKYv9WfYC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:51:11', '2026-10-15 21:51:11', '2026-10-16 02:10:53'),
(263, 'deograciasdiez0258', NULL, NULL, 0, '$2y$10$ozShzmfHJoswTWs5wDWGMusGn6gR.cFY1AcdcIwSvN42f69LQCBlK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:51:36', '2026-10-15 21:51:36', '2026-10-16 02:10:53'),
(264, 'padeninocente0259', NULL, NULL, 0, '$2y$10$bvez0CR7d6wCA9y2Th6E.OGez4.rLEWIPnICVigQocNt5CxdL4soK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:52:26', '2026-10-15 21:52:26', '2026-10-16 02:10:53'),
(265, 'danilobautista0260', NULL, NULL, 0, '$2y$10$V3dtA3LBvJFZZPEcaRdY/OO28EGsOQ/8Cf65LJdIhrQjie9y8ylj2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:53:06', '2026-10-15 21:53:06', '2026-10-16 02:10:53'),
(266, 'legaspisavings0261', NULL, NULL, 0, '$2y$10$Aj4hIsVBtVl9jrsfmc9fQuQhy.uhhfC8bf/ALsn9yeLVlDr.tMjbe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:53:09', '2026-10-15 21:53:09', '2026-10-16 02:10:53'),
(267, 'eduardonavarrojr0262', NULL, NULL, 0, '$2y$10$8EVDj/16E5cBPDa90r3fEeXMBdzBe2nr6FJcrl9ukjqIQxj5GRcmW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:53:30', '2026-10-15 21:53:30', '2026-10-16 02:10:53'),
(268, 'ednahernandez0263', NULL, NULL, 0, '$2y$10$Ce4kcsKLUg8azDBTyPWTMe3rJMBAhfwQVKtAFsEZB44TroEhPKNxe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:53:34', '2026-10-15 21:53:34', '2026-10-16 02:10:53'),
(269, 'annnavarropadilla0264', NULL, NULL, 0, '$2y$10$x1QCiNhkwPBdEG07/JUYROcXVg6Dx5d/1pWJBjXXmFNl6lhHOQvNm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:53:46', '2026-10-15 21:53:46', '2026-10-16 02:10:53'),
(270, 'danilogerona0265', NULL, NULL, 0, '$2y$10$vhqwmTzQ3GzMW2qeWsILCO6qaS8IXZMkNG3HAixpZzg6TTawDtnzy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:54:00', '2026-10-15 21:54:00', '2026-10-16 02:10:53'),
(271, 'tomasabayan0266', NULL, NULL, 0, '$2y$10$LlKdfE7jTC0rElz6aVF/wOhg7ntqkQpuNH31jlw7IoOmYfsyoHhlq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:54:03', '2026-10-15 21:54:03', '2026-10-16 02:10:53'),
(272, 'angelruiz0267', NULL, NULL, 0, '$2y$10$niMjG1aJAr1ddqDxDq7n/eOUHYMSHJ9V4L/HwCefOZT/J5q5VkIFW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:54:19', '2026-10-15 21:54:19', '2026-10-16 02:10:53'),
(273, 'lornayap0268', NULL, NULL, 0, '$2y$10$IpXhnAhTsH.Ij0fDU3IiWOJxBVIc9Pj4edoku8jTbX0Y7UJL7.RLy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:54:22', '2026-10-15 21:54:22', '2026-10-16 02:10:53'),
(274, 'myleneacosta0269', NULL, NULL, 0, '$2y$10$TlsfToyQT4JSYq1JEC0on.iR3Pep81jw9IqlEsjhpmkR/R9/hjeN6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:54:42', '2026-10-15 21:54:42', '2026-10-16 02:10:53'),
(275, 'jessienicolas0270', NULL, NULL, 0, '$2y$10$JDkMviCGaw1XaL4iMqv4quudB4QkUzV1Fitg6gHOiqgr7/1h2mdOm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:54:43', '2026-10-15 21:54:43', '2026-10-16 02:10:53'),
(276, 'teresitaaure0271', NULL, NULL, 0, '$2y$10$LYQMZAglym/.KN9sYyH3peWrGf9QLt0zQNPYsUgriwJ/L2DtvVf6C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:55:00', '2026-10-15 21:55:00', '2026-10-16 02:10:53'),
(277, 'sultanferdausiabbas0272', NULL, NULL, 0, '$2y$10$TlIkDGPV/KxePT1kDa/QP.muGXPZQwYCUHLddMwfuW95xQF4ikMru', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:55:18', '2026-10-15 21:55:18', '2026-10-16 02:10:53'),
(278, 'dulceliwanag0273', NULL, NULL, 0, '$2y$10$WWa.0GZqz4VgR5tzvhanJ.BH83UiXKalhHvHdpGMtumvR/mG4fZSW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:55:22', '2026-10-15 21:55:22', '2026-10-16 02:10:53'),
(279, 'severobreva0274', NULL, NULL, 0, '$2y$10$oU9UeJXn.4piFm7nLtwB5OGiFNous1wlw9IT4wdL4Wg2RbGl9vAj2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:55:45', '2026-10-15 21:55:45', '2026-10-16 02:10:53'),
(280, 'eunicemarte0275', NULL, NULL, 0, '$2y$10$3rRCOunArqebqu9RUwbxM.0qPaRDzDfdQx4DtMF6EEbU5pVQupNZW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:55:46', '2026-10-15 21:55:46', '2026-10-16 02:10:53'),
(281, 'leonavarra0276', NULL, NULL, 0, '$2y$10$DjAyN4IB4CGc3kUajM9DTOqSMXg4Ki5QXriJ9RG9.cltHZlkv2tue', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:56:03', '2026-10-15 21:56:03', '2026-10-16 02:10:53'),
(282, 'gretchentutuna0277', NULL, NULL, 0, '$2y$10$4011sUBfRDlQ66s1l9s2X.vPhzQqHLeJK0l0CbmTrH7lkucqIDwOa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:56:26', '2026-10-15 21:56:26', '2026-10-16 02:10:53'),
(283, 'daxvillanueva0278', NULL, NULL, 0, '$2y$10$yuei1XbL3TB3kXcDeVpv3uKKDxIZ6MC5d5KvRj36tgk0kTvlk0CB.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:56:36', '2026-10-15 21:56:36', '2026-10-16 02:10:53'),
(284, 'divineyasay0279', NULL, NULL, 0, '$2y$10$tesxqd2OGCOszaLekvmLKeFQIYxxkdMbra8OdasVLI2TIANI2Edxy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:56:53', '2026-10-15 21:56:53', '2026-10-16 02:10:53'),
(285, 'rahmansharifur0280', NULL, NULL, 0, '$2y$10$1aSfnJOKA1qa01BhSNAcBel3eY6gXm5Of1X0/AN4yZoWvwxjpX2k2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:56:53', '2026-10-15 21:56:53', '2026-10-16 02:10:53'),
(286, 'arnoldtorre0281', NULL, NULL, 0, '$2y$10$ezVA69LY8Ov2XLRbdlC/h.a9gN2DrUUhYjFwKPgajc4SBBK95tf6e', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:57:09', '2026-10-15 21:57:09', '2026-10-16 02:10:53'),
(287, 'joselitobuenavista0282', NULL, NULL, 0, '$2y$10$bKLgJpXYI4Zi1dDIJX12RuhS4RqPnu1Pd8wAb9wtj7wqz0278QHhy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:57:20', '2026-10-15 21:57:20', '2026-10-16 02:10:53'),
(288, 'ahezahtiongson0283', NULL, NULL, 0, '$2y$10$GGUkJEXWOQ6jkKQvy7cvVenBoV24MzK6zxEdC2JYJLjb2OCL1D/yu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:57:28', '2026-10-15 21:57:28', '2026-10-16 02:10:53'),
(289, 'lilibethpaguio0284', NULL, NULL, 0, '$2y$10$CfDGHeLwOdxA48TSa3G2MeJHEXXB9bIJX2tDyRVZkWEIwMYDp2RB.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:57:47', '2026-10-15 21:57:47', '2026-10-16 02:10:53'),
(290, 'merceditaplata0285', NULL, NULL, 0, '$2y$10$CbfrfcGExXe9A7o4YDi/T.NfjzzkmyZZ5MD5tw/HFneCmG5RZMnpi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:58:11', '2026-10-15 21:58:11', '2026-10-16 02:10:53'),
(291, 'ramonbenitez0286', NULL, NULL, 0, '$2y$10$vJZCsNrQp7NyrQCDkhIOYObQpQJgwUpz0EZ7TdFbr9vaWwVHkXBoa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:58:24', '2026-10-15 21:58:24', '2026-10-16 02:10:53'),
(292, 'maisabeldelfina0287', NULL, NULL, 0, '$2y$10$Cg/w.TXjmRvwrNdmRG2YZOLwponAxi7vm6kEX3oSEA3QhgzWp.27i', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:58:32', '2026-10-15 21:58:32', '2026-10-16 02:10:53'),
(293, 'oliviapadilla0288', NULL, NULL, 0, '$2y$10$uXN4TR1A7g1kw2nSl92fjePKK8qNhl.L2lUsIv8FJ8d/s9Nb7nZc.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:58:56', '2026-10-15 21:58:56', '2026-10-16 02:10:53'),
(294, 'myrnaabad0289', NULL, NULL, 0, '$2y$10$1mzIkOXEyVMELpQ17Nq7Me0e2HCLwW4Gcock3AoP.n3OxTZ8YhyUe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:59:16', '2026-10-15 21:59:16', '2026-10-16 02:10:53'),
(295, 'richardconte0290', NULL, NULL, 0, '$2y$10$pvqkBJmtWNtCh/Z874kSHe2tA0GcLf5vs.Xj./nnOmOwpMkYP.tWq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-15 23:59:37', '2026-10-15 21:59:37', '2026-10-16 02:10:53'),
(296, 'corazonnucum0291', NULL, NULL, 0, '$2y$10$gwOzWY3hvBM8Va6.hfS.ue1AWZ.9UWjpBmHLLJSdHm7heknOGpbma', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:00:35', '2026-10-15 22:00:35', '2026-10-16 02:10:53'),
(297, 'elizabethpiad0292', NULL, NULL, 0, '$2y$10$CzAxaSpPOdRFfWmmXuXAve0uT1Z5SoquHYLupzPa0dVa6O7EtM1Wa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:01:16', '2026-10-15 22:01:16', '2026-10-16 02:10:53'),
(298, 'charlesgarcia0293', NULL, NULL, 0, '$2y$10$WK8i.wYMzVRdrAlHWTJR0O9oCFuNfQwfeQz2EixsPHDmqQ57964IO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:02:00', '2026-10-15 22:02:00', '2026-10-16 02:10:53'),
(299, 'kurtcapistrano0294', NULL, NULL, 0, '$2y$10$ya8Jt3uUgBKuzqB72xFSs.7etsDe7OsT5AbvRErA8voHq5b388pzi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:02:28', '2026-10-15 22:02:28', '2026-10-16 02:10:53'),
(300, 'shirleysuratos0295', NULL, NULL, 0, '$2y$10$17vVV.PSprhPeM8Jno/TxOFBCEk/ypDBk0.DXA5db1jdGoW0d6i6G', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:03:01', '2026-10-15 22:03:01', '2026-10-16 02:10:53'),
(301, 'noeldelrosario0296', NULL, NULL, 0, '$2y$10$9/AIywME3/w2A5CPZdk9N.I7QlBX7JMcQ7M.7PmhtPqXGOc9qk3A2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:03:29', '2026-10-15 22:03:29', '2026-10-16 02:10:53'),
(302, 'camilconopio0297', NULL, NULL, 0, '$2y$10$pZOKbBXIya4EkJSaROWIY.3nPx50kNYz5gZaUz/fK4fGXAq7JDmBW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:04:00', '2026-10-15 22:04:00', '2026-10-16 02:10:53'),
(303, 'hazelannealcantara0298', NULL, NULL, 0, '$2y$10$l4PpX9OqfrdyoPb09tOje.gv09qklnTmRn94YrVychnvmA7jAPyt.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:04:27', '2026-10-15 22:04:27', '2026-10-16 02:10:53'),
(304, 'anelynjimenez0299', NULL, NULL, 0, '$2y$10$ZROscub38a3Y60uI3F5NaOLHMShe3DDRz4hx6hnIXDyjAm9/4HMR.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:04:54', '2026-10-15 22:04:54', '2026-10-16 02:10:53'),
(305, 'alexisjuridico0300', NULL, NULL, 0, '$2y$10$.Db64NxxsqxomxviXaAVb.1QbGaIwt.JiCVAxDpQyJMzDG1hHBzyC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:05:29', '2026-10-15 22:05:29', '2026-10-16 02:10:53'),
(306, 'eduardoberran0301', NULL, NULL, 0, '$2y$10$Q8xb.NAsT5.uM23lChFTQelBtopq8CpjPl/oJvRZc28bOsLvFe9hy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:05:48', '2026-10-15 22:05:48', '2026-10-16 02:10:53'),
(307, 'marichumangligot0302', NULL, NULL, 0, '$2y$10$7B3FEEPOvPJNqr4lclcSJeqF0GmM7q9.P1465RVrrKalt/bqpjsly', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:06:23', '2026-10-15 22:06:23', '2026-10-16 02:10:53'),
(308, 'silangantemplebuilders0303', NULL, NULL, 0, '$2y$10$jZolMSW3qS0U1G6ieopGGuD52rLWhFndc1xC/EFLBMPYm9wToaLsG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:07:07', '2026-10-15 22:07:07', '2026-10-16 02:10:53'),
(309, 'susancasipit0304', NULL, NULL, 0, '$2y$10$vFW9busuKZNUgdXvgQvrdOavXjbRnBQuVZdfIvAwx4HeXg5NX4Fw.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:07:51', '2026-10-15 22:07:51', '2026-10-16 02:10:53'),
(310, 'johnpatrickcorpuz0305', NULL, NULL, 0, '$2y$10$8FIcNRiIBrqUijIsKOjU7uNG4kypD/NJJaQj0kV0LY1VNK5XhL/.G', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:08:27', '2026-10-15 22:08:27', '2026-10-16 02:10:53'),
(311, 'genalynortiz0306', NULL, NULL, 0, '$2y$10$hhUUzQa8N0N/VncncbpOq.Cl0djhQjsy2ztqlv8L.64/HnKCR3OPS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:08:50', '2026-10-15 22:08:50', '2026-10-16 02:10:53'),
(312, 'gilgari0307', NULL, NULL, 0, '$2y$10$5t/KcKzmatIzcnsVDu8ftuVJy8l.kFtL891qywLz4i0CeV25aS2eW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:09:05', '2026-10-15 22:09:05', '2026-10-16 02:10:53'),
(313, 'edgardotividad0308', NULL, NULL, 0, '$2y$10$lcSOLEzntMBz74e4v3VkzOS0BsrWje/.fWbvcEBRPWYMT7UwGvYja', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:09:27', '2026-10-15 22:09:27', '2026-10-16 02:10:53'),
(314, 'richardtelan0309', NULL, NULL, 0, '$2y$10$D7DA93QvZIZyyZ8oKLCZ4.pTWS16EUIkT71/uJ1115x0atordO9MC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:09:56', '2026-10-15 22:09:56', '2026-10-16 02:10:53'),
(315, 'irnieofalarcajr0310', NULL, NULL, 0, '$2y$10$iyk0MzhXW2QjK75gLDwrI.TEUySgtaLkPL.7.X5Rkw9XHliFiv3A.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:10:22', '2026-10-15 22:10:22', '2026-10-16 02:10:53'),
(316, 'melinadaduya0311', NULL, NULL, 0, '$2y$10$HpxDa4TEJssP5JUNkqVcD.XdoB77axVdEg5/kPOTf9IhgwEqiES2m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:10:41', '2026-10-15 22:10:41', '2026-10-16 02:10:53'),
(317, 'salvacionmapa0312', NULL, NULL, 0, '$2y$10$52yPYhSqplYiRi9MGjG1rO.uNoV0SX5n1AhLYJCk6cDNJSaOW17A6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:11:29', '2026-10-15 22:11:29', '2026-10-16 02:10:53'),
(318, 'consorciagabitanan0313', NULL, NULL, 0, '$2y$10$8R957CBfuEnMZoHCLvV7EeDDUZ8x0KLbH0tmR8kLn.Pk8lKSps3ye', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:11:40', '2026-10-15 22:11:40', '2026-10-16 02:10:53'),
(319, 'thermopower0314', NULL, NULL, 0, '$2y$10$PDqRk0MDACvaF.V6Z9.K..4/K9Toz2UrjJtL/WqamVnFWBbpCkCNe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:11:47', '2026-10-15 22:11:47', '2026-10-16 02:10:53'),
(320, 'renatoalibangbang0315', NULL, NULL, 0, '$2y$10$m.C3upCStmEu9mNo8uz0xO47kEgqGkYEnjb/iVSwFVZ/Lx8SV452m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:11:55', '2026-10-15 22:11:55', '2026-10-16 16:34:20'),
(321, 'melinadaduya0316', NULL, NULL, 0, '$2y$10$12wfhOHaT5OcPs30RaGWz.9XeTFqaea9KMUUNoRcM2kY.Yr/Yer86', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:12:05', '2026-10-15 22:12:05', '2026-10-16 02:10:53'),
(322, 'tessieabacan0317', NULL, NULL, 0, '$2y$10$qO2jjZfQqAilz9H647KfAe.iBiaE8Q8B6JVBdbSP7kGY7E589Ew6y', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:13:04', '2026-10-15 22:13:04', '2026-10-16 02:10:53'),
(323, 'benitoarnoldcrosete0318', NULL, NULL, 0, '$2y$10$ZlRra27R3ZNjE4TZIeRXXuVojxqQXvKleTDwiaoktFfJc1rVeBmqy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:13:21', '2026-10-15 22:13:21', '2026-10-16 02:10:53'),
(324, 'maricoracierto0319', NULL, NULL, 0, '$2y$10$oRpcY3KdpN9sSx39t7UBg.5BE4gMvmokc96DxtPYSZDWLAzOtxmLC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:13:28', '2026-10-15 22:13:28', '2026-10-16 02:10:53'),
(325, 'lorenzoruiz0320', NULL, NULL, 0, '$2y$10$4xvHT7by1phQwrNrDvLF7uVrPuasmPdfyGRuFHUBOO9kuFrua5vWq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:13:41', '2026-10-15 22:13:41', '2026-10-16 02:10:53'),
(326, 'joesephinebasa0321', NULL, NULL, 0, '$2y$10$GgHYJh1psHoVWVfFH9rx1ekJ7fPBxftDjmSrTD2iskHDsPP5K3a.m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:13:57', '2026-10-15 22:13:57', '2026-10-16 02:10:53'),
(327, 'bernadettevidad0322', NULL, NULL, 0, '$2y$10$pnd6hwzimp0a2r5Ej4lgXenphuWyFl.WehgvmA2vqfYyvRdCofWeO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:14:20', '2026-10-15 22:14:20', '2026-10-16 02:10:53'),
(328, 'fullerlourdes0323', NULL, NULL, 0, '$2y$10$QdVZBC81m/uhmNIhH7Xla.Zzwa32GIEwTm.tJDi/D6lRV9pykAXZe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:14:34', '2026-10-15 22:14:34', '2026-10-16 02:10:53'),
(329, 'mafranciscaviray0324', NULL, NULL, 0, '$2y$10$tSaoJq1FRrAwDTFX8rHCk.8H1fwrVeofguF85sz9h0NC69NZJqIMm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:14:52', '2026-10-15 22:14:52', '2026-10-16 02:10:53'),
(330, 'robertcapio0325', NULL, NULL, 0, '$2y$10$uP0pfci8agILdywlK5yb7OFESm77.AMsVy55/85o6Q/p.8yxLIuOK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:15:09', '2026-10-15 22:15:09', '2026-10-16 02:10:53'),
(331, 'carminapoon0326', NULL, NULL, 0, '$2y$10$nINcLgNatLZx5q4RQbnBe.cEbjtx9V/fYv4S/MuhhR0uqotKZMioe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:15:30', '2026-10-15 22:15:30', '2026-10-16 02:10:53'),
(332, 'arnelfortes0327', NULL, NULL, 0, '$2y$10$0EJvSezL5SGZAjoWCk71Ze2Rddb7hhmG5r.FX2Ehc.596.Hd1YfBy', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:15:41', '2026-10-15 22:15:41', '2026-10-16 02:10:53'),
(333, 'susanmendoza0328', NULL, NULL, 0, '$2y$10$cRAKV9ZAD8QNZs3Am1mrcelvgha.8eRvrOUGb0QiqHtZ5hi6meffC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:15:54', '2026-10-15 22:15:54', '2026-10-16 02:10:53'),
(334, 'joselaurel0329', NULL, NULL, 0, '$2y$10$AAWDaJYWNiNVdPdINwRj.e0./EQvQxE4NtR.nUG8oI.KWqTPQejR.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:16:01', '2026-10-15 22:16:01', '2026-10-16 02:10:53'),
(335, 'blancatrinidad0330', NULL, NULL, 0, '$2y$10$RGnulVuV69rv8GQ4zNvzWuxWzDsrzqoEFHNvbpsHDnHSWVpxu5qD2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:16:14', '2026-10-15 22:16:14', '2026-10-16 02:10:53'),
(336, 'vanessacayabyab0331', NULL, NULL, 0, '$2y$10$/pJZlBlopTr8sA.10fZtmO.tMxgwuaPt1yhYA9pgWylfIoTwTPGFi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:16:57', '2026-10-15 22:16:57', '2026-10-16 02:10:53'),
(337, 'carmenlloyd0332', NULL, NULL, 0, '$2y$10$EMtPe2pJTSLzYlC.9h70R.pruTt1/PgrNukb8d5fc/tR1XzKFSZ7q', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:17:13', '2026-10-15 22:17:13', '2026-10-16 02:10:53'),
(338, 'silvestreacejas0333', NULL, NULL, 0, '$2y$10$VD9P5GVsbCsTVcPVY7m6YOsnZQBlgiqRdFybh/mgVu7oiTfjOqpVC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:17:24', '2026-10-15 22:17:24', '2026-10-16 02:10:53'),
(339, 'joyventurenza0334', NULL, NULL, 0, '$2y$10$1bN5/NmRDdv/qKkrfKgdrO9gcUiazbE2fa5Hz.NkBcNm1yJL7l0pO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:17:32', '2026-10-15 22:17:32', '2026-10-16 02:10:53'),
(340, 'reginaldobautista0335', NULL, NULL, 0, '$2y$10$HkJHZBLOZPoKbPCOR5CzHOytw9n9lg8y6IDpAJX57GFWRW5kMqsQu', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:17:40', '2026-10-15 22:17:40', '2026-10-16 02:10:53'),
(341, 'biancanieves0336', NULL, NULL, 0, '$2y$10$cTEL0WMm3g/tnh2t21LUUuLC2jzFtYn9WmiSb2v.hcJKiBV.XqnES', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:17:46', '2026-10-15 22:17:46', '2026-10-16 02:10:53'),
(342, 'engrquirinoabalde0337', NULL, NULL, 0, '$2y$10$Yk/LglDIveCZG6nTv3qFgOF13Cx/rQHioZKiK4Jj26MM//UolExzS', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:18:15', '2026-10-15 22:18:15', '2026-10-16 02:10:53'),
(343, 'mariamercedesllobrera0338', NULL, NULL, 0, '$2y$10$btmNk3kmoBkb5JdFeSKXJ.2vBdwUuoWymGx.mJYC4uusDvle61I56', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:18:22', '2026-10-15 22:18:22', '2026-10-16 02:10:53'),
(344, 'azenithllobrera0339', NULL, NULL, 0, '$2y$10$4.BOq8LeZOrJuaY/Obp41uOuxnfIiR9Wo2wg946gopAVsJ.XIjz82', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:18:28', '2026-10-15 22:18:28', '2026-10-16 02:10:53'),
(345, 'rizalynmong0340', NULL, NULL, 0, '$2y$10$56PTUTBKMAxKUZ99VYWdNOM1a35urZOayOv/h1iUdau7JjM98GwSa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:18:43', '2026-10-15 22:18:43', '2026-10-16 02:10:53'),
(346, 'alexisjuridico0341', NULL, NULL, 0, '$2y$10$kG9Svj3B/zSpYVCkM4VZRuYuth1qwk8mp/Sdcd3EzUVRNRAa1byVG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:18:45', '2026-10-15 22:18:45', '2026-10-16 02:10:53'),
(347, 'lornaojeda0342', NULL, NULL, 0, '$2y$10$59ai2388QFZumr68k/UAxunXHYk/MTpKODne/vk5c8JgCwIAo4cUG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:19:19', '2026-10-15 22:19:19', '2026-10-16 02:10:53'),
(348, 'romanitanagai0343', NULL, NULL, 0, '$2y$10$F9Sp7EmnletQgEqRTI6STOUvESvMtfIIlvue7Fq.ToblqP.eeLF3C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:19:29', '2026-10-15 22:19:29', '2026-10-16 02:10:53'),
(349, 'edgardotope0344', NULL, NULL, 0, '$2y$10$kXrE1PnYF9XeVShC05kcx.cysrr8eRZjcKohypRc0JIPoE10wx/XO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:19:54', '2026-10-15 22:19:54', '2026-10-16 02:10:53'),
(350, 'alexisjuridico0345', NULL, NULL, 0, '$2y$10$RFJ9KKAx0DlMAPNJuzz5hO1hwBQq5AwwyOXjDe67N7ug2AfNhWvWe', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:20:05', '2026-10-15 22:20:05', '2026-10-16 02:10:53'),
(351, 'jeanveloria0346', NULL, NULL, 0, '$2y$10$TKxlbqzI9sELXOtKuvdc6OL7Q3Kz0MlvnkFmNVYUgVsI3XnSDmipa', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:20:24', '2026-10-15 22:20:24', '2026-10-16 02:10:53'),
(352, 'draviennabaloloy0347', NULL, NULL, 0, '$2y$10$PFsoBZ0zga5.KqLOUj6H9e94EGLPy0ObzIvVE2BbqoT0pJyBOOfYK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:20:51', '2026-10-15 22:20:51', '2026-10-16 02:10:53'),
(353, 'lorieledesma0348', NULL, NULL, 0, '$2y$10$8BqBg2hMXmXNc0OisqJ.UeIZMNGiof9HgAK8WtABdHFdgJeGt07bG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:21:10', '2026-10-15 22:21:10', '2026-10-16 02:10:53'),
(354, 'odulinatope0349', NULL, NULL, 0, '$2y$10$3q9MnZ6AHDNqYoC1f3LhUug0sUzYBZSfUZpxxKf5o0qfggvo4bmbi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:21:40', '2026-10-15 22:21:40', '2026-10-16 02:10:53'),
(355, 'precillafaustino0350', NULL, NULL, 0, '$2y$10$1XYum./pX9dU/2xKz9pmAuKdqD2rEn6ehzuA9pwH0.RNlQyymxsuC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:21:51', '2026-10-15 22:21:51', '2026-10-16 02:10:53'),
(356, 'lennydelacruz0351', NULL, NULL, 0, '$2y$10$sTDT.qElINEZoh12a8mHK.9lNmnw/8dzye2Vm0WTvsU.Z86DKqsIW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:21:52', '2026-10-15 22:21:52', '2026-10-16 02:10:53'),
(357, 'faroukdisangcopan0352', NULL, NULL, 0, '$2y$10$XMuqhCtUWrb0pWrCbikw6uaDj5RooSccPiGhgcPJW./Py8cyWlPW2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:22:14', '2026-10-15 22:22:14', '2026-10-16 02:10:53'),
(358, 'aldensalanga0353', NULL, NULL, 0, '$2y$10$HYxKn4stTj3akiWzhxI4juhtf9CYabaH3xyelnHkARMbe6BrBS7s.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:22:15', '2026-10-15 22:22:15', '2026-10-16 02:10:53'),
(359, 'antonettecaballes0354', NULL, NULL, 0, '$2y$10$gIXgOZ5rgglarFFn2ael1.kW60RGapK.s7FkpW6JSMVHJZrJip31K', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:22:27', '2026-10-15 22:22:27', '2026-10-16 02:10:53'),
(360, 'floragavero0355', NULL, NULL, 0, '$2y$10$SJF9BkNQXyvE5B3EQEYJs..7nPcUIqvb1JqVGHw/8ypyUqQZItwH2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:22:40', '2026-10-15 22:22:40', '2026-10-16 02:10:53'),
(361, 'corazontiempo0356', NULL, NULL, 0, '$2y$10$CnnhnTgJNNooZbwzw6JA7OKr27WiGxZcnzOuKkNgdxUpG8BpTfFNC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:22:58', '2026-10-15 22:22:58', '2026-10-16 02:10:53'),
(362, 'romellestipular0357', NULL, NULL, 0, '$2y$10$0Zw1mG1VDh.xEzvPHE2oR.PJ2VF0iNp9f1f6UFC75UEgug2Tls5si', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:23:06', '2026-10-15 22:23:06', '2026-10-16 02:10:53'),
(363, 'marceloarenas0358', NULL, NULL, 0, '$2y$10$7vit0rhFClWwIFAH.0njSeBpO2lBJJVUDjj8Gza2xgPnAw22aBpnG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:23:16', '2026-10-15 22:23:16', '2026-10-16 02:10:53'),
(364, 'baberuthobado0359', NULL, NULL, 0, '$2y$10$gHRMK7vwSoQISgl6MRwqCei1sz8clPvr7jZf2Kd0eUCvli38PIJUG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:23:28', '2026-10-15 22:23:28', '2026-10-16 02:10:53'),
(365, 'mannyvidad0360', NULL, NULL, 0, '$2y$10$R5EkyFNIWsKFNoRut6DEBuyGricxQbRkHfpLtyjCoZZ1qSFmnPdlO', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:24:02', '2026-10-15 22:24:02', '2026-10-16 02:10:53'),
(366, 'larissetan0361', NULL, NULL, 0, '$2y$10$iSREXUIsLEP2Tbr7TfhWk.wqxBbR548aHdhv/azcw22vneSXcxSTC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:24:23', '2026-10-15 22:24:23', '2026-10-16 02:10:53'),
(367, 'jocelynbasilan0362', NULL, NULL, 0, '$2y$10$99WyYjfTrKwL2ICdK8wZJubKJtZ23DCMym/OBkQSCzLfmhgZ01vLi', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:24:30', '2026-10-15 22:24:30', '2026-10-16 02:10:53'),
(368, 'attymarkarenas0363', NULL, NULL, 0, '$2y$10$TLC1ai37LhNHd23LLkphvecdq6243H5ubCAaMZSNfu3WxKxBzRxa6', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:24:50', '2026-10-15 22:24:50', '2026-10-16 02:10:53'),
(369, 'wilfredoeranajr0364', NULL, NULL, 0, '$2y$10$CSb/20NTNiul9qbrnLVOZOV3aR2toJ.dyNja4BVqL7R7EpH9vmk8y', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:25:09', '2026-10-15 22:25:09', '2026-10-16 02:10:53'),
(370, 'jaimechua0365', NULL, NULL, 0, '$2y$10$49r1UVzDwBhmLu/GllQN6.zdPryLEVBRc99SqfAZPyHZI12Xy/3ue', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:25:25', '2026-10-15 22:25:25', '2026-10-16 02:10:53'),
(371, 'sheilaaquino0366', NULL, NULL, 0, '$2y$10$xWij9/JyBOhiEnWgM6s7Y.ovd8gjYcA96Z7P7ATq/zzMZW7KNDcoq', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:25:38', '2026-10-15 22:25:38', '2026-10-16 02:10:53'),
(372, 'aladencayago0367', NULL, NULL, 0, '$2y$10$2fz38wwgD2RCg7pGa0.8le0wf9hBxj8MaMVlYgrdoHA0Qio7CjyjK', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:26:09', '2026-10-15 22:26:09', '2026-10-16 02:10:53'),
(373, 'teresitaaquino0368', NULL, NULL, 0, '$2y$10$72wdys4UdX5TuTEMAQiyJOF4ppW5a4MQM6Ucktk5ZA9uOI3UmG/xm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:26:46', '2026-10-15 22:26:46', '2026-10-16 02:10:53'),
(374, 'victoraquino0369', NULL, NULL, 0, '$2y$10$r7ByaMVPlmaQ7FgEGFUnxelVdd83EuZeZUEZX9lsef8grEM4QDDpW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:27:04', '2026-10-15 22:27:04', '2026-10-16 02:10:53'),
(375, 'avelinalachica0370', NULL, NULL, 0, '$2y$10$TUwBl1JnniuT9N.DRA4juu/X3qTfa4EttmZ9dHq5YOU9jYCnFwq2C', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:27:23', '2026-10-15 22:27:23', '2026-10-16 02:10:53'),
(376, 'reynaldomoncal0371', NULL, NULL, 0, '$2y$10$uXBcubq0cn5u7hYSzTiotObxiH2X4c3e62n4vMD36ZgBZYbZbOFyW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:28:01', '2026-10-15 22:28:01', '2026-10-16 02:10:53'),
(377, 'marilouazurin0372', NULL, NULL, 0, '$2y$10$h6licLISxkw/obUW9uWLvOxONgvSSUCHkJX9cQ.Fkvw4x8dIBdvi2', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:28:19', '2026-10-15 22:28:19', '2026-10-16 02:10:53'),
(378, 'lydiamerilles0373', NULL, NULL, 0, '$2y$10$a3KSOp9f6W46h4X7H3DAqOWlo.MoTC5AKwG/raFM53oS4i2cFhFtG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:28:39', '2026-10-15 22:28:39', '2026-10-16 02:10:53'),
(379, 'jimenezzenaida0374', NULL, NULL, 0, '$2y$10$Atw6XcQNOmVib1AR5NsHUuNIJ2/omnFy5Zddg5FI1iAzYOZxdK/7a', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:29:24', '2026-10-15 22:29:24', '2026-10-16 02:10:53'),
(380, 'colisjosefina0375', NULL, NULL, 0, '$2y$10$3qUwH.TKIS5P1QduJypPKec79n7FYT50jDqxo1gQH6lDfgv35dCOm', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:29:44', '2026-10-15 22:29:44', '2026-10-16 02:10:53'),
(381, 'mariabautista0376', NULL, NULL, 0, '$2y$10$yVVgfOdUbnrKhRr3hbMgwu88QZ0K9rGjDGtHhma8FEnAV5t3eBIvG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:29:57', '2026-10-15 22:29:57', '2026-10-16 02:10:53'),
(382, 'florantecudiamat0377', NULL, NULL, 0, '$2y$10$E7a9XjkFY55BJ6u2Cs6he.nPESbFHqe3FBodb.kbo8wjFQdtddlae', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:30:11', '2026-10-15 22:30:11', '2026-10-16 02:10:53'),
(383, 'rubenabad0378', NULL, NULL, 0, '$2y$10$Ku6ZKnORSZYbJnavODWYd.wgnSEtruBmrp29iOwt6k7rIUDsMZp/.', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:30:29', '2026-10-15 22:30:29', '2026-10-16 02:10:53'),
(384, 'sianestor0379', NULL, NULL, 0, '$2y$10$MkQtro7vkXDYGRhUU97uBezh1VcH8x/C61YCOG1yPu9VDGj6OyBma', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:30:40', '2026-10-15 22:30:40', '2026-10-16 02:10:53'),
(385, 'mariperaguilar0380', NULL, NULL, 0, '$2y$10$azFrGn/gtEVYgFm/dJWOsuds687Kl3soU/Ei07LqQeBXEjXC5p5MG', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:30:58', '2026-10-15 22:30:58', '2026-10-16 02:10:53'),
(386, 'umaliteresa0381', NULL, NULL, 0, '$2y$10$Qb2iJgmz9o8D6aTkPDDk0Oggs.YDTaICYCeODIBAOwjGr6EJG4LcW', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:31:28', '2026-10-15 22:31:28', '2026-10-16 02:10:53'),
(387, 'ahmadalidiamel0382', NULL, NULL, 0, '$2y$10$AVD0A4vxc0iomBrieLIz9O5/4Hl1jkwx.0ZnM8odiSMg3IJjgUZLC', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:31:47', '2026-10-15 22:31:47', '2026-10-16 02:10:53'),
(388, 'abdulbashetbangcolaliwalag0383', NULL, NULL, 0, '$2y$10$kIEq.m7GxEuRnA80amJKWOg0yv4PVEaLZyxo42xHyyGRDzyhVw15m', 'Resident', 'Inactive', 'Homeowner', 1, '2026-10-16 00:32:39', '2026-10-15 22:32:39', '2026-10-16 02:10:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_content`
--
ALTER TABLE `about_content`
  ADD PRIMARY KEY (`about_id`),
  ADD KEY `fk_about_updated_by` (`updated_by`);

--
-- Indexes for table `about_media`
--
ALTER TABLE `about_media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_about_media_uploaded_by` (`uploaded_by`),
  ADD KEY `idx_about_media_display` (`is_active`,`sort_order`,`media_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `idx_audit_created_at` (`created_at`),
  ADD KEY `idx_audit_user` (`user_id`),
  ADD KEY `idx_audit_module` (`module`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`document_id`),
  ADD KEY `fk_documents_uploaded_by` (`uploaded_by`);

--
-- Indexes for table `homeowners`
--
ALTER TABLE `homeowners`
  ADD PRIMARY KEY (`homeowner_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `login_2fa_challenges`
--
ALTER TABLE `login_2fa_challenges`
  ADD PRIMARY KEY (`challenge_id`),
  ADD KEY `idx_2fa_user` (`user_id`),
  ADD KEY `idx_2fa_expires` (`expires_at`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`attempt_id`),
  ADD UNIQUE KEY `uq_login_attempt` (`username`,`ip_address`),
  ADD KEY `idx_login_attempt_ip` (`ip_address`),
  ADD KEY `idx_login_attempt_lock` (`locked_until`);

--
-- Indexes for table `login_slides`
--
ALTER TABLE `login_slides`
  ADD PRIMARY KEY (`slide_id`),
  ADD KEY `fk_login_slides_uploaded_by` (`uploaded_by`),
  ADD KEY `idx_login_slides_active` (`is_active`,`sort_order`);

--
-- Indexes for table `monthly_collection_reports`
--
ALTER TABLE `monthly_collection_reports`
  ADD PRIMARY KEY (`monthly_report_id`),
  ADD UNIQUE KEY `uq_monthly_collection` (`report_year`,`report_month`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `idx_notifications_user_read` (`user_id`,`is_read`,`created_at`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `si_number` (`si_number`),
  ADD KEY `fk_payments_homeowner` (`homeowner_id`),
  ADD KEY `fk_payments_encoded_by` (`encoded_by`),
  ADD KEY `fk_payments_validated_by` (`validated_by`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `fk_reports_generated_by` (`generated_by`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `fk_reservations_homeowner` (`homeowner_id`),
  ADD KEY `fk_reservations_requested_by` (`requested_by`),
  ADD KEY `fk_reservations_approved_by` (`approved_by`),
  ADD KEY `idx_reservation_schedule` (`reservation_date`,`start_time`,`end_time`,`status`);

--
-- Indexes for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  ADD PRIMARY KEY (`reservation_payment_id`),
  ADD UNIQUE KEY `si_number` (`si_number`),
  ADD KEY `fk_reservation_payments_encoded_by` (`encoded_by`),
  ADD KEY `fk_reservation_payments_validated_by` (`validated_by`),
  ADD KEY `idx_reservation_payments_homeowner` (`homeowner_id`,`payment_date`,`status`),
  ADD KEY `idx_reservation_payments_reservation` (`reservation_id`,`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_media`
--
ALTER TABLE `about_media`
  MODIFY `media_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `document_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeowners`
--
ALTER TABLE `homeowners`
  MODIFY `homeowner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `login_2fa_challenges`
--
ALTER TABLE `login_2fa_challenges`
  MODIFY `challenge_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `attempt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login_slides`
--
ALTER TABLE `login_slides`
  MODIFY `slide_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monthly_collection_reports`
--
ALTER TABLE `monthly_collection_reports`
  MODIFY `monthly_report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  MODIFY `reservation_payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_content`
--
ALTER TABLE `about_content`
  ADD CONSTRAINT `fk_about_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `about_media`
--
ALTER TABLE `about_media`
  ADD CONSTRAINT `fk_about_media_uploaded_by` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_uploaded_by` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `homeowners`
--
ALTER TABLE `homeowners`
  ADD CONSTRAINT `fk_homeowners_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `login_2fa_challenges`
--
ALTER TABLE `login_2fa_challenges`
  ADD CONSTRAINT `fk_2fa_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login_slides`
--
ALTER TABLE `login_slides`
  ADD CONSTRAINT `fk_login_slides_uploaded_by` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_encoded_by` FOREIGN KEY (`encoded_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payments_homeowner` FOREIGN KEY (`homeowner_id`) REFERENCES `homeowners` (`homeowner_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_payments_validated_by` FOREIGN KEY (`validated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `fk_reports_generated_by` FOREIGN KEY (`generated_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk_reservations_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservations_homeowner` FOREIGN KEY (`homeowner_id`) REFERENCES `homeowners` (`homeowner_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservations_requested_by` FOREIGN KEY (`requested_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  ADD CONSTRAINT `fk_reservation_payments_encoded_by` FOREIGN KEY (`encoded_by`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_payments_homeowner` FOREIGN KEY (`homeowner_id`) REFERENCES `homeowners` (`homeowner_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_payments_reservation` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reservation_payments_validated_by` FOREIGN KEY (`validated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
