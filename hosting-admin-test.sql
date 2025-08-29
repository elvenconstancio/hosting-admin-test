-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2025 at 08:25 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosting-admin-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `status` enum('paid','unpaid','overdue') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `service_id`, `amount`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '463001.72', '2025-08-17', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(2, 1, '540369.32', '2025-08-12', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(3, 2, '446930.23', '2025-08-17', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(4, 2, '388613.31', '2025-07-26', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(5, 3, '818279.72', '2025-10-11', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(6, 4, '108998.18', '2025-10-15', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(7, 4, '295524.74', '2025-10-21', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(8, 4, '444439.58', '2025-09-24', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(9, 5, '840050.27', '2025-10-10', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(10, 5, '313745.50', '2025-09-27', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(11, 5, '196612.66', '2025-10-23', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(12, 6, '714914.08', '2025-07-16', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(13, 6, '233822.04', '2025-07-05', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(14, 7, '289709.74', '2025-07-04', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(15, 8, '410588.51', '2025-08-29', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(16, 8, '499268.76', '2025-07-26', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(17, 8, '81584.72', '2025-09-15', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(18, 9, '724413.15', '2025-08-10', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(19, 10, '534001.40', '2025-07-08', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(20, 10, '373875.40', '2025-10-17', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(21, 11, '617198.43', '2025-09-27', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(22, 11, '728190.95', '2025-08-11', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(23, 12, '517287.19', '2025-07-10', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(24, 12, '481742.43', '2025-07-27', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(25, 13, '151330.06', '2025-08-07', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(26, 13, '484562.53', '2025-08-18', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(27, 13, '569287.32', '2025-09-30', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(28, 14, '103718.85', '2025-09-18', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(29, 15, '377385.69', '2025-07-07', 'overdue', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(30, 16, '73371.43', '2025-09-16', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(31, 16, '103110.32', '2025-09-30', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(32, 17, '727230.57', '2025-09-07', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(33, 17, '402754.95', '2025-10-14', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(34, 18, '172623.39', '2025-09-04', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(35, 18, '178907.00', '2025-07-22', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(36, 19, '505589.84', '2025-07-08', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(37, 19, '415040.26', '2025-10-26', 'unpaid', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(38, 20, '471703.94', '2025-09-20', 'paid', '2025-08-29 20:06:37', '2025-08-29 20:06:37');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_08_29_131431_create_services_table', 1),
(6, '2025_08_29_133610_create_billings_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` enum('active','suspended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `domain`, `user_id`, `status`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Collier-Kovacek Hosting', 'ward.com', 8, 'active', '507857.64', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(2, 'Hickle-Gibson Hosting', 'ullrich.com', 5, 'active', '321122.68', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(3, 'Mosciski Ltd Hosting', 'marquardt.org', 4, 'suspended', '499415.98', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(4, 'Emard LLC Hosting', 'kiehn.biz', 5, 'active', '254593.35', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(5, 'Gusikowski and Sons Hosting', 'trantow.info', 7, 'active', '56157.62', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(6, 'Stanton Inc Hosting', 'nitzsche.com', 9, 'suspended', '650665.27', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(7, 'Reinger-Block Hosting', 'hermann.com', 5, 'suspended', '152411.81', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(8, 'Reynolds, Murazik and Kutch Hosting', 'mraz.com', 8, 'active', '73505.25', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(9, 'Homenick Inc Hosting', 'towne.com', 3, 'active', '687349.89', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(10, 'Roberts-Keebler Hosting', 'bruen.net', 6, 'suspended', '436723.31', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(11, 'Hartmann-Towne Hosting', 'simonis.com', 7, 'active', '224744.36', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(12, 'Spencer, Renner and Labadie Hosting', 'lowe.net', 1, 'active', '790082.14', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(13, 'Kihn and Sons Hosting', 'roob.org', 5, 'active', '581495.90', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(14, 'Grimes Inc Hosting', 'will.com', 1, 'suspended', '842939.25', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(15, 'Spinka-Witting Hosting', 'stamm.com', 11, 'suspended', '78748.92', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(16, 'Heller, Torp and Kirlin Hosting', 'kuvalis.com', 3, 'suspended', '896106.29', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(17, 'Purdy, Luettgen and Rippin Hosting', 'weber.info', 10, 'active', '819683.15', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(18, 'Lakin-Kreiger Hosting', 'kreiger.com', 4, 'active', '557880.47', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(19, 'Ortiz, Leffler and Bernhard Hosting', 'dare.org', 3, 'suspended', '690853.49', '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(20, 'Quitzon Group Hosting', 'hudson.com', 8, 'suspended', '369268.33', '2025-08-29 20:06:37', '2025-08-29 20:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@admin.com', '$2y$12$BVk/ICerkJle6UCF7m6CzO3ybCe3ydnbsMofUluTAXlU46bZYHcyq', NULL, '2025-08-29 20:06:36', '2025-08-29 20:06:36'),
(2, 'London Barton', 'fbernhard@example.org', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(3, 'Darlene Rosenbaum', 'bette.bruen@example.net', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(4, 'Reymundo Wisoky', 'jacklyn.rippin@example.net', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(5, 'Jensen Barton', 'emard.erna@example.com', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(6, 'Eloy Tillman MD', 'oquigley@example.org', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(7, 'Garry Rutherford', 'brody.auer@example.com', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(8, 'Delores Hoppe', 'carmen79@example.com', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(9, 'Laverne Fadel', 'norene59@example.org', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(10, 'Ms. Mittie Emmerich I', 'rippin.annetta@example.com', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37'),
(11, 'Modesta Satterfield MD', 'peter71@example.net', '$2y$12$n/p7a.//fVSHf89Wn4s4Yuf/tWjQb7Go2SWuaWtavzNc/xKA8kwri', NULL, '2025-08-29 20:06:37', '2025-08-29 20:06:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billings_service_id_foreign` (`service_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_domain_unique` (`domain`),
  ADD KEY `services_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `billings_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
