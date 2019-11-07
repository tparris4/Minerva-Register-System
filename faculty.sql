-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 09:45 PM
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
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Facu_ID` int(11) NOT NULL COMMENT 'Faculty ID',
  `F_Rank` varchar(45) NOT NULL,
  `F_Office` varchar(45) NOT NULL,
  `F_OfficeHrs` varchar(45) NOT NULL,
  `F_Dept` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Facu_ID`, `F_Rank`, `F_Office`, `F_OfficeHrs`, `F_Dept`) VALUES
(22223, 'Faculty', '123 Math Building', '12:00 - 1:00', 0),
(22224, 'Faculty', '123 Science Building', '12:00 - 1:00', 0),
(22225, 'Faculty', '234 Medical Building', '1:00 - 2:00', 0),
(22226, 'Faculty', '235 Medical Building', '3:00 - 4:00', 0),
(22227, 'Faculty', '355 Science Building', '12:00 - 1:00', 0),
(22228, 'Faculty', '220 Science Building', '4:00 - 5:00', 0),
(22229, 'Faculty', '120 Science Building', '3:00 - 4:30', 0),
(22230, 'Faculty', '100 Medical Building', '2:00 - 3:00', 0),
(22231, 'Faculty', '123 Art Building ', '5:00 - 6:00', 0),
(22238, 'Faculty', '123 Computer Science Building', '5:00 - 6:00', 0),
(22239, 'Faculty', '222 Computer Science Building', '5:00 - 6:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Facu_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_id` FOREIGN KEY (`Facu_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
