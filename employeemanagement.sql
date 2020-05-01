-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 07:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(80) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('hllrdgn', 'moonlight123'),
('yrnmrkc', 'mermaid123'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `empinfo`
--

CREATE TABLE `empinfo` (
  `empno` int(11) NOT NULL,
  `fname` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `lname` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `birthy` varchar(4) COLLATE utf8_turkish_ci NOT NULL,
  `department` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `phone` varchar(80) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `empinfo`
--

INSERT INTO `empinfo` (`empno`, `fname`, `lname`, `birthy`, `department`, `phone`) VALUES
(1, 'orhan', 'ergün', '1982', 'human resources', '05454441721'),
(2, 'halit ', 'eruşak', '1977', 'marketing', '05369821642'),
(3, 'nazlı ', 'yerebakan', '1991', 'Technology', '05322581721'),
(4, 'ışıl', 'karaçam', '1987', 'accounting', '05568772041'),
(5, 'haluk', 'aydın', '1975', 'management', '05467271515');

-- --------------------------------------------------------

--
-- Table structure for table `salinfo`
--

CREATE TABLE `salinfo` (
  `salno` int(11) NOT NULL,
  `fname` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `lname` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `wage` varchar(80) COLLATE utf8_turkish_ci NOT NULL,
  `iban` varchar(80) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `salinfo`
--

INSERT INTO `salinfo` (`salno`, `fname`, `lname`, `wage`, `iban`) VALUES
(1, 'orhan', 'ergün', '5000', 'tr380006267267841577131462'),
(2, 'halit', 'eruşak', '3000', 'tr340006296828752167913324'),
(3, 'nazlı', 'yerebakan', '8000', 'tr640006289658576962779533'),
(4, 'ışıl', 'karaçam', '6000', 'tr250006221115845831854791'),
(5, 'haluk', 'aydın', '9000', 'tr910006232893731411324636\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empinfo`
--
ALTER TABLE `empinfo`
  ADD PRIMARY KEY (`empno`);

--
-- Indexes for table `salinfo`
--
ALTER TABLE `salinfo`
  ADD PRIMARY KEY (`salno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empinfo`
--
ALTER TABLE `empinfo`
  MODIFY `empno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `salinfo`
--
ALTER TABLE `salinfo`
  MODIFY `salno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
