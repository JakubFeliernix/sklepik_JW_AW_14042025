-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 02:53 PM
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
-- Database: `moj_sklepik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rowery_gorskie`
--

CREATE TABLE `rowery_gorskie` (
  `idg` int(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rowery_gorskie`
--

INSERT INTO `rowery_gorskie` (`idg`, `opis`, `img`) VALUES
(1, 'Rowery górskie', 'gorski1.jpg'),
(2, 'Rowery górskie', 'gorski2.jpg'),
(3, 'Rowery górskie', 'gorski3.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rowery_sportowe`
--

CREATE TABLE `rowery_sportowe` (
  `ids` int(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rowery_sportowe`
--

INSERT INTO `rowery_sportowe` (`ids`, `opis`, `img`) VALUES
(1, 'Rowery sportowe', 'sportowy1.jpg'),
(2, 'Rowery sportowe', 'sportowy2.jpg'),
(3, 'Rowery sportowe', 'sportowy3.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rowery_typu_bmx`
--

CREATE TABLE `rowery_typu_bmx` (
  `idb` int(11) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rowery_typu_bmx`
--

INSERT INTO `rowery_typu_bmx` (`idb`, `opis`, `img`) VALUES
(1, 'Rowery typu BMX', 'bmx1.jpg'),
(2, 'Rowery typu BMX', 'bmx2.jpg'),
(3, 'Rowery typu BMX', 'bmx3.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rowery_gorskie`
--
ALTER TABLE `rowery_gorskie`
  ADD PRIMARY KEY (`idg`);

--
-- Indeksy dla tabeli `rowery_sportowe`
--
ALTER TABLE `rowery_sportowe`
  ADD PRIMARY KEY (`ids`);

--
-- Indeksy dla tabeli `rowery_typu_bmx`
--
ALTER TABLE `rowery_typu_bmx`
  ADD PRIMARY KEY (`idb`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rowery_gorskie`
--
ALTER TABLE `rowery_gorskie`
  MODIFY `idg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rowery_sportowe`
--
ALTER TABLE `rowery_sportowe`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rowery_typu_bmx`
--
ALTER TABLE `rowery_typu_bmx`
  MODIFY `idb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
