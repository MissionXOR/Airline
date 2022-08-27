-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 03:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtbl`
--

CREATE TABLE `bookingtbl` (
  `TicketId` int(11) NOT NULL,
  `PName` varchar(20) NOT NULL,
  `FlCode` varchar(20) NOT NULL,
  `PGen` varchar(15) NOT NULL,
  `PPass` varchar(15) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingtbl`
--

INSERT INTO `bookingtbl` (`TicketId`, `PName`, `FlCode`, `PGen`, `PPass`, `Amount`, `Nationality`) VALUES
(1, 'Ismail khan', ' AA77', 'Male', 'Pak 555', 4545, 'Pakistan'),
(2, 'Sumon ', ' AA77', 'Male', 'BD 556', 4561, 'Bangladeh ');

-- --------------------------------------------------------

--
-- Table structure for table `cancellationtbl`
--

CREATE TABLE `cancellationtbl` (
  `CancId` int(11) NOT NULL,
  `TickId` int(11) NOT NULL,
  `FlCode` varchar(20) NOT NULL,
  `CancDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancellationtbl`
--

INSERT INTO `cancellationtbl` (`CancId`, `TickId`, `FlCode`, `CancDate`) VALUES
(1, 2, 'BD 101', 'Thu Feb 10 20:24:30 BDT 2022'),
(2, 3, 'BD 101', 'Tue Feb 08 20:26:44 BDT 2022');

-- --------------------------------------------------------

--
-- Table structure for table `flighttbl`
--

CREATE TABLE `flighttbl` (
  `FlCode` varchar(15) NOT NULL,
  `FlSource` varchar(20) NOT NULL,
  `FlDest` varchar(20) NOT NULL,
  `FlDate` varchar(50) NOT NULL,
  `FlSeats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flighttbl`
--

INSERT INTO `flighttbl` (`FlCode`, `FlSource`, `FlDest`, `FlDate`, `FlSeats`) VALUES
(' AA77', 'Chittagong', 'Barisal', 'Fri Feb 18 19:49:27 BDT 2022', 100),
('BD 101', 'Dhaka ', 'Barisal', 'Fri Feb 04 16:13:43 BDT 2022', 250),
('DFF1', 'Chittagong', 'Sylhet', 'Fri Feb 18 20:01:08 BDT 2022', 76),
('FX55', 'Chittagong', 'Dhaka ', 'Fri Feb 25 16:19:09 BDT 2022', 44);

-- --------------------------------------------------------

--
-- Table structure for table `passengerstbl`
--

CREATE TABLE `passengerstbl` (
  `PId` int(11) NOT NULL,
  `PName` varchar(20) NOT NULL,
  `PNat` varchar(20) NOT NULL,
  `PGen` varchar(15) NOT NULL,
  `PPass` varchar(20) NOT NULL,
  `PAdd` varchar(50) NOT NULL,
  `Pphone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passengerstbl`
--

INSERT INTO `passengerstbl` (`PId`, `PName`, `PNat`, `PGen`, `PPass`, `PAdd`, `Pphone`) VALUES
(2, 'Sumon ', 'Bangladeh ', 'Male', 'BD 556', 'Barisal', '0175551'),
(4, 'Ismail khan', 'Pakistan', 'Male', 'Pak 555', 'Lahore', '546161');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtbl`
--
ALTER TABLE `bookingtbl`
  ADD PRIMARY KEY (`TicketId`);

--
-- Indexes for table `cancellationtbl`
--
ALTER TABLE `cancellationtbl`
  ADD PRIMARY KEY (`CancId`);

--
-- Indexes for table `flighttbl`
--
ALTER TABLE `flighttbl`
  ADD PRIMARY KEY (`FlCode`);

--
-- Indexes for table `passengerstbl`
--
ALTER TABLE `passengerstbl`
  ADD PRIMARY KEY (`PId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
