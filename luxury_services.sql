-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2024 at 09:01 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxury_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `admin_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_id` int NOT NULL,
  `candidat_id` int NOT NULL,
  `status_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidat`
--

CREATE TABLE `candidat` (
  `id` int NOT NULL,
  `gender_id` int DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `job_category` int DEFAULT NULL,
  `admin_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `experience_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `passport_id` int DEFAULT NULL,
  `cv_id` int DEFAULT NULL,
  `profil_pic_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compagny`
--

CREATE TABLE `compagny` (
  `id` int NOT NULL,
  `society_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_held` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compagny`
--

INSERT INTO `compagny` (`id`, `society_name`, `activity_type`, `contact_name`, `position_held`, `contact_number`, `contact_email`, `notes`, `created_at`) VALUES
(1, 'futuriste', 'full time', 'booliche', 'acteur', '0777777777', 'alex.momo@gmail.com', 'bool', '2024-03-31 12:03:00'),
(2, 'moderniste', 'Part time', 'Nathalie', 'directeur', '0777777701', 'turan.momo@gmail.com', 'asd', '2024-03-30 12:59:00'),
(3, 'axom', 'Temporary', 'galoche', 'salarié', '0777777702', 'manon.momo@gmail.com', 'CU', '2024-03-02 13:03:00'),
(4, 'stynet', 'Freelance', 'jordan', 'directeur', '0777777703', 'anthony.momo@gmail.com', 'ertg', '2024-03-02 13:04:00'),
(5, 'garage', 'Seasonal', 'florent', 'secrétaire', '0777777704', 'vincent.momo@gmail.com', 'g\'\'gvr\'g', '2024-03-25 13:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240307125022', '2024-03-07 12:50:42', 149),
('DoctrineMigrations\\Version20240308132338', '2024-03-08 13:24:02', 81),
('DoctrineMigrations\\Version20240308133616', '2024-03-08 13:36:26', 41),
('DoctrineMigrations\\Version20240308141345', '2024-03-08 14:14:03', 46),
('DoctrineMigrations\\Version20240308145046', '2024-03-08 14:50:55', 26),
('DoctrineMigrations\\Version20240308151100', '2024-03-08 15:11:12', 127),
('DoctrineMigrations\\Version20240308153707', '2024-03-08 15:37:16', 116),
('DoctrineMigrations\\Version20240309152459', '2024-03-09 15:25:11', 546),
('DoctrineMigrations\\Version20240309153105', '2024-03-09 15:31:19', 30),
('DoctrineMigrations\\Version20240309154645', '2024-03-09 15:46:53', 159),
('DoctrineMigrations\\Version20240309161010', '2024-03-09 16:10:17', 70),
('DoctrineMigrations\\Version20240311085306', '2024-03-11 08:53:16', 90),
('DoctrineMigrations\\Version20240311085915', '2024-03-11 08:59:22', 95),
('DoctrineMigrations\\Version20240311091115', '2024-03-11 09:11:20', 166),
('DoctrineMigrations\\Version20240311114205', '2024-03-11 11:42:11', 301),
('DoctrineMigrations\\Version20240311115634', '2024-03-11 11:56:39', 134),
('DoctrineMigrations\\Version20240311121745', '2024-03-11 12:17:50', 152),
('DoctrineMigrations\\Version20240311122051', '2024-03-11 12:21:04', 143),
('DoctrineMigrations\\Version20240311122402', '2024-03-11 12:24:06', 192),
('DoctrineMigrations\\Version20240311122539', '2024-03-11 12:25:43', 159),
('DoctrineMigrations\\Version20240311122923', '2024-03-11 12:29:27', 44),
('DoctrineMigrations\\Version20240311123041', '2024-03-11 12:30:45', 19),
('DoctrineMigrations\\Version20240311123929', '2024-03-11 12:39:35', 73),
('DoctrineMigrations\\Version20240311124224', '2024-03-11 12:42:28', 110),
('DoctrineMigrations\\Version20240312142323', '2024-03-12 14:23:32', 91),
('DoctrineMigrations\\Version20240314084008', '2024-03-14 08:40:34', 146);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `experience`) VALUES
(1, '0 - 6 month'),
(2, '6 month - 1 year'),
(3, '1 - 2 years'),
(4, '2+ years'),
(5, '5+ years'),
(6, '10+ years');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Homme'),
(2, 'Femme');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int NOT NULL,
  `reference` bigint NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `closing_date` date NOT NULL,
  `activated` tinyint(1) NOT NULL,
  `compagny_id` int NOT NULL,
  `job_type_id` int NOT NULL,
  `job_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `reference`, `description`, `notes`, `job_title`, `location`, `salary`, `created_at`, `closing_date`, `activated`, `compagny_id`, `job_type_id`, `job_category_id`) VALUES
(1, 13344, 'brebrebre', 'fd fbgb gb', 'gf gf gf', 'grrregfsf', 1, '2024-03-05 14:44:00', '2024-03-03', 1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `category`) VALUES
(3, 'Commercial'),
(4, 'Retail sales'),
(5, 'Creative'),
(6, 'Technology'),
(7, 'Marketing & PR'),
(8, 'Fashion & luxury'),
(9, 'Management & HR');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `type`) VALUES
(1, 'Commercial'),
(2, 'full time'),
(3, 'Part time'),
(4, 'Temporary'),
(5, 'Freelance'),
(6, 'Seasonal');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(1, 'alexis@gmail.com', '[]', '$2y$13$vqrpZh/ZhV6RYwby79EnUudzyHxpqaPvFQFLLHCwZhl.0PdVb0a3O', 0),
(2, 'manon@f.com', '[]', '$2y$13$i6Y7FxsqTm/Vd.TbSwTOOO6jY.97hzxaS2DKoSdQA4MMGVn9Ig9.6', 0),
(3, 'alexis.moreno@alex.com', '[]', '$2y$13$no0esly6WDio6DEXj4pRGOwwWQIwPzX8vEiyLau0CpnzxZPNhHGNW', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BD2F8C1F48704627` (`jobs_id`),
  ADD KEY `IDX_BD2F8C1F8D0EB82` (`candidat_id`),
  ADD KEY `IDX_BD2F8C1F6BF700BD` (`status_id`);

--
-- Indexes for table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6AB5B471A76ED395` (`user_id`),
  ADD UNIQUE KEY `UNIQ_6AB5B471ABF410D0` (`passport_id`),
  ADD UNIQUE KEY `UNIQ_6AB5B471CFE419E2` (`cv_id`),
  ADD UNIQUE KEY `UNIQ_6AB5B471EFAE74C3` (`profil_pic_id`),
  ADD KEY `IDX_6AB5B47146E90E27` (`experience_id`),
  ADD KEY `IDX_6AB5B471708A0E0` (`gender_id`);

--
-- Indexes for table `compagny`
--
ALTER TABLE `compagny`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A8936DC51224ABE0` (`compagny_id`),
  ADD KEY `IDX_A8936DC55FA33B08` (`job_type_id`),
  ADD KEY `IDX_A8936DC5712A86AB` (`job_category_id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compagny`
--
ALTER TABLE `compagny`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `FK_BD2F8C1F48704627` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `FK_BD2F8C1F6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FK_BD2F8C1F8D0EB82` FOREIGN KEY (`candidat_id`) REFERENCES `candidat` (`id`);

--
-- Constraints for table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `FK_6AB5B47146E90E27` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`),
  ADD CONSTRAINT `FK_6AB5B471708A0E0` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `FK_6AB5B471A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6AB5B471ABF410D0` FOREIGN KEY (`passport_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_6AB5B471CFE419E2` FOREIGN KEY (`cv_id`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `FK_6AB5B471EFAE74C3` FOREIGN KEY (`profil_pic_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `FK_A8936DC51224ABE0` FOREIGN KEY (`compagny_id`) REFERENCES `compagny` (`id`),
  ADD CONSTRAINT `FK_A8936DC55FA33B08` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`),
  ADD CONSTRAINT `FK_A8936DC5712A86AB` FOREIGN KEY (`job_category_id`) REFERENCES `job_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
