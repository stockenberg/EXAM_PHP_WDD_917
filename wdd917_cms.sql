-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 21. Aug 2018 um 09:26
-- Server-Version: 5.7.19-0ubuntu0.16.04.1
-- PHP-Version: 7.1.10-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `wdd917_cms`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teaser` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `news`
--

INSERT INTO `news` (`id`, `headline`, `teaser`, `content`, `user_id`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'ist der hammer', 'conotent content content', 1, NULL, '2018-08-08 09:57:44', '2018-08-15 08:09:44'),
(2, 'asdasdas', 'asd', 'asdasdasdasdasdas', 2, NULL, '2018-08-08 10:18:22', NULL),
(3, 'Hallo welt asdasd', 'yxcyxcyxc', 'asdasdyxcyxc', 1, NULL, '2018-08-08 10:20:52', '2018-08-15 08:25:08'),
(4, 'asdasd', 'asdasd', 'asdasd', 1, NULL, '2018-08-14 09:14:42', NULL),
(5, 'Hallo news!', 'das ist interessant', 'dasdasdasd123123', 1, NULL, '2018-08-14 09:15:50', NULL),
(6, 'asdasd', 'asdasd', 'asdasdasd', 1, NULL, '2018-08-14 09:17:19', NULL),
(7, 'Meine News', 'asdasdasd', 'asdasdasd', 1, 'thumb-1920-513116.png', '2018-08-15 09:12:25', NULL),
(8, 'Session', 'asdasd', 'asdasdasd', 1, 'Bildschirmfoto von 2018-06-15 11-22-06.png', '2018-08-15 09:34:10', NULL),
(9, 'asd', 'asd', 'asd', 1, '', '2018-08-15 09:48:50', NULL),
(10, 'asd', 'asd', 'asd', 1, '', '2018-08-15 09:49:09', NULL),
(11, 'asd', 'asd', 'asd', 1, '', '2018-08-15 09:49:48', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `roles`
--

INSERT INTO `roles` (`id`, `role`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '2018-07-31 08:29:38', NULL),
(2, 2, 'Author', '2018-07-31 08:29:38', NULL),
(3, 3, 'User', '2018-07-31 08:29:48', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$zM1i76dKPn8cTL5fmVvjh.3DI9AqxwSCEYcm9/e2E6zJtlFALc7Uy', 1, '2018-07-30 10:06:24', '2018-07-31 08:49:33'),
(10, 'Gaaaargh', '$2y$12$eJnO7xozlG8qyrE4gXqrku2J3Lge2IoGEmjv8E.a1fzK7nwaUC3Gm', 1, '2018-07-31 12:27:27', '2018-08-08 09:13:44'),
(11, 'Marten', '$2y$12$PYoUGxnNOfT0FcQUvD7WQuvdbekKEeZN87FRStpZyFX9rwz2xmXue', 2, '2018-08-08 08:35:14', NULL),
(12, 'adminnew', '$2y$12$LFEwNAHVOh6JEUCOLabKIupKtXP6iXu68y15dZVk.UA4LlAlvOsCW', 1, '2018-08-08 08:56:13', NULL),
(13, 'admin', '$2y$12$Wek6ZZSZijjydGHn2VVia.v3iCxmervpR6ATqyz7Pr1Lf0sKKy5iK', 1, '2018-08-15 10:03:26', NULL),
(14, 'asdasd', '$2y$12$yZVCbLO/HBKNlplEkCuq/..KTL35/cYgtYji2yTMW9NaXi8veYkci', 1, '2018-08-15 10:06:21', NULL),
(15, 'asdasd', '$2y$12$A/hh7bhs6oZYk7btAXuTs.dPlCPUamnGl1oK1gsNjYauYMofmcjlG', 1, '2018-08-15 10:06:47', NULL),
(16, 'asd', '$2y$12$v0evebPxTBFBbmBFcz6km.myOX5Tk5CptXs0weV10f0qwiZki1zpe', 1, '2018-08-15 10:07:13', NULL),
(17, 'asdasd', '$2y$12$5x9R7ZnLNGlohFoIfT3VVead./v57lE6/Ef6rtDq5iSyNytmOgqkS', 1, '2018-08-15 10:08:26', NULL),
(18, 'asd', '$2y$12$GksbZvBZefw5HlighurfCOeN9LfegmSjuY/2eLrz8sJZdMH3fK4R.', 1, '2018-08-15 10:08:59', NULL),
(19, 'asd', '$2y$12$idDS99cAGFbOpcs8drZUr.pkqlJY.pCkqjpvOxdBBIhPLB/2MAOrK', 1, '2018-08-15 10:09:30', NULL),
(20, 'asd', '$2y$12$4cwAlCYl2XsXpvKOANShyeKNMfO7hrO5adIX2m7u0s2uJVsCpbu8C', 1, '2018-08-15 10:09:44', NULL),
(21, 'asd', '$2y$12$5Cpi5.w3tKxj2AUC3g2OpupsH50oeufS/1Slk8xa0x82WgEdf0oLG', 1, '2018-08-15 10:10:15', NULL),
(22, 'asd', '$2y$12$rTMlqjMh/vHaiKJVfD2DVOLoegRgvVvIzWA2SxB1vMxw6Ho3Wk60u', 1, '2018-08-15 10:11:21', NULL),
(23, 'asdasd', '$2y$12$cVOfmOTuLb.enAhQiUZdLuObxZ/QM.ah2BtMHz216ysqwcuIdFj8W', 1, '2018-08-15 10:11:42', NULL),
(24, 'asdasd', '$2y$12$pq8iD2APUFReX6976FiMSe0FPegcSUPPr7LLi.dyfJjkkMUAaRrQW', 1, '2018-08-15 10:13:55', NULL),
(25, 'asdasd', '$2y$12$cuTlcvGmFubUtA8xwrqns.FATXytGpLDb0nkxOXNTfLUb5aHLXeoi', 1, '2018-08-15 10:14:16', NULL),
(26, 'Marten', '$2y$12$EyDPmJqx/BzsGanoAyflb.m9bp/poEXJuAu2finBJe8EulVeKMG5.', 2, '2018-08-15 10:14:53', NULL),
(27, 'Marten', '$2y$12$k8zEDJS42St5bZG6sMjNdeC96NaXZWwbDv3Wr6DwzI/kIpIX4djXy', 2, '2018-08-15 10:15:17', NULL),
(28, 'Marten', '$2y$12$2VSwPNgmeDRSWXqJLZZ/QuPo8QQ2dFLzD6Xa2ou8mSr4BPrcAbpnS', 2, '2018-08-15 10:16:39', NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT für Tabelle `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
