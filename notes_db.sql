-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 09, 2024 at 11:10 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notatki_db`
--
CREATE DATABASE IF NOT EXISTS `notatki_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `notatki_db`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notatki`
--

CREATE TABLE `notatki` (
  `id` int(11) NOT NULL,
  `tresc` text NOT NULL,
  `data_aktualizacji` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notatki`
--

INSERT INTO `notatki` (`id`, `tresc`, `data_aktualizacji`) VALUES
(1, 'Notatka 1', '2024-09-09 09:07:57'),
(2, 'Notatka 2', '2024-09-09 09:08:02'),
(3, 'Notatka 3', '2024-09-09 09:06:34'),
(4, 'Notatka 4', '2024-09-09 09:08:06'),
(5, 'Notatka 5', '2024-09-09 09:08:09');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `notatki`
--
ALTER TABLE `notatki`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notatki`
--
ALTER TABLE `notatki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
