-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2019 at 08:11 PM
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
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `TimeSlotID` int(11) NOT NULL,
  `Period` varchar(45) NOT NULL,
  `Day` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`TimeSlotID`, `Period`, `Day`) VALUES
(10001, '12:00', 'Monday/Wednesday'),
(100002, '8:00 - 9:30am', 'Monday/Wednesday'),
(100003, '10:00 - 11:30am', 'Monday/Wednesday'),
(100004, '12:00 - 1:30pm', 'Monday/Wednesday'),
(100005, '2:00 - 3:30pm', 'Monday/Wednesday'),
(100006, '4:00 - 5:30pm', 'Monday/Wednesday'),
(100007, '6:00 - 7:30pm', 'Monday/Wednesday'),
(100008, '8:00 - 9:30pm', 'Monday/Wednesday'),
(100009, '8:00 - 9:30am ', 'Tuesday/Thursday'),
(100010, '10:00 - 11:30pm', 'Tuesday/Thursday'),
(100011, '12:00 - 1:30pm', 'Tuesday/Thursday'),
(100012, '2:00 - 3:30pm', 'Tuesday/Thursday'),
(100013, '4:00 - 5:30pm', 'Tuesday/Thursday'),
(100014, '6:00 - 7:30pm', 'Tuesday/Thursday'),
(100015, '8:00 - 9:30pm', 'Tuesday/Thursday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`TimeSlotID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
