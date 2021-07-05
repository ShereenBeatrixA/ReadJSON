-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 10:26 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maskapai_rs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_penerbangan`
--

CREATE TABLE `tabel_penerbangan` (
  `id_penerbangan` varchar(10) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `ke` varchar(50) NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_tiba` time NOT NULL,
  `harga` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_penerbangan`
--

INSERT INTO `tabel_penerbangan` (`id_penerbangan`, `dari`, `ke`, `jam_berangkat`, `jam_tiba`, `harga`) VALUES
('RS001', 'Makassar', 'Surabaya', '11:56:18', '13:20:18', '1500000'),
('RS002', 'Jakarta', 'Bandung', '12:30:00', '13:44:00', '1000000'),
('RS003', 'Jogjakarta', 'Denpasar', '14:45:20', '15:30:45', '1200000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_penerbangan`
--
ALTER TABLE `tabel_penerbangan`
  ADD PRIMARY KEY (`id_penerbangan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
