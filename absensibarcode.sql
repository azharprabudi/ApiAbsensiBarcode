-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2017 at 05:54 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensibarcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi_mahasiswa`
--

CREATE TABLE `absensi_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` char(9) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `address` text,
  `waktu` datetime DEFAULT NULL,
  `qrcode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi_mahasiswa`
--

INSERT INTO `absensi_mahasiswa` (`id`, `nim`, `latitude`, `longitude`, `address`, `waktu`, `qrcode`) VALUES
(1, '201581177', '123', '123', 'jakarta', '0000-00-00 00:00:00', '123456'),
(2, '201581177', '123', '123', 'jakarta', '2017-07-03 19:34:19', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_mahasiswa`
--
ALTER TABLE `absensi_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi_mahasiswa`
--
ALTER TABLE `absensi_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
