-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2024 at 02:21 PM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 8.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2324BACKE19`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `description`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'assassin\'s creed mirage', 'In Assassin\'s Creed® Mirage, you are Basim Ibn Ishaq, a cunning street thief with nightmarish visions, seeking answers and justice. After an act of deadly retribution, Basim flees Baghdad and joins an ancient organization—The Hidden Ones.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfUVfBQGDCWNlGN9GJsRJOlUopAS58jtJCbi2SY6_hMA&s', 'https://store.ubisoft.com/nl/assassin-s-creed-mirage/62ea4f8e09372571f2736a71.html', '2024-05-19 08:42:25', '2024-05-19 08:42:26'),
(2, 'Assassin\'s Creed Valhalla', 'Assassin\'s Creed Valhalla is an action role-playing video game structured around several main story arcs and numerous optional side-missions, called \"World Events\". The player takes on the role of Eivor Varinsdottir (/ˈeɪvɔːr/), a Viking raider, as they lead their fellow Vikings against the Anglo-Saxon kingdoms.', 'https://upload.wikimedia.org/wikipedia/en/f/ff/Assassin%27s_Creed_Valhalla_cover.jpg', 'https://store.steampowered.com/app/2208920/Assassins_Creed_Valhalla/', '2024-05-19 12:30:32', '2024-05-19 12:30:32'),
(3, 'Assassin\'s Creed® Odyssey', 'This is an action-adventure game in which players assume the role of Alexios or Kassandra, mercenaries on a quest for vengeance. As players explore an open-world environment in Ancient Greece, they interact with characters, infiltrate enemy bases and strongholds, and kill human enemies.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA_gjbsyShsRN-b1u_RcerqJQr8LLvukOqLDzhowxbTA&s', 'https://store.steampowered.com/app/812140/Assassins_Creed_Odyssey/?curator_clanid=185907', '2024-05-19 12:32:18', '2024-05-19 12:32:18'),
(4, 'Fallout 4', 'In the post-apocalyptic Boston, Massachusetts area, you play as the \"Sole Survivor\" of Vault 111, recently revived from centuries of forced cryostasis, determined to find your kidnapped son. Fallout 4 is an open-world role-playing game developed by Bethesda Game Studios.', 'https://upload.wikimedia.org/wikipedia/en/7/70/Fallout_4_cover_art.jpg', 'https://store.steampowered.com/app/377160/Fallout_4/', '2024-05-19 12:42:48', '2024-05-19 12:42:48');

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
(3, '0001_01_01_000002_create_jobs_table', 1),
(34, '0001_01_01_000000_create_users_table', 2),
(35, '0001_01_01_000001_create_cache_table', 2),
(36, '2024_05_08_131701_create_series_table', 2),
(37, '2024_05_08_140539_create_user_series_table', 2),
(38, '2024_05_19_083155_create_games_table', 2),
(39, '2024_05_19_083155_create_series_game_table', 2);

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
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `relatedGames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_movie` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `created_at`, `updated_at`, `title`, `description`, `relatedGames`, `image`, `video`, `is_movie`) VALUES
(1, '2024-05-19 08:44:27', '2024-05-19 08:44:27', 'Assassin\'s Creed', 'Callum Lynch discovers he is a descendant of the secret Assassins society through unlocked genetic memories that allow him to relive the adventures of his ancestor Aguilar in 15th century Spain. After gaining incredible knowledge and skills, he is poised to combat the oppressive Knights Templar in the present day.', '1', 'https://www.heyuguys.com/assassins-creed-uk-movie-poster/assassins-creed-movie-uk-2/', 'https://www.youtube.com/embed/4haJD6W136c?si=2HYC5uKq1SicNA3S', 1),
(2, '2024-05-19 12:35:07', '2024-05-19 12:35:07', 'Fallout', 'Two-hundred years after the apocalypse, the gentle denizens of luxury fallout shelters are forced to return to the irradiated hellscape their ancestors left behind—and are shocked to discover an incredibly complex, gleefully weird, and highly violent universe waiting for them.', '4', 'https://m.media-amazon.com/images/M/MV5BZjQ0YjAyNWQtMjRjMC00NzMxLTlkNjEtYWQzNmQwNGRlMGJkXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UX1000_.jpg', 'https://www.youtube.com/embed/V-mugKDQDlg?si=wPcdYBbHfSRcKtPT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `series_game`
--

CREATE TABLE `series_game` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `series_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series_game`
--

INSERT INTO `series_game` (`id`, `series_id`, `game_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-05-19 08:45:01', '2024-05-19 08:45:01'),
(2, 1, 2, '2024-05-19 12:33:24', '2024-05-19 12:33:24'),
(3, 1, 3, NULL, NULL),
(4, 2, 4, '2024-05-19 12:44:11', '2024-05-19 12:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3HkggElf4l1gxwfS2psW8lmAN1rizZIA6BpNMTyo', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaFZNemJyNjFaZ1RIUThHeXFZT1BsSFdNNlQ5MXZleXR4TmRUUlNudiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmVuZGluZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1716122862),
('7CWxTBUrqTop8N5szzUyM2S0ntmsC5gcfykVVbcl', 1, '10.2.144.20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZmJPQ3pDenpTQkJmTkp3RU1OMnNFa3ljTWRIakFzNDNqMzhCUWU3VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMC4yLjE2MC4xNzIvc2VhcmNoP3F1ZXJ5PWZhbGxvdXQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1716127920);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'test', 'test@gmail.com', NULL, '$2y$12$rqshIthwvhXgWX74X2FiGuC.CTYaUh2EhU3daxCm79hrxTwquSK1O', NULL, '2024-05-19 06:45:41', '2024-05-19 06:45:41'),
(2, 'Karsten', 'karsten@gmail.com', NULL, '$2y$12$VpQuwu2uiIH32IIQbGUO.uq0rVbwHCb8964lpCR3tXkOI4bjitl0q', NULL, '2024-05-19 10:52:36', '2024-05-19 10:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_series`
--

CREATE TABLE `user_series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `series_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_series`
--

INSERT INTO `user_series` (`id`, `user_id`, `series_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2024-05-19 10:51:13', '2024-05-19 10:51:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
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
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series_game`
--
ALTER TABLE `series_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_game_series_id_foreign` (`series_id`),
  ADD KEY `series_game_game_id_foreign` (`game_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_series`
--
ALTER TABLE `user_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_series_user_id_foreign` (`user_id`),
  ADD KEY `user_series_series_id_foreign` (`series_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `series_game`
--
ALTER TABLE `series_game`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_series`
--
ALTER TABLE `user_series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `series_game`
--
ALTER TABLE `series_game`
  ADD CONSTRAINT `series_game_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `series_game_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_series`
--
ALTER TABLE `user_series`
  ADD CONSTRAINT `user_series_series_id_foreign` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_series_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
