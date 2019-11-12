-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 10:49 PM
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
-- Table structure for table `graduate`
--

CREATE TABLE `graduate` (
  `GD_StudID` int(11) NOT NULL,
  `MajorID` int(11) NOT NULL,
  `MinorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`GD_StudID`, `MajorID`, `MinorID`) VALUES
(33332, 1118, 0),
(33333, 1115, 108),
(33336, 1124, 0),
(33337, 1124, 105),
(33348, 1116, 107),
(33353, 1112, 0),
(33357, 1122, 0),
(33361, 1122, 0),
(33368, 1121, 108),
(33371, 1121, 103),
(33379, 1119, 0),
(33394, 1124, 102),
(33398, 1121, 106),
(33405, 1113, 107),
(33411, 1124, 101),
(33412, 1122, 0),
(33418, 1122, 104),
(33419, 1119, 0),
(33420, 1125, 101),
(33424, 1121, 106),
(33425, 1126, 0),
(33444, 1118, 108),
(33445, 1124, 101),
(33447, 1125, 0),
(33448, 1115, 0),
(33451, 1123, 106),
(33455, 1123, 0),
(33459, 1124, 0),
(33461, 1124, 101),
(33469, 1124, 102),
(33470, 1124, 0),
(33473, 1124, 103),
(33476, 1124, 0),
(33479, 1124, 104),
(33480, 1124, 0),
(33482, 1125, 0),
(33483, 1125, 105),
(33487, 1125, 106),
(33491, 1125, 0),
(33492, 1125, 107),
(33493, 1125, 0),
(33497, 1125, 108),
(33506, 1118, 102),
(33507, 1118, 104),
(33510, 1118, 0),
(33512, 1118, 106),
(33518, 1118, 0),
(33519, 1118, 0),
(33520, 1118, 108),
(33521, 1122, 103),
(33522, 1122, 105),
(33523, 1122, 106),
(33524, 1122, 107),
(33525, 1122, 0),
(33526, 1122, 0),
(33542, 1122, 0),
(33543, 1121, 0),
(33544, 1121, 0),
(33545, 1121, 103),
(33546, 1121, 0),
(33551, 1121, 104);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `graduate`
--
ALTER TABLE `graduate`
  ADD PRIMARY KEY (`GD_StudID`),
  ADD KEY `MinorID` (`MinorID`),
  ADD KEY `graduate_ibfk_1` (`MajorID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `graduate`
--
ALTER TABLE `graduate`
  ADD CONSTRAINT `graduate_ibfk_1` FOREIGN KEY (`MajorID`) REFERENCES `major` (`Major_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `graduate_ibfk_2` FOREIGN KEY (`MinorID`) REFERENCES `minor` (`Minor_ID`),
  ADD CONSTRAINT `stud_id` FOREIGN KEY (`GD_StudID`) REFERENCES `student` (`Stud_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
