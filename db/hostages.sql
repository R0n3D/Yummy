-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 02:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yummy`
--

-- --------------------------------------------------------

--
-- Table structure for table `hostages`
--

CREATE TABLE `hostages` (
  `id` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `image` varchar(250) NOT NULL,
  `days` varchar(255) DEFAULT NULL,
  `type_of_person` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostages`
--

INSERT INTO `hostages` (`id`, `name`, `city`, `image`, `days`, `type_of_person`) VALUES
(1, 'Kfir ben Shiri (Bibas)', 'Nir Oz', 'kfir.jpg', '550', 'child'),
(2, 'Ariel ben Shiri (Bibas)', 'Nir Oz', 'ArielBibs.jpg', '250', 'child'),
(3, 'Shiri ben Penina (Bibas)', 'Nir Oz', 'shiri.jpeg', '330', 'adult'),
(4, 'Yarden ben Penina (Bibas)', 'Nir Oz', 'yardenbibas.jpg', '370', 'adult');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hostages`
--
ALTER TABLE `hostages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hostages`
--
ALTER TABLE `hostages`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
