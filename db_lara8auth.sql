-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 08:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lara8auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(36, '2014_10_12_000000_create_users_table', 1),
(37, '2014_10_12_100000_create_password_resets_table', 1),
(38, '2019_08_19_000000_create_failed_jobs_table', 1),
(39, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(40, '2022_05_11_120018_create_admins_table', 1),
(41, '2022_05_12_122259_create_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` datetime NOT NULL,
  `gender` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `phone`, `dob`, `gender`, `photo`, `email`, `access_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'mamun@gmail.com', '2Cat75VHS7piv1HfGkLL0nLONJaCRusZsEH17oP5e8i4BCvof7unEgF5Efwx', NULL, '$2y$10$kaGVGNtW9u.Yicdhqx3PPOY0AMK842SM6M6BuTucvQrKlmLiUggQ2', NULL, NULL, NULL),
(2, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'mawmun@gmail.com', 'sfSM4vt99DNaEHnvn784dHfHf6o2rGw3umXbZXE4rjENjzrkNYmybv9jTaDw', NULL, '$2y$10$E5NTl7yHqGijSGmGf8mmH.f5lfZsb.Pg4ar9ERIL5YjkXbfRlCXp.', NULL, NULL, NULL),
(3, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'mawmuan@gmail.com', 'Zi2CjoW2MoSIJy5bVzyBek139eAsfxMnBsUv0y4m1B6OBQ2NSjoXkcReYCKU', NULL, '$2y$10$IsCm8a4pJXDRSMdYVJdSm.vvtC6/pGIJs.6vMVTtNPWTNuHET0ktS', NULL, NULL, NULL),
(4, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'mawmauan@gmail.com', 'qJkKheUF4c4df0cFvXsdD36OiRwd9Jz3eo3NIvJiQwfCpeTY6owvfS3ECdNf', NULL, '$2y$10$0wk803YjWTfpK4/WTuzIouqgJ6KmOWH6WcwVooO1WBAsz94nAGVWe', NULL, NULL, NULL),
(5, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'mawmaauan@gmail.com', 'MJk6JvvfF2jkzVfDOsQb5uiqoMLYnAACrrgnbDgDsK5DBv7v57ogs0LWqbYA', NULL, '$2y$10$zrG8IN5/5zG6sW.YtDU/5O1MaSbN01gZMWn56cpZ8hMhnbhBAG9My', NULL, NULL, NULL),
(6, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'meeawmaauan@gmail.com', 'F7bIsgQBwrHKvYMFvK6pwXcpc4k4tTAPJtnFKxvFrapbPTUyl1bpg2y6gOEB', NULL, '$2y$10$VwQYinjDwc2gRc.2NjEfGeuhnJU/d8pTGNWp1oNSefrLXzuqH4i1K', NULL, NULL, NULL),
(7, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'meeawsmaauan@gmail.com', '5zAXlFdDctkRvweRBvE1egMexkbU1V5GoUDsjRIlXmjSV1vQQhgZFEfTis2e', NULL, '$2y$10$dxalSJfLK/CoeGzTvyLTDeCF87D3WGIrmRi/aDnnbeMCOJkogaIGK', NULL, NULL, NULL),
(8, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'p@gmail.com', 'qtjs93XyBjwyTRlDgqf7GjLGZ8tycePDtcECvis6ow6zATImEfAv9CzbqdeN', NULL, '$2y$10$Hy5LO0hyHsVMf3BEdgPpy.17BNQeNNFhS/NYBQvOTDk0A93DceUuy', NULL, NULL, NULL),
(9, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'pi@gmail.com', 'dlRgayK3fSUMOvbT8Sy3WNjFAFLWymLCk4ig6dGeoId3u8pEcOENhBcvExwm', NULL, '$2y$10$9FFd8nQ9W7KiqKaOh2XMDunNmZTUVBEr1Fmbg2Ko77K4L.chbysgm', NULL, NULL, NULL),
(10, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'xpi@gmail.com', 'UXBAgzirlkam18FhFHy2tQiAA9LKkR09sZpLUJMUxBPkwA4ZAD4PR5gUhoo5', NULL, '$2y$10$M2TC0hgWKuw7qxdNGPUtAuxVF7LusU8NwC1hd8Pbvd9UulcZbLLk.', NULL, NULL, NULL),
(11, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'xdpi@gmail.com', 'i8P951D446rReYdqZBORTrCqSbw2WHFM31FLnSwyfc2hjl9iYrT1GJaGUvEb', NULL, '$2y$10$vyhkIwLcok2Sdp9d75BvTe.gz1/RfzwxiB8u.UPH4.Pc0fhaQ2Lr.', NULL, NULL, NULL),
(12, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'xddpi@gmail.com', 'WniKCa1JMKAcgGAYrJoJaDxOI5tbJadiY0ic9wYVgJ1S2UMmXrQxdMAv4qNB', NULL, '$2y$10$D5hjmqay/coypPWqNu87oOIyd1CRuGO/3kMFnXvA3dvAycLcLL39O', NULL, NULL, NULL),
(13, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'xddspi@gmail.com', 'FMLq9PtIGTbcYoSMDjVrJqeWwddgP5aZvmFjkivzymglGFgFQLsiRdmYUbvw', NULL, '$2y$10$fa6MxXF1FjXpBpWThqq5lO2V4V9ZAwjcPD72FbvK2zs7Fz27KhCpC', NULL, NULL, NULL),
(14, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'dd@gmail.com', 'eo2tG7a8Ck14LgpdoHhafWiE5IganiTT2i4mVswfOnsAG1luImmmxiY1fwzr', NULL, '$2y$10$oEVRWwwyTEW8ZJMkG.iOd.AHTsygkS/8I5eWv0rhl7CWLJq7vLEtK', NULL, NULL, NULL),
(15, 1, 'Mamun', '0215487656', '2022-05-12 01:38:09', 2, NULL, 'mamun1@gmail.com', '2I0Z9GLgULGE4povRnyerS8kCpk3pqOpJf05r6vSTehygckmEiJPkbx27ge0', NULL, '$2y$10$cMeCMWPnV6mB3wkveyvOg.KBvcZyXxgY.DnJugH0S9Of6Tqhz/cDW', NULL, NULL, '2022-05-12 23:26:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
