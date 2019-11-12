-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `minor`
--

CREATE TABLE `minor` (
  `Minor_ID` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `MinorName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minor`
--

INSERT INTO `minor` (`Minor_ID`, `Department_ID`, `MinorName`) VALUES
(0, 0, 'None'),
(101, 124, 'Math'),
(102, 125, 'Biology'),
(103, 126, 'Business'),
(104, 128, 'Art'),
(105, 129, 'Computer Science'),
(106, 130, 'English'),
(107, 131, 'Humanities'),
(108, 132, 'Music');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD PRIMARY KEY (`Minor_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `minor_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
