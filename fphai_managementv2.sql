-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2026 at 08:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fphai_management`
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
(5, 2, 'Verified', 'Authentication', 2, 'Completed two-factor authentication.', '2026-10-06 02:33:36');

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
(2, 'Maiso', 'kylechristianmaiso@gmail.com', '+639179023228', 1, '$2y$10$Am0A3uwwY8Xoa7J/WMW.WuICtNMVl0GuG.bVICFsclByw1qlml.1u', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:32:22', '2026-10-06 02:32:22'),
(3, 'Maduli', 'cootmaduli@gmail.com', NULL, 0, '$2y$10$GtAAUrjGdJWxpktw9ekkZuLMF2hicTFM0lhPUY9q7WOHwc/rY/PPq', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:32:37', '2026-10-06 02:32:37'),
(4, 'Darlucio', NULL, NULL, 0, '$2y$10$enaBL7cfEwLAbD2ssGMubOYuSN56mZCnzCwlO9QA6WqglO7baEhTC', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:32:59', '2026-10-06 02:32:59'),
(5, 'Quijano', NULL, NULL, 0, '$2y$10$o9geCwDTV8jO9AMDTUYni.417gFMdDY6vXPSv.P/MUP6HE5O/LCVa', 'Clerk', 'Active', 'Manual', 0, NULL, '2026-10-06 02:33:09', '2026-10-06 02:33:09');

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
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `document_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeowners`
--
ALTER TABLE `homeowners`
  MODIFY `homeowner_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_2fa_challenges`
--
ALTER TABLE `login_2fa_challenges`
  MODIFY `challenge_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `attempt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `notification_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `reservation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  MODIFY `reservation_payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
