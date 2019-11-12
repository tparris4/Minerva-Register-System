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
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Major_ID` int(11) NOT NULL,
  `M_Name` varchar(45) NOT NULL COMMENT 'Medical Majors, Comp Eng, Busi Lead, Math Theo is Graduate only',
  `M_DepartID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Major_ID`, `M_Name`, `M_DepartID`) VALUES
(0, 'test', 0),
(1112, 'Calculus', 124),
(1113, 'Trigonometry', 124),
(1113, 'Biogenetics', 125),
(1114, 'Business', 126),
(1115, 'Economics', 126),
(1116, 'Accounting', 126),
(1117, 'Biochemistry', 125),
(1118, 'Medical Chemistry', 127),
(1119, 'Graphic Design', 128),
(1120, 'Digital Art', 128),
(1121, 'Human Systems', 127),
(1122, 'Computer Science B.S.', 129),
(1123, 'Computer Science B.A.', 129),
(1124, 'Computer Engineering ', 129),
(1125, 'Buisiness Leadership', 126),
(1126, 'Mathematical Theory', 124);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`Major_ID`,`M_DepartID`),
  ADD KEY `departm_id` (`M_DepartID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `departm_id` FOREIGN KEY (`M_DepartID`) REFERENCES `department` (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
