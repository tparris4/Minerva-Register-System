-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 06:21 PM
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
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `Build_ID` int(11) NOT NULL,
  `B_Name` varchar(45) NOT NULL,
  `B_Address` varchar(45) NOT NULL,
  `Room_Amount` int(11) NOT NULL,
  `B_Dept_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`Build_ID`, `B_Name`, `B_Address`, `Room_Amount`, `B_Dept_ID`) VALUES
(77771, 'Math Building', '307 Math Building', 25, 124),
(77772, 'Science Building', '100 Science Building', 20, 125),
(77773, 'Medical Building', '300 Medical Building', 20, 127),
(77774, 'Arts Building', '400 Arts Building', 15, 128),
(77775, 'Business Building', '300 Business Building', 25, 126),
(77776, 'Computer Science Building', '200 Comp Sci Building', 25, 129),
(77777, 'English Building', '100 English Building', 25, 130),
(77778, 'Music Building', '100 Music Building', 30, 132),
(77779, 'Humanities Building', '100 Humanities Building', 25, 131);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`Build_ID`),
  ADD KEY `B_Dept_ID` (`B_Dept_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`B_Dept_ID`) REFERENCES `department` (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
