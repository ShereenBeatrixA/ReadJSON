-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 06:41 PM
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
-- Database: `maskapai_ch`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id_flight` varchar(10) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `ke` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id_flight`, `dari`, `ke`) VALUES
('CH001', 'Palembang', 'Bengkulu'),
('CH002', 'Manado', 'Ambon'),
('CH003', 'Jayapura', 'Aceh');

-- --------------------------------------------------------

--
-- Table structure for table `flight_time`
--

CREATE TABLE `flight_time` (
  `id_time` varchar(10) NOT NULL,
  `id_flight` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `depart` time NOT NULL,
  `arrive` time NOT NULL,
  `duration` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_time`
--

INSERT INTO `flight_time` (`id_time`, `id_flight`, `date`, `depart`, `arrive`, `duration`, `price`) VALUES
('CHT001', 'CH001', '2021-06-21', '12:05:00', '13:00:00', '55 minutes', '900000'),
('CHT002', 'CH002', '2021-06-21', '12:30:15', '14:00:15', '90 minutes', '1300000'),
('CHT003', 'CH003', '2021-06-21', '12:05:00', '18:05:00', '360 minute', '7000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id_flight`);

--
-- Indexes for table `flight_time`
--
ALTER TABLE `flight_time`
  ADD PRIMARY KEY (`id_time`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
