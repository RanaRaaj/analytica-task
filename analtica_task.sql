-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 07:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `analtica_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `published_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `author_name`, `published_at`, `created_at`, `updated_at`) VALUES
(2, 'Sample Article 1', '9Zfd6fkQjSd8uUMTCMEdfPiq63U8TmqZ1VqrfDYc4uKOKwQd78k814mGTAi1haW1NnzYranFxlEP1SkBuFjHuQwylYM8VlAvQWTr', 'Author 1', '2025-05-25', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(3, 'Sample Article 2', 'RNTxXPyizNr0v6LIQCdeyvF6TPEJTf3VvcEDGszVQPnumy3wS026c9sbNDALpMUDV2BjSSr4SDkO6JnIl7mXoJV4dGhocGFOjIuq', 'Author 2', '2025-05-26', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(4, 'Sample Article 3', 'B1apA8T7egmtgOvh3z7YZrHVs2COPWGuXUUZaoC8Kd9AEHTpV8Qf0xzqZs67s6pBFgDnPV5Mse8y2Zq294eKzHGHteVrnxoB3RB7', 'Author 3', '2025-05-27', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(5, 'Sample Article 4', 'mMnxwUDxP4VnDQTs39wxMMeajujal3OXALApHlM4Ym934DXZt2XSOX1bLZkjnm5PU0InMnLNX7X4WKNHDu9BLpAwURhDLZV3dSkj', 'Author 4', '2025-05-28', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(6, 'Sample Article 5', '1Ca2zCE9qFnYLHkM2qjXd3uG3d619pvUIbjGGNEHxWjxwlMYKXmnRLtI0E49eWmwTAjN7Izu0uEhRsd47WAtY73hI7Gx0GLOyIaT', 'Author 5', '2025-05-29', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(7, 'Sample Article 6', 'T3npWJQJhJvoNk57qmGuMo50WD6CAmP70D27kXHhortwCWzFwz4qaKRlRhsEsvWnU3BlBfYmqC3HR5hTRKEtc0HaTNZLO8z0tF46', 'Author 6', '2025-05-30', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(8, 'Sample Article 7', 'ByZiS8mjjpoiu5r3m5P8uif8P7mBKuJIkPMTz1r14BZzMwRTTtdAZIRqdM0bohe7jcOZVsv8iVhSkLHEM1rJ7ywcSjMqQGnXBqds', 'Author 7', '2025-05-31', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(9, 'Sample Article 8', 'bn5jEPJMg3seT3LpRa8iApfWeAZ9WmwsAf2k6LLNMUWbR2cIMbnKn4Ig8rqtlJnqrMd8hXY9M1knKD1OWTfL0N5uVQN62yzK6YdH', 'Author 8', '2025-06-01', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(10, 'Sample Article 9', '4QLHxXtid2gD9Gkcy7CSGN9BbOICAjw1oSh8T6pN3DBlv8IIJUcXePwSpvHHSwsGIDaYyze5HGOqrzG6opoJts33wZHE1V3uq20w', 'Author 9', '2025-06-02', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(11, 'Sample Article 10', 'NzoHKYyPuRWJhqa87Lzz8JTAF2VK1ov2rA7QG17tuMhkAdw2kstP5lDy59kMOkwNUtFCwC4FtJu3S9eX0n86adHqynxxnREa6yaP', 'Author 10', '2025-06-03', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(12, 'Sample Article 11', 'YENJbOSt9sgppPJ36tPkzWpvRr7HOGigvKcjsZezGkOLiThtQgCblFpBGWYGu5qCfdFzLv4cJsq4AcndXohzonebd3p4kJPMoreL', 'Author 11', '2025-06-04', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(13, 'Sample Article 12', 'vIsWv5mc5W9psxyAk7LPqNVynet04QeXhAHSGX9YM4TsqpUMhj20xisS2FcxoALxrJhCpngBCMUcwIzhbSzeFUtVqbRSfBC1UXUf', 'Author 12', '2025-06-05', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(14, 'Sample Article 13', 'h6y7nBlAEe3aawoUrTbZCv6OdPLZPE9Qg4Q9Kdk5IqdoWjsGkVXbxUKU0L3gVr1e2cscWcoYk9snGevmvsrfHs9j2i0uHhQ0OaP9', 'Author 13', '2025-06-06', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(15, 'Sample Article 14', 'yAyX922KRS5oWhY2y3JZZCdkNOuHwgwsm25NUXwRQrw5q0hMIjDuFf1nBZaX9oO5OiTI9Cyx29qnSNo0eK22FzgjTnTuJ2jcT7mb', 'Author 14', '2025-06-07', '2025-05-24 00:23:15', '2025-05-24 00:23:15'),
(16, 'Sample Article 15', 'N4dTawe168LlInTptwhchcQxO3dl9l27uuTFHKlJ6vIkBaHkjQOJFCZQypTplvhN3r2wTxRHjDAEvTmkgw6n72hV7gxFyHL0FcZi', 'Author 15', '2025-06-08', '2025-05-24 00:23:15', '2025-05-24 00:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_05_23_104633_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'test-token-01', 'd25f3c83b6373dee7be88e0efefd4ec45b7448dc2b4b9da4593f0095af417113', '[\"*\"]', '2025-05-24 00:26:55', NULL, '2025-05-24 00:26:35', '2025-05-24 00:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', NULL, '$2y$10$qQ3iDhtPNSrxLS1V.YoHA.I8XnpU6dWlBgp4ad2x6stRZAqYGTi62', NULL, '2025-05-24 00:25:15', '2025-05-24 00:25:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
